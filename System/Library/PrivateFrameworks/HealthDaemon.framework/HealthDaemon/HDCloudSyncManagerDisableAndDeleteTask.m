@interface HDCloudSyncManagerDisableAndDeleteTask
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerDisableAndDeleteTask

- (id)pipelineForRepository:(id)a3
{
  v4 = a3;
  v5 = [HDCloudSyncPipeline alloc];
  v6 = [(HDCloudSyncManagerRepositoryTask *)self context];
  v7 = [(HDCloudSyncManagerRepositoryTask *)self manager];
  v8 = [v7 queue];
  v9 = [(HDCloudSyncPipeline *)v5 initForContext:v6 repository:v4 accessibilityAssertion:0 queue:v8];

  [v9 setContinueWhenSyncDisabled:1];
  v10 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  v11 = [v9 operationConfiguration];
  v12 = [(HDCloudSyncPipelineStage *)v10 initWithConfiguration:v11 cloudState:0];
  [v9 addStage:v12];

  v13 = [HDCloudSyncPipelineStageSynchronize alloc];
  v14 = [v9 operationConfiguration];
  v15 = [(HDCloudSyncPipelineStage *)v13 initWithConfiguration:v14 cloudState:0];
  [v9 addStage:v15];

  v16 = [HDCloudSyncCompoundOperation alloc];
  v17 = [v9 operationConfiguration];
  v18 = [(HDCloudSyncCompoundOperation *)v16 initWithConfiguration:v17 cloudState:0 name:@"Disable and Delete" continueOnSubOperationError:0];

  v19 = [HDCloudSyncDisableAndDeleteOperation alloc];
  v20 = [v9 operationConfiguration];
  v21 = [(HDCloudSyncOperation *)v19 initWithConfiguration:v20 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v18 addOperation:v21 transitionHandler:0];
  v22 = [HDCloudSyncSharedSummaryDisableAndDeleteOperation alloc];
  v23 = [v9 operationConfiguration];
  v24 = [(HDCloudSyncOperation *)v22 initWithConfiguration:v23 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v18 addOperation:v24 transitionHandler:0];
  v25 = [(HDCloudSyncOperation *)v18 asPipelineStage];
  [v9 addStage:v25];

  return v9;
}

@end