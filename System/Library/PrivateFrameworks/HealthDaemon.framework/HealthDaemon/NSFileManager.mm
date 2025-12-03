@interface NSFileManager
- (uint64_t)_hd_removeDatabaseFilesAtDatabaseURL:(void *)l extensionSuffixes:(int)suffixes preserveCopy:;
@end

@implementation NSFileManager

- (uint64_t)_hd_removeDatabaseFilesAtDatabaseURL:(void *)l extensionSuffixes:(int)suffixes preserveCopy:
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a2;
  lCopy = l;
  v38 = lCopy;
  v39 = v6;
  if (self)
  {
    v8 = lCopy;
    if (!v6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__hd_removeDatabaseFilesAtDatabaseURL_extensionSuffixes_preserveCopy_ object:self file:@"NSFileManager+HealthDaemon.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"databaseURL != nil"}];
    }

    if (![v8 count])
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__hd_removeDatabaseFilesAtDatabaseURL_extensionSuffixes_preserveCopy_ object:self file:@"NSFileManager+HealthDaemon.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[extensionsSuffixes count] > 0"}];
    }

    lastPathComponent = [v6 lastPathComponent];
    uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
    v11 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [lastPathComponent stringByAppendingString:*(*(&v49 + 1) + 8 * i)];
          v18 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v17];
          [v11 addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v14);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v11;
    v19 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      v40 = 1;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v45 + 1) + 8 * j);
          if (suffixes)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lf.moved-aside", CFAbsoluteTimeGetCurrent()];
            v25 = [v23 URLByAppendingPathExtension:v24];

            v44 = 0;
            LOBYTE(v24) = [self copyItemAtURL:v23 toURL:v25 error:&v44];
            v26 = v44;
            v27 = v26;
            if ((v24 & 1) == 0 && ([v26 hk_isCocoaNoSuchFileError] & 1) == 0)
            {
              _HKInitializeLogging();
              v28 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v54 = v27;
                _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Failed to preserve copy of database file: %{public}@", buf, 0xCu);
              }
            }
          }

          v43 = 0;
          v29 = [self removeItemAtURL:v23 error:&v43];
          v30 = v43;
          v31 = v30;
          if (v29)
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v54 = v23;
              _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "Deleted database file at URL %{public}@", buf, 0xCu);
            }
          }

          else if (([v30 hk_isCocoaNoSuchFileError] & 1) == 0)
          {
            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v54 = v23;
              v55 = 2114;
              v56 = v31;
              _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Failed to delete file at URL %{public}@: %{public}@", buf, 0x16u);
            }

            v40 = 0;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v20);
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v40 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v40 & 1;
}

@end