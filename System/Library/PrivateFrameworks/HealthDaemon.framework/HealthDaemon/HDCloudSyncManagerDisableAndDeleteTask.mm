@interface HDCloudSyncManagerDisableAndDeleteTask
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerDisableAndDeleteTask

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  v5 = [HDCloudSyncPipeline alloc];
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v9 = [(HDCloudSyncPipeline *)v5 initForContext:context repository:repositoryCopy accessibilityAssertion:0 queue:queue];

  [v9 setContinueWhenSyncDisabled:1];
  v10 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  operationConfiguration = [v9 operationConfiguration];
  v12 = [(HDCloudSyncPipelineStage *)v10 initWithConfiguration:operationConfiguration cloudState:0];
  [v9 addStage:v12];

  v13 = [HDCloudSyncPipelineStageSynchronize alloc];
  operationConfiguration2 = [v9 operationConfiguration];
  v15 = [(HDCloudSyncPipelineStage *)v13 initWithConfiguration:operationConfiguration2 cloudState:0];
  [v9 addStage:v15];

  v16 = [HDCloudSyncCompoundOperation alloc];
  operationConfiguration3 = [v9 operationConfiguration];
  v18 = [(HDCloudSyncCompoundOperation *)v16 initWithConfiguration:operationConfiguration3 cloudState:0 name:@"Disable and Delete" continueOnSubOperationError:0];

  v19 = [HDCloudSyncDisableAndDeleteOperation alloc];
  operationConfiguration4 = [v9 operationConfiguration];
  v21 = [(HDCloudSyncOperation *)v19 initWithConfiguration:operationConfiguration4 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v18 addOperation:v21 transitionHandler:0];
  v22 = [HDCloudSyncSharedSummaryDisableAndDeleteOperation alloc];
  operationConfiguration5 = [v9 operationConfiguration];
  v24 = [(HDCloudSyncOperation *)v22 initWithConfiguration:operationConfiguration5 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v18 addOperation:v24 transitionHandler:0];
  asPipelineStage = [(HDCloudSyncOperation *)v18 asPipelineStage];
  [v9 addStage:asPipelineStage];

  return v9;
}

@end