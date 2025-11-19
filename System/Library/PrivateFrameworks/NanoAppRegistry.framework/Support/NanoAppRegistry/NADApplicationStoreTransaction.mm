@interface NADApplicationStoreTransaction
- (BOOL)commit:(id *)a3;
- (NADApplicationStoreTransaction)initWithApplicationStore:(id)a3;
- (void)_flushCommandQueue;
- (void)insertApplication:(id)a3;
- (void)removeAllEntities;
- (void)removeApplicationWithBundleIdentifier:(id)a3;
- (void)rollback;
- (void)setSequenceNumber:(id)a3 UUID:(id)a4;
@end

@implementation NADApplicationStoreTransaction

- (NADApplicationStoreTransaction)initWithApplicationStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NADApplicationStoreTransaction;
  v6 = [(NADApplicationStoreTransaction *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationStore, a3);
    v8 = [v5 queue];
    v9 = dispatch_queue_create_with_target_V2("com.nanoappregistry.transaction", 0, v8);
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = v9;

    dispatch_suspend(v7->_commandQueue);
  }

  return v7;
}

- (void)removeAllEntities
{
  v3 = [(NADApplicationStoreTransaction *)self commandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000286C;
  block[3] = &unk_100018578;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)insertApplication:(id)a3
{
  v4 = a3;
  v5 = [(NADApplicationStoreTransaction *)self commandQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002964;
  v7[3] = &unk_1000185A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NADApplicationStoreTransaction *)self commandQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A6C;
  v7[3] = &unk_1000185A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setSequenceNumber:(id)a3 UUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NADApplicationStoreTransaction *)self commandQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B98;
  block[3] = &unk_1000185C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)commit:(id *)a3
{
  v4 = [(NADApplicationStoreTransaction *)self isFinalized];
  if ((v4 & 1) == 0)
  {
    [(NADApplicationStoreTransaction *)self setFinalized:1];
    dispatch_resume(self->_commandQueue);
    [(NADApplicationStoreTransaction *)self _flushCommandQueue];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, NARApplicationsChangedNotification, 0, 0, 0);
  }

  return v4 ^ 1;
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
  v2 = [(NADApplicationStoreTransaction *)self commandQueue];
  dispatch_sync(v2, &stru_1000185E8);
}

@end