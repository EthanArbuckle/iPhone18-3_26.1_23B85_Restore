@interface HDCloudSyncUpdateCachedZonesInSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedZonesInSharedDatabaseOperation

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];

  if ([syncAvailability shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(syncAvailability, "shouldSyncSummarySharingPush"))
  {
    taskGroup = [(HDCloudSyncUpdateCachedZonesOperation *)self taskGroup];
    [taskGroup beginTask];

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration2 repository];
    allCKContainers = [repository2 allCKContainers];
    allObjects = [allCKContainers allObjects];

    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [allObjects count];
      v14 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      selfCopy2 = self;
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
    v15 = allObjects;
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
          sharedCloudDatabase = [v20 sharedCloudDatabase];
          [(HDCloudSyncUpdateCachedZonesOperation *)self fetchChangesForContainer:v20 database:sharedCloudDatabase];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    taskGroup2 = [(HDCloudSyncUpdateCachedZonesOperation *)self taskGroup];
    [taskGroup2 finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching records in shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end