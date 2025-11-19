@interface _DPTokenFetcher
+ (unint64_t)getTaskPeriodSeconds;
- (BOOL)cleanupStaleTokensInPath:(id)a3;
- (_DPTokenFetcher)initWithTaskName:(id)a3;
- (void)doMaintenance;
- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4;
@end

@implementation _DPTokenFetcher

- (_DPTokenFetcher)initWithTaskName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DPTokenFetcher;
  v5 = [(_DPTokenFetcher *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    taskName = v5->_taskName;
    v5->_taskName = v6;

    v5->_taskPeriodSeconds = +[_DPTokenFetcher getTaskPeriodSeconds];
  }

  return v5;
}

- (void)doMaintenance
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.DPSubmissionService";
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "Could not create connection to %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)cleanupStaleTokensInPath:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[_DPStrings tokensDirectoryPath];
  }

  v5 = [_DPReportFilesMaintainer reportsInDirectory:v4, v4];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEAA8] date];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      v28 = v9;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v31 + 1) + 8 * v11) path];
        v13 = [v6 attributesOfItemAtPath:v12 error:0];
        v14 = [v13 fileCreationDate];

        v15 = [v14 dateByAddingTimeInterval:86500.0];
        if ([v15 compare:v7] == -1)
        {
          v16 = v10;
          v17 = v7;
          v30 = 0;
          v18 = v6;
          v19 = [v6 removeItemAtPath:v12 error:&v30];
          v20 = v30;
          v21 = +[_DPLog framework];
          v22 = v21;
          if (v19)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v12;
              _os_log_impl(&dword_22622D000, v22, OS_LOG_TYPE_INFO, "Successfully removed token bucket file %@.", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = [v20 localizedDescription];
            *buf = 138412546;
            v36 = v12;
            v37 = 2112;
            v38 = v23;
            _os_log_error_impl(&dword_22622D000, v22, OS_LOG_TYPE_ERROR, "Failed to remove token bucket file %@ with error %@.", buf, 0x16u);
          }

          v7 = v17;
          v10 = v16;
          v6 = v18;
          v9 = v28;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56___DPTokenFetcher_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  v4 = a3;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = +[_DPPeriodicTask taskWithName:period:handler:networkingRequired:](_DPPeriodicTask, "taskWithName:period:handler:networkingRequired:", v4, +[_DPTokenFetcher getTaskPeriodSeconds], v5, 1);

  [_DPPeriodicTaskManager registerTask:v6];
}

+ (unint64_t)getTaskPeriodSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = kSecondsIn4Hours;
  v3 = +[_DPStrings submissionServiceDomainName];
  v4 = +[_DPStrings tokenRefreshHoursKeyName];
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v3];
  v6 = v5;
  if (!v5)
  {
    v8 = +[_DPLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v3;
      v16 = 2048;
      v17 = v2;
      v9 = "No defaults in %@, using default token fresh interval of %lu seconds";
      v10 = v8;
      v11 = 22;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v7 = [v5 integerForKey:v4];
  if (v7 >= 1)
  {
    v2 = 3600 * v7;
    v8 = +[_DPLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412802;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = v2;
      v9 = "Using value from %@.%@ to refresh tokens every %ld seconds";
      v10 = v8;
      v11 = 32;
LABEL_7:
      _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, v9, &v14, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

@end