@interface SBEscrowOperationLogger
- (SBEscrowOperationLogger)init;
- (SBEscrowOperationLogger)initWithStorageProvider:(id)a3;
- (SecureBackupLog)currentLog;
- (id)addObserver:(id)a3;
- (id)addObserverBlock:(id)a3;
- (id)addOneShotObserverBlock:(id)a3;
- (void)removeObserver:(id)a3;
- (void)updateExistingOperations;
- (void)updateStoreWithEvent:(id)a3;
- (void)updateStoreWithEvent:(id)a3 context:(id)a4;
@end

@implementation SBEscrowOperationLogger

- (SBEscrowOperationLogger)init
{
  v3 = objc_alloc_init(ESADefaultStorageProvider);
  v4 = [(SBEscrowOperationLogger *)self initWithStorageProvider:v3];

  return v4;
}

- (SBEscrowOperationLogger)initWithStorageProvider:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SBEscrowOperationLogger;
  v6 = [(SBEscrowOperationLogger *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.sbd.transactionStore.updates", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.sbd.transactionStore.callbacks", v10);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v11;

    v6->_hasIncompleteActivities = 1;
    currentLog = v6->_currentLog;
    v6->_currentLog = 0;

    objc_storeStrong(&v6->_storageProvider, a3);
    v14 = objc_alloc_init(NSMutableOrderedSet);
    observers = v6->_observers;
    v6->_observers = v14;

    v16 = v6;
  }

  return v6;
}

- (id)addObserverBlock:(id)a3
{
  v4 = a3;
  v5 = [[ESACallbackContainer alloc] initWithCallback:v4];

  v6 = [(SBEscrowOperationLogger *)self addObserver:v5];

  return v6;
}

- (id)addOneShotObserverBlock:(id)a3
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004D00;
  v7[3] = &unk_100074F88;
  v9 = v10;
  v4 = a3;
  v8 = v4;
  v5 = [(SBEscrowOperationLogger *)self addObserverBlock:v7];

  _Block_object_dispose(v10, 8);

  return v5;
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E08;
  block[3] = &unk_100074FB0;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004F28;
  block[3] = &unk_100074FB0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateStoreWithEvent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000050D4;
  v18[4] = sub_1000050E4;
  v19 = os_transaction_create();
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000050EC;
  v11[3] = &unk_100075028;
  objc_copyWeak(&v16, &location);
  v12 = v6;
  v13 = self;
  v14 = v7;
  v15 = v18;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(v18, 8);
}

- (void)updateStoreWithEvent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ESADefaultOperationLoggingContext);
  [(SBEscrowOperationLogger *)self updateStoreWithEvent:v4 context:v5];
}

- (void)updateExistingOperations
{
  v3 = objc_alloc_init(ESADefaultOperationLoggingContext);
  [(SBEscrowOperationLogger *)self updateExistingOperationsWithContext:v3];
}

- (SecureBackupLog)currentLog
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000050D4;
  v10 = sub_1000050E4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000055BC;
  v5[3] = &unk_100075050;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end