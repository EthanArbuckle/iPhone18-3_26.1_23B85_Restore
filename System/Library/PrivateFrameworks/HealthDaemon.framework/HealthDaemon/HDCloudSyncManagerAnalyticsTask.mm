@interface HDCloudSyncManagerAnalyticsTask
- (id)cachedCloudState;
- (id)computedState;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerAnalyticsTask

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  v5 = [HDCloudSyncPipeline alloc];
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  accessibilityAssertion = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:context repository:repositoryCopy accessibilityAssertion:accessibilityAssertion queue:queue];

  v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:operationConfiguration cloudState:0];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageSynchronize alloc];
  operationConfiguration2 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:operationConfiguration2 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStagePrepareForSync alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageContextSyncPush alloc];
  operationConfiguration4 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:operationConfiguration4 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStageContextSyncPull alloc];
  operationConfiguration5 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStage *)v23 initWithConfiguration:operationConfiguration5 cloudState:0];
  [v10 addStage:v25];

  return v10;
}

- (id)cachedCloudState
{
  pipelines = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v5 = [pipelines count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerAnalyticsTask.m" lineNumber:47 description:@"Analytics sync task should consist of a single sync pipeline."];
  }

  pipelines2 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  firstObject = [pipelines2 firstObject];

  operationConfiguration = [firstObject operationConfiguration];
  cachedCloudState = [operationConfiguration cachedCloudState];

  return cachedCloudState;
}

- (id)computedState
{
  pipelines = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  v5 = [pipelines count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncManagerAnalyticsTask.m" lineNumber:54 description:@"Analytics sync task should consist of a single sync pipeline."];
  }

  pipelines2 = [(HDCloudSyncManagerPipelineTask *)self pipelines];
  firstObject = [pipelines2 firstObject];

  operationConfiguration = [firstObject operationConfiguration];
  computedState = [operationConfiguration computedState];

  return computedState;
}

@end