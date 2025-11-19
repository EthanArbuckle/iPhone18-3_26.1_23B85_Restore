@interface HDCloudSyncPipelineStageSharedSummaryPull
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryPull

- (void)main
{
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:0 name:@"Pull Shared Summaries" continueOnSubOperationError:0];

  v6 = [HDCloudSyncValidateSubscriptionsOperation alloc];
  v7 = [(HDCloudSyncOperation *)self configuration];
  v8 = [(HDCloudSyncOperation *)v6 initWithConfiguration:v7 cloudState:0];

  v9 = [(HDCloudSyncOperation *)v8 operationIgnoringErrors];
  [(HDCloudSyncCompoundOperation *)v5 addOperation:v9 transitionHandler:0];

  v10 = [HDCloudSyncSharedSummaryPullOperation alloc];
  v11 = [(HDCloudSyncOperation *)self configuration];
  v12 = [(HDCloudSyncOperation *)v10 initWithConfiguration:v11 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v12 transitionHandler:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HDCloudSyncPipelineStageSharedSummaryPull_main__block_invoke;
  v14[3] = &unk_278613088;
  v14[4] = self;
  [(HDCloudSyncOperation *)v5 setOnError:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HDCloudSyncPipelineStageSharedSummaryPull_main__block_invoke_2;
  v13[3] = &unk_278613060;
  v13[4] = self;
  [(HDCloudSyncOperation *)v5 setOnSuccess:v13];
  [(HDCloudSyncCompoundOperation *)v5 start];
}

uint64_t __49__HDCloudSyncPipelineStageSharedSummaryPull_main__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 syncDate];

    v5 = [v1 configuration];
    v6 = [v5 repository];
    v7 = [v6 profile];
    v8 = [v7 legacyRepositoryProfile];

    v9 = HDCloudSyncKeyValueDomainWithProfile(v8);
    v10 = [v1 configuration];
    v11 = [v10 repository];
    v12 = [v11 primaryCKContainer];
    v13 = [v12 containerIdentifier];
    v14 = HDCloudSyncLastSuccessfulPullKeyForContainerIdentifier(v13);

    _HKInitializeLogging();
    v15 = MEMORY[0x277CCC328];
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v1;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Recording successful shared summary pull", buf, 0xCu);
    }

    v24 = 0;
    v17 = [v9 setDate:v4 forKey:v14 error:&v24];
    v18 = v24;
    if (v17)
    {
      v19 = [v8 cloudSyncManager];
      [v19 didCompleteSuccessfulPullWithDate:v4];
    }

    else
    {
      _HKInitializeLogging();
      v20 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v26 = v1;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to record successful pull: %{public}@.", buf, 0x16u);
      }
    }

    v21 = *(a1 + 32);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return [v21 finishWithSuccess:1 error:0];
}

@end