@interface HDCloudSyncSharedSummarySetupTask
- (HDCloudSyncSharedSummarySetupTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry authorizationIdentifiers:(id)identifiers accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncSharedSummarySetupTask

- (HDCloudSyncSharedSummarySetupTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry authorizationIdentifiers:(id)identifiers accessibilityAssertion:(id)assertion completion:(id)completion
{
  entryCopy = entry;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = HDCloudSyncSharedSummarySetupTask;
  v17 = [(HDCloudSyncManagerPipelineTask *)&v20 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_codableEntry, entry);
    objc_storeStrong(&v18->_authorizationIdentifiers, identifiers);
  }

  return v18;
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

  v20 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
  operationConfiguration4 = [v10 operationConfiguration];
  v22 = [(HDCloudSyncPipelineStage *)v20 initWithConfiguration:operationConfiguration4 cloudState:0];
  [v10 addStage:v22];

  v23 = [HDCloudSyncPipelineStageSharedSummaryAddParticipant alloc];
  operationConfiguration5 = [v10 operationConfiguration];
  v25 = [(HDCloudSyncPipelineStageSharedSummaryAddParticipant *)v23 initWithConfiguration:operationConfiguration5 cloudState:0 codableEntry:self->_codableEntry authorizationIdentifiers:self->_authorizationIdentifiers];
  addParticipantStage = self->_addParticipantStage;
  self->_addParticipantStage = v25;

  [v10 addStage:self->_addParticipantStage];

  return v10;
}

@end