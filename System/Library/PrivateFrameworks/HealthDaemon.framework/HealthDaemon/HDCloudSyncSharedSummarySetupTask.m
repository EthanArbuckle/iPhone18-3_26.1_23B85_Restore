@interface HDCloudSyncSharedSummarySetupTask
- (HDCloudSyncSharedSummarySetupTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 authorizationIdentifiers:(id)a6 accessibilityAssertion:(id)a7 completion:(id)a8;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncSharedSummarySetupTask

- (HDCloudSyncSharedSummarySetupTask)initWithManager:(id)a3 context:(id)a4 codableEntry:(id)a5 authorizationIdentifiers:(id)a6 accessibilityAssertion:(id)a7 completion:(id)a8
{
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = HDCloudSyncSharedSummarySetupTask;
  v17 = [(HDCloudSyncManagerPipelineTask *)&v20 initWithManager:a3 context:a4 accessibilityAssertion:a7 completion:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_codableEntry, a5);
    objc_storeStrong(&v18->_authorizationIdentifiers, a6);
  }

  return v18;
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

  v11 = [HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability alloc];
  v12 = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)v11 initWithConfiguration:v12];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  v15 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:v15 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStageSynchronize alloc];
  v18 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
  v21 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:v21 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStageSharedSummaryAddParticipant alloc];
  v24 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStageSharedSummaryAddParticipant *)v23 initWithConfiguration:v24 cloudState:0 codableEntry:self->_codableEntry authorizationIdentifiers:self->_authorizationIdentifiers];
  addParticipantStage = self->_addParticipantStage;
  self->_addParticipantStage = v25;

  [v10 addStage:self->_addParticipantStage];

  return v10;
}

@end