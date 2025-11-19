@interface HDCloudSyncPipelineStageCheckForRequiredProfileDeletion
- (void)main;
@end

@implementation HDCloudSyncPipelineStageCheckForRequiredProfileDeletion

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 context];
  v5 = [v4 options];

  if ((v5 & 0x200) == 0)
  {
    v6 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
    [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 profile];
    v10 = [v9 legacyRepositoryProfile];

    if ([v10 profileType] != 3 && objc_msgSend(v10, "profileType") != 2)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
      goto LABEL_17;
    }

    v11 = [(HDCloudSyncOperation *)self configuration];
    v12 = [v11 cachedCloudState];
    v22 = 0;
    v13 = [v12 zonesByIdentifierWithError:&v22];
    v14 = v22;

    if (v13 || !v14)
    {
      if (![v13 count])
      {
        [v10 triggerDeletion];
        v21 = [MEMORY[0x277CCA9B8] hk_error:714 format:{@"Profile does not have any zones. Deleting profile: %@", v10}];
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v21];

        goto LABEL_15;
      }

      v16 = self;
      v17 = 1;
      v18 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v24 = self;
        v25 = 2114;
        v26 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      v16 = self;
      v17 = 0;
      v18 = v14;
    }

    [(HDCloudSyncOperation *)v16 finishWithSuccess:v17 error:v18];
LABEL_15:

LABEL_17:
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = self;
    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping stale profile deletion due to pipeline options.", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

@end