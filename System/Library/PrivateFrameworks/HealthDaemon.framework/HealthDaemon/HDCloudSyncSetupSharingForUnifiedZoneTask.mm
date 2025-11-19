@interface HDCloudSyncSetupSharingForUnifiedZoneTask
- (HDCloudSyncSetupSharingForUnifiedZoneTask)initWithManager:(id)a3 context:(id)a4 lookupInfo:(id)a5 requireExistingRelationship:(BOOL)a6 requireZoneDeviceMode:(id)a7 accessibilityAssertion:(id)a8 completion:(id)a9;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncSetupSharingForUnifiedZoneTask

- (HDCloudSyncSetupSharingForUnifiedZoneTask)initWithManager:(id)a3 context:(id)a4 lookupInfo:(id)a5 requireExistingRelationship:(BOOL)a6 requireZoneDeviceMode:(id)a7 accessibilityAssertion:(id)a8 completion:(id)a9
{
  v15 = a5;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HDCloudSyncSetupSharingForUnifiedZoneTask;
  v17 = [(HDCloudSyncManagerPipelineTask *)&v23 initWithManager:a3 context:a4 accessibilityAssertion:a8 completion:a9];
  if (v17)
  {
    v18 = [v15 copy];
    lookupInfo = v17->_lookupInfo;
    v17->_lookupInfo = v18;

    v17->_requireExistingRelationship = a6;
    v20 = [v16 copy];
    requireZoneDeviceMode = v17->_requireZoneDeviceMode;
    v17->_requireZoneDeviceMode = v20;
  }

  return v17;
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

  v20 = [HDCloudSyncPipelineStagePrepareForSync alloc];
  v21 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:v21 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStagePush alloc];
  v24 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStagePush *)v23 initWithConfiguration:v24 cloudState:0];
  [v10 addStage:v25];

  v26 = [HDCloudSyncShareToParticipantOperation alloc];
  v27 = [v10 operationConfiguration];
  v28 = [(HDCloudSyncShareToParticipantOperation *)v26 initWithConfiguration:v27 cloudState:0 identityLookupInfo:self->_lookupInfo requireExistingRelationship:self->_requireExistingRelationship requireZoneDeviceMode:self->_requireZoneDeviceMode];
  shareOperation = self->_shareOperation;
  self->_shareOperation = v28;

  v30 = [(HDCloudSyncOperation *)self->_shareOperation asPipelineStage];
  [v10 addStage:v30];

  return v10;
}

@end