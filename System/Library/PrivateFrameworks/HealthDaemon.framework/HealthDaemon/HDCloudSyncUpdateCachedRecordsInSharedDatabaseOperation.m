@interface HDCloudSyncUpdateCachedRecordsInSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedRecordsInSharedDatabaseOperation

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 syncAvailability];

  if ([v5 shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(v5, "shouldSyncSummarySharingPush"))
  {
    v6 = [(HDCloudSyncUpdateCachedRecordsOperation *)self taskGroup];
    [v6 beginTask];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 allCKContainers];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 sharedCloudDatabase];
          [(HDCloudSyncUpdateCachedRecordsOperation *)self fetchRecordZoneChangesForContainer:v14 database:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v16 = [(HDCloudSyncUpdateCachedRecordsOperation *)self taskGroup];
    [v16 finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching records in shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end