@interface BLService
- (BLService)init;
- (void)_cancelAllActiveDownloads;
- (void)_deleteMetadataStoreWithCompletion:(id)completion;
- (void)_operationCountChanged:(id)changed;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)addKeepAliveOperationQueue:(id)queue;
- (void)cancelAllActiveDownloadsWithReply:(id)reply;
- (void)cancelDownloadWithID:(id)d withReply:(id)reply;
- (void)cleanupOrphanedScratchDirectoriesWithCompletion:(id)completion;
- (void)dealloc;
- (void)didFinishTransactionWithIdenfifier:(id)idenfifier;
- (void)downloadWithPermlink:(id)permlink title:(id)title reply:(id)reply;
- (void)dq_reloadOperationKeepAliveTransaction;
- (void)fetchDownloadFromDownloadID:(id)d withReply:(id)reply;
- (void)fetchDownloadListWithReply:(id)reply;
- (void)getCrashSimulationOverrideValuesWithReply:(id)reply;
- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)reply;
- (void)migrationInfoWithStoreID:(int64_t)d withReply:(id)reply;
- (void)migrationInfosWithStates:(id)states withReply:(id)reply;
- (void)migrationInfosWithStoreIDs:(id)ds withReply:(id)reply;
- (void)monitorProgressWithReply:(id)reply;
- (void)pauseDownloadWithID:(id)d withReply:(id)reply;
- (void)performPreListenerStartupWithCompletion:(id)completion;
- (void)prepareForRemoveAppWithReply:(id)reply;
- (void)processAutomaticDownloadsWithReply:(id)reply;
- (void)purchaseManager:(id)manager requestDownloadWithParameters:(id)parameters completion:(id)completion;
- (void)purchaseManager:(id)manager restartDownloadWithID:(id)d withCompletion:(id)completion;
- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply;
- (void)racGUIDForStoreID:(int64_t)d withReply:(id)reply;
- (void)reloadFromServerWithReply:(id)reply;
- (void)removeAllMigrationInfosExcludingStates:(id)states withReply:(id)reply;
- (void)removeKeepAliveOperationQueue:(id)queue;
- (void)removeMigrationInfoForStoreID:(int64_t)d withReply:(id)reply;
- (void)removeRacGUIDForStoreID:(int64_t)d withReply:(id)reply;
- (void)requestDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore reply:(id)reply;
- (void)requestDownloadWithParameters:(id)parameters reply:(id)reply;
- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply;
- (void)requestDownloadsWithMetadata:(id)metadata areRestore:(BOOL)restore reply:(id)reply;
- (void)requestDownloadsWithRestoreContentRequestItems:(id)items reply:(id)reply;
- (void)resetAllCrashSimulationOverridesWithReply:(id)reply;
- (void)restartDownloadWithID:(id)d withReply:(id)reply;
- (void)resumeDownloadWithID:(id)d withReply:(id)reply;
- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiHostProxy:(id)proxy reply:(id)reply;
- (void)setMigrationState:(int64_t)state forStoreIDs:(id)ds withReply:(id)reply;
- (void)setRacGUID:(id)d forStoreID:(int64_t)iD withReply:(id)reply;
- (void)setValueSimulateCrashAtInstallDuringDecrypt:(BOOL)decrypt withReply:(id)reply;
- (void)setValueSimulateCrashAtInstallDuringFinish:(BOOL)finish withReply:(id)reply;
- (void)setValueSimulateCrashAtInstallDuringUnzip:(BOOL)unzip withReply:(id)reply;
- (void)setValueSimulateCrashAtInstallStart:(BOOL)start withReply:(id)reply;
- (void)setValueSimulateDeviceOutOfSpace:(BOOL)space withReply:(id)reply;
- (void)startPendingOperations;
- (void)willStartTransactionWithIdentifier:(id)identifier;
@end

@implementation BLService

