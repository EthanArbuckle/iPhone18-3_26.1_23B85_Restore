@interface HDCloudSyncManagerSubscriptionTask
- (HDCloudSyncManagerSubscriptionTask)initWithManager:(id)manager context:(id)context subscriptions:(id)subscriptions accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerSubscriptionTask

- (HDCloudSyncManagerSubscriptionTask)initWithManager:(id)manager context:(id)context subscriptions:(id)subscriptions accessibilityAssertion:(id)assertion completion:(id)completion
{
  subscriptionsCopy = subscriptions;
  v17.receiver = self;
  v17.super_class = HDCloudSyncManagerSubscriptionTask;
  v13 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  if (v13)
  {
    v14 = [subscriptionsCopy copy];
    subscriptions = v13->_subscriptions;
    v13->_subscriptions = v14;
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

  v11 = [HDCloudSyncPipelineStageRegisterSubscriptions alloc];
  operationConfiguration = [v10 operationConfiguration];
  v13 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)v11 initWithConfiguration:operationConfiguration cloudState:0 subscriptions:self->_subscriptions];
  [v10 addStage:v13];

  return v10;
}

@end