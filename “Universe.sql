--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    type character varying,
    distance_from_planet numeric,
    is_spherical boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    type text,
    age_in_millions_of_years integer,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    type character varying,
    has_life boolean,
    distance_from_planet numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    type character varying,
    distance_from_earth numeric,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    type character varying,
    age_in_millions_of_years integer,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (19, 'Ceres', 3, 'Dwarf planet', 2.77, true);
INSERT INTO public.asteroid VALUES (20, 'Vesta', 3, 'Asteroid', 2.36, true);
INSERT INTO public.asteroid VALUES (21, 'Pallas', 3, 'Asteroid', 2.66, true);
INSERT INTO public.asteroid VALUES (22, 'Hygiea', 3, 'Asteroid', 3.11, true);
INSERT INTO public.asteroid VALUES (23, 'Eros', 3, 'Asteroid', 1.46, false);
INSERT INTO public.asteroid VALUES (24, 'Ida', 3, 'Asteroid', 2.86, false);
INSERT INTO public.asteroid VALUES (25, 'Gaspra', 3, 'Asteroid', 2.21, false);
INSERT INTO public.asteroid VALUES (26, 'Mathilde', 3, 'Asteroid', 2.67, true);
INSERT INTO public.asteroid VALUES (27, 'Kleopatra', 3, 'Asteroid', 3.23, true);
INSERT INTO public.asteroid VALUES (28, 'Psyche', 3, 'Asteroid', 2.92, true);
INSERT INTO public.asteroid VALUES (29, 'Bennu', 4, 'Asteroid', 1.27, true);
INSERT INTO public.asteroid VALUES (30, 'Ryugu', 4, 'Asteroid', 0.93, true);
INSERT INTO public.asteroid VALUES (31, 'Itokawa', 4, 'Asteroid', 1.27, true);
INSERT INTO public.asteroid VALUES (32, 'Apophis', 4, 'Asteroid', 0.05, true);
INSERT INTO public.asteroid VALUES (33, 'Amun', 4, 'Asteroid', 1.92, true);
INSERT INTO public.asteroid VALUES (34, 'Vishnu', 4, 'Asteroid', 1.15, true);
INSERT INTO public.asteroid VALUES (35, 'Geographos', 4, 'Asteroid', 1.25, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 5000, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 59000, false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical', 12000, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral', 13000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Natural satellite', false, 0.00257);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Natural satellite', false, 0.0009);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Natural satellite', false, 0.0009);
INSERT INTO public.moon VALUES (4, 'Io', 3, 'Natural satellite', false, 0.4218);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 'Natural satellite', false, 0.6711);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 'Natural satellite', false, 1.0704);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 'Natural satellite', false, 1.8827);
INSERT INTO public.moon VALUES (8, 'Titan', 4, 'Natural satellite', false, 0.0082);
INSERT INTO public.moon VALUES (9, 'Rhea', 4, 'Natural satellite', false, 0.0123);
INSERT INTO public.moon VALUES (10, 'Iapetus', 4, 'Natural satellite', false, 0.0262);
INSERT INTO public.moon VALUES (11, 'Triton', 5, 'Natural satellite', false, 0.3548);
INSERT INTO public.moon VALUES (12, 'Nereid', 6, 'Natural satellite', false, 0.5513);
INSERT INTO public.moon VALUES (13, 'Larissa', 6, 'Natural satellite', false, 0.7326);
INSERT INTO public.moon VALUES (14, 'Charon', 7, 'Natural satellite', false, 0.0009);
INSERT INTO public.moon VALUES (15, 'Proxima Centauri b I', 8, 'Natural satellite', false, 0.0012);
INSERT INTO public.moon VALUES (16, 'Proxima Centauri b II', 8, 'Natural satellite', false, 0.0013);
INSERT INTO public.moon VALUES (17, 'Proxima Centauri c I', 9, 'Natural satellite', false, 0.0015);
INSERT INTO public.moon VALUES (18, 'Sirius b I', 10, 'Natural satellite', false, 0.0006);
INSERT INTO public.moon VALUES (19, 'Sirius b II', 10, 'Natural satellite', false, 0.0012);
INSERT INTO public.moon VALUES (20, 'Pluto I', 11, 'Natural satellite', false, 0.0015);
INSERT INTO public.moon VALUES (21, 'Pluto II', 11, 'Natural satellite', false, 0.0018);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', 0, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', 54.6, true);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 'Gas giant', 588.5, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 'Gas giant', 1.2, true);
INSERT INTO public.planet VALUES (5, 'Uranus', 1, 'Ice giant', 1.8, true);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, 'Ice giant', 2.7, true);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 3, 'Terrestrial', 0.04, true);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 4, 'Terrestrial', 0.041, true);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri c', 4, 'Terrestrial', 0.042, true);
INSERT INTO public.planet VALUES (10, 'Sirius b', 5, 'White dwarf', 8.6, true);
INSERT INTO public.planet VALUES (11, 'Sirius c', 5, 'Gas giant', 1.5, true);
INSERT INTO public.planet VALUES (12, 'Sirius d', 5, 'Gas giant', 2.7, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type main-sequence', 4600, false);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 'G-type main-sequence', 6000, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 'K-type main-sequence', 6000, false);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 'Red dwarf', 6000, false);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 'A-type main-sequence', 240, false);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A-type main-sequence', 455, false);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 35, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