- (BLService)init
{
  v36.receiver = self;
  v36.super_class = BLService;
  v2 = [(BLService *)&v36 init];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.bookassetd.BLService", v3);
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = v4;

  v2->_transactionsUpdateLock._os_unfair_lock_opaque = 0;
  v6 = objc_opt_new();
  transactionsMap = v2->_transactionsMap;
  v2->_transactionsMap = v6;

  v8 = objc_alloc_init(NSMutableSet);
  keepAliveOperationQueues = v2->_keepAliveOperationQueues;
  v2->_keepAliveOperationQueues = v8;

  v10 = objc_alloc_init(BLDatabaseManager);
  databaseManager = v2->_databaseManager;
  v2->_databaseManager = v10;

  if (!v2->_databaseManager)
  {
    v32 = BLServiceLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v35 = 0;
    v33 = "[Service]: FATAL ERROR: could not setup the database manager.";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, v35, 2u);
    goto LABEL_23;
  }

  v12 = [[BLDownloadPolicyManager alloc] initWithDatabaseManager:v2->_databaseManager];
  downloadPolicyManager = v2->_downloadPolicyManager;
  v2->_downloadPolicyManager = v12;

  v14 = [[BLBookInstallManager alloc] initWithDatabaseManager:v2->_databaseManager];
  installManager = v2->_installManager;
  v2->_installManager = v14;

  if (!v2->_installManager)
  {
    v32 = BLServiceLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v35 = 0;
    v33 = "[Service]: FATAL ERROR: could not setup the install manager.";
    goto LABEL_22;
  }

  v16 = objc_alloc_init(BLProgressSender);
  progressSender = v2->_progressSender;
  v2->_progressSender = v16;

  if (!v2->_progressSender)
  {
    v32 = BLServiceLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v35 = 0;
    v33 = "[Service]: FATAL ERROR: could not setup the progress sender.";
    goto LABEL_22;
  }

  v18 = [[BLDownloadManager alloc] initWithDatabaseManager:v2->_databaseManager downloadPolicyManager:v2->_downloadPolicyManager transactionCoordinator:v2 installManager:v2->_installManager progressSender:v2->_progressSender];
  downloadManager = v2->_downloadManager;
  v2->_downloadManager = v18;

  if (!v2->_downloadManager)
  {
    v32 = BLServiceLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v35 = 0;
    v33 = "[Service]: FATAL ERROR: could not setup the download manager.";
    goto LABEL_22;
  }

  v20 = [[BLPurchaseManager alloc] initWithDatabaseManager:v2->_databaseManager downloadPolicyManager:v2->_downloadPolicyManager transactionCoordinator:v2 progressSender:v2->_progressSender];
  purchaseManager = v2->_purchaseManager;
  v2->_purchaseManager = v20;

  v22 = v2->_purchaseManager;
  if (!v22)
  {
    v32 = BLServiceLog();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v35 = 0;
    v33 = "[Service]: FATAL ERROR: could not setup the purchase manager.";
    goto LABEL_22;
  }

  [(BLPurchaseManager *)v22 setDelegate:v2];
  installProgressDelegate = [(BLDownloadManager *)v2->_downloadManager installProgressDelegate];
  [(BLBookInstallManager *)v2->_installManager setProgressDelegate:installProgressDelegate];

  v24 = +[BLRestoreManager sharedInstance];
  restoreManager = v2->_restoreManager;
  v2->_restoreManager = v24;

  v26 = v2->_restoreManager;
  if (!v26)
  {
    v32 = BLServiceLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      v33 = "[Service]: FATAL ERROR: could not setup the restore manager.";
      goto LABEL_22;
    }

