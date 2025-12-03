@interface HDCloudSyncSetupSharingForUnifiedZoneTask
- (HDCloudSyncSetupSharingForUnifiedZoneTask)initWithManager:(id)manager context:(id)context lookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncSetupSharingForUnifiedZoneTask

- (HDCloudSyncSetupSharingForUnifiedZoneTask)initWithManager:(id)manager context:(id)context lookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode accessibilityAssertion:(id)assertion completion:(id)completion
{
  infoCopy = info;
  modeCopy = mode;
  v23.receiver = self;
  v23.super_class = HDCloudSyncSetupSharingForUnifiedZoneTask;
  v17 = [(HDCloudSyncManagerPipelineTask *)&v23 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  if (v17)
  {
    v18 = [infoCopy copy];
    lookupInfo = v17->_lookupInfo;
    v17->_lookupInfo = v18;

    v17->_requireExistingRelationship = relationship;
    v20 = [modeCopy copy];
    requireZoneDeviceMode = v17->_requireZoneDeviceMode;
    v17->_requireZoneDeviceMode = v20;
  }

  return v17;
}

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  v5 = [HDCloudSyncPipeline alloc];
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  accessibilityAssertion = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:context repository:repositoryCopy accessibilityAssertion:accessibilityAssertion queue:queue];

  v11 = [HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)v11 initWithConfiguration:operationConfiguration];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  operationConfiguration2 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:operationConfiguration2 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStageSynchronize alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStagePrepareForSync alloc];
  operationConfiguration4 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:operationConfiguration4 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStagePush alloc];
  operationConfiguration5 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStagePush *)v23 initWithConfiguration:operationConfiguration5 cloudState:0];
  [v10 addStage:v25];

  v26 = [HDCloudSyncShareToParticipantOperation alloc];
  operationConfiguration6 = [v10 operationConfiguration];
  v28 = [(HDCloudSyncShareToParticipantOperation *)v26 initWithConfiguration:operationConfiguration6 cloudState:0 identityLookupInfo:self->_lookupInfo requireExistingRelationship:self->_requireExistingRelationship requireZoneDeviceMode:self->_requireZoneDeviceMode];
  shareOperation = self->_shareOperation;
  self->_shareOperation = v28;

  asPipelineStage = [(HDCloudSyncOperation *)self->_shareOperation asPipelineStage];
  [v10 addStage:asPipelineStage];

  return v10;
}

@end