@interface HDCloudSyncPipelineStageReset
- (HDCloudSyncResetOperation)_resetOperationForContainer:(int)a3 primary:;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageReset

- (void)main
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:v5 name:@"Reset All Containers" continueOnSubOperationError:1];

  v7 = [(HDCloudSyncOperation *)self configuration];
  v8 = [v7 repository];
  v9 = [v8 primaryCKContainer];
  v10 = [(HDCloudSyncPipelineStageReset *)self _resetOperationForContainer:v9 primary:1];

  [(HDCloudSyncCompoundOperation *)v6 addOperation:v10 transitionHandler:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(HDCloudSyncOperation *)self configuration];
  v12 = [v11 repository];
  v13 = [v12 secondaryCKContainers];

  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(HDCloudSyncPipelineStageReset *)self _resetOperationForContainer:0 primary:?];
        [(HDCloudSyncCompoundOperation *)v6 addOperation:v18 transitionHandler:0];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v6];
  v19 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncResetOperation)_resetOperationForContainer:(int)a3 primary:
{
  if (a1)
  {
    v5 = a2;
    v6 = [HDCloudSyncResetOperation alloc];
    v7 = [a1 configuration];
    v8 = [a1 cloudState];
    v9 = [(HDCloudSyncResetOperation *)v6 initWithConfiguration:v7 cloudState:v8 container:v5];

    if (a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = [(HDCloudSyncOperation *)v9 operationIgnoringErrors];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end