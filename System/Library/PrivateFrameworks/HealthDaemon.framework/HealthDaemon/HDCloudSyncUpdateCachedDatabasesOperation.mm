@interface HDCloudSyncUpdateCachedDatabasesOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedDatabasesOperation

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [(HDCloudSyncOperation *)self configuration];
  v3 = [v2 repository];
  v4 = [v3 allCKContainers];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v22 = *v26;
    while (2)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v8);
        v11 = [(HDCloudSyncOperation *)self configuration];
        v12 = [v11 cachedCloudState];
        v13 = [v10 containerIdentifier];
        v14 = [v10 privateCloudDatabase];
        v15 = [v14 databaseScope];
        v24 = v9;
        v16 = [v12 addDatabaseWithContainerIdentifier:v13 databaseScope:v15 error:&v24];
        v7 = v24;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v19 = v17;
            v20 = [v10 containerIdentifier];
            *buf = 138543874;
            v30 = self;
            v31 = 2114;
            v32 = v20;
            v33 = 2114;
            v34 = v7;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cache with private database in container %{public}@, error: %{public}@", buf, 0x20u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];

          goto LABEL_15;
        }

        ++v8;
        v9 = v7;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

@end