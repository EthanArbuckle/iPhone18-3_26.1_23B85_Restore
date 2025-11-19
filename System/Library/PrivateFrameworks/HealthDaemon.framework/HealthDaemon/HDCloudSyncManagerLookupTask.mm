@interface HDCloudSyncManagerLookupTask
- (HDCloudSyncManagerLookupTask)initWithManager:(id)a3 context:(id)a4 lookupInfo:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerLookupTask

- (HDCloudSyncManagerLookupTask)initWithManager:(id)a3 context:(id)a4 lookupInfo:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7
{
  v12 = a5;
  v17.receiver = self;
  v17.super_class = HDCloudSyncManagerLookupTask;
  v13 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:a3 context:a4 accessibilityAssertion:a6 completion:a7];
  if (v13)
  {
    v14 = [v12 copy];
    lookupInfo = v13->_lookupInfo;
    v13->_lookupInfo = v14;
  }

  return v13;
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

  v11 = [HDCloudSyncPipelineStageLookupParticipant alloc];
  v12 = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageLookupParticipant *)v11 initWithConfiguration:v12 cloudState:0 identityLookupInfo:self->_lookupInfo];
  lookupStage = self->_lookupStage;
  self->_lookupStage = v13;

  [v10 addStage:self->_lookupStage];

  return v10;
}

@end