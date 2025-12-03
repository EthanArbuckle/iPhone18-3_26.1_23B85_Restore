@interface BCCloudKitController
+ (BCCloudKitController)sharedInstance;
+ (id)databaseFolderURLForConfiguration:(id)configuration;
+ (id)instanceForCKNotification:(id)notification;
+ (id)p_createDatabaseArchiveDirectoryForConfiguration:(id)configuration;
+ (id)p_privateDatabaseArchiveURLForConfiguration:(id)configuration;
+ (id)secureSharedInstance;
+ (void)deleteCloudDataWithCompletion:(id)completion;
+ (void)registerForSecureNotifications;
- (BCCloudKitController)initWithConfiguration:(id)configuration;
- (void)_attachOrSignalFetchChangesTransaction:(id)transaction reason:(id)reason;
- (void)_reestablishSyncEngineSalt;
- (void)_reestablishSyncEngineSaltIfNeeded;
- (void)_updateAccountCacheWithCompletionBlock:(id)block;
- (void)applicationDidBecomeActive;
- (void)aq_requestUpdateAttachmentWithCompletion:(id)completion;
- (void)attachOrSignalFetchChangesTransaction:(id)transaction reason:(id)reason;
- (void)handleRemoteCKNotification:(id)notification;
- (void)handleRemoteNotification:(id)notification;
- (void)p_accountChanged:(id)changed;
- (void)p_accountReallyChangedWithCompletion:(id)completion;
- (void)p_flushPendingRequestUpdateAttachmentCompletionBlocks;
- (void)p_getAccountInfoWithCompletion:(id)completion;
- (void)p_getNecessaryAccountInfoFromContainer:(id)container completion:(id)completion;
- (void)p_identityChanged:(id)changed;
- (void)p_testAccountChanged:(id)changed;
- (void)p_updateAttachment;
- (void)requestUpdateAttachmentWithCompletion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync serviceMode:(BOOL)mode;
- (void)setGettingAccountInfo:(BOOL)info;
@end

@implementation BCCloudKitController

+ (BCCloudKitController)sharedInstance
{
  if (qword_100274A40 != -1)
  {
    sub_1001BE2A8();
  }

  v3 = qword_100274A38;

  return v3;
}

+ (id)secureSharedInstance
{
  if (qword_100274A50 != -1)
  {
    sub_1001BE2BC();
  }

  v3 = qword_100274A48;

  return v3;
}

+ (void)registerForSecureNotifications
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - registerForSecureNotifications", buf, 2u);
  }

  v4 = +[BCCloudKitSecureConfiguration configuration];
  v5 = [BCCloudKitDatabaseController alloc];
  v6 = [self p_privateDatabaseArchiveURLForConfiguration:v4];
  v7 = [(BCCloudKitDatabaseController *)v5 initWithConfiguration:v4 archiveURL:v6];

  if (![(BCCloudKitDatabaseController *)v7 hasSubscription])
  {
    queueIdentifier = [v4 queueIdentifier];
    uTF8String = [queueIdentifier UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001D598;
    v13[3] = &unk_10023FDF8;
    v14 = v4;
    v15 = v11;
    selfCopy = self;
    v16 = v7;
    v12 = v11;
    dispatch_async(v12, v13);
  }
}

