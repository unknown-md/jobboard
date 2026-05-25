-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin1@mail.com', '$2y$12$MRnBs8cTb0JfB/ajqwfDGebcg2gMQbejOjg2zWjsyqA8Us3GqE8vO', '2024-03-19 17:08:53', '2024-03-19 17:08:53'),
(4, 'admin2', 'admin2@mail.com', '$2y$12$tRtGVMgu10SgoVk48jsN2eHJjoff9mZbFUa7ZOX3Q6RCOFbZJHzxW', '2024-03-20 11:08:16', '2024-03-20 11:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `cv`, `job_id`, `user_id`, `email`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(10, 'Orar_An3_IE_Sem1.pdf', 6, 1, 'andrei@mail.com', 'ati_motors.jpg', 'Mecanic auto', 'Iași', 'ATI Motors Holding', 'Full Time', '2024-04-08 10:06:35', '2024-04-08 10:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programare', '2024-03-12 17:16:24', '2024-03-12 17:16:24'),
(2, 'Design', '2024-03-12 17:16:24', '2024-03-12 17:16:24'),
(6, 'Auto-Service-Reparații', '2024-03-20 14:09:06', '2024-05-14 14:47:56'),
(7, 'Juridic', '2024-05-18 15:05:33', '2024-05-18 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `jobdescription` varchar(200) NOT NULL,
  `responsibilities` varchar(200) NOT NULL,
  `education_experience` varchar(200) NOT NULL,
  `otherbenifits` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `company`, `job_type`, `vacancy`, `experience`, `salary`, `gender`, `application_deadline`, `jobdescription`, `responsibilities`, `education_experience`, `otherbenifits`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', 'Cluj-Napoca', 'Adidas', 'Full Time', '15', 'Entry-Level (< 2 ani)', '2500€', 'Oricare', '19 Aprilie 2025', 'Un designer de produs din Cluj-Napoca este un profesionist specializat în crearea și dezvoltarea de produse fizice sau digitale, de la concept la realizarea finală. Acești specialiști sunt responsabil', 'Cercetare și analiză: Înțelegerea nevoilor și preferințelor utilizatorilor, precum și a tendințelor de pe piață pentru a dezvolta produse relevante și competitive.\r\nCrearea de concepte: Generarea de i', 'Minimum Master', 'Un designer de produs din Cluj-Napoca este un profesionist specializat în crearea și dezvoltarea de produse fizice sau digitale, de la concept la realizarea finală. Acești specialiști sunt responsabil', 'job_logo_1.jpg', 'Design', '2024-03-12 16:59:15', '2024-03-12 16:59:15'),
(2, 'Tehnician IT', 'București', 'Rezolv IT ', 'Full Time', '2', 'Mid-Level (2-5 ani)', 'Nespecificat', 'Oricare', '6 Iulie 2025', 'Asiguri suport IT specializat utilizatorilor pentru rezolvarea incidentelor cauzate de software/calculatoare/retea\r\nsi pregătești documentarea și raportarea activitați către clienți în sistemul de tic', '', 'Licenta', 'Colectiv tanar, dinamic si placut\r\nDecontare transport.\r\nMasina in functie de necesitati.\r\nSmartphone, internet, laptop.\r\nSediu central exact la statia de metrou Pta Muncii.\r\nPosibilitati de perfectio', 'job_logo_2.png', 'Programare', '2024-03-12 17:23:18', '2024-03-12 17:23:18'),
(3, 'Specialist in Digitalizare, Dezvoltare si Sustenabilitate', 'Bacău', 'AGEXIM TRANSPORT & LOGISTICS\r\n', 'Full Time', '1', 'Mid-Level (2-5 ani)', 'Nespecificat', 'Oricare', '12 martie 2025', 'Responsabilități:\r\nIdentificarea oportunităților de digitalizare și eficientizare a proceselor în cadrul companiei. Gestionarea proiectelor de implementare a soluțiilor digitale și a instrumentelor te', '     Identificarea oportunităților de digitalizare și eficientizare a proceselor în cadrul companiei. Gestionarea proiectelor de implementare a soluțiilor digitale și a instrumentelor tehnologice. Dez', 'Calificat, Absolvent ', 'AGEXIM este o companie romaneasca de transport, prezenta de mai mult de 15 ani pe piata transporturilor internationale rutiere de marfuri din Europa.', 'job_logo_6.png', 'Programare', '2024-03-12 18:30:31', '2024-03-12 18:30:31'),
(6, 'Mecanic auto', 'Iași', 'ATI Motors Holding', 'Full Time', '1', 'Mid-Level (2-5 ani)', '1500-2000 € net / lună', 'Masculin', '5 septembrie 2024', 'ATI Motors Holding isi mareste echipa si face angajari pentru postul de Mecanic auto. Suntem în căutarea unui mecanic auto talentat și dedicat să se alăture echipei noastre.', 'Diagnosticarea și rezolvarea eficientă a problemelor tehnice ale vehiculelor.\r\nEfectuarea întreținerii preventive și corective conform standardelor.', 'Diplomă de liceu sau echivalentă.\r\nCertificare în mecanică auto sau experiență relevantă în domeniu.\r\nExperiență anterioară în diagnosticare și reparații auto.', 'Mediu de lucru plăcut și echipă prietenoasă.\r\nOportunități de dezvoltare profesională și avansare în cadrul companiei.\r\nPachet salarial competitiv și beneficii suplimentare', 'ati_motors.jpg', 'Auto-Service-Reparații', '2024-03-20 14:30:25', '2024-03-20 14:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `jobsaved`
--

CREATE TABLE `jobsaved` (
  `id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobsaved`
--

INSERT INTO `jobsaved` (`id`, `job_id`, `user_id`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(4, 6, 1, 'ati_motors.jpg', 'Mecanic auto', 'Iași', 'ATI Motors Holding', 'Full Time', '2024-03-20 19:48:44', '2024-03-20 19:48:44'),
(5, 3, 1, 'job_logo_6.png', 'Specialist in Digitalizare, Dezvoltare si Sustenabilitate', 'Bacău', 'AGEXIM TRANSPORT & LOGISTICS', 'Full Time', '2024-04-08 09:32:08', '2024-04-08 09:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(10) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', '2024-03-19 13:41:39', '2024-03-19 13:41:39'),
(2, 'Designer', '2024-03-19 13:41:53', '2024-03-19 13:41:53'),
(3, 'Designer', '2024-03-19 13:50:39', '2024-03-19 13:50:39'),
(4, 'Developer', '2024-03-19 13:52:05', '2024-03-19 13:52:05'),
(5, 'Developer', '2024-03-19 13:52:10', '2024-03-19 13:52:10'),
(6, 'Front-End', '2024-03-19 13:52:21', '2024-03-19 13:52:21'),
(7, 'Front-End', '2024-03-19 13:52:27', '2024-03-19 13:52:27'),
(8, 'Back-End', '2024-03-19 13:52:37', '2024-03-19 13:52:37'),
(9, 'Back-End', '2024-03-19 13:52:43', '2024-03-19 13:52:43'),
(10, 'Dev', '2024-03-20 20:18:11', '2024-03-20 20:18:11'),
(13, 'Mecanic', '2024-03-21 00:39:57', '2024-03-21 00:39:57'),
(14, 'Mecanic', '2024-03-21 00:40:03', '2024-03-21 00:40:03'),
(15, 'Mecanic', '2024-03-21 00:40:25', '2024-03-21 00:40:25'),
(16, 'Mecanic', '2024-03-21 00:46:32', '2024-03-21 00:46:32'),
(17, 'auto', '2024-03-21 00:46:36', '2024-03-21 00:46:36'),
(18, 'Product', '2024-03-21 00:46:45', '2024-03-21 00:46:45'),
(19, 'IT', '2024-03-21 00:50:03', '2024-03-21 00:50:03'),
(20, 'Mecanic', '2024-04-08 10:05:54', '2024-04-08 10:05:54'),
(21, 'Mecanic', '2024-04-08 10:06:04', '2024-04-08 10:06:04'),
(22, 'Mecanic', '2024-04-08 10:06:11', '2024-04-08 10:06:11'),
(23, 'Mecanic', '2024-04-08 10:06:17', '2024-04-08 10:06:17'),
(24, 'Baza de date CLuj', '2024-04-08 12:11:01', '2024-04-08 12:11:01'),
(25, 'asd', '2024-05-14 13:24:24', '2024-05-14 13:24:24'),
(26, 'Auto', '2024-05-14 14:10:19', '2024-05-14 14:10:19'),
(27, 'Auto', '2024-05-14 14:51:29', '2024-05-14 14:51:29'),
(28, 'Auto', '2024-05-14 14:51:58', '2024-05-14 14:51:58'),
(29, 'Auto', '2024-05-14 14:52:20', '2024-05-14 14:52:20'),
(30, 'Auto', '2024-05-14 14:54:54', '2024-05-14 14:54:54'),
(31, 'IT', '2024-05-16 11:16:32', '2024-05-16 11:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'pic.jpg',
  `cv` varchar(200) NOT NULL DEFAULT 'No CV',
  `job_title` varchar(200) NOT NULL DEFAULT 'Fără calificare universitară',
  `bio` text NOT NULL DEFAULT 'No bio',
  `twitter` varchar(200) NOT NULL DEFAULT 'No twitter',
  `facebook` varchar(200) NOT NULL DEFAULT 'No facebook',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `cv`, `job_title`, `bio`, `twitter`, `facebook`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andrei', 'andrei@mail.com', NULL, '$2y$12$MRnBs8cTb0JfB/ajqwfDGebcg2gMQbejOjg2zWjsyqA8Us3GqE8vO', 'pic.jpg', 'CVro_09.03.2024.pdf', 'Laravel Developer', 'Sunt un dezvoltator web specializat în framework-ul Laravel, cu o pasiune pentru crearea și optimizarea aplicațiilor web robuste și scalabile. Cu o experiență solidă în dezvoltarea backend-ului, sunt pregătit să abordez orice provocare tehnică și să livreze soluții inovatoare. Abilitățile mele cuprind dezvoltarea și implementarea API-urilor, lucrul cu baze de date relaționale și non-relaționale, precum și optimizarea performanței aplicațiilor. Sunt mereu deschis să învăț și să explorez tehnologii noi pentru a-mi îmbunătăți continuu abilitățile și pentru a oferi cele mai bune soluții pentru clienții și proiectele mele.', 'https://twitter.com/Cristianurcanu5', 'https://www.facebook.com/cristiantzurcanu', 'dSwcwSzUvMy79F1inQgoelAyYPnqZPLk8J7sFOByleTkHXlJmGjA2VxjmaBI', '2024-03-05 21:39:26', '2024-05-16 10:42:54'),
(2, 'user', 'user@mail.com', NULL, '$2y$12$LfLjddjXeKQds9qZ8ALeOek.WI9A59g9BC1dPYq3uz.Zbmyf7To7K', 'pic.jpg', 'Orar_An3_IE_Sem1.pdf', 'Fără calificare universitară', 'No bio', 'No twitter', 'No facebook', NULL, '2024-03-12 12:14:28', '2024-03-12 12:14:28'),
(3, 'Cristian', 'cristian@mail.com', NULL, '$2y$12$GghD90qU1QBaAmtDsf4KyuJsIEwlflpCrodOC6TY6YreMrWmFah4q', 'pic.jpg', 'No CV', 'Fără calificare universitară', 'No bio', 'No twitter', 'No facebook', NULL, '2024-04-08 09:37:17', '2024-04-08 09:37:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `jobsaved`
--
ALTER TABLE `jobsaved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobsaved`
--
ALTER TABLE `jobsaved`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `jobsaved`
--
ALTER TABLE `jobsaved`
  ADD CONSTRAINT `jobsaved_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `jobsaved_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
