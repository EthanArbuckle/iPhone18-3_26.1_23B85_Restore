@interface HDCloudSyncManagerFetchShareParticipantsTask
- (HDCloudSyncManagerFetchShareParticipantsTask)initWithManager:(id)manager context:(id)context fetchAllShares:(BOOL)shares accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerFetchShareParticipantsTask

- (HDCloudSyncManagerFetchShareParticipantsTask)initWithManager:(id)manager context:(id)context fetchAllShares:(BOOL)shares accessibilityAssertion:(id)assertion completion:(id)completion
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncManagerFetchShareParticipantsTask;
  result = [(HDCloudSyncManagerPipelineTask *)&v9 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  if (result)
  {
    result->_fetchAllShares = shares;
  }

  return result;
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

  v17 = [HDCloudSyncPipelineStageFetchShares alloc];
  operationConfiguration3 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:operationConfiguration3 cloudState:0];
  fetchSharesStage = self->_fetchSharesStage;
  self->_fetchSharesStage = v19;

  [(HDCloudSyncPipelineStageFetchShares *)self->_fetchSharesStage setFetchAllShares:self->_fetchAllShares];
  [(HDCloudSyncPipelineStage *)self->_fetchSharesStage setCriticalFailureOnError:1];
  [v10 addStage:self->_fetchSharesStage];

  return v10;
}

@end