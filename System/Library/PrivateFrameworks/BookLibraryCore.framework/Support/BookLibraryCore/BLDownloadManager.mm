@interface BLDownloadManager
+ (id)downloadDirectoryForDownloadID:(id)a3;
+ (id)downloadsDirectory;
+ (void)cleanupDownloadScratchDirectoryForDownloadID:(id)a3;
- (BLDatabaseManager)databaseManager;
- (BLDownloadManager)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 installManager:(id)a6 progressSender:(id)a7;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (void)_pauseDownloadsWithIDs:(id)a3 withCompletion:(id)a4;
- (void)_resumeDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)_resumeDownloadsWithIDs:(id)a3 prioritizeDownloadID:(id)a4 withCompletion:(id)a5;
- (void)cancelDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)checkDownloadsWithCompletion:(id)a3;
- (void)downloadCompletedWithDownloadID:(id)a3;
- (void)dq_purgeStaleDownloadsWithCompletion:(id)a3;
- (void)dq_startNextDownloadsFromList:(id)a3;
- (void)fetchDownloadFromDownloadID:(id)a3 withCompletion:(id)a4;
- (void)fetchDownloadListWithCompletion:(id)a3;
- (void)pauseDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)purgeStaleDownloadsWithCompletion:(id)a3;
- (void)requestDownloadWithParameters:(id)a3 completion:(id)a4;
- (void)restartDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)resumeDownloadWithID:(id)a3 withCompletion:(id)a4;
- (void)setAutomaticDownloadEnabled:(BOOL)a3 uiHostProxy:(id)a4 withCompletion:(id)a5;
- (void)updatePoliciesForRestoreDownloadsWithCompletion:(id)a3;
@end

@implementation BLDownloadManager

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

- (BLDownloadManager)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 installManager:(id)a6 progressSender:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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

    objc_storeWeak(&v17->_databaseManager, v12);
    objc_storeWeak(&v17->_downloadPolicyManager, v13);
    objc_storeWeak(&v17->_transactionCoordinator, v14);
    v22 = [[BLDownloadPipeline alloc] initWithDatabaseManager:v12 downloadPolicyManager:v13 transactionCoordinator:v14 installManager:v15 progressSender:v16];
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

+ (id)downloadDirectoryForDownloadID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 downloadsDirectory];
    v6 = [v5 URLByAppendingPathComponent:v4];
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

+ (void)cleanupDownloadScratchDirectoryForDownloadID:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v3 = [BLDownloadManager downloadDirectoryForDownloadID:v5];
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtURL:v3 error:0];
  }
}

- (void)checkDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Download-Mgr]: Checking for downloads.", v7, 2u);
  }

  v6 = [(BLDownloadManager *)self downloadPipeline];
  [v6 startupDownloadsWithCompletion:v4];
}

- (void)purgeStaleDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Download-Mgr]: Purging stale downloads from the database.", buf, 2u);
  }

  v6 = [(BLDownloadManager *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE828;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)fetchDownloadListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Download-Mgr]: Request to list downloads.", buf, 2u);
  }

  v6 = [(BLDownloadManager *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE92C;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)fetchDownloadFromDownloadID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "(dID=%{public}@) [Download-Mgr]: Info requested for download", buf, 0xCu);
  }

  v9 = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEC68;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)requestDownloadWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Download-Mgr]: New download requested", buf, 2u);
  }

  v9 = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEF7C;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)pauseDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15 = v6;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AF394;
    v12[3] = &unk_10011E830;
    v14 = v7;
    v13 = v6;
    [(BLDownloadManager *)self _pauseDownloadsWithIDs:v8 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)_pauseDownloadsWithIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Pausing downloads: %@", buf, 0xCu);
  }

  v9 = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF59C;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)cancelDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Canceling download", buf, 0xCu);
  }

  v9 = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFB20;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)_resumeDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15 = v6;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AFFE8;
    v12[3] = &unk_10011DB28;
    v14 = v7;
    v13 = v6;
    [(BLDownloadManager *)self _resumeDownloadsWithIDs:v8 prioritizeDownloadID:v13 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)_resumeDownloadsWithIDs:(id)a3 prioritizeDownloadID:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Attempting to resume downloads: %@", buf, 0xCu);
  }

  v12 = [(BLDownloadManager *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B0218;
  v16[3] = &unk_10011E920;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  dispatch_async(v12, v16);
}

- (void)resumeDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Determining cellularResult before resuming download", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B09C8;
  v11[3] = &unk_10011E948;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(BLDownloadManager *)self fetchDownloadFromDownloadID:v10 withCompletion:v11];
}

- (void)restartDownloadWithID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Restarting download", buf, 0xCu);
  }

  if (v6)
  {
    v9 = [NSOrderedSet orderedSetWithObjects:v6, 0];
    v10 = [(BLDownloadManager *)self downloadPipeline];
    [v10 restartDownloadsWithIdentifiers:v9 completion:v7];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v11 = objc_retainBlock(v7);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v9);
    }
  }
}

- (void)updatePoliciesForRestoreDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"(%K = %@) && (%K = %@ || %K = %@)", @"isRestore", &__kCFBooleanTrue, @"state", &off_100129AE8, @"state", &off_100129B00];
  v6 = [(BLDownloadManager *)self databaseManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B0F40;
  v8[3] = &unk_10011D9C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fetchDownloadListWithPredicate:v5 completion:v8];
}

- (void)setAutomaticDownloadEnabled:(BOOL)a3 uiHostProxy:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[NSSet alloc] initWithArray:&off_10012A4D0];
  v11 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v30) = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Download-Mgr]: Attempting to set automatic download enabled to %d", buf, 8u);
  }

  v12 = +[BUAccountsProvider sharedProvider];
  v13 = [v12 activeStoreAccount];

  v14 = [v13 objectForKeyedSubscript:@"automaticDownloadKinds"];
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
  if (v6)
  {
    [v19 unionSet:v10];
  }

  else
  {
    [v19 minusSet:v10];
  }

  v21 = [[BLSetAutomaticDownloadKindsOperation alloc] initWithEnabledMediaKinds:v20 account:v13];
  [(BLSetAutomaticDownloadKindsOperation *)v21 setUiHostProxy:v9];

  v22 = [(BLDownloadManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1484;
  block[3] = &unk_10011E970;
  v28 = v6;
  v26 = v21;
  v27 = v8;
  v23 = v8;
  v24 = v21;
  dispatch_async(v22, block);
}

- (void)downloadCompletedWithDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B1694;
  v7[3] = &unk_10011D1A8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)dq_purgeStaleDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLDownloadManager *)self databaseManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B1814;
  v8[3] = &unk_10011D5D0;
  v9 = v4;
  v7 = v4;
  [v6 purgeAllStaleDownloadsWithCompletion:v8];
}

- (void)dq_startNextDownloadsFromList:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B19F4;
  v7[3] = &unk_10011E250;
  v8 = v4;
  v9 = self;
  v6 = v4;
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