+ (id)instanceForCKNotification:(id)notification
{
  containerIdentifier = [notification containerIdentifier];
  v4 = +[BCCloudKitController sharedInstance];
  v5 = +[BCCloudKitSecureConfiguration configuration];
  configuration = [v4 configuration];
  containerIdentifier2 = [configuration containerIdentifier];
  v8 = [containerIdentifier isEqualToString:containerIdentifier2];

  if (v8)
  {
    v9 = v4;
LABEL_5:
    v12 = v9;
    goto LABEL_7;
  }

  containerIdentifier3 = [v5 containerIdentifier];
  v11 = [containerIdentifier isEqualToString:containerIdentifier3];

  if (v11)
  {
    v9 = +[BCCloudKitController secureSharedInstance];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (BCCloudKitController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v42.receiver = self;
  v42.super_class = BCCloudKitController;
  v5 = [(BCCloudKitController *)&v42 init];
  v6 = v5;
  if (v5)
  {
    [(BCCloudKitController *)v5 setConfiguration:configurationCopy];
    v7 = objc_alloc_init(NSMutableArray);
    pendingGetAccountInfoCompletionBlocks = v6->_pendingGetAccountInfoCompletionBlocks;
    v6->_pendingGetAccountInfoCompletionBlocks = v7;

    v9 = objc_alloc_init(NSMutableArray);
    pendingRequestUpdateAttachmentCompletionBlocks = v6->_pendingRequestUpdateAttachmentCompletionBlocks;
    v6->_pendingRequestUpdateAttachmentCompletionBlocks = v9;

    v6->_currentStatus = 0;
    queueIdentifier = [configurationCopy queueIdentifier];
    uTF8String = [queueIdentifier UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);

    objc_storeStrong(&v6->_accessQueue, v14);
    v15 = +[NSNotificationCenter defaultCenter];
    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 addObserver:v6 selector:"p_testAccountChanged:" name:@"com.apple.BDSService.BCCloudAccountChanged" object:0];

    [v15 addObserver:v6 selector:"p_accountChanged:" name:CKAccountChangedNotification object:0];
    [v15 addObserver:v6 selector:"p_identityChanged:" name:CKIdentityUpdateNotification object:0];
    v17 = [BCCloudKitDatabaseController alloc];
    v18 = [objc_opt_class() p_privateDatabaseArchiveURLForConfiguration:configurationCopy];
    v19 = [(BCCloudKitDatabaseController *)v17 initWithConfiguration:configurationCopy archiveURL:v18];
    privateCloudDatabaseController = v6->_privateCloudDatabaseController;
    v6->_privateCloudDatabaseController = v19;

    v21 = v6->_privateCloudDatabaseController;
    containerIdentifier = [configurationCopy containerIdentifier];
    serviceMode = [(BCCloudKitController *)v6 serviceMode];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001E0FC;
    v40[3] = &unk_10023FE20;
    v24 = v6;
    v41 = v24;
    [(BCCloudKitDatabaseController *)v21 willAttachToContainer:containerIdentifier serviceMode:serviceMode completion:v40];

    objc_initWeak(&location, v24);
    v25 = [BUCoalescingCallBlock alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001E108;
    v37[3] = &unk_10023FC40;
    objc_copyWeak(&v38, &location);
    v26 = [v25 initWithNotifyBlock:v37 notifyTimeout:10 blockDescription:@"_coalescedAttachment in BCCloudKitController" notifyTimeoutBlock:&stru_10023FE88];
    v27 = v24[7];
    v24[7] = v26;

    [v24[7] setCoalescingDelay:2.0];
    v28 = [BUCoalescingCallBlock alloc];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_10001E370;
    v35 = &unk_10023FC40;
    objc_copyWeak(&v36, &location);
    v29 = [v28 initWithNotifyBlock:&v32 notifyTimeout:45 blockDescription:@"_coalescedChangeAttachment in BCCloudKitController" notifyTimeoutBlock:&stru_10023FEF8];
    v30 = v24[8];
    v24[8] = v29;

    [v24[8] setCoalescingDelay:{5.0, v32, v33, v34, v35}];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)setEnableCloudSync:(BOOL)sync serviceMode:(BOOL)mode
{
  modeCopy = mode;
  syncCopy = sync;
  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    v10 = containerIdentifier;
    v11 = @"NO";
    if (syncCopy)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138543874;
    v18 = containerIdentifier;
    v20 = v12;
    v19 = 2114;
    if (modeCopy)
    {
      v11 = @"YES";
    }

    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) #enableCloudSync setEnableCloudSync %{public}@ serviceMode:%{public}@", buf, 0x20u);
  }

  accessQueue = [(BCCloudKitController *)self accessQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E8A8;
  v14[3] = &unk_10023FF20;
  v14[4] = self;
  v15 = modeCopy;
  v16 = syncCopy;
  dispatch_async(accessQueue, v14);
}

- (void)requestUpdateAttachmentWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitController *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E9C0;
  v7[3] = &unk_10023FED8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

- (void)aq_requestUpdateAttachmentWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    pendingRequestUpdateAttachmentCompletionBlocks = [(BCCloudKitController *)self pendingRequestUpdateAttachmentCompletionBlocks];
    v6 = objc_retainBlock(completionCopy);

    [pendingRequestUpdateAttachmentCompletionBlocks addObject:v6];
  }

  coalescedAttachment = [(BCCloudKitController *)self coalescedAttachment];
  [coalescedAttachment signalWithCompletion:&stru_10023FF40];
}

