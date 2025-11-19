@interface HDCloudSyncSharedSummaryUpdateParticipantTask
- (HDCloudSyncSharedSummaryUpdateParticipantTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 authorizationIdentifiersToAdd:(id)a6 authorizationIdentifiersToDelete:(id)a7 accessibilityAssertion:(id)a8 completion:(id)a9;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncSharedSummaryUpdateParticipantTask

- (HDCloudSyncSharedSummaryUpdateParticipantTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 authorizationIdentifiersToAdd:(id)a6 authorizationIdentifiersToDelete:(id)a7 accessibilityAssertion:(id)a8 completion:(id)a9
{
  v21 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = HDCloudSyncSharedSummaryUpdateParticipantTask;
  v18 = [(HDCloudSyncManagerPipelineTask *)&v22 initWithManager:a3 context:a4 accessibilityAssertion:a8 completion:a9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_codableEntry, a5);
    objc_storeStrong(&v19->_authorizationIdentifiersToAdd, a6);
    objc_storeStrong(&v19->_authorizationIdentifiersToDelete, a7);
  }

  return v19;
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

  v20 = [HDCloudSyncPipelineStageSharedSummaryUpdateParticipant alloc];
  codableEntry = self->_codableEntry;
  v22 = [v10 operationConfiguration];
  v23 = [(HDCloudSyncPipelineStageSharedSummaryUpdateParticipant *)v20 initWithSummarySharingEntry:codableEntry configuration:v22 authorizationIdentifiersToAdd:self->_authorizationIdentifiersToAdd authorizationIdentifiersToDelete:self->_authorizationIdentifiersToDelete];

  [v10 addStage:v23];

  return v10;
}

@end