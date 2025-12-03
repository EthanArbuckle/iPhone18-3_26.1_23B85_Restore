@interface NBBackupiCloud
- (NBBackupiCloud)init;
- (void)backupList:(id)list;
- (void)backupPayloadForID:(id)d completion:(id)completion;
- (void)createBackupsAndPruneAtDate:(id)date withPayload:(id)payload completion:(id)completion;
- (void)createInitialBackup:(id)backup;
- (void)createManualBackupWithCompletion:(id)completion;
- (void)deleteBackupWithID:(id)d completion:(id)completion;
- (void)restoreBackupWithID:(id)d completion:(id)completion;
- (void)restoreBackupWithURL:(id)l completion:(id)completion;
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

- (void)backupList:(id)list
{
  listCopy = list;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002B50;
  v7[3] = &unk_10002C740;
  v7[4] = self;
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(workQueue, v7);
}

- (void)restoreBackupWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D40;
  block[3] = &unk_10002C848;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)deleteBackupWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002FB8;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)restoreBackupWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000031AC;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = lCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = lCopy;
  dispatch_async(workQueue, block);
}

- (void)backupPayloadForID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000033B4;
  block[3] = &unk_10002C848;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)createInitialBackup:(id)backup
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

- (void)createManualBackupWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v8 = completionCopy;
  [(NBiCloudBackupManager *)manager createManualBackup:v9];
}

- (void)createBackupsAndPruneAtDate:(id)date withPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
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
  v12 = completionCopy;
  v10 = completionCopy;
  [(NBiCloudBackupManager *)manager createBackupsAndPruneAtDate:0 withPayload:0 completion:v11];
}

@end