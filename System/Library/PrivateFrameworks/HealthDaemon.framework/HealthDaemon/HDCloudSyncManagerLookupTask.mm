@interface HDCloudSyncManagerLookupTask
- (HDCloudSyncManagerLookupTask)initWithManager:(id)manager context:(id)context lookupInfo:(id)info accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerLookupTask

- (HDCloudSyncManagerLookupTask)initWithManager:(id)manager context:(id)context lookupInfo:(id)info accessibilityAssertion:(id)assertion completion:(id)completion
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = HDCloudSyncManagerLookupTask;
  v13 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  if (v13)
  {
    v14 = [infoCopy copy];
    lookupInfo = v13->_lookupInfo;
    v13->_lookupInfo = v14;
  }

  return v13;
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

  v11 = [HDCloudSyncPipelineStageLookupParticipant alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageLookupParticipant *)v11 initWithConfiguration:operationConfiguration cloudState:0 identityLookupInfo:self->_lookupInfo];
  lookupStage = self->_lookupStage;
  self->_lookupStage = v13;

  [v10 addStage:self->_lookupStage];

  return v10;
}

@end