LABEL_23:

    v31 = 0;
    goto LABEL_24;
  }

  [(BLRestoreManager *)v26 setupWithDownloadManager:v2->_downloadManager];
  v27 = objc_alloc_init(BAMetadataStoreManager);
  metadataStoreManager = v2->_metadataStoreManager;
  v2->_metadataStoreManager = v27;

  [BLAssetContainerFactory setMetadataStoreManager:v2->_metadataStoreManager];
  v29 = +[BUAccountsProvider sharedProvider];
  [v29 addObserver:v2 accountTypes:1];

  v30 = +[NSUserDefaults standardUserDefaults];
  [v30 registerDefaults:&off_10012A4A8];

LABEL_9:
  v31 = v2;
LABEL_24:

  return v31;
}

- (void)dealloc
{
  v3 = +[BUAccountsProvider sharedProvider];
  [v3 removeObserver:self accountTypes:1];

  v4 = BLServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Service]: Shutting down.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = BLService;
  [(BLService *)&v5 dealloc];
}

- (void)performPreListenerStartupWithCompletion:(id)completion
{
  completionCopy = completion;
  downloadManager = [(BLService *)self downloadManager];

  if (!downloadManager)
  {
    v6 = BLServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Service]: Could not setup a download manager.", buf, 2u);
    }
  }

  installManager = [(BLService *)self installManager];

  if (!installManager)
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Service]: Could not setup a install manager.", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  downloadManager2 = [(BLService *)self downloadManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006EBD4;
  v11[3] = &unk_10011D490;
  objc_copyWeak(&v13, buf);
  v10 = completionCopy;
  v12 = v10;
  [downloadManager2 purgeStaleDownloadsWithCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)startPendingOperations
{
  [(BLService *)self willStartTransactionWithIdentifier:@"com.apple.bookassetd.cleanup.transaction"];
  [(BLService *)self willStartTransactionWithIdentifier:@"com.apple.bookassetd.startup.transaction"];
  v3 = BLServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Service]: Restarting interrupted installs.", buf, 2u);
  }

  installManager = [(BLService *)self installManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EEE0;
  v7[3] = &unk_10011D4B8;
  v7[4] = self;
  [installManager restartInterruptedInstalls:v7];

  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: Cleaning up orphaned directories.", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006EEF0;
  v6[3] = &unk_10011D4B8;
  v6[4] = self;
  [(BLService *)self cleanupOrphanedScratchDirectoriesWithCompletion:v6];
}

- (void)cleanupOrphanedScratchDirectoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  databaseManager = [(BLService *)self databaseManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EFAC;
  v7[3] = &unk_10011D530;
  v8 = completionCopy;
  v6 = completionCopy;
  [databaseManager fetchDownloadListWithCompletion:v7];
}

- (void)fetchDownloadListWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: fetchDownloadListWithReply", v8, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 fetchDownloadListWithCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, 0, downloadManager2);
  }
}

- (void)fetchDownloadFromDownloadID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Service]: fetchDownloadFromDownloadID", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 fetchDownloadFromDownloadID:dCopy withCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, 0, downloadManager2);
  }
}

- (void)requestDownloadWithParameters:(id)parameters reply:(id)reply
{
  parametersCopy = parameters;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Service]: requestDownloadWithParameters", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 requestDownloadWithParameters:parametersCopy completion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, 0, downloadManager2);
  }
}

- (void)requestDownloadWithMetadata:(id)metadata isRestore:(BOOL)restore reply:(id)reply
{
  restoreCopy = restore;
  metadataCopy = metadata;
  replyCopy = reply;
  v10 = BLServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Service]: requestDownloadWithMetadata", v13, 2u);
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    purchaseManager2 = [(BLService *)self purchaseManager];
    [purchaseManager2 requestDownloadWithMetadata:metadataCopy isRestore:restoreCopy completion:replyCopy];
  }

  else
  {
    purchaseManager2 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
    replyCopy[2](replyCopy, 0, purchaseManager2);
  }
}

