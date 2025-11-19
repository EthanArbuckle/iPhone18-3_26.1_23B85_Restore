@interface BCCloudKitTransactionManager
- (BCCloudKitController)cloudKitController;
- (BCCloudKitTransactionManager)initWithCloudKitController:(id)a3;
- (void)signalDataChangeTransactionForEntityName:(id)a3 notificationName:(id)a4;
- (void)signalFetchChangesTransaction:(id)a3;
- (void)signalSyncToCKTransactionForEntityName:(id)a3 syncManager:(id)a4 completion:(id)a5;
- (void)transactionCompleted:(id)a3;
@end

@implementation BCCloudKitTransactionManager

- (BCCloudKitTransactionManager)initWithCloudKitController:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BCCloudKitTransactionManager;
  v5 = [(BCCloudKitTransactionManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudKitController, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.iBooks.CloudKitTransactionManager", v7);
    transactionAccessQueue = v6->_transactionAccessQueue;
    v6->_transactionAccessQueue = v8;

    v10 = +[NSMutableDictionary dictionary];
    transactions = v6->_transactions;
    v6->_transactions = v10;

    v12 = +[NSMutableDictionary dictionary];
    transactionCompletionCallbacks = v6->_transactionCompletionCallbacks;
    v6->_transactionCompletionCallbacks = v12;
  }

  return v6;
}

- (void)signalDataChangeTransactionForEntityName:(id)a3 notificationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041040;
  block[3] = &unk_10023F720;
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
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100041238;
  v15[3] = &unk_100240488;
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
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000414F0;
    block[3] = &unk_10023F6B0;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)transactionCompleted:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000416B8;
  v7[3] = &unk_10023F938;
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