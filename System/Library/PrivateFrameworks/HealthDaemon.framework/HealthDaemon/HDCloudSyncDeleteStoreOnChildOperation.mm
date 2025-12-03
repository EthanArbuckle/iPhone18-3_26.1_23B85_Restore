@interface HDCloudSyncDeleteStoreOnChildOperation
- (void)main;
@end

@implementation HDCloudSyncDeleteStoreOnChildOperation

- (void)main
{
  v25 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  computedState = [configuration computedState];
  pushTargets = [computedState pushTargets];

  if (pushTargets && (-[HDCloudSyncOperation profile](self, "profile"), v6 = objc_claimAutoreleasedReturnValue(), [v6 cloudSyncManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isChild"), v7, v6, (v8 & 1) != 0))
  {
    if ([pushTargets count] >= 2)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Watch has more than 1 push target", buf, 0xCu);
      }
    }

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    computedState2 = [configuration2 computedState];
    pushTargets2 = [computedState2 pushTargets];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke;
    v22[3] = &unk_278623C68;
    v22[4] = self;
    v13 = [pushTargets2 hk_map:v22];

    if ([v13 count])
    {
      v14 = [HDCloudSyncDeleteStoresOperation alloc];
      configuration3 = [(HDCloudSyncOperation *)self configuration];
      cloudState = [(HDCloudSyncOperation *)self cloudState];
      v17 = [(HDCloudSyncDeleteStoresOperation *)v14 initWithConfiguration:configuration3 cloudState:cloudState storeRecordsToDelete:v13];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_2;
      v20[3] = &unk_278614BA8;
      v20[4] = self;
      v21 = v13;
      [(HDCloudSyncOperation *)v17 setOnSuccess:v20];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_295;
      v19[3] = &unk_278613088;
      v19[4] = self;
      [(HDCloudSyncOperation *)v17 setOnError:v19];
      [(HDCloudSyncOperation *)v17 start];
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    }
  }

  else
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

id __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 storeRecord];
  if (!v4)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = [v5 record];
  v8 = [v7 creationDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = [v5 sequenceRecord];
  v12 = [v11 childRecordCount];

  if (v12 > 500 || Current - v10 > 1814400.0)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v5 description];
      v17 = v16;
      v18 = @" max active duration passed";
      v21 = 138543874;
      v22 = v4;
      v23 = 2114;
      if (v12 > 500)
      {
        v18 = @"record limit crossed";
      }

      v24 = v16;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting deletion of watch store: %{public}@ due to %{public}@", &v21, 0x20u);
    }

    v13 = [v3 storeRecord];
  }

  else
  {
LABEL_4:

    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    LODWORD(v3) = [v3 count];
    v6 = [MEMORY[0x277CBEAA8] date];
    v9 = 138543874;
    v10 = v4;
    v11 = 1024;
    v12 = v3;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted %d watch stores, deletionDate: %{public}@", &v9, 0x1Cu);
  }

  result = [*(a1 + 32) finishWithSuccess:1 error:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__HDCloudSyncDeleteStoreOnChildOperation_main__block_invoke_295(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete watch stores: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

@end