- (void)requestDownloadsWithMetadata:(id)metadata areRestore:(BOOL)restore reply:(id)reply
{
  restoreCopy = restore;
  metadataCopy = metadata;
  replyCopy = reply;
  v6 = BLServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Service]: requestDownloadWithMetadata", buf, 2u);
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    v8 = dispatch_group_create();
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    queue = dispatch_queue_create("com.apple.bookassetd.BLService", v9);

    v10 = objc_opt_new();
    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = sub_10006FA58;
    v39 = sub_10006FA68;
    v40 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = metadataCopy;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        v13 = 0;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          dispatch_group_enter(v8);
          purchaseManager2 = [(BLService *)self purchaseManager];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10006FA70;
          v27[3] = &unk_10011D558;
          v28 = v10;
          v30 = buf;
          v29 = v8;
          [purchaseManager2 requestDownloadWithMetadata:v14 isRestore:restoreCopy completion:v27];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v11);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006FAF4;
    block[3] = &unk_10011D580;
    v24 = v10;
    v25 = replyCopy;
    v26 = buf;
    v16 = v10;
    dispatch_group_notify(v8, queue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)requestDownloadsWithRestoreContentRequestItems:(id)items reply:(id)reply
{
  itemsCopy = items;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Service]: requestDownloadsWithRestoreContentRequestDictionary", v11, 2u);
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    purchaseManager2 = [(BLService *)self purchaseManager];
    [purchaseManager2 requestDownloadsWithRestoreContentRequestItems:itemsCopy completion:replyCopy];
  }

  else
  {
    purchaseManager2 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
    replyCopy[2](replyCopy, 0, purchaseManager2);
  }
}

- (void)requestDownloadsWithManifestRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply
{
  requestCopy = request;
  proxyCopy = proxy;
  replyCopy = reply;
  v11 = BLServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Service]: requestDownloadsWithManifestRequest", v14, 2u);
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    purchaseManager2 = [(BLService *)self purchaseManager];
    [purchaseManager2 requestDownloadsWithManifestRequest:requestCopy uiHostProxy:proxyCopy completion:replyCopy];
  }

  else
  {
    purchaseManager2 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
    replyCopy[2](replyCopy, 0, purchaseManager2);
  }
}

- (void)pauseDownloadWithID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Service]: pauseDownloadWithID", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 pauseDownloadWithID:dCopy withCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, downloadManager2);
  }
}

- (void)resumeDownloadWithID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Service]: resumeDownloadWithID", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 resumeDownloadWithID:dCopy withCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, downloadManager2);
  }
}

- (void)restartDownloadWithID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Service]: restartDownloadWithID", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 restartDownloadWithID:dCopy withCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, downloadManager2);
  }
}

- (void)cancelDownloadWithID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[Service]: cancelDownloadWithID", v11, 2u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    [downloadManager2 cancelDownloadWithID:dCopy withCompletion:replyCopy];
  }

  else
  {
    downloadManager2 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
    replyCopy[2](replyCopy, downloadManager2);
  }
}

- (void)cancelAllActiveDownloadsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: cancelAllActiveDownloadsWithReply", v6, 2u);
  }

  [(BLService *)self _cancelAllActiveDownloads];
  replyCopy[2](replyCopy, 0);
}

- (void)purchaseWithRequest:(id)request uiHostProxy:(id)proxy reply:(id)reply
{
  requestCopy = request;
  proxyCopy = proxy;
  replyCopy = reply;
  v11 = BLServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Service]: purchaseWithRequest:uiHostProxy:reply:", buf, 2u);
  }

  buyParameters = [requestCopy buyParameters];
  v13 = [buyParameters length];

  if (!v13)
  {
    v17 = @"nil purchase parameters";
    v18 = @"bookassetd cannot effect a purchase without purchase parameters";
LABEL_8:
    v16 = sub_1000A8F44(34, v17, v18);
    (*(replyCopy + 2))(replyCopy, 0, 0, v16);
    goto LABEL_9;
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (!purchaseManager)
  {
    v17 = @"nil purchase manager";
    v18 = @"bookassetd is missing a purchase manager";
    goto LABEL_8;
  }

  purchaseManager2 = [(BLService *)self purchaseManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100070384;
  v19[3] = &unk_10011D5A8;
  v20 = replyCopy;
  [purchaseManager2 purchaseWithRequest:requestCopy uiHostProxy:proxyCopy completion:v19];

  v16 = v20;
LABEL_9:
}

- (void)downloadWithPermlink:(id)permlink title:(id)title reply:(id)reply
{
  permlinkCopy = permlink;
  titleCopy = title;
  replyCopy = reply;
  v11 = BLServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Service]: downloadWithPermlink", v14, 2u);
  }

  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    purchaseManager2 = [(BLService *)self purchaseManager];
    [purchaseManager2 downloadWithPermlink:permlinkCopy title:titleCopy completion:replyCopy];
  }

  else
  {
    purchaseManager2 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
    replyCopy[2](replyCopy, 0, purchaseManager2);
  }
}

