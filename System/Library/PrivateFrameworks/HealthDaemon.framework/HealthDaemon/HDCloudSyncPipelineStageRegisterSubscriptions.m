@interface HDCloudSyncPipelineStageRegisterSubscriptions
- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)a3 cloudState:(id)a4 subscriptions:(id)a5;
- (HDCloudSyncRegisterSubscriptionsOperation)_operationForContainer:(void *)a3 configuration:(void *)a4 cloudState:;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageRegisterSubscriptions

- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPipelineStageRegisterSubscriptions)initWithConfiguration:(id)a3 cloudState:(id)a4 subscriptions:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPipelineStageRegisterSubscriptions;
  v9 = [(HDCloudSyncPipelineStage *)&v13 initWithConfiguration:a3 cloudState:a4];
  if (v9)
  {
    v10 = [v8 copy];
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
    v4 = [(HDCloudSyncOperation *)self configuration];
    v5 = [(HDCloudSyncOperation *)self cloudState];
    v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:v5 name:@"Register subscriptions." continueOnSubOperationError:0];

    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 primaryCKContainer];
    v10 = [(HDCloudSyncOperation *)self configuration];
    v11 = [(HDCloudSyncOperation *)self cloudState];
    v12 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)self _operationForContainer:v9 configuration:v10 cloudState:v11];

    [(HDCloudSyncCompoundOperation *)v6 addOperation:v12 transitionHandler:0];
    if (self->_includeSecondaryContainers)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [(HDCloudSyncOperation *)self configuration];
      v14 = [v13 repository];
      v15 = [v14 secondaryCKContainers];

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [(HDCloudSyncOperation *)self configuration];
            v22 = [(HDCloudSyncOperation *)self cloudState];
            v23 = [(HDCloudSyncPipelineStageRegisterSubscriptions *)self _operationForContainer:v20 configuration:v21 cloudState:v22];

            v24 = [v23 operationIgnoringErrors];
            [(HDCloudSyncCompoundOperation *)v6 addOperation:v24 transitionHandler:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

- (HDCloudSyncRegisterSubscriptionsOperation)_operationForContainer:(void *)a3 configuration:(void *)a4 cloudState:
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v4 = [[HDCloudSyncRegisterSubscriptionsOperation alloc] initWithConfiguration:v8 cloudState:v7 container:v9 subscriptions:v4[1].super._onSuccess];
  }

  return v4;
}

@end