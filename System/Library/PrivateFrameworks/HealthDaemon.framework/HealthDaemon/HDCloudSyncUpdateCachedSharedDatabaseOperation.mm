@interface HDCloudSyncUpdateCachedSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedSharedDatabaseOperation

- (void)main
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [(HDCloudSyncOperation *)self configuration];
  v3 = [v2 repository];
  v4 = [v3 syncAvailability];

  if ([v4 shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(v4, "shouldSyncSummarySharingPush"))
  {
    v25 = v4;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [(HDCloudSyncOperation *)self configuration];
    v6 = [v5 repository];
    v7 = [v6 allCKContainers];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v27 = *v31;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * v11);
          v14 = [(HDCloudSyncOperation *)self configuration];
          v15 = [v14 cachedCloudState];
          v16 = [v13 containerIdentifier];
          v17 = [v13 sharedCloudDatabase];
          v18 = [v17 databaseScope];
          v29 = v12;
          v19 = [v15 addDatabaseWithContainerIdentifier:v16 databaseScope:v18 error:&v29];
          v10 = v29;

          if ((v19 & 1) == 0)
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v21 = v20;
              v22 = [v13 containerIdentifier];
              *buf = 138543874;
              v35 = self;
              v36 = 2114;
              v37 = v22;
              v38 = 2114;
              v39 = v10;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cache with shared database in container %{public}@, error: %{public}@", buf, 0x20u);
            }

            [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
          }

          ++v11;
          v12 = v10;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    v4 = v25;
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = self;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end