- (void)processAutomaticDownloadsWithReply:(id)reply
{
  replyCopy = reply;
  purchaseManager = [(BLService *)self purchaseManager];

  if (purchaseManager)
  {
    purchaseManager2 = [(BLService *)self purchaseManager];
    [purchaseManager2 processAutomaticDownloadsWithCompletion:replyCopy];
  }

  else
  {
    purchaseManager2 = objc_retainBlock(replyCopy);
    if (purchaseManager2)
    {
      v6 = sub_1000A8F44(34, @"nil purchase manager", @"bookassetd is missing a purchase manager");
      (purchaseManager2)[2](purchaseManager2, &__NSArray0__struct, v6);
    }
  }
}

- (void)setAutomaticDownloadEnabled:(BOOL)enabled uiHostProxy:(id)proxy reply:(id)reply
{
  enabledCopy = enabled;
  proxyCopy = proxy;
  replyCopy = reply;
  v10 = BLServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v18 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Service]: setAutomaticDownloadEnabled: %d", buf, 8u);
  }

  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    downloadManager2 = [(BLService *)self downloadManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000707C8;
    v15[3] = &unk_10011D5D0;
    v16 = replyCopy;
    [downloadManager2 setAutomaticDownloadEnabled:enabledCopy uiHostProxy:proxyCopy withCompletion:v15];

    v13 = v16;
  }

  else
  {
    v13 = objc_retainBlock(replyCopy);
    if (v13)
    {
      v14 = sub_1000A8F44(34, @"nil download manager", @"bookassetd is missing a download manager");
      v13[2](v13, v14);
    }
  }
}

- (void)reloadFromServerWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: reloadFromServerWithReply", buf, 2u);
  }

  if (BUIsGDPRAcknowledgementNeededForBooks())
  {
    v6 = BLServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "bookassetd cannot download purchases without GDPR", v12, 2u);
    }

    purchaseManager2 = objc_retainBlock(replyCopy);
    if (purchaseManager2)
    {
      v8 = @"GDPR not accepted";
      v9 = @"bookassetd cannot download purchases without GDPR";
LABEL_12:
      v11 = sub_1000A8F44(34, v8, v9);
      (purchaseManager2)[2](purchaseManager2, v11);
    }
  }

  else
  {
    purchaseManager = [(BLService *)self purchaseManager];

    if (purchaseManager)
    {
      purchaseManager2 = [(BLService *)self purchaseManager];
      [purchaseManager2 reloadFromServerWithCompletion:replyCopy];
    }

    else
    {
      purchaseManager2 = objc_retainBlock(replyCopy);
      if (purchaseManager2)
      {
        v8 = @"nil purchase manager";
        v9 = @"bookassetd is missing a purchase manager";
        goto LABEL_12;
      }
    }
  }
}

