@interface BCCloudKitTransactionManager
- (BCCloudKitController)cloudKitController;
- (BCCloudKitTransactionManager)initWithCloudKitController:(id)controller;
- (void)signalDataChangeTransactionForEntityName:(id)name notificationName:(id)notificationName;
- (void)signalFetchChangesTransaction:(id)transaction;
- (void)signalFetchChangesTransactionInService:(id)service;
- (void)signalSyncToCKTransactionForEntityName:(id)name syncManager:(id)manager completion:(id)completion;
- (void)transactionCompleted:(id)completed;
@end

@implementation BCCloudKitTransactionManager

- (BCCloudKitTransactionManager)initWithCloudKitController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = BCCloudKitTransactionManager;
  v5 = [(BCCloudKitTransactionManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v5->_serviceProxy;
    v5->_serviceProxy = v6;

    objc_storeWeak(&v5->_cloudKitController, controllerCopy);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.iBooks.CloudKitTransactionManager", v8);
    transactionAccessQueue = v5->_transactionAccessQueue;
    v5->_transactionAccessQueue = v9;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transactions = v5->_transactions;
    v5->_transactions = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    transactionCompletionCallbacks = v5->_transactionCompletionCallbacks;
    v5->_transactionCompletionCallbacks = dictionary2;
  }

  return v5;
}

- (void)signalDataChangeTransactionForEntityName:(id)name notificationName:(id)notificationName
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E460D66C;
  block[3] = &unk_1E8759FE0;
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
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E460D864;
  v15[3] = &unk_1E8759CE0;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E460DB1C;
    block[3] = &unk_1E875A008;
    block[4] = self;
    dispatch_async(transactionAccessQueue, block);
  }
}

- (void)signalFetchChangesTransactionInService:(id)service
{
  serviceCopy = service;
  serviceProxy = [(BCCloudKitTransactionManager *)self serviceProxy];
  [serviceProxy signalFetchChangesTransaction:serviceCopy];
}

- (void)transactionCompleted:(id)completed
{
  completedCopy = completed;
  transactionAccessQueue = [(BCCloudKitTransactionManager *)self transactionAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E460DD44;
  v7[3] = &unk_1E875A030;
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