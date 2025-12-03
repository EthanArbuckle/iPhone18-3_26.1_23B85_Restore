@interface HDCloudSyncPipelineStageRegisterSubscriptions
- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)configuration cloudState:(id)state subscriptions:(id)subscriptions;
- (HDCloudSyncRegisterSubscriptionsOperation)_operationForContainer:(void *)container configuration:(void *)configuration cloudState:;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageRegisterSubscriptions

- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)configuration cloudState:(id)state subscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPipelineStageRegisterSubscriptions;
  v9 = [(HDCloudSyncPipelineStage *)&v13 initWithConfiguration:configuration cloudState:state];
  if (v9)
  {
    v10 = [subscriptionsCopy copy];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;
  }

  return v9;
}

- (void)main
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_subscriptions count])
  {
    v3 = [HDCloudSyncCompoundOperation alloc];
    configuration = [(HDCloudSyncOperation *)self configuration];
    cloudState = [(HDCloudSyncOperation *)self cloudState];
    v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:cloudState name:@"Register subscriptions." continueOnSubOperationError:0];

    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration2 repository];
    primaryCKContainer = [repository primaryCKContainer];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    cloudState2 = [(HDCloudSyncOperation *)self cloudState];
    v12 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)self _operationForContainer:primaryCKContainer configuration:configuration3 cloudState:cloudState2];

    [(HDCloudSyncCompoundOperation *)v6 addOperation:v12 transitionHandler:0];
    if (self->_includeSecondaryContainers)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      configuration4 = [(HDCloudSyncOperation *)self configuration];
      repository2 = [configuration4 repository];
      secondaryCKContainers = [repository2 secondaryCKContainers];

      v16 = [secondaryCKContainers countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(secondaryCKContainers);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            configuration5 = [(HDCloudSyncOperation *)self configuration];
            cloudState3 = [(HDCloudSyncOperation *)self cloudState];
            v23 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)self _operationForContainer:v20 configuration:configuration5 cloudState:cloudState3];

            operationIgnoringErrors = [v23 operationIgnoringErrors];
            [(HDCloudSyncCompoundOperation *)v6 addOperation:operationIgnoringErrors transitionHandler:0];
          }

          v17 = [secondaryCKContainers countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }
    }

    [(HDCloudSyncOperation *)self delegateToOperation:v6];

    v25 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v26 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

- (HDCloudSyncRegisterSubscriptionsOperation)_operationForContainer:(void *)container configuration:(void *)configuration cloudState:
{
  selfCopy = self;
  if (self)
  {
    configurationCopy = configuration;
    containerCopy = container;
    v9 = a2;
    selfCopy = [[HDCloudSyncRegisterSubscriptionsOperation alloc] initWithConfiguration:containerCopy cloudState:configurationCopy container:v9 subscriptions:selfCopy[1].super._onSuccess];
  }

  return selfCopy;
}

@end