- (void)monitorProgressWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: monitorProgressWithReply:]", buf, 2u);
  }

  progressSender = [(BLService *)self progressSender];

  if (progressSender)
  {
    v7 = +[NSXPCConnection currentConnection];
    v8 = +[BLServiceInterface progressInterface];
    [v7 setRemoteObjectInterface:v8];
    remoteObjectProxy = [v7 remoteObjectProxy];
    *buf = 0;
    v22 = buf;
    v23 = 0x3042000000;
    v24 = sub_1000019B8;
    v25 = sub_100070C70;
    v26 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100070C78;
    v20[3] = &unk_10011D5F8;
    v20[4] = self;
    v20[5] = buf;
    [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:v20];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100070D74;
    v10 = v17 = &unk_10011D1A8;
    v18 = v10;
    selfCopy = self;
    [v7 setInvalidationHandler:&v14];
    objc_storeWeak(v22 + 5, v10);
    v11 = [(BLService *)self progressSender:v14];
    [v11 registerProgressReceiver:v10];

    v12 = objc_retainBlock(replyCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v26);

    goto LABEL_9;
  }

  v7 = objc_retainBlock(replyCopy);
  if (v7)
  {
    v8 = sub_1000A8F44(34, @"nil progressSender", @"bookassetd is missing a progressSender");
    (v7)[2](v7, v8);
LABEL_9:
  }
}

- (void)setRacGUID:(id)d forStoreID:(int64_t)iD withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];

  if (metadataStore)
  {
    metadataStoreManager2 = [(BLService *)self metadataStoreManager];
    metadataStore2 = [metadataStoreManager2 metadataStore];
    v18 = 0;
    v14 = [metadataStore2 setRacGUID:dCopy forStoreID:iD error:&v18];
    v15 = v18;

    v16 = objc_retainBlock(replyCopy);
    v17 = v16;
    if (v14)
    {
      if (v16)
      {
        (*(v16 + 2))(v16, 0);
      }
    }

    else if (v16)
    {
      (*(v16 + 2))(v16, v15);
    }

    goto LABEL_9;
  }

  v15 = objc_retainBlock(replyCopy);
  if (v15)
  {
    v17 = sub_1000A8F44(34, @"No Metadata Store", @"bookassetd does not have a metadata store.");
    v15[2](v15, v17);
LABEL_9:
  }
}

- (void)racGUIDForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];

  if (metadataStore)
  {
    metadataStoreManager2 = [(BLService *)self metadataStoreManager];
    metadataStore2 = [metadataStoreManager2 metadataStore];
    [metadataStore2 racGUIDForStoreID:d result:replyCopy];
  }

  else
  {
    metadataStoreManager2 = objc_retainBlock(replyCopy);
    if (!metadataStoreManager2)
    {
      goto LABEL_6;
    }

    metadataStore2 = sub_1000A8F44(34, @"No Metadata Store", @"bookassetd does not have a metadata store.");
    (metadataStoreManager2)[2](metadataStoreManager2, 0, metadataStore2);
  }

LABEL_6:
}

- (void)removeRacGUIDForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  v13 = 0;
  v9 = [metadataStore removeRacGUIDForStoreID:d error:&v13];
  v10 = v13;

  v11 = objc_retainBlock(replyCopy);
  if (v11)
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    (v11)[2](v11, v12);
  }
}

- (void)setMigrationState:(int64_t)state forStoreIDs:(id)ds withReply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  v16 = 0;
  v12 = [metadataStore setMigrationState:state forStoreIDs:dsCopy error:&v16];

  v13 = v16;
  v14 = objc_retainBlock(replyCopy);

  if (v14)
  {
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    (v14)[2](v14, v15);
  }
}

- (void)migrationInfoWithStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  [metadataStore migrationInfoWithStoreID:d completion:replyCopy];
}

- (void)migrationInfosWithStoreIDs:(id)ds withReply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  [metadataStore migrationInfosWithStoreIDs:dsCopy completion:replyCopy];
}

- (void)migrationInfosWithStates:(id)states withReply:(id)reply
{
  replyCopy = reply;
  statesCopy = states;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  [metadataStore migrationInfosWithStates:statesCopy completion:replyCopy];
}

