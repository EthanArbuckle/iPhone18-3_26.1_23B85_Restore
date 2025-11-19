@interface DEDTestingFinisher
+ (id)archivedClasses;
+ (id)log;
- (DEDBugSession)session;
- (DEDTestingFinisher)initWithCoder:(id)a3;
- (DEDTestingFinisher)initWithConfiguration:(id)a3 session:(id)a4;
- (id)flattenDirectories:(id)a3 progressHandler:(id)a4;
- (void)finishSession:(id)a3 withConfiguration:(id)a4;
- (void)writeData:(id)a3 filename:(id)a4;
@end

@implementation DEDTestingFinisher

+ (id)log
{
  if (log_onceToken_0 != -1)
  {
    +[DEDTestingFinisher log];
  }

  v3 = log_log_0;

  return v3;
}

void __25__DEDTestingFinisher_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-testing-finisher");
  v1 = log_log_0;
  log_log_0 = v0;
}

- (DEDTestingFinisher)initWithConfiguration:(id)a3 session:(id)a4
{
  v7.receiver = self;
  v7.super_class = DEDTestingFinisher;
  v4 = a4;
  v5 = [(DEDTestingFinisher *)&v7 init];
  objc_storeWeak(&v5->_session, v4);

  return v5;
}

- (void)finishSession:(id)a3 withConfiguration:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v63 = self;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Preparing to copy files to test directory.", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = [v5 allExtensionIdentifiers];
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v77;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v76 + 1) + 8 * i) stringValue];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v10);
  }

  v14 = objc_opt_new();
  v15 = [v5 identifier];
  v16 = [v14 directoryForBugSessionIdentifier:v15];

  v57 = v16;
  v17 = [MEMORY[0x277D051E0] lsDir:v16];
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v73;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v73 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v72 + 1) + 8 * j);
        v23 = [v22 lastPathComponent];
        if ([v7 containsObject:v23])
        {
          v24 = [MEMORY[0x277D051E0] isValidDirectory:v22];

          if (v24)
          {
            [v58 addObject:v22];
            continue;
          }
        }

        else
        {
        }

        v25 = [objc_opt_class() log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [DEDTestingFinisher finishSession:buf withConfiguration:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v19);
  }

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __54__DEDTestingFinisher_finishSession_withConfiguration___block_invoke;
  v70[3] = &unk_278F660D0;
  v26 = v5;
  v71 = v26;
  v27 = MEMORY[0x24C1E5320](v70);
  v28 = [[DEDCompressionDebouncer alloc] initWithTrigger:v27 interval:1.0];
  v29 = [(DEDCompressionDebouncer *)v28 handler];
  v30 = [(DEDTestingFinisher *)v63 flattenDirectories:v58 progressHandler:v29];

  v31 = [objc_opt_class() log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v81 = 138543362;
    v82 = v30;
    _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_DEFAULT, "attachments = %{public}@", v81, 0xCu);
  }

  v32 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v33 = [v32 temporaryDirectory];
  v34 = [v26 identifier];
  v35 = [v33 URLByAppendingPathComponent:v34];

  v69 = 0;
  v61 = v35;
  v62 = v32;
  [v32 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v69];
  v36 = v69;
  if (v36)
  {
    v37 = v36;
    v38 = [objc_opt_class() log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [DEDTestingFinisher finishSession:v37 withConfiguration:v38];
    }
  }

  v39 = [v30 count];
  if (v39)
  {
    v40 = v39;
    v55 = v28;
    v56 = v27;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v30;
    v59 = v30;
    v41 = [v59 countByEnumeratingWithState:&v65 objects:v80 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = *v66;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          v46 = v26;
          if (*v66 != v44)
          {
            objc_enumerationMutation(v59);
          }

          v47 = *(*(&v65 + 1) + 8 * k);
          v48 = [v47 lastPathComponent];
          v49 = [v61 URLByAppendingPathComponent:v48];
          v64 = 0;
          [v62 copyItemAtURL:v47 toURL:v49 error:&v64];
          v50 = v64;

          if (v50)
          {
            v51 = [objc_opt_class() log];
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [DEDTestingFinisher finishSession:v81 withConfiguration:v50];
            }
          }

          ++v43;
          v26 = v46;
          [v46 uploadProgress:v43 total:v40];
        }

        v42 = [v59 countByEnumeratingWithState:&v65 objects:v80 count:16];
      }

      while (v42);
    }

    else
    {
      v43 = 0;
    }

    v30 = v54;
    v28 = v55;
    if (v43 != v40)
    {
      v52 = [objc_opt_class() log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [DEDTestingFinisher finishSession:withConfiguration:];
      }
    }

    [v26 uploadProgress:v40 total:v40];
    v27 = v56;
  }

  else
  {
    [v26 uploadProgress:1 total:1];
  }

  [v26 didFinishUploadingWithError:0];

  v53 = *MEMORY[0x277D85DE8];
}

