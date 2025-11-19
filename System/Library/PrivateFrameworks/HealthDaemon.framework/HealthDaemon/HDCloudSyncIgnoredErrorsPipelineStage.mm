@interface HDCloudSyncIgnoredErrorsPipelineStage
- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4 stage:(id)a5;
- (id)description;
- (void)main;
@end

@implementation HDCloudSyncIgnoredErrorsPipelineStage

- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncIgnoredErrorsPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4 stage:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = HDCloudSyncIgnoredErrorsPipelineStage;
  v9 = [(HDCloudSyncPipelineStage *)&v12 initWithConfiguration:a3 cloudState:a4];
  v10 = v9;
  if (v9)
  {
    [(HDCloudSyncIgnoredErrorsPipelineStage *)v9 setStage:v8];
  }

  return v10;
}

- (void)main
{
  v4 = [(HDCloudSyncIgnoredErrorsPipelineStage *)self stage];
  if (!v4)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDCloudSyncIgnoredErrorsPipelineStage.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"stage != nil"}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HDCloudSyncIgnoredErrorsPipelineStage_main__block_invoke;
  v14[3] = &unk_278628780;
  v14[4] = self;
  [v4 setOnSuccess:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HDCloudSyncIgnoredErrorsPipelineStage_main__block_invoke_2;
  v13[3] = &unk_2786287A8;
  v13[4] = self;
  [v4 setOnError:v13];
  v5 = [v4 progress];
  v6 = [v5 totalUnitCount];
  v7 = [(HDCloudSyncOperation *)self progress];
  [v7 setTotalUnitCount:v6];

  v8 = [(HDCloudSyncOperation *)self progress];
  [v8 setCompletedUnitCount:0];

  v9 = [(HDCloudSyncOperation *)self progress];
  v10 = [v4 progress];
  v11 = [v4 progress];
  [v9 addChild:v10 withPendingUnitCount:{objc_msgSend(v11, "totalUnitCount")}];

  [v4 start];
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
  v3 = [(HDCloudSyncIgnoredErrorsPipelineStage *)self stage];
  v4 = [v2 stringWithFormat:@"[! %@]", v3];

  return v4;
}

@end