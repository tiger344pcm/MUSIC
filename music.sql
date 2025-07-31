-- EDA project Questions for Music/Media Listening Data
           -- Understanding Your users And thier Habits:
            
            -- MUSIC_AND_MENTAL_HEALTH_SURVEY_REPORT
	-- 1 dEMOGRAPHIC aNALYSIS :
           -- Q1 What are the age distribution of your listeners?
SELECT 
    age, COUNT(Timestamp)
FROM
    music
GROUP BY age
ORDER BY COUNT(Timestamp) DESC;

            -- Q2 What are the top 5 primary streaming services used by your listeners?
           -- alter table music rename column `Primary streaming service` to Primary_streaming_service
SELECT 
    Primary_streaming_service, COUNT(Timestamp)
FROM
    music
GROUP BY Primary_streaming_service
ORDER BY COUNT(Timestamp) DESC
LIMIT 5;

      -- 2 Listening Patterns;
      -- Q3 What are the average listening duration per session   
	  -- alter table music rename column `Hours per day` to Hours_per_day

SELECT 
    AVG(Hours_per_day), Age
FROM
    music
GROUP BY Age;

  -- Q4 How does listening duration vary accross diffrent streaming services?
SELECT 
    COUNT(Primary_streaming_service), Hours_per_day
FROM
    music
GROUP BY Hours_per_day
ORDER BY COUNT(Primary_streaming_service) DESC;

                -- Engagement & Loyality:
      -- Q5 How many unique linteners are there in your dataset
SELECT DISTINCT
    COUNT(timestamp)
FROM
    music;
    
    
        -- Q6 Are there any users who stands out for exceptionally long listening durations or frequent activity
SELECT 
    timestamp, MAX(Hours_per_day)
FROM
    music
GROUP BY timestamp
ORDER BY MAX(Hours_per_day) DESC
LIMIT 1;

--                Genre Analysis
       -- alter table music rename column `Fav genre` to Fav_genre
       -- what are the most popular music genres among your listenes?
SELECT 
    COUNT(timestamp), Fav_genre
FROM
    music
GROUP BY fav_genre
ORDER BY COUNT(timestamp) DESC
LIMIT 1; 

 --  Q Are there specific genres that are the more popular with certain age groups or on particular streaming services?
SELECT 
    age, fav_genre
FROM
    music
GROUP BY age , fav_genre
ORDER BY age;
 
 
 -- CONCLUSION
 ✅ Project Completed – SQL EDA on Music/Media Listening Data 🎵📊

Alhamdulillah, I successfully performed Exploratory Data Analysis (EDA) on a Music/Media Listening dataset using SQL.
This project focused on understanding user demographics, listening patterns, engagement levels, and genre preferences.

Key highlights:

📌 Analyzed age distribution and top streaming services used.

📌 Explored average listening duration by age group and platforms.

📌 Identified unique listeners and highly engaged users.

📌 Discovered most popular music genres and age-based genre trends.


This project strengthened my SQL skills, particularly in data aggregation, grouping, filtering, and deriving meaningful insights for real-world media data analysis.

#SQL #DataAnalytics #EDA #MusicData #DataDrivenInsights #LearningJourney #Alhamdulillah
 