- (DEDTestingFinisher)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DEDTestingFinisher;
  return [(DEDTestingFinisher *)&v4 init];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)flattenDirectories:(id)a3 progressHandler:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33 = a4;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  v7 = 0;
  if (v6)
  {
    v8 = *v61;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [MEMORY[0x277D051E0] lsDir:*(*(&v60 + 1) + 8 * i)];
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v11)
        {
          v12 = *v57;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v57 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v56 + 1) + 8 * j);
              if ([MEMORY[0x277D051E0] isValidDirectory:v14])
              {
                v7 += [MEMORY[0x277D051A8] directorySizeOf:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v56 objects:v68 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v29 = obj;
  v31 = [v29 countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v31)
  {
    v15 = 0;
    v30 = *v53;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v29);
        }

        v16 = [MEMORY[0x277D051E0] lsDir:*(*(&v52 + 1) + 8 * k)];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        obja = v16;
        v17 = [obja countByEnumeratingWithState:&v48 objects:v66 count:16];
        if (v17)
        {
          v18 = *v49;
          do
          {
            for (m = 0; m != v17; ++m)
            {
              if (*v49 != v18)
              {
                objc_enumerationMutation(obja);
              }

              v20 = *(*(&v48 + 1) + 8 * m);
              if ([MEMORY[0x277D051E0] isValidDirectory:v20])
              {
                v44 = 0;
                v45 = &v44;
                v46 = 0x2020000000;
                v47 = 0;
                v21 = [objc_opt_class() log];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v65 = v20;
                  _os_log_debug_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEBUG, "Compressing folder... (%{public}@)", buf, 0xCu);
                }

                v22 = MEMORY[0x277D051A8];
                v39[0] = MEMORY[0x277D85DD0];
                v39[1] = 3221225472;
                v39[2] = __57__DEDTestingFinisher_flattenDirectories_progressHandler___block_invoke;
                v39[3] = &unk_278F660F8;
                v41 = &v44;
                v40 = v33;
                v42 = v15;
                v43 = v7;
                v23 = [v22 archiveDirectoryAt:v20 deleteOriginal:1 progressHandler:v39];
                v24 = v45[3];
                v25 = [objc_opt_class() log];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  [(DEDTestingFinisher *)&v37 flattenDirectories:v38 progressHandler:v25];
                }

                if (v23)
                {
                  [v36 addObject:v23];
                }

                else
                {
                  v26 = [objc_opt_class() log];
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v65 = v20;
                    _os_log_error_impl(&dword_248AD7000, v26, OS_LOG_TYPE_ERROR, "Error compressing: %{public}@", buf, 0xCu);
                  }
                }

                v15 += v24;
                _Block_object_dispose(&v44, 8);
              }

              else
              {
                [v36 addObject:v20];
              }
            }

            v17 = [obja countByEnumeratingWithState:&v48 objects:v66 count:16];
          }

          while (v17);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v31);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)writeData:(id)a3 filename:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(DEDTestingFinisher *)self session];
  v10 = [v9 identifier];
  v11 = [v8 directoryForBugSessionIdentifier:v10];

  v12 = [v11 URLByAppendingPathComponent:@"sendData"];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v12 path];
  v15 = [v13 fileExistsAtPath:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    [v16 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v23];
    v17 = v23;

    if (v17)
    {
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [DEDTestingFinisher writeData:filename:];
      }
    }
  }

  v19 = [v12 URLByAppendingPathComponent:v6];
  v22 = 0;
  [v7 writeToURL:v19 options:2 error:&v22];

  v20 = v22;
  if (v20)
  {
    v21 = [objc_opt_class() log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DEDTestingFinisher writeData:filename:];
    }
  }
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)finishSession:(uint64_t)a1 withConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error: Found folder that does not map to a completed extension: %{public}@");
}

- (void)finishSession:(void *)a1 withConfiguration:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error creating destination directory. %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)finishSession:(uint64_t)a1 withConfiguration:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error copying to destination directory. %@");
}

- (void)finishSession:withConfiguration:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_248AD7000, v1, OS_LOG_TYPE_ERROR, "Expected to complete %lu files, but only completed %lu.", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)flattenDirectories:(os_log_t)log progressHandler:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "Finished compressing", buf, 2u);
}

- (void)writeData:filename:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Failed to create sendData directory: [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)writeData:filename:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Failed to save data: [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end