- (void)p_flushPendingRequestUpdateAttachmentCompletionBlocks
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    *buf = 138543362;
    v10 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_flushPendingRequestUpdateAttachmentCompletionBlocks", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001EC04;
  v7[3] = &unk_10023FF90;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [privateCloudDatabaseController getAttached:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)p_updateAttachment
{
  objc_initWeak(&location, self);
  v3 = sub_10000DC08();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    *buf = 138543362;
    v11 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - p_updateAttachment", buf, 0xCu);
  }

  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F1A0;
  v7[3] = &unk_10023FF90;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [privateCloudDatabaseController getAttached:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BCCloudKitController sharedInstance];
  configuration = [v5 configuration];
  v7 = [self databaseFolderURLForConfiguration:configuration];

  v8 = +[NSFileManager defaultManager];
  v17 = 0;
  [v8 removeItemAtURL:v7 error:&v17];
  v9 = v17;

  v10 = +[BCCloudKitController secureSharedInstance];
  configuration2 = [v10 configuration];
  v12 = [self databaseFolderURLForConfiguration:configuration2];

  v13 = +[NSFileManager defaultManager];
  v16 = v9;
  [v13 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  v15 = objc_retainBlock(completionCopy);
  if (v15)
  {
    v15[2](v15, v14 == 0, v14);
  }
}

+ (id)databaseFolderURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[BDSAppGroupContainer documentsURL];
  dbArchiveFolderName = [configurationCopy dbArchiveFolderName];

  v6 = [v4 URLByAppendingPathComponent:dbArchiveFolderName];
  path = [v6 path];

  if (path)
  {
    v8 = [[NSURL alloc] initFileURLWithPath:path isDirectory:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)p_createDatabaseArchiveDirectoryForConfiguration:(id)configuration
{
  v3 = [self databaseFolderURLForConfiguration:configuration];
  if (v3 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:0], v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)p_privateDatabaseArchiveURLForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self p_createDatabaseArchiveDirectoryForConfiguration:configurationCopy];
  if (v5)
  {
    dbArchiveFilename = [configurationCopy dbArchiveFilename];
    dbArchiveExtension = [configurationCopy dbArchiveExtension];
    v8 = [dbArchiveFilename stringByAppendingPathExtension:dbArchiveExtension];

    v9 = [v5 URLByAppendingPathComponent:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)p_getNecessaryAccountInfoFromContainer:(id)container completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  configuration = [(BCCloudKitController *)self configuration];
  requiresDeviceToDeviceEncryption = [configuration requiresDeviceToDeviceEncryption];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001FC48;
  v12[3] = &unk_100240030;
  v15 = requiresDeviceToDeviceEncryption;
  v13 = containerCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = containerCopy;
  [v11 accountStatusWithCompletionHandler:v12];
}

- (void)p_getAccountInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(BCCloudKitController *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    *buf = 138543362;
    v23 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_getAccountInfo", buf, 0xCu);
  }

  if (completionCopy)
  {
    pendingGetAccountInfoCompletionBlocks = [(BCCloudKitController *)self pendingGetAccountInfoCompletionBlocks];
    v10 = objc_retainBlock(completionCopy);
    [pendingGetAccountInfoCompletionBlocks addObject:v10];
  }

  if (![(BCCloudKitController *)self gettingAccountInfo])
  {
    [(BCCloudKitController *)self setGettingAccountInfo:1];
    v11 = sub_10000DC08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      configuration2 = [(BCCloudKitController *)self configuration];
      containerIdentifier2 = [configuration2 containerIdentifier];
      *buf = 138543362;
      v23 = containerIdentifier2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - getAccountInfo self.gettingAccountInfo=YES", buf, 0xCu);
    }

    configuration3 = [(BCCloudKitController *)self configuration];
    containerIdentifier3 = [configuration3 containerIdentifier];
    v16 = [CKContainer containerWithIdentifier:containerIdentifier3];

    configuration4 = [(BCCloudKitController *)self configuration];
    appBundleIdentifier = [configuration4 appBundleIdentifier];
    [v16 setSourceApplicationBundleIdentifier:appBundleIdentifier];

    [(BCCloudKitController *)self setContainer:v16];
    if (v16)
    {
      objc_initWeak(buf, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000200D8;
      v19[3] = &unk_1002400D0;
      objc_copyWeak(&v21, buf);
      v20 = v16;
      [(BCCloudKitController *)self p_getNecessaryAccountInfoFromContainer:v20 completion:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      [(BCCloudKitController *)self setGettingAccountInfo:0];
    }
  }
}

