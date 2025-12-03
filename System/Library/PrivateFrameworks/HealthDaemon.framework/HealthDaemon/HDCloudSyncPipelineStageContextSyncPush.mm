@interface HDCloudSyncPipelineStageContextSyncPush
- (void)main;
@end

@implementation HDCloudSyncPipelineStageContextSyncPush

- (void)main
{
  v42 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profileType = [repository profileType];

  if (profileType == 1)
  {
    v6 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v8 = [(HDCloudSyncCompoundOperation *)v6 initWithConfiguration:configuration2 cloudState:0 name:@"Push Context Sync" continueOnSubOperationError:0];

    v9 = objc_alloc(MEMORY[0x277CBC5E8]);
    v10 = MEMORY[0x277CBC5F8];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    syncContainerPrefix = [configuration3 syncContainerPrefix];
    v13 = [v10 hd_contextSyncZoneIDForSyncCircleIdentifier:syncContainerPrefix];
    v14 = [v9 initWithZoneID:v13];

    v15 = [HDCloudSyncCreateZonesOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    v37 = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration5 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    v21 = [(HDCloudSyncCreateZonesOperation *)v15 initWithConfiguration:configuration4 cloudState:0 zones:v17 container:primaryCKContainer];

    [(HDCloudSyncCompoundOperation *)v8 addOperation:v21 transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v8 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v8 addOperationOfClass:objc_opt_class() transitionHandler:0];
    date = [MEMORY[0x277CBEAA8] date];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__HDCloudSyncPipelineStageContextSyncPush_main__block_invoke;
    v36[3] = &unk_278613088;
    v36[4] = self;
    [(HDCloudSyncOperation *)v8 setOnError:v36];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __47__HDCloudSyncPipelineStageContextSyncPush_main__block_invoke_303;
    v33 = &unk_278614BA8;
    selfCopy = self;
    v35 = date;
    v23 = date;
    [(HDCloudSyncOperation *)v8 setOnSuccess:&v30];
    [(HDCloudSyncCompoundOperation *)v8 start:v30];
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      configuration6 = [(HDCloudSyncOperation *)self configuration];
      repository3 = [configuration6 repository];
      profile = [repository3 profile];
      *buf = 138543618;
      selfCopy2 = self;
      v40 = 2114;
      v41 = profile;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping context sync push stage for non-primary profile %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __47__HDCloudSyncPipelineStageContextSyncPush_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform context sync push %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HDCloudSyncPipelineStageContextSyncPush_main__block_invoke_303(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 profile];
  v6 = [v5 daemon];
  v7 = [v6 analyticsSubmissionCoordinator];
  [*(a1 + 40) timeIntervalSinceNow];
  [v7 contextSync_triggerDuration:?];

  v8 = [*(a1 + 32) profile];
  v9 = [v8 daemon];
  v10 = [v9 analyticsSubmissionCoordinator];
  [v10 contextSync_operationSucceeded:v4];

  v11 = *(a1 + 32);

  return [v11 finishWithSuccess:1 error:0];
}

@end