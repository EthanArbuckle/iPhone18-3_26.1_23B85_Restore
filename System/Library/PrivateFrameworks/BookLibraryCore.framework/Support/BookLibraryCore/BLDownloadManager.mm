@interface BLDownloadManager
+ (id)downloadDirectoryForDownloadID:(id)d;
+ (id)downloadsDirectory;
+ (void)cleanupDownloadScratchDirectoryForDownloadID:(id)d;
- (BLDatabaseManager)databaseManager;
- (BLDownloadManager)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator installManager:(id)installManager progressSender:(id)sender;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (void)_pauseDownloadsWithIDs:(id)ds withCompletion:(id)completion;
- (void)_resumeDownloadWithID:(id)d withCompletion:(id)completion;
- (void)_resumeDownloadsWithIDs:(id)ds prioritizeDownloadID:(id)d withCompletion:(id)completion;
- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion;
- (void)checkDownloadsWithCompletion:(id)completion;
- (void)downloadCompletedWithDownloadID:(id)d;
- (void)dq_purgeStaleDownloadsWithCompletion:(id)completion;
- (void)dq_startNextDownloadsFromList:(id)list;
- (void)fetchDownloadFromDownloadID:(id)d withCompletion:(id)completion;
- (void)fetchDownloadListWithCompletion:(id)completion;
- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion;
- (void)purgeStaleDownloadsWithCompletion:(id)completion;
- (void)requestDownloadWithParameters:(id)parameters completion:(id)completion;
- (void)restartDownloadWithID:(id)d withCompletion:(id)completion;
- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion;
- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiHostProxy:(id)proxy withCompletion:(id)completion;
- (void)updatePoliciesForRestoreDownloadsWithCompletion:(id)completion;
@end

@implementation BLDownloadManager

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

- (BLDownloadManager)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator installManager:(id)installManager progressSender:(id)sender
{
  managerCopy = manager;
  policyManagerCopy = policyManager;
  coordinatorCopy = coordinator;
  installManagerCopy = installManager;
  senderCopy = sender;
  v26.receiver = self;
  v26.super_class = BLDownloadManager;
  v17 = [(BLDownloadManager *)&v26 init];
  if (v17)
  {
    v18 = BLServiceDownloadManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[Download-Mgr]: Initializing download manager.", v25, 2u);
    }

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.ibooks.BLService.DownloadManager", v19);
    dispatchQueue = v17->_dispatchQueue;
    v17->_dispatchQueue = v20;

    objc_storeWeak(&v17->_databaseManager, managerCopy);
    objc_storeWeak(&v17->_downloadPolicyManager, policyManagerCopy);
    objc_storeWeak(&v17->_transactionCoordinator, coordinatorCopy);
    v22 = [[BLDownloadPipeline alloc] initWithDatabaseManager:managerCopy downloadPolicyManager:policyManagerCopy transactionCoordinator:coordinatorCopy installManager:installManagerCopy progressSender:senderCopy];
    downloadPipeline = v17->_downloadPipeline;
    v17->_downloadPipeline = v22;
  }

  return v17;
}

+ (id)downloadsDirectory
{
  if (qword_10013EC80 != -1)
  {
    sub_1000CB43C();
  }

  v3 = qword_10013EC78;

  return v3;
}

+ (id)downloadDirectoryForDownloadID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    downloadsDirectory = [self downloadsDirectory];
    v6 = [downloadsDirectory URLByAppendingPathComponent:dCopy];
  }

  else
  {
    v7 = BLServiceDownloadManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Download-Mgr]: downloadDirectoryForDownloadID: received a nil downloadID.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)cleanupDownloadScratchDirectoryForDownloadID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v3 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtURL:v3 error:0];
  }
}

- (void)checkDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Download-Mgr]: Checking for downloads.", v7, 2u);
  }

  downloadPipeline = [(BLDownloadManager *)self downloadPipeline];
  [downloadPipeline startupDownloadsWithCompletion:completionCopy];
}

