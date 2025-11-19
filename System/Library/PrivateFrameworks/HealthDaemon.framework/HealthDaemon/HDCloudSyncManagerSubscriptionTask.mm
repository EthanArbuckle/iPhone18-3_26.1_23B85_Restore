@interface HDCloudSyncManagerSubscriptionTask
- (HDCloudSyncManagerSubscriptionTask)initWithManager:(id)a3 context:(id)a4 subscriptions:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerSubscriptionTask

- (HDCloudSyncManagerSubscriptionTask)initWithManager:(id)a3 context:(id)a4 subscriptions:(id)a5 accessibilityAssertion:(id)a6 completion:(id)a7
{
  v12 = a5;
  v17.receiver = self;
  v17.super_class = HDCloudSyncManagerSubscriptionTask;
  v13 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:a3 context:a4 accessibilityAssertion:a6 completion:a7];
  if (v13)
  {
    v14 = [v12 copy];
    subscriptions = v13->_subscriptions;
    v13->_subscriptions = v14;
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

  v11 = [HDCloudSyncPipelineStageRegisterSubscriptions alloc];
  v12 = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)v11 initWithConfiguration:v12 cloudState:0 subscriptions:self->_subscriptions];
  [v10 addStage:v13];

  return v10;
}

@end