- (void)removeMigrationInfoForStoreID:(int64_t)d withReply:(id)reply
{
  replyCopy = reply;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  v13 = 0;
  v9 = [metadataStore removeMigrationInfoForStoreID:d error:&v13];
  v10 = v13;

  v11 = objc_retainBlock(replyCopy);
  if (v11)
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    (v11)[2](v11, v12);
  }
}

- (void)removeAllMigrationInfosExcludingStates:(id)states withReply:(id)reply
{
  replyCopy = reply;
  statesCopy = states;
  metadataStoreManager = [(BLService *)self metadataStoreManager];
  metadataStore = [metadataStoreManager metadataStore];
  v14 = 0;
  v10 = [metadataStore removeAllMigrationInfosExcludingStates:statesCopy error:&v14];

  v11 = v14;
  v12 = objc_retainBlock(replyCopy);

  if (v12)
  {
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    (v12)[2](v12, v13);
  }
}

- (void)prepareForRemoveAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[Service]: prepareForRemoveAppWithReply", v6, 2u);
  }

  [(BLService *)self _cancelAllActiveDownloads];
  [(BLService *)self _deleteMetadataStoreWithCompletion:replyCopy];
}

- (void)setValueSimulateCrashAtInstallStart:(BOOL)start withReply:(id)reply
{
  startCopy = start;
  replyCopy = reply;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:startCopy forKey:@"BKSimulateCrashAtInstallStart"];

  replyCopy[2](replyCopy, 0);
}

- (void)setValueSimulateCrashAtInstallDuringDecrypt:(BOOL)decrypt withReply:(id)reply
{
  decryptCopy = decrypt;
  replyCopy = reply;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:decryptCopy forKey:@"BKSimulateCrashAtInstallDuringDecrypt"];

  replyCopy[2](replyCopy, 0);
}

- (void)setValueSimulateCrashAtInstallDuringUnzip:(BOOL)unzip withReply:(id)reply
{
  unzipCopy = unzip;
  replyCopy = reply;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:unzipCopy forKey:@"BKSimulateCrashAtInstallDuringUnzip"];

  replyCopy[2](replyCopy, 0);
}

- (void)setValueSimulateCrashAtInstallDuringFinish:(BOOL)finish withReply:(id)reply
{
  finishCopy = finish;
  replyCopy = reply;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:finishCopy forKey:@"BKSimulateCrashAtInstallDuringFinish"];

  replyCopy[2](replyCopy, 0);
}

- (void)getCrashSimulationOverrideValuesWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKSimulateCrashAtInstallStart"];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BKSimulateCrashAtInstallDuringDecrypt"];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"BKSimulateCrashAtInstallDuringUnzip"];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"BKSimulateCrashAtInstallDuringFinish"];

  replyCopy[2](replyCopy, v4, v6, v8, v10, 0);
}

- (void)resetAllCrashSimulationOverridesWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"BKSimulateCrashAtInstallStart"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"BKSimulateCrashAtInstallDuringDecrypt"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"BKSimulateCrashAtInstallDuringUnzip"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"BKSimulateCrashAtInstallDuringFinish"];

  replyCopy[2](replyCopy, 0);
}

- (void)setValueSimulateDeviceOutOfSpace:(BOOL)space withReply:(id)reply
{
  spaceCopy = space;
  replyCopy = reply;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = v5;
  if (spaceCopy)
  {
    [v5 setBool:1 forKey:@"BKSimulateDeviceOutOfSpace"];
  }

  else
  {
    [v5 removeObjectForKey:@"BKSimulateDeviceOutOfSpace"];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)getValueSimulateDeviceOutOfSpaceWithReply:(id)reply
{
  replyCopy = reply;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKSimulateDeviceOutOfSpace"];

  replyCopy[2](replyCopy, v4, 0);
}

- (void)willStartTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = identifierCopy;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Service]: Received a transaction-start for identifier: %{public}@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_transactionsUpdateLock);
  v6 = [(NSMutableDictionary *)self->_transactionsMap objectForKeyedSubscript:identifierCopy];
  if (!v6)
  {
    v6 = -[BLOSTransaction initWithTransactionName:]([BLOSTransaction alloc], "initWithTransactionName:", [identifierCopy cStringUsingEncoding:4]);
    [(NSMutableDictionary *)self->_transactionsMap setObject:v6 forKeyedSubscript:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_transactionsUpdateLock);
}