- (void)setGettingAccountInfo:(BOOL)info
{
  self->_gettingAccountInfo = info;
  if (!info)
  {
    accessQueue = [(BCCloudKitController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020AB4;
    block[3] = &unk_10023F6B0;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

- (void)applicationDidBecomeActive
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    *buf = 138543362;
    v9 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - applicationDidBecomeActive", buf, 0xCu);
  }

  accessQueue = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020E70;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)handleRemoteNotification:(id)notification
{
  v4 = [CKNotification notificationFromRemoteNotificationDictionary:notification];
  [(BCCloudKitController *)self handleRemoteCKNotification:v4];
}

- (void)handleRemoteCKNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    container = [(BCCloudKitController *)self container];
    containerIdentifier = [container containerIdentifier];
    v10 = 138543362;
    v11 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) handleRemoteNotification:", &v10, 0xCu);
  }

  subscriptionID = [notificationCopy subscriptionID];

  v9 = [subscriptionID copy];
  [(BCCloudKitController *)self _attachOrSignalFetchChangesTransaction:v9 reason:@"handleRemoteNotification"];
}

- (void)_attachOrSignalFetchChangesTransaction:(id)transaction reason:(id)reason
{
  transactionCopy = transaction;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000211E4;
  v14[3] = &unk_1002400F8;
  objc_copyWeak(&v17, &location);
  v9 = transactionCopy;
  v15 = v9;
  v10 = reasonCopy;
  v16 = v10;
  [privateCloudDatabaseController getAttached:v14];

  accessQueue = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000213EC;
  block[3] = &unk_100240058;
  objc_copyWeak(&v13, &location);
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)attachOrSignalFetchChangesTransaction:(id)transaction reason:(id)reason
{
  transactionCopy = transaction;
  reasonCopy = reason;
  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  subscriptionID = [privateCloudDatabaseController subscriptionID];
  v9 = [subscriptionID isEqualToString:transactionCopy];

  if (v9)
  {
    [(BCCloudKitController *)self _attachOrSignalFetchChangesTransaction:transactionCopy reason:reasonCopy];
  }
}

- (void)_updateAccountCacheWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_10000DC08();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BE814(self, v5);
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  objc_initWeak(&location, self);
  accessQueue = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021638;
  block[3] = &unk_1002401C0;
  objc_copyWeak(&v11, &location);
  v9 = blockCopy;
  v10 = v13;
  block[4] = self;
  v7 = blockCopy;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(v13, 8);
}

- (void)p_testAccountChanged:(id)changed
{
  v4 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v4 verboseLoggingEnabled];

  v6 = sub_100002660();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (verboseLoggingEnabled)
  {
    if (v7)
    {
      sub_1001BEC68(self);
    }
  }

  else if (v7)
  {
    sub_1001BEBC4(self);
  }

  v8 = +[BULogUtilities shared];
  verboseLoggingEnabled2 = [v8 verboseLoggingEnabled];

  if (verboseLoggingEnabled2)
  {
    v10 = sub_10000DB80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "\\p_testAccountChanged CloudkitLogging Enabled!\\"", v13, 2u);
    }
  }

  v11 = sub_100002660();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1001BED0C(self);
  }

  coalescedChangeAttachment = [(BCCloudKitController *)self coalescedChangeAttachment];
  [coalescedChangeAttachment signalWithCompletion:&stru_1002401E0];
}

- (void)p_accountChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_10000DC08();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BEDB0(self);
  }

  coalescedChangeAttachment = [(BCCloudKitController *)self coalescedChangeAttachment];
  [coalescedChangeAttachment signalWithCompletion:&stru_100240200];
}

- (void)p_accountReallyChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    currentUserIDName = [(BCCloudKitController *)self currentUserIDName];
    *buf = 138543874;
    v19 = containerIdentifier;
    v20 = 2112;
    v21 = currentUserIDName;
    v22 = 2048;
    currentStatus = [(BCCloudKitController *)self currentStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "p_accountChanged (%{public}@) account=%@ status=%ld", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v16 = NSLocalizedDescriptionKey;
  v17 = @"Account changed";
  v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2001 userInfo:v9];

  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100022458;
  v13[3] = &unk_10023FE48;
  objc_copyWeak(&v15, buf);
  v12 = completionCopy;
  v14 = v12;
  [privateCloudDatabaseController detachWithError:v10 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)p_identityChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(BCCloudKitController *)self configuration];
    containerIdentifier = [configuration containerIdentifier];
    *buf = 138543362;
    v13 = containerIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "p_identityChanged (%{public}@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2005 userInfo:0];
  privateCloudDatabaseController = [(BCCloudKitController *)self privateCloudDatabaseController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002278C;
  v10[3] = &unk_10023F9A8;
  objc_copyWeak(&v11, buf);
  v10[4] = self;
  [privateCloudDatabaseController detachWithError:v8 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_reestablishSyncEngineSalt
{
  v2 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v2 reestablishSalt];
}

- (void)_reestablishSyncEngineSaltIfNeeded
{
  v2 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  [v2 reestablishSaltIfNeeded];
}

@end