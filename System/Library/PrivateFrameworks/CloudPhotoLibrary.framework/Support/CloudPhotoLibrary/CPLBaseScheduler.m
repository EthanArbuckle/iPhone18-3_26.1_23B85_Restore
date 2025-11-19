@interface CPLBaseScheduler
- (CPLBaseScheduler)initWithAbstractObject:(id)a3;
- (id)scheduleNextSyncSessionAtDate:(id)a3;
- (unint64_t)_nextSequenceNumber;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)noteSyncSession:(id)a3 failedWithError:(id)a4;
- (void)noteSyncSessionSucceeded:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)schedulePersistedSyncSessionIfAvailableWithCompletionHandler:(id)a3;
- (void)unschedulePersistedSyncSession;
- (void)unscheduleSyncSession:(id)a3;
@end

@implementation CPLBaseScheduler

- (CPLBaseScheduler)initWithAbstractObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPLBaseScheduler;
  v3 = [(CPLBaseScheduler *)&v6 initWithAbstractObject:a3];
  v4 = v3;
  if (v3)
  {
    sub_1001C8038(v3);
  }

  return v4;
}

- (unint64_t)_nextSequenceNumber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sequenceNumberQueue = self->_sequenceNumberQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001822D0;
  v5[3] = &unk_1002729E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sequenceNumberQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)noteSyncSessionSucceeded:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100182438;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)noteSyncSession:(id)a3 failedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001825D0;
  v14[3] = &unk_1002721A0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001829B8;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)schedulePersistedSyncSessionIfAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100182B44;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)unschedulePersistedSyncSession
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100183230;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100183418;
  v12[3] = &unk_100275AF0;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

- (id)scheduleNextSyncSessionAtDate:(id)a3
{
  v4 = a3;
  v5 = [(CPLBaseScheduler *)self abstractObject];
  v6 = [CPLSyncSession alloc];
  v7 = [(CPLBaseScheduler *)self _nextSequenceNumber];
  v8 = [v5 configuration];
  v9 = [v6 initWithSequenceNumber:v7 expectedDate:v4 scheduler:v5 configuration:v8 scopeFilter:0];

  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001836E0;
  v19[3] = &unk_1002721A0;
  v19[4] = self;
  v20 = v4;
  v11 = v9;
  v21 = v11;
  v12 = v19;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v23 = v12;
  v13 = queue;
  v14 = v4;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v15);

  v16 = v21;
  v17 = v11;

  return v11;
}

- (void)unscheduleSyncSession:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100183ABC;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

@end