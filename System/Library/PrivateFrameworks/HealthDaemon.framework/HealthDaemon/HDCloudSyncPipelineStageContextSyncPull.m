@interface HDCloudSyncPipelineStageContextSyncPull
- (void)main;
@end

@implementation HDCloudSyncPipelineStageContextSyncPull

- (void)main
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 profileType];

  if (v5 == 1)
  {
    v6 = [HDCloudSyncCompoundOperation alloc];
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [(HDCloudSyncCompoundOperation *)v6 initWithConfiguration:v7 cloudState:0 name:@"Pull Context Sync" continueOnSubOperationError:0];

    v9 = [(HDCloudSyncOperation *)self configuration];
    v10 = [v9 repository];
    v46 = [v10 primaryCKContainer];

    v11 = MEMORY[0x277CBEB98];
    v12 = [(HDCloudSyncOperation *)self configuration];
    v13 = [v12 repository];
    v14 = [v13 secondaryCKContainers];
    v15 = [v11 setWithArray:v14];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          v22 = [HDCloudSyncPullDeviceContextOperation alloc];
          v23 = [(HDCloudSyncOperation *)self configuration];
          v24 = [(HDCloudSyncPullDeviceContextOperation *)v22 initWithConfiguration:v23 container:v21];

          [(HDCloudSyncCompoundOperation *)v8 addOperation:v24 transitionHandler:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v18);
    }

    if (v46)
    {
      v25 = [HDCloudSyncPullDeviceContextOperation alloc];
      v26 = [(HDCloudSyncOperation *)self configuration];
      v27 = [(HDCloudSyncPullDeviceContextOperation *)v25 initWithConfiguration:v26 container:v46];

      [(HDCloudSyncCompoundOperation *)v8 addOperation:v27 transitionHandler:0];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = v16;
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v49 + 1) + 8 * j);
          v34 = [HDCloudSyncPullDeviceKeyValueOperation alloc];
          v35 = [(HDCloudSyncOperation *)self configuration];
          v36 = [(HDCloudSyncPullDeviceKeyValueOperation *)v34 initWithConfiguration:v35 container:v33];

          [(HDCloudSyncCompoundOperation *)v8 addOperation:v36 transitionHandler:0];
        }

        v30 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v30);
    }

    if (v46)
    {
      v37 = [HDCloudSyncPullDeviceKeyValueOperation alloc];
      v38 = [(HDCloudSyncOperation *)self configuration];
      v39 = [(HDCloudSyncPullDeviceKeyValueOperation *)v37 initWithConfiguration:v38 container:v46];

      [(HDCloudSyncCompoundOperation *)v8 addOperation:v39 transitionHandler:0];
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __47__HDCloudSyncPipelineStageContextSyncPull_main__block_invoke;
    v48[3] = &unk_278613088;
    v48[4] = self;
    [(HDCloudSyncOperation *)v8 setOnError:v48];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __47__HDCloudSyncPipelineStageContextSyncPull_main__block_invoke_2;
    v47[3] = &unk_278613060;
    v47[4] = self;
    [(HDCloudSyncOperation *)v8 setOnSuccess:v47];
    [(HDCloudSyncCompoundOperation *)v8 start];
  }

  else
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      v42 = [(HDCloudSyncOperation *)self configuration];
      v43 = [v42 repository];
      v44 = [v43 profile];
      *buf = 138543618;
      v60 = self;
      v61 = 2114;
      v62 = v44;
      _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping context sync pull stage for non-primary profile %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v45 = *MEMORY[0x277D85DE8];
}

@end