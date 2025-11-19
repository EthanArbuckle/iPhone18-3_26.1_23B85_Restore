@interface HDCloudSyncManagerAnalyticsTask
- (id)cachedCloudState;
- (id)computedState;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerAnalyticsTask

- (id)pipelineForRepository:(id)a3
{
  v4 = a3;
  v5 = [HDCloudSyncPipeline alloc];
  v6 = [(HDCloudSyncManagerRepositoryTask *)self context];
  v7 = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  v8 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v9 = [v8 queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:v6 repository:v4 accessibilityAssertion:v7 queue:v9];

  v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  v12 = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:v12 cloudState:0];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageSynchronize alloc];
  v15 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:v15 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStagePrepareForSync alloc];
  v18 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageContextSyncPush alloc];
  v21 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:v21 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStageContextSyncPull alloc];
  v24 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStage *)v23 initWithConfiguration:v24 cloudState:0];
  [v10 addStage:v25];

  return v10;
}

- (id)cachedCloudState
{
  v4 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerAnalyticsTask.m" lineNumber:47 description:@"Analytics sync task should consist of a single sync pipeline."];
  }

  v6 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v7 = [v6 firstObject];

  v8 = [v7 operationConfiguration];
  v9 = [v8 cachedCloudState];

  return v9;
}

- (id)computedState
{
  v4 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerAnalyticsTask.m" lineNumber:54 description:@"Analytics sync task should consist of a single sync pipeline."];
  }

  v6 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v7 = [v6 firstObject];

  v8 = [v7 operationConfiguration];
  v9 = [v8 computedState];

  return v9;
}

@end