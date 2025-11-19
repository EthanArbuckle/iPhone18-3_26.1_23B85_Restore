@interface HDCloudSyncSharedSummaryRevokeParticipantTask
- (HDCloudSyncSharedSummaryRevokeParticipantTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncSharedSummaryRevokeParticipantTask

- (HDCloudSyncSharedSummaryRevokeParticipantTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7
{
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HDCloudSyncSharedSummaryRevokeParticipantTask;
  v14 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:a3 context:a4 accessibilityAssertion:a6 completion:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_codableEntry, a5);
  }

  return v15;
}

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

  v17 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
  v18 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageSharedSummaryRevokeParticipant alloc];
  codableEntry = self->_codableEntry;
  v22 = [v10 operationConfiguration];
  v23 = [(HDCloudSyncPipelineStageSharedSummaryRevokeParticipant *)v20 initWithOutgoingSummarySharingEntry:codableEntry configuration:v22];

  [v10 addStage:v23];

  return v10;
}

@end