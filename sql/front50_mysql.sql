CREATE DATABASE `front50` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'front50_service'@'%';

GRANT
  SELECT, INSERT, UPDATE, DELETE, CREATE, EXECUTE, SHOW VIEW
ON `front50`.*
TO 'front50_service'@'%'; -- IDENTIFIED BY "password" if using password based auth

CREATE USER 'front50_migrate'@'%';

GRANT
  SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, LOCK TABLES, EXECUTE, SHOW VIEW
ON `front50`.*
TO 'front50_migrate'@'%'; -- IDENTIFIED BY "password" if using password based auth