- (void)purgeStaleDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Download-Mgr]: Purging stale downloads from the database.", buf, 2u);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE828;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)fetchDownloadListWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Download-Mgr]: Request to list downloads.", buf, 2u);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE92C;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)fetchDownloadFromDownloadID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "(dID=%{public}@) [Download-Mgr]: Info requested for download", buf, 0xCu);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEC68;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)requestDownloadWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Download-Mgr]: New download requested", buf, 2u);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEF7C;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = parametersCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = parametersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    v15 = dCopy;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AF394;
    v12[3] = &unk_10011E830;
    v14 = completionCopy;
    v13 = dCopy;
    [(BLDownloadManager *)self _pauseDownloadsWithIDs:v8 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)_pauseDownloadsWithIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Pausing downloads: %@", buf, 0xCu);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF59C;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = dsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Canceling download", buf, 0xCu);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFB20;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_resumeDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    v15 = dCopy;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AFFE8;
    v12[3] = &unk_10011DB28;
    v14 = completionCopy;
    v13 = dCopy;
    [(BLDownloadManager *)self _resumeDownloadsWithIDs:v8 prioritizeDownloadID:v13 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)_resumeDownloadsWithIDs:(id)ds prioritizeDownloadID:(id)d withCompletion:(id)completion
{
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  v11 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Attempting to resume downloads: %@", buf, 0xCu);
  }

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B0218;
  v16[3] = &unk_10011E920;
  v16[4] = self;
  v17 = dsCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v13 = dCopy;
  v14 = completionCopy;
  v15 = dsCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Determining cellularResult before resuming download", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B09C8;
  v11[3] = &unk_10011E948;
  v11[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [(BLDownloadManager *)self fetchDownloadFromDownloadID:v10 withCompletion:v11];
}

- (void)restartDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Restarting download", buf, 0xCu);
  }

  if (dCopy)
  {
    v9 = [NSOrderedSet orderedSetWithObjects:dCopy, 0];
    downloadPipeline = [(BLDownloadManager *)self downloadPipeline];
    [downloadPipeline restartDownloadsWithIdentifiers:v9 completion:completionCopy];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v11 = objc_retainBlock(completionCopy);
    downloadPipeline = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v9);
    }
  }
}

- (void)updatePoliciesForRestoreDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [NSPredicate predicateWithFormat:@"(%K = %@) && (%K = %@ || %K = %@)", @"isRestore", &__kCFBooleanTrue, @"state", &off_100129AE8, @"state", &off_100129B00];
  databaseManager = [(BLDownloadManager *)self databaseManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B0F40;
  v8[3] = &unk_10011D9C0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [databaseManager fetchDownloadListWithPredicate:v5 completion:v8];
}

- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiHostProxy:(id)proxy withCompletion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  proxyCopy = proxy;
  v10 = [[NSSet alloc] initWithArray:&off_10012A4D0];
  v11 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v30) = enabledCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Download-Mgr]: Attempting to set automatic download enabled to %d", buf, 8u);
  }

  v12 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v12 activeStoreAccount];

  v14 = [activeStoreAccount objectForKeyedSubscript:@"automaticDownloadKinds"];
  v15 = v14;
  v16 = &__NSArray0__struct;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "local enabledMediaKinds before attempting to save: %@", buf, 0xCu);
  }

  v19 = [[NSMutableSet alloc] initWithArray:v17];
  v20 = v19;
  if (enabledCopy)
  {
    [v19 unionSet:v10];
  }

  else
  {
    [v19 minusSet:v10];
  }

  v21 = [[BLSetAutomaticDownloadKindsOperation alloc] initWithEnabledMediaKinds:v20 account:activeStoreAccount];
  [(BLSetAutomaticDownloadKindsOperation *)v21 setUiHostProxy:proxyCopy];

  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1484;
  block[3] = &unk_10011E970;
  v28 = enabledCopy;
  v26 = v21;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = v21;
  dispatch_async(dispatchQueue, block);
}

- (void)downloadCompletedWithDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B1694;
  v7[3] = &unk_10011D1A8;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)dq_purgeStaleDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  databaseManager = [(BLDownloadManager *)self databaseManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B1814;
  v8[3] = &unk_10011D5D0;
  v9 = completionCopy;
  v7 = completionCopy;
  [databaseManager purgeAllStaleDownloadsWithCompletion:v8];
}

- (void)dq_startNextDownloadsFromList:(id)list
{
  listCopy = list;
  dispatchQueue = [(BLDownloadManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B19F4;
  v7[3] = &unk_10011E250;
  v8 = listCopy;
  selfCopy = self;
  v6 = listCopy;
  [(BLDownloadManager *)self dq_purgeStaleDownloadsWithCompletion:v7];
}

- (BLDownloadPolicyManager)downloadPolicyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadPolicyManager);

  return WeakRetained;
}

- (BLOSTransactionCoordinating)transactionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);

  return WeakRetained;
}

@end