- (void)didFinishTransactionWithIdenfifier:(id)idenfifier
{
  idenfifierCopy = idenfifier;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = idenfifierCopy;
    v8 = 2114;
    v9 = idenfifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Service]: Received a transaction-end for identifier: %{public}@", &v6, 0x16u);
  }

  os_unfair_lock_lock(&self->_transactionsUpdateLock);
  [(NSMutableDictionary *)self->_transactionsMap setObject:0 forKeyedSubscript:idenfifierCopy];
  os_unfair_lock_unlock(&self->_transactionsUpdateLock);
}

- (void)addKeepAliveOperationQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071D84;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeKeepAliveOperationQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071EDC;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)dq_reloadOperationKeepAliveTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  keepAliveOperationQueues = [(BLService *)self keepAliveOperationQueues];
  v4 = [keepAliveOperationQueues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(keepAliveOperationQueues);
        }

        if ([*(*(&v7 + 1) + 8 * i) operationCount] > 0)
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [keepAliveOperationQueues countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v4 != [(BLService *)self aliveForOperationQueues])
  {
    [(BLService *)self setAliveForOperationQueues:v4];
    if ([(BLService *)self aliveForOperationQueues])
    {
      [(BLService *)self willStartTransactionWithIdentifier:@"com.apple.bookassetd.keepQueuesAlive"];
    }

    else
    {
      [(BLService *)self didFinishTransactionWithIdenfifier:@"com.apple.bookassetd.keepQueuesAlive"];
    }
  }
}

- (void)_operationCountChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072158;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)purchaseManager:(id)manager requestDownloadWithParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  downloadManager = [(BLService *)self downloadManager];
  [downloadManager requestDownloadWithParameters:parametersCopy completion:completionCopy];
}

- (void)purchaseManager:(id)manager restartDownloadWithID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  downloadManager = [(BLService *)self downloadManager];
  [downloadManager restartDownloadWithID:dCopy withCompletion:completionCopy];
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason - 101 <= 1)
  {
    v9 = v4;
    v10 = v5;
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Service]: Account Changed.  Cancelling active downloads", v8, 2u);
    }

    [(BLService *)self _cancelAllActiveDownloads];
  }
}

- (void)_cancelAllActiveDownloads
{
  downloadManager = [(BLService *)self downloadManager];

  if (downloadManager)
  {
    [(BLService *)self willStartTransactionWithIdentifier:@"cancellingAllTransactions"];
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    downloadManager2 = [(BLService *)self downloadManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000723C4;
    v7[3] = &unk_10011D620;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [downloadManager2 fetchDownloadListWithCompletion:v7];

    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_deleteMetadataStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  metadataStoreManager = [(BLService *)self metadataStoreManager];

  if (metadataStoreManager)
  {
    [(BLService *)self willStartTransactionWithIdentifier:@"deleteMetadataStoreTransactions"];
    metadataStoreManager2 = [(BLService *)self metadataStoreManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007274C;
    v11[3] = &unk_10011D648;
    v11[4] = self;
    v12 = completionCopy;
    [metadataStoreManager2 deleteStoreWithCompletion:v11];
  }

  else
  {
    v7 = sub_1000A8F44(0, @"Unexpected nil metadataStoreManager", 0);
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Service]: Unexpected error:  %@", buf, 0xCu);
    }

    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v7);
    }
  }
}

@end