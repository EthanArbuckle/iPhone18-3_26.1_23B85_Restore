@interface _DPReportFilesMaintainer
+ (BOOL)removeFilesFrom:(id)a3 olderThanSecond:(double)a4;
+ (BOOL)retireFiles:(id)a3 toDirectory:(id)a4;
+ (id)reportsInDirectory:(id)a3;
- (BOOL)doMaintenance;
- (_DPReportFilesMaintainer)init;
- (_DPReportFilesMaintainer)initWithDirectoryPath:(id)a3;
- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4;
@end

@implementation _DPReportFilesMaintainer

- (_DPReportFilesMaintainer)initWithDirectoryPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DPReportFilesMaintainer;
  v6 = [(_DPReportFilesMaintainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportsDirectoryPath, a3);
  }

  return v7;
}

- (_DPReportFilesMaintainer)init
{
  v3 = +[_DPStrings reportsDirectoryPath];
  v4 = [(_DPReportFilesMaintainer *)self initWithDirectoryPath:v3];

  return v4;
}

+ (id)reportsInDirectory:(id)a3
{
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 enumeratorAtPath:v3];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v8];
      v15 = 0;
      if ([v5 fileExistsAtPath:v9 isDirectory:&v15])
      {
        if (v15 == 1)
        {
          [v6 skipDescendents];
        }

        else
        {
          v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
          [v4 addObject:v10];
        }
      }

      v11 = [v6 nextObject];

      v8 = v11;
    }

    while (v11);
  }

  v12 = [v4 copy];

  objc_autoreleasePoolPop(context);

  return v12;
}

+ (BOOL)removeFilesFrom:(id)a3 olderThanSecond:(double)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-a4];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 enumeratorAtPath:v5];
  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = [*(v11 + 3240) stringWithFormat:@"%@/%@", v5, v10];
      v21 = 0;
      if ([v7 fileExistsAtPath:v12 isDirectory:&v21])
      {
        if (v21 == 1)
        {
          [v8 skipDescendents];
        }

        else
        {
          v13 = [v7 attributesOfItemAtPath:v12 error:0];
          v14 = [v13 fileCreationDate];

          if ([v14 compare:v6] == -1)
          {
            v15 = [MEMORY[0x277CCAA00] defaultManager];
            [v15 attributesOfItemAtPath:v12 error:0];
            v16 = v11;
            v18 = v17 = v6;
            [v18 fileSize];

            v6 = v17;
            v11 = v16;

            [v7 removeItemAtPath:v12 error:0];
          }
        }
      }

      v19 = [v8 nextObject];

      v10 = v19;
    }

    while (v19);
  }

  return 1;
}

+ (BOOL)retireFiles:(id)a3 toDirectory:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [MEMORY[0x277CCAA00] defaultManager];
  v27 = v34 = 0;
  v28 = v6;
  if (([v27 fileExistsAtPath:v6 isDirectory:&v34] & 1) == 0)
  {
    obj = +[_DPLog daemon];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [_DPReportFilesMaintainer retireFiles:v6 toDirectory:&v34];
    }

    goto LABEL_19;
  }

  if ((v34 & 1) == 0)
  {
    obj = +[_DPLog daemon];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [_DPReportFilesMaintainer retireFiles:v6 toDirectory:&v34];
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = v5;
    v9 = *v31;
    v25 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 absoluteString];
        v13 = [v12 lastPathComponent];

        v14 = [v28 stringByAppendingPathComponent:v13];
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
        v16 = [v11 path];
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v17 attributesOfItemAtPath:v16 error:0];
        [v18 fileSize];

        v29 = 0;
        LOBYTE(v17) = [v27 moveItemAtURL:v11 toURL:v15 error:&v29];
        v19 = v29;
        if ((v17 & 1) == 0)
        {
          v20 = +[_DPLog daemon];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v36 = v11;
            v37 = 2112;
            v38 = v15;
            v39 = 2112;
            v40 = v19;
            _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "moveItemAtURL:%@ toURL:%@ failed with error %@", buf, 0x20u);
          }

          v25 = 0;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v8);
    v5 = v24;
    v21 = v25;
  }

  else
  {
    v21 = 1;
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

- (BOOL)doMaintenance
{
  v3 = kSecondsIn3Day;
  v4 = objc_autoreleasePoolPush();
  [objc_opt_class() removeFilesFrom:self->_reportsDirectoryPath olderThanSecond:v3];
  v5 = objc_opt_class();
  v6 = [objc_opt_class() retiredReportsPath:self->_reportsDirectoryPath];
  [v5 removeFilesFrom:v6 olderThanSecond:v3];

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65___DPReportFilesMaintainer_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  v4 = a3;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:v4 period:kSecondsIn24Hours handler:v5];

  [_DPPeriodicTaskManager registerTask:v6];
}

+ (void)retireFiles:(uint64_t)a1 toDirectory:(unsigned __int8 *)a2 .cold.1(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_22622D000, v3, v4, "fileExistsAtPath:isDirectory: failed for %@ ; isDirectory=%d");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)retireFiles:(uint64_t)a1 toDirectory:(unsigned __int8 *)a2 .cold.2(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_22622D000, v3, v4, "fileExistsAtPath:isDirectory: was successful for %@ ; isDirectory=%d");
  v5 = *MEMORY[0x277D85DE8];
}

@end