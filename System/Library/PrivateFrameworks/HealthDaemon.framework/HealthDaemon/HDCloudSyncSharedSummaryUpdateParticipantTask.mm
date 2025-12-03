@interface HDCloudSyncSharedSummaryUpdateParticipantTask
- (HDCloudSyncSharedSummaryUpdateParticipantTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncSharedSummaryUpdateParticipantTask

- (HDCloudSyncSharedSummaryUpdateParticipantTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete accessibilityAssertion:(id)assertion completion:(id)completion
{
  entryCopy = entry;
  addCopy = add;
  deleteCopy = delete;
  v22.receiver = self;
  v22.super_class = HDCloudSyncSharedSummaryUpdateParticipantTask;
  v18 = [(HDCloudSyncManagerPipelineTask *)&v22 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_codableEntry, entry);
    objc_storeStrong(&v19->_authorizationIdentifiersToAdd, add);
    objc_storeStrong(&v19->_authorizationIdentifiersToDelete, delete);
  }

  return v19;
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

  v11 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStage *)v11 initWithConfiguration:operationConfiguration cloudState:0];
  [v10 addStage:v13];

  v14 = [HDCloudSyncPipelineStageSynchronize alloc];
  operationConfiguration2 = [v10 operationConfiguration];
  v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:operationConfiguration2 cloudState:0];
  [v10 addStage:v16];

  v17 = [HDCloudSyncPipelineStageSharedSummarySynchronizeSharingEntryState alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
  [v10 addStage:v19];

  v20 = [HDCloudSyncPipelineStageSharedSummaryUpdateParticipant alloc];
  codableEntry = self->_codableEntry;
  operationConfiguration4 = [v10 operationConfiguration];
  v23 = [(HDCloudSyncPipelineStageSharedSummaryUpdateParticipant *)v20 initWithSummarySharingEntry:codableEntry configuration:operationConfiguration4 authorizationIdentifiersToAdd:self->_authorizationIdentifiersToAdd authorizationIdentifiersToDelete:self->_authorizationIdentifiersToDelete];

  [v10 addStage:v23];

  return v10;
}

@end