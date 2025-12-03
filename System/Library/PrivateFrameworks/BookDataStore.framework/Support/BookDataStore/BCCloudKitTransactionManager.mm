@interface BCCloudKitTransactionManager
- (BCCloudKitController)cloudKitController;
- (BCCloudKitTransactionManager)initWithCloudKitController:(id)controller;
- (void)signalDataChangeTransactionForEntityName:(id)name notificationName:(id)notificationName;
- (void)signalFetchChangesTransaction:(id)transaction;
- (void)signalSyncToCKTransactionForEntityName:(id)name syncManager:(id)manager completion:(id)completion;
- (void)transactionCompleted:(id)completed;
@end

@implementation BCCloudKitTransactionManager

- (BCCloudKitTransactionManager)initWithCloudKitController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = BCCloudKitTransactionManager;
  v5 = [(BCCloudKitTransactionManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudKitController, controllerCopy);
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

- (void)signalDataChangeTransactionForEntityName:(id)name notificationName:(id)notificationName
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041040;
  block[3] = &unk_10023F720;
  block[4] = self;
  v12 = nameCopy;
  v13 = notificationNameCopy;
  v9 = notificationNameCopy;
  v10 = nameCopy;
  dispatch_async(transactionAccessQueue, block);
}

- (void)signalSyncToCKTransactionForEntityName:(id)name syncManager:(id)manager completion:(id)completion
{
  nameCopy = name;
  managerCopy = manager;
  completionCopy = completion;
  transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100041238;
  v15[3] = &unk_100240488;
  v15[4] = self;
  v16 = nameCopy;
  v17 = managerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = managerCopy;
  v14 = nameCopy;
  dispatch_async(transactionAccessQueue, v15);
}

- (void)signalFetchChangesTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);
  privateCloudDatabaseController = [WeakRetained privateCloudDatabaseController];
  subscriptionID = [privateCloudDatabaseController subscriptionID];
  v8 = [subscriptionID isEqualToString:transactionCopy];

  if (v8)
  {
    transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000414F0;
    block[3] = &unk_10023F6B0;
    block[4] = self;
    dispatch_async(transactionAccessQueue, block);
  }
}

- (void)transactionCompleted:(id)completed
{
  completedCopy = completed;
  transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000416B8;
  v7[3] = &unk_10023F938;
  v8 = completedCopy;
  selfCopy = self;
  v6 = completedCopy;
  dispatch_async(transactionAccessQueue, v7);
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end