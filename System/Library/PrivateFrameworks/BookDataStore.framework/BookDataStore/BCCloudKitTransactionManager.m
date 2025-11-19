@interface BCCloudKitTransactionManager
- (BCCloudKitController)cloudKitController;
- (BCCloudKitTransactionManager)initWithCloudKitController:(id)a3;
- (void)signalDataChangeTransactionForEntityName:(id)a3 notificationName:(id)a4;
- (void)signalFetchChangesTransaction:(id)a3;
- (void)signalFetchChangesTransactionInService:(id)a3;
- (void)signalSyncToCKTransactionForEntityName:(id)a3 syncManager:(id)a4 completion:(id)a5;
- (void)transactionCompleted:(id)a3;
@end

@implementation BCCloudKitTransactionManager

- (BCCloudKitTransactionManager)initWithCloudKitController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BCCloudKitTransactionManager;
  v5 = [(BCCloudKitTransactionManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v5->_serviceProxy;
    v5->_serviceProxy = v6;

    objc_storeWeak(&v5->_cloudKitController, v4);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.iBooks.CloudKitTransactionManager", v8);
    transactionAccessQueue = v5->_transactionAccessQueue;
    v5->_transactionAccessQueue = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    transactions = v5->_transactions;
    v5->_transactions = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    transactionCompletionCallbacks = v5->_transactionCompletionCallbacks;
    v5->_transactionCompletionCallbacks = v13;
  }

  return v5;
}

- (void)signalDataChangeTransactionForEntityName:(id)a3 notificationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E460D66C;
  block[3] = &unk_1E8759FE0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)signalSyncToCKTransactionForEntityName:(id)a3 syncManager:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E460D864;
  v15[3] = &unk_1E8759CE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)signalFetchChangesTransaction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);
  v6 = [WeakRetained privateCloudDatabaseController];
  v7 = [v6 subscriptionID];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v9 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E460DB1C;
    block[3] = &unk_1E875A008;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)signalFetchChangesTransactionInService:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitTransactionManager *)self serviceProxy];
  [v5 signalFetchChangesTransaction:v4];
}

- (void)transactionCompleted:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E460DD44;
  v7[3] = &unk_1E875A030;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end