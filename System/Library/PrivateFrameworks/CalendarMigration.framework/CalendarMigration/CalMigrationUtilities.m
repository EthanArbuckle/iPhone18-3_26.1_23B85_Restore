@interface CalMigrationUtilities
+ (id)destinationCalendarDirectory;
+ (id)homeRelativePathForURL:(id)a3 inCalendarDirectory:(id)a4;
+ (id)subdirectoriesInDirectory:(id)a3 withPrivacySafePathProvider:(id)a4 error:(id *)a5;
+ (id)validatedSourceCalendarDirectoryForHomeDirectory:(id)a3;
+ (void)clearPreviousMigrationResultsWithDatabaseFileURL:(id)a3;
+ (void)enumerateSelfAndDetachedEventsWithEvent:(void *)a3 usingBlock:(id)a4;
@end

@implementation CalMigrationUtilities

+ (id)validatedSourceCalendarDirectoryForHomeDirectory:(id)a3
{
  v3 = [a1 sourceCalendarDirectoryForHomeDirectory:a3];
  v14 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v14];

  if (v6)
  {
    if (v14)
    {
      v7 = v3;
      goto LABEL_10;
    }

    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "Calendar directory is a file instead of a folder.";
      v10 = &v12;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = +[CalMigrationLog defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "User home directory has no calendar directory.";
      v10 = &v13;
LABEL_8:
      _os_log_impl(&dword_2428EA000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)homeRelativePathForURL:(id)a3 inCalendarDirectory:(id)a4
{
  v5 = a3;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_18;
  }

  v6 = [a4 path];
  v7 = [v6 stringByStandardizingPath];

  v8 = [v5 path];
  v9 = [v8 stringByStandardizingPath];

  v10 = [v7 pathComponents];
  v11 = [v9 pathComponents];
  v12 = [v11 count];
  if (v12 < [v10 count])
  {
    v13 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
LABEL_15:

      v20 = v9;
      goto LABEL_16;
    }

LABEL_14:
    +[CalMigrationUtilities homeRelativePathForURL:inCalendarDirectory:];
    goto LABEL_15;
  }

  if ([v10 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v11 objectAtIndexedSubscript:v15];
      v17 = [v10 objectAtIndexedSubscript:v15];
      v18 = [v16 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (++v15 == [v10 count])
      {
        goto LABEL_10;
      }
    }

    v13 = +[CalMigrationLog defaultCategory];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  v19 = [v11 count];
  if (v19 == [v10 count])
  {
    v20 = @"Library/Calendar";
LABEL_16:
    v14 = v20;
    goto LABEL_17;
  }

  v21 = [v11 subarrayWithRange:{objc_msgSend(v10, "count"), objc_msgSend(v11, "count") - objc_msgSend(v10, "count")}];
  v22 = [@"Library/Calendar" pathComponents];
  v23 = [v22 arrayByAddingObjectsFromArray:v21];
  v14 = [MEMORY[0x277CCACA8] pathWithComponents:v23];

LABEL_17:
LABEL_18:

  return v14;
}

+ (id)subdirectoriesInDirectory:(id)a3 withPrivacySafePathProvider:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:0 error:a5];

  if (v9)
  {
    v26 = v7;
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = v11;
    v13 = *v31;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 path];
        v17 = [v16 stringByStandardizingPath];

        v29 = 0;
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v19 = [v18 fileExistsAtPath:v17 isDirectory:&v29];

        if (v19)
        {
          if (v29 != 1)
          {
            goto LABEL_13;
          }

          v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
          [v28 addObject:v20];
        }

        else
        {
          v20 = +[CalMigrationLog defaultCategory];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v21 = [v27 privacySafePathForURLInCalendarDirectory:v15];
            *buf = 138543362;
            v35 = v21;
            _os_log_fault_impl(&dword_2428EA000, v20, OS_LOG_TYPE_FAULT, "File %{public}@ doesn't exist right after we found it by listing its parent directory.", buf, 0xCu);
          }
        }

LABEL_13:
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (!v12)
      {
LABEL_15:

        v22 = [v28 copy];
        v9 = v25;
        v7 = v26;
        goto LABEL_17;
      }
    }
  }

  v22 = 0;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)destinationCalendarDirectory
{
  v2 = CalDatabaseCopyDirectoryPath();
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];

  return v3;
}

+ (void)enumerateSelfAndDetachedEventsWithEvent:(void *)a3 usingBlock:(id)a4
{
  v5 = a4;
  v10 = 0;
  v5[2](v5, a3, a3, &v10);
  v6 = CalEventCopyDetachedEvents();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__CalMigrationUtilities_enumerateSelfAndDetachedEventsWithEvent_usingBlock___block_invoke;
  v8[3] = &unk_278D6D490;
  v9 = v5;
  v7 = v5;
  [v6 enumerateCalEventRefsUsingBlock:v8];
}

+ (void)clearPreviousMigrationResultsWithDatabaseFileURL:(id)a3
{
  v6 = [a3 path];
  v3 = [v6 stringByAppendingString:@"-shm"];
  v4 = [v6 stringByAppendingString:@"-wal"];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 removeItemAtPath:v6 error:0];
  [v5 removeItemAtPath:v3 error:0];
  [v5 removeItemAtPath:v4 error:0];
}

+ (void)homeRelativePathForURL:inCalendarDirectory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2428EA000, v0, v1, "Invalid URL (not in the calendar directory) given to _homeRelativePathForURL:inCalendarDirectory: url = %@, calendarDirectory = %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end