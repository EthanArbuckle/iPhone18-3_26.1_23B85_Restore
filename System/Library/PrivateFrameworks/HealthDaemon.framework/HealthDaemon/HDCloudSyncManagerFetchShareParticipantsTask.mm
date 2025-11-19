@interface HDCloudSyncManagerFetchShareParticipantsTask
- (HDCloudSyncManagerFetchShareParticipantsTask)initWithManager:(id)a3 context:(id)a4 fetchAllShares:(BOOL)a5 accessibilityAssertion:(id)a6 completion:(id)a7;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerFetchShareParticipantsTask

- (HDCloudSyncManagerFetchShareParticipantsTask)initWithManager:(id)a3 context:(id)a4 fetchAllShares:(BOOL)a5 accessibilityAssertion:(id)a6 completion:(id)a7
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncManagerFetchShareParticipantsTask;
  result = [(HDCloudSyncManagerPipelineTask *)&v9 initWithManager:a3 context:a4 accessibilityAssertion:a6 completion:a7];
  if (result)
  {
    result->_fetchAllShares = a5;
  }

  return result;
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

  v17 = [HDCloudSyncPipelineStageFetchShares alloc];
  v18 = [v10 operationConfiguration];
  v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
  fetchSharesStage = self->_fetchSharesStage;
  self->_fetchSharesStage = v19;

  [(HDCloudSyncPipelineStageFetchShares *)self->_fetchSharesStage setFetchAllShares:self->_fetchAllShares];
  [(HDCloudSyncPipelineStage *)self->_fetchSharesStage setCriticalFailureOnError:1];
  [v10 addStage:self->_fetchSharesStage];

  return v10;
}

@end