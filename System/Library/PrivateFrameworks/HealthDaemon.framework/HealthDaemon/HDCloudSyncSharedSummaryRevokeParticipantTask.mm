@interface HDCloudSyncSharedSummaryRevokeParticipantTask
- (HDCloudSyncSharedSummaryRevokeParticipantTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncSharedSummaryRevokeParticipantTask

- (HDCloudSyncSharedSummaryRevokeParticipantTask)initWithManager:(id)manager context:(id)context codableEntry:(id)entry accessibilityAssertion:(id)assertion completion:(id)completion
{
  entryCopy = entry;
  v17.receiver = self;
  v17.super_class = HDCloudSyncSharedSummaryRevokeParticipantTask;
  v14 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_codableEntry, entry);
  }

  return v15;
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

  v20 = [HDCloudSyncPipelineStageSharedSummaryRevokeParticipant alloc];
  codableEntry = self->_codableEntry;
  operationConfiguration4 = [v10 operationConfiguration];
  v23 = [(HDCloudSyncPipelineStageSharedSummaryRevokeParticipant *)v20 initWithOutgoingSummarySharingEntry:codableEntry configuration:operationConfiguration4];

  [v10 addStage:v23];

  return v10;
}

@end