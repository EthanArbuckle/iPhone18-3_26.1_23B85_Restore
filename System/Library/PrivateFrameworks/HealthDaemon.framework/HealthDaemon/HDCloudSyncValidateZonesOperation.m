@interface HDCloudSyncValidateZonesOperation
- (void)main;
@end

@implementation HDCloudSyncValidateZonesOperation

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = [(HDCloudSyncOperation *)self cloudState];
    v4 = [v3 zonesByIdentifier];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v9 = MEMORY[0x277CCC328];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          if (([v11 validatedForSharing] & 1) == 0)
          {
            _HKInitializeLogging();
            v12 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v32 = self;
              v33 = 2114;
              v34 = v11;
              _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Discarding zone for invalid sharing state: %{public}@", buf, 0x16u);
            }

            v13 = [(HDCloudSyncOperation *)self cloudState];
            v30 = v11;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
            v15 = [v13 cloudStateByRemovingZones:v14];
            [(HDCloudSyncOperation *)self setCloudState:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v7);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(HDCloudSyncOperation *)self cloudState];
    v17 = [v16 zonesByIdentifier];
    v18 = [v17 allValues];

    v19 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v26 + 1) + 8 * j);
          if ([v23 hasOrphanedSequenceRecords])
          {
            v24 = [MEMORY[0x277CCA9B8] hk_error:719 format:{@"Orphaned sequence record found in zone %@", v23}];
            [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
}

@end