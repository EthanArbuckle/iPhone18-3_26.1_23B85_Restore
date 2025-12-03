@interface NADApplicationStoreTransaction
- (BOOL)commit:(id *)commit;
- (NADApplicationStoreTransaction)initWithApplicationStore:(id)store;
- (void)_flushCommandQueue;
- (void)insertApplication:(id)application;
- (void)removeAllEntities;
- (void)removeApplicationWithBundleIdentifier:(id)identifier;
- (void)rollback;
- (void)setSequenceNumber:(id)number UUID:(id)d;
@end

@implementation NADApplicationStoreTransaction

- (NADApplicationStoreTransaction)initWithApplicationStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = NADApplicationStoreTransaction;
  v6 = [(NADApplicationStoreTransaction *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationStore, store);
    queue = [storeCopy queue];
    v9 = dispatch_queue_create_with_target_V2("com.nanoappregistry.transaction", 0, queue);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v9;

    dispatch_suspend(v7->_commandQueue);
  }

  return v7;
}

- (void)removeAllEntities
{
  commandQueue = [(NADApplicationStoreTransaction *)self commandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000286C;
  block[3] = &unk_100018578;
  block[4] = self;
  dispatch_async(commandQueue, block);
}

- (void)insertApplication:(id)application
{
  applicationCopy = application;
  commandQueue = [(NADApplicationStoreTransaction *)self commandQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002964;
  v7[3] = &unk_1000185A0;
  v7[4] = self;
  v8 = applicationCopy;
  v6 = applicationCopy;
  dispatch_async(commandQueue, v7);
}

- (void)removeApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  commandQueue = [(NADApplicationStoreTransaction *)self commandQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A6C;
  v7[3] = &unk_1000185A0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(commandQueue, v7);
}

- (void)setSequenceNumber:(id)number UUID:(id)d
{
  numberCopy = number;
  dCopy = d;
  commandQueue = [(NADApplicationStoreTransaction *)self commandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B98;
  block[3] = &unk_1000185C8;
  block[4] = self;
  v12 = numberCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = numberCopy;
  dispatch_async(commandQueue, block);
}

- (BOOL)commit:(id *)commit
{
  isFinalized = [(NADApplicationStoreTransaction *)self isFinalized];
  if ((isFinalized & 1) == 0)
  {
    [(NADApplicationStoreTransaction *)self setFinalized:1];
    dispatch_resume(self->_commandQueue);
    [(NADApplicationStoreTransaction *)self _flushCommandQueue];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, NARApplicationsChangedNotification, 0, 0, 0);
  }

  return isFinalized ^ 1;
}

- (void)rollback
{
  if (![(NADApplicationStoreTransaction *)self isFinalized])
  {
    [(NADApplicationStoreTransaction *)self setFinalized:1];
    applicationStore = self->_applicationStore;
    self->_applicationStore = 0;

    dispatch_resume(self->_commandQueue);

    [(NADApplicationStoreTransaction *)self _flushCommandQueue];
  }
}

- (void)_flushCommandQueue
{
  commandQueue = [(NADApplicationStoreTransaction *)self commandQueue];
  dispatch_sync(commandQueue, &stru_1000185E8);
}

@end