@interface HDCloudSyncManagerRemoveParticipantsTask
- (HDCloudSyncManagerRemoveParticipantsTask)initWithManager:(id)manager context:(id)context removeAllParticipants:(BOOL)participants participantsToRemove:(id)remove accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerRemoveParticipantsTask

- (HDCloudSyncManagerRemoveParticipantsTask)initWithManager:(id)manager context:(id)context removeAllParticipants:(BOOL)participants participantsToRemove:(id)remove accessibilityAssertion:(id)assertion completion:(id)completion
{
  removeCopy = remove;
  v20.receiver = self;
  v20.super_class = HDCloudSyncManagerRemoveParticipantsTask;
  v15 = [(HDCloudSyncManagerPipelineTask *)&v20 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  v16 = v15;
  if (v15)
  {
    v15->_removeAllParticipants = participants;
    v17 = [removeCopy copy];
    participantsToRemove = v16->_participantsToRemove;
    v16->_participantsToRemove = v17;
  }

  return v16;
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

  v17 = [HDCloudSyncPipelineStageRemoveSharingParticipants alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];

  if (self->_removeAllParticipants)
  {
    [(HDCloudSyncPipelineStageRemoveSharingParticipants *)v19 setRemoveAllParticipants:1];
  }

  else
  {
    [(HDCloudSyncPipelineStageRemoveSharingParticipants *)v19 setParticipantsToRemove:self->_participantsToRemove];
  }

  [v10 addStage:v19];

  return v10;
}

@end