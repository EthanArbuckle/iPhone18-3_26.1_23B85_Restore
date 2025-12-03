@interface HDCloudSyncPipelineStageFetchAndUpdateCache
- (void)main;
@end

@implementation HDCloudSyncPipelineStageFetchAndUpdateCache

- (void)main
{
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Fetch & Update" continueOnSubOperationError:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  v6 = [HDCloudSyncUpdateCachedRecordsOperation alloc];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  v8 = [(HDCloudSyncUpdateCachedRecordsOperation *)v6 initWithConfiguration:configuration2 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v8 transitionHandler:0];
  v9 = [HDCloudSyncUpdateCachedRecordsInSharedDatabaseOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  v11 = [(HDCloudSyncUpdateCachedRecordsOperation *)v9 initWithConfiguration:configuration3 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v11 transitionHandler:0];
  v12 = [HDCloudSyncHandleMissingManateeIdentityOperation alloc];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  v14 = [(HDCloudSyncHandleMissingManateeIdentityOperation *)v12 initWithConfiguration:configuration4 cloudState:0];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v14 transitionHandler:0];
  v15 = [HDCloudSyncDeleteRecordsOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v17 = [(HDCloudSyncDeleteRecordsOperation *)v15 initWithConfiguration:configuration5 cloudState:0];

  operationIgnoringErrors = [(HDCloudSyncOperation *)v17 operationIgnoringErrors];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __51__HDCloudSyncPipelineStageFetchAndUpdateCache_main__block_invoke;
  v27 = &unk_278614D48;
  v19 = v17;
  v28 = v19;
  v20 = v8;
  v29 = v20;
  [(HDCloudSyncCompoundOperation *)v5 addOperation:operationIgnoringErrors transitionHandler:&v24];

  v21 = [(HDCloudSyncOperation *)self configuration:v24];
  context = [v21 context];
  options = [context options];

  if ((options & 4) == 0)
  {
    [(HDCloudSyncCompoundOperation *)v5 addOperationOfClass:objc_opt_class() transitionHandler:0];
  }

  [(HDCloudSyncOperation *)self delegateToOperation:v5];
}

void __51__HDCloudSyncPipelineStageFetchAndUpdateCache_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) invalidRecordIDs];
  [*(a1 + 32) setRecordIDsToDelete:v2];
}

@end