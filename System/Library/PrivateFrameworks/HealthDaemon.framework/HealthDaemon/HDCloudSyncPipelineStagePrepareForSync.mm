@interface HDCloudSyncPipelineStagePrepareForSync
- (void)main;
@end

@implementation HDCloudSyncPipelineStagePrepareForSync

- (void)main
{
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v34 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Target Computation & Validation" continueOnSubOperationError:0];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  context = [configuration2 context];
  isFastPushOrPull = [context isFastPushOrPull];

  if ((isFastPushOrPull & 1) == 0)
  {
    v8 = [HDCloudSyncRepairStoreRecordsOperation alloc];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    v10 = [(HDCloudSyncOperation *)v8 initWithConfiguration:configuration3 cloudState:0];
    operationIgnoringErrors = [(HDCloudSyncOperation *)v10 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v34 addOperation:operationIgnoringErrors transitionHandler:0];
  }

  v12 = [HDCloudSyncRepairRegistryRecordsOperation alloc];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  v14 = [(HDCloudSyncRepairRegistryRecordsOperation *)v12 initWithConfiguration:configuration4 cloudState:0];
  operationIgnoringErrors2 = [(HDCloudSyncOperation *)v14 operationIgnoringErrors];
  [(HDCloudSyncCompoundOperation *)v34 addOperation:operationIgnoringErrors2 transitionHandler:0];

  v16 = [HDCloudSyncDeleteOrphanedRecordsOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v18 = [(HDCloudSyncDeleteOrphanedRecordsOperation *)v16 initWithConfiguration:configuration5 cloudState:0];
  operationIgnoringErrors3 = [(HDCloudSyncOperation *)v18 operationIgnoringErrors];
  [(HDCloudSyncCompoundOperation *)v34 addOperation:operationIgnoringErrors3 transitionHandler:0];

  configuration6 = [(HDCloudSyncOperation *)self configuration];
  if (self)
  {
    v21 = [[HDCloudSyncCompoundOperation alloc] initWithConfiguration:configuration6 cloudState:0 name:@"Targets & Validation" continueOnSubOperationError:0];
    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
    configuration7 = [(HDCloudSyncOperation *)self configuration];
    context2 = [configuration7 context];
    isFastPushOrPull2 = [context2 isFastPushOrPull];

    if ((isFastPushOrPull2 & 1) == 0)
    {
      [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
      v25 = [[HDCloudSyncValidatePushTargetOperation alloc] initWithConfiguration:configuration6];
      [(HDCloudSyncCompoundOperation *)v21 addOperation:v25 transitionHandler:0];
    }

    [(HDCloudSyncCompoundOperation *)v21 addOperationOfClass:objc_opt_class() transitionHandler:0];
  }

  else
  {
    v21 = 0;
  }

  [(HDCloudSyncCompoundOperation *)v34 addOperation:v21 transitionHandler:0];
  configuration8 = [(HDCloudSyncOperation *)self configuration];
  context3 = [configuration8 context];
  isFastPushOrPull3 = [context3 isFastPushOrPull];

  if ((isFastPushOrPull3 & 1) == 0)
  {
    configuration9 = [(HDCloudSyncOperation *)self configuration];
    v30 = configuration9;
    if (self)
    {
      v31 = configuration9;
      v32 = [(HDCloudSyncOperation *)[HDCloudSyncValidateSubscriptionsOperation alloc] initWithConfiguration:v31 cloudState:0];
    }

    else
    {
      v32 = 0;
    }

    operationIgnoringErrors4 = [(HDCloudSyncOperation *)v32 operationIgnoringErrors];
    [(HDCloudSyncCompoundOperation *)v34 addOperation:operationIgnoringErrors4 transitionHandler:0];
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v34];
}

@end