@interface HDCloudSyncPipelineStageStateSync
- (void)main;
@end

@implementation HDCloudSyncPipelineStageStateSync

- (void)main
{
  v2 = self;
  v60 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = [(HDCloudSyncOperation *)v2 profile];
    v5 = [v4 daemon];
    v6 = [v5 cloudSyncCoordinator];
    v7 = [v6 stateSyncEntityClasses];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v55 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v56;
      v11 = &selRef_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler_;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v55 + 1) + 8 * i);
          if ([v13 conformsToProtocol:v11[326]])
          {
            v14 = MEMORY[0x277CBC5F8];
            [(HDCloudSyncOperation *)v2 configuration];
            v16 = v15 = v2;
            v17 = [v16 syncContainerPrefix];
            v18 = [v13 stateEntitySchema];
            [v18 domain];
            v19 = v10;
            v21 = v20 = v3;
            v22 = [v14 hd_stateSyncZoneIDForSyncCircleIdentifier:v17 domain:v21];

            v3 = v20;
            v10 = v19;

            v2 = v15;
            v11 = &selRef_remote_saveDataObjects_skipInsertionFilter_transactionIdentifier_final_handler_;
            v23 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v22];
            [v3 addObject:v23];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v55 objects:buf count:16];
      }

      while (v9);
    }
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {
    v24 = [HDCloudSyncCompoundOperation alloc];
    v25 = [(HDCloudSyncOperation *)v2 configuration];
    v26 = [(HDCloudSyncCompoundOperation *)v24 initWithConfiguration:v25 cloudState:0 name:@"State Sync" continueOnSubOperationError:1];

    v27 = [HDCloudSyncCreateZonesOperation alloc];
    v28 = [(HDCloudSyncOperation *)v2 configuration];
    v29 = [(HDCloudSyncOperation *)v2 configuration];
    [v29 repository];
    v31 = v30 = v2;
    v32 = [v31 primaryCKContainer];
    obja = v3;
    v33 = [(HDCloudSyncCreateZonesOperation *)v27 initWithConfiguration:v28 cloudState:0 zones:v3 container:v32];

    [(HDCloudSyncCompoundOperation *)v26 addOperation:v33 transitionHandler:0];
    v34 = MEMORY[0x277CBEB98];
    v35 = [(HDCloudSyncOperation *)v30 configuration];
    v36 = [v35 repository];
    v37 = [v36 secondaryCKContainers];
    v38 = [v34 setWithArray:v37];

    v39 = [HDCloudSyncStateSyncOperation alloc];
    v40 = [(HDCloudSyncOperation *)v30 configuration];
    v41 = [(HDCloudSyncStateSyncOperation *)v39 initWithConfiguration:v40 containers:v38];

    [(HDCloudSyncCompoundOperation *)v26 addOperation:v41 transitionHandler:0];
    v42 = [(HDCloudSyncOperation *)v30 configuration];
    v43 = [v42 repository];
    v44 = [v43 primaryCKContainer];

    if (v44)
    {
      v45 = [HDCloudSyncStateSyncOperation alloc];
      v46 = [(HDCloudSyncOperation *)v30 configuration];
      v47 = [MEMORY[0x277CBEB98] setWithObject:v44];
      v48 = [(HDCloudSyncStateSyncOperation *)v45 initWithConfiguration:v46 containers:v47];

      [(HDCloudSyncCompoundOperation *)v26 addOperation:v48 transitionHandler:0];
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __41__HDCloudSyncPipelineStageStateSync_main__block_invoke;
    v54[3] = &unk_278613088;
    v54[4] = v30;
    [(HDCloudSyncOperation *)v26 setOnError:v54];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __41__HDCloudSyncPipelineStageStateSync_main__block_invoke_302;
    v53[3] = &unk_278613060;
    v53[4] = v30;
    [(HDCloudSyncOperation *)v26 setOnSuccess:v53];
    [(HDCloudSyncCompoundOperation *)v26 start];

    v3 = obja;
  }

  else
  {
    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "No State Entites found locally", buf, 2u);
    }

    [(HDCloudSyncOperation *)v2 finishWithSuccess:1 error:0];
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __41__HDCloudSyncPipelineStageStateSync_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform state sync push %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

@end