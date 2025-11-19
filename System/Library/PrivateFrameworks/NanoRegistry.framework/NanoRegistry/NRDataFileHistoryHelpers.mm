@interface NRDataFileHistoryHelpers
+ (BOOL)archiveDeviceHistory:(id)a3;
+ (BOOL)archiveSecureProperties:(id)a3;
+ (BOOL)createMissingDates:(id)a3;
+ (id)unarchiveDeviceHistory;
+ (id)unarchiveSecureProperties;
@end

@implementation NRDataFileHistoryHelpers

+ (id)unarchiveDeviceHistory
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v4 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
  v5 = [v2 nr_secureUnarchiveObjectOfClasses:v3 withFile:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = nr_daemon_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = 138543618;
          v15 = v11;
          v16 = 2114;
          v17 = v13;
          _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failure loading history file %{public}@: File has incorrect object %{public}@.", &v14, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)archiveDeviceHistory:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
  if ([v3 dirty])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E696ACC8] nr_secureArchivedDataWithRootObject:v3];
    v7 = v6;
    if (v6)
    {
      v16 = 0;
      v8 = [v6 writeToFile:v4 options:268435457 error:&v16];
      v9 = v16;
      if (v8)
      {
        LOBYTE(v10) = 1;
LABEL_15:

        objc_autoreleasePoolPop(v5);
        goto LABEL_16;
      }

      v12 = nr_daemon_log();
      LODWORD(v10) = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_15;
      }

      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 nr_safeDescription];
        *buf = 138543618;
        v18 = v4;
        v19 = 2114;
        v20 = v15;
        _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "Failure saving active state machine file %{public}@: writeToFile returned NO %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v11 = nr_daemon_log();
      LODWORD(v10) = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "Failure saving history file %{public}@: Archiver returned nil", buf, 0xCu);
      }

      v9 = 0;
    }

    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  v9 = 0;
  LOBYTE(v10) = 1;
LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void __64__NRDataFileHistoryHelpers_findPairedDateForDeviceID_inHistory___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if ([a2 isEqual:*(a1 + 32)] && objc_msgSend(v9, "isEqual:", MEMORY[0x1E695E118]))
  {
    v6 = [*(a1 + 40) date];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

+ (BOOL)createMissingDates:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v44 = [MEMORY[0x1E695DF90] dictionary];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [v50 deviceCollection];
  v48 = [obj countByEnumeratingWithState:&v63 objects:v87 count:16];
  if (v48)
  {
    v47 = *v64;
    do
    {
      v3 = 0;
      do
      {
        if (*v64 != v47)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v49 = v3;
        v52 = *(*(&v63 + 1) + 8 * v3);
        v5 = [v50 deviceCollection];
        v54 = [v5 objectForKeyedSubscript:v52];

        v53 = [MEMORY[0x1E695DF90] dictionary];
        v6 = [v54 objectForKeyedSubscript:@"isPaired"];
        v7 = [v6 value];
        v8 = [v7 BOOLValue];

        if (v8)
        {
          v9 = [v54 objectForKeyedSubscript:@"pairedDate"];
          v51 = [v9 value];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = MEMORY[0x1E695DF00];
          if (isKindOfClass)
          {
            [v51 doubleValue];
            v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
            if (!v11)
            {
              goto LABEL_12;
            }

LABEL_29:
            v28 = [NRDevicePropertyDiffType alloc];
            v29 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
            v30 = [(NRDevicePropertyDiffType *)v28 initWithDiff:v29 andChangeType:1];

            [v53 setObject:v30 forKeyedSubscript:@"pairedDate"];
            if (v11)
            {
LABEL_30:
              v31 = [v54 objectForKeyedSubscript:@"lastActiveDate"];
              v32 = [v31 value];

              if (v32)
              {
                v51 = v32;
              }

              else
              {
                v33 = [NRDevicePropertyDiffType alloc];
                v34 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
                v35 = [(NRDevicePropertyDiffType *)v33 initWithDiff:v34 andChangeType:1];

                [v53 setObject:v35 forKeyedSubscript:@"lastActiveDate"];
                v51 = 0;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v51;
              if (v11)
              {
                goto LABEL_30;
              }
            }

LABEL_12:
            v57 = v52;
            v12 = v50;
            objc_opt_self();
            v77 = 0;
            v78 = &v77;
            v79 = 0x3032000000;
            v80 = __Block_byref_object_copy__6;
            v81 = __Block_byref_object_dispose__6;
            v82 = 0;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v55 = v12;
            v58 = [v55 countByEnumeratingWithState:&v73 objects:v88 count:16];
            if (v58)
            {
              v56 = *v74;
              do
              {
                for (i = 0; i != v58; ++i)
                {
                  if (*v74 != v56)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v13 = *(*(&v73 + 1) + 8 * i);
                  v14 = [v13 diff];
                  v67[0] = MEMORY[0x1E69E9820];
                  v67[1] = 3221225472;
                  v68 = __64__NRDataFileHistoryHelpers_findPairedDateForDeviceID_inHistory___block_invoke;
                  v69 = &unk_1E86DC780;
                  v15 = v57;
                  v71 = v13;
                  v72 = &v77;
                  v70 = v15;
                  v16 = v14;
                  v62 = @"isPaired";
                  v60 = v67;
                  objc_opt_self();
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v17 = v16;
                  v18 = [v17 countByEnumeratingWithState:&v83 objects:v89 count:16];
                  if (v18)
                  {
                    v61 = *v84;
                    do
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v84 != v61)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v20 = *(*(&v83 + 1) + 8 * j);
                        v21 = [v17 objectForKeyedSubscript:v20];
                        v22 = [v21 diff];
                        v23 = [v22 objectForKeyedSubscript:v62];
                        v24 = v23;
                        if (v23)
                        {
                          v25 = [v23 changeType];
                          v26 = [v24 diff];
                          v27 = [v26 value];
                          v68(v60, v20, v25, v27);
                        }
                      }

                      v18 = [v17 countByEnumeratingWithState:&v83 objects:v89 count:16];
                    }

                    while (v18);
                  }
                }

                v58 = [v55 countByEnumeratingWithState:&v73 objects:v88 count:16];
              }

              while (v58);
            }

            v11 = v78[5];
            _Block_object_dispose(&v77, 8);

            if (((v11 == 0) & ~isKindOfClass) == 0)
            {
              goto LABEL_29;
            }

            v11 = 0;
          }
        }

        if ([v53 count])
        {
          v36 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v53];
          v37 = [[NRDeviceDiffType alloc] initWithDiff:v36 andChangeType:1];
          [v44 setObject:v37 forKeyedSubscript:v52];
        }

        v3 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v63 objects:v87 count:16];
    }

    while (v48);
  }

  if ([v44 count])
  {
    v38 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v44];
    v39 = [v50 deviceCollection];
    v40 = [v39 applyDiff:v38];
  }

  if ([v50 dirty])
  {
    v41 = [NRDataFileHistoryHelpers archiveDeviceHistory:v50];
  }

  else
  {
    v41 = 1;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

+ (BOOL)archiveSecureProperties:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 dirty] && (v4 = MEMORY[0x1E696ACC8], +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile](NRDataFilePaths, "pathToNanoRegistryHistorySecurePropertiesFile"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "nr_secureArchiveRootObject:toFile:", v3, v5), v5, (v4 & 1) == 0))
  {
    v9 = nr_daemon_log();
    LODWORD(v6) = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
        v11 = 138543362;
        v12 = v10;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "Failure saving secure properties file %{public}@: Archiver returned NO", &v11, 0xCu);
      }

      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)unarchiveSecureProperties
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v4 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
  v5 = [v2 nr_secureUnarchiveObjectOfClasses:v3 withFile:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = nr_daemon_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = 138543618;
          v15 = v11;
          v16 = 2114;
          v17 = v13;
          _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failure loading secure properties file %{public}@: File has incorrect object %{public}@.", &v14, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

@end