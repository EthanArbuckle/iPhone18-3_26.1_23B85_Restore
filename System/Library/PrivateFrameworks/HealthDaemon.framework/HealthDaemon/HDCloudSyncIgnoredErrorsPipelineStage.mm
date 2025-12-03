@interface HDCloudSyncIgnoredErrorsPipelineStage
- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state stage:(id)stage;
- (id)description;
- (void)main;
@end

@implementation HDCloudSyncIgnoredErrorsPipelineStage

- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state stage:(id)stage
{
  stageCopy = stage;
  v12.receiver = self;
  v12.super_class = HDCloudSyncIgnoredErrorsPipelineStage;
  v9 = [(HDCloudSyncPipelineStage *)&v12 initWithConfiguration:configuration cloudState:state];
  v10 = v9;
  if (v9)
  {
    [(HDCloudSyncIgnoredErrorsPipelineStage *)v9 setStage:stageCopy];
  }

  return v10;
}

- (void)main
{
  stage = [(HDCloudSyncIgnoredErrorsPipelineStage *)self stage];
  if (!stage)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncIgnoredErrorsPipelineStage.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"stage != nil"}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HDCloudSyncIgnoredErrorsPipelineStage_main__block_invoke;
  v14[3] = &unk_278628780;
  v14[4] = self;
  [stage setOnSuccess:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HDCloudSyncIgnoredErrorsPipelineStage_main__block_invoke_2;
  v13[3] = &unk_2786287A8;
  v13[4] = self;
  [stage setOnError:v13];
  progress = [stage progress];
  totalUnitCount = [progress totalUnitCount];
  progress2 = [(HDCloudSyncOperation *)self progress];
  [progress2 setTotalUnitCount:totalUnitCount];

  progress3 = [(HDCloudSyncOperation *)self progress];
  [progress3 setCompletedUnitCount:0];

  progress4 = [(HDCloudSyncOperation *)self progress];
  progress5 = [stage progress];
  progress6 = [stage progress];
  [progress4 addChild:progress5 withPendingUnitCount:{objc_msgSend(progress6, "totalUnitCount")}];

  [stage start];
}

void __45__HDCloudSyncIgnoredErrorsPipelineStage_main__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Underlying pipeline stage failed with an ignored error: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:1 error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  stage = [(HDCloudSyncIgnoredErrorsPipelineStage *)self stage];
  v4 = [v2 stringWithFormat:@"[! %@]", stage];

  return v4;
}

@end