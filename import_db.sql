PRAGMA foreign_keys = ON;

CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  fname VARCHAR NOT NULL,
  lname VARCHAR NOT NULL
);

CREATE TABLE questions(
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL
);

CREATE TABLE question_follows(
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL
);

CREATE TABLE question_likes(
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL
);

CREATE TABLE replies(
  id INTEGER PRIMARY KEY,
  question_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  body TEXT NOT NULL,
  reply_id INTEGER
);

