@interface HDCloudSyncPipelineStagePrepareForSync
- (void)main;
@end

@implementation HDCloudSyncPipelineStagePrepareForSync

- (void)main
{
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v34 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:0 name:@"Target Computation & Validation" continueOnSubOperationError:0];

  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 context];
  v7 = [v6 isFastPushOrPull];

  if ((v7 & 1) == 0)
  {
    v8 = [HDCloudSyncRepairStoreRecordsOperation alloc];
    v9 = [(HDCloudSyncOperation *)self configuration];
    v10 = [(HDCloudSyncOperation *)v8 initWithConfiguration:v9 cloudState:0];
    v11 = [(HDCloudSyncOperation *)v10 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v34 addOperation:v11 transitionHandler:0];
  }

  v12 = [HDCloudSyncRepairRegistryRecordsOperation alloc];
  v13 = [(HDCloudSyncOperation *)self configuration];
  v14 = [(HDCloudSyncRepairRegistryRecordsOperation *)v12 initWithConfiguration:v13 cloudState:0];
  v15 = [(HDCloudSyncOperation *)v14 operationIgnoringErrors];
  [(HDCloudSyncCompoundOperation *)v34 addOperation:v15 transitionHandler:0];

  v16 = [HDCloudSyncDeleteOrphanedRecordsOperation alloc];
  v17 = [(HDCloudSyncOperation *)self configuration];
  v18 = [(HDCloudSyncDeleteOrphanedRecordsOperation *)v16 initWithConfiguration:v17 cloudState:0];
  v19 = [(HDCloudSyncOperation *)v18 operationIgnoringErrors];
  [(HDCloudSyncCompoundOperation *)v34 addOperation:v19 transitionHandler:0];

  v20 = [(HDCloudSyncOperation *)self configuration];
  if (self)
  {
    v21 = [[HDCloudSyncCompoundOperation alloc] initWithConfiguration:v20 cloudState:0 name:@"Targets & Validation" continueOnSubOperationError:0];
    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
    v22 = [(HDCloudSyncOperation *)self configuration];
    v23 = [v22 context];
    v24 = [v23 isFastPushOrPull];

    if ((v24 & 1) == 0)
    {
      [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
      v25 = [[HDCloudSyncValidatePushTargetOperation alloc] initWithConfiguration:v20];
      [(HDCloudSyncCompoundOperation *)v21 addOperation:v25 transitionHandler:0];
    }

    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
  }

  else
  {
    v21 = 0;
  }

  [(HDCloudSyncCompoundOperation *)v34 addOperation:v21 transitionHandler:0];
  v26 = [(HDCloudSyncOperation *)self configuration];
  v27 = [v26 context];
  v28 = [v27 isFastPushOrPull];

  if ((v28 & 1) == 0)
  {
    v29 = [(HDCloudSyncOperation *)self configuration];
    v30 = v29;
    if (self)
    {
      v31 = v29;
      v32 = [(HDCloudSyncOperation *)[HDCloudSyncValidateSubscriptionsOperation alloc] initWithConfiguration:v31 cloudState:0];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(HDCloudSyncOperation *)v32 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v34 addOperation:v33 transitionHandler:0];
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v34];
}

@end