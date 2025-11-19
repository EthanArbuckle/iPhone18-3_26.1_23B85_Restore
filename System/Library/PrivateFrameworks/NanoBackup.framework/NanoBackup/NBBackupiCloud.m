@interface NBBackupiCloud
- (NBBackupiCloud)init;
- (void)backupList:(id)a3;
- (void)backupPayloadForID:(id)a3 completion:(id)a4;
- (void)createBackupsAndPruneAtDate:(id)a3 withPayload:(id)a4 completion:(id)a5;
- (void)createInitialBackup:(id)a3;
- (void)createManualBackupWithCompletion:(id)a3;
- (void)deleteBackupWithID:(id)a3 completion:(id)a4;
- (void)restoreBackupWithID:(id)a3 completion:(id)a4;
- (void)restoreBackupWithURL:(id)a3 completion:(id)a4;
@end

@implementation NBBackupiCloud

- (NBBackupiCloud)init
{
  v11.receiver = self;
  v11.super_class = NBBackupiCloud;
  v2 = [(NBBackupiCloud *)&v11 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.nanobackupd", v3);
  workQueue = v2->_workQueue;
  v2->_workQueue = v4;

  v6 = v2->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029A4;
  block[3] = &unk_10002C7D0;
  v7 = v2;
  v10 = v7;
  dispatch_sync(v6, block);

  return v7;
}

- (void)backupList:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002B50;
  v7[3] = &unk_10002C740;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)restoreBackupWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D40;
  block[3] = &unk_10002C848;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)deleteBackupWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002FB8;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)restoreBackupWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000031AC;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)backupPayloadForID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000033B4;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

- (void)createInitialBackup:(id)a3
{
  manager = self->_manager;
  if (!manager)
  {
    v5 = objc_alloc_init(NBiCloudBackupManager);
    v6 = self->_manager;
    self->_manager = v5;

    manager = self->_manager;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003598;
  v7[3] = &unk_10002C898;
  v7[4] = self;
  [(NBiCloudBackupManager *)manager createInitialBackup:v7];
}

- (void)createManualBackupWithCompletion:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (!manager)
  {
    v6 = objc_alloc_init(NBiCloudBackupManager);
    v7 = self->_manager;
    self->_manager = v6;

    manager = self->_manager;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003720;
  v9[3] = &unk_10002C820;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NBiCloudBackupManager *)manager createManualBackup:v9];
}

- (void)createBackupsAndPruneAtDate:(id)a3 withPayload:(id)a4 completion:(id)a5
{
  v6 = a5;
  manager = self->_manager;
  if (!manager)
  {
    v8 = objc_alloc_init(NBiCloudBackupManager);
    v9 = self->_manager;
    self->_manager = v8;

    manager = self->_manager;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003848;
  v11[3] = &unk_10002C820;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(NBiCloudBackupManager *)manager createBackupsAndPruneAtDate:0 withPayload:0 completion:v11];
}

@end