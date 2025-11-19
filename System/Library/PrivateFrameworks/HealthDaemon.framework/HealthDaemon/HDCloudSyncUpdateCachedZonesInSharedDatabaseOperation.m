@interface HDCloudSyncUpdateCachedZonesInSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedZonesInSharedDatabaseOperation

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 syncAvailability];

  if ([v5 shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(v5, "shouldSyncSummarySharingPush"))
  {
    v6 = [(HDCloudSyncUpdateCachedZonesOperation *)self taskGroup];
    [v6 beginTask];

    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 allCKContainers];
    v10 = [v9 allObjects];

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 count];
      v14 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v31 = self;
      v32 = 2048;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning zone fetches for shared databases in %ld containers: %{public}@", buf, 0x20u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [v20 sharedCloudDatabase];
          [(HDCloudSyncUpdateCachedZonesOperation *)self fetchChangesForContainer:v20 database:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    v22 = [(HDCloudSyncUpdateCachedZonesOperation *)self taskGroup];
    [v22 finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = self;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching records in shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end