@interface BCCloudKitController
+ (BCCloudKitController)sharedInstance;
+ (id)databaseFolderURLForConfiguration:(id)a3;
+ (id)instanceForCKNotification:(id)a3;
+ (id)p_createDatabaseArchiveDirectoryForConfiguration:(id)a3;
+ (id)p_privateDatabaseArchiveURLForConfiguration:(id)a3;
+ (id)secureSharedInstance;
+ (void)deleteCloudDataWithCompletion:(id)a3;
+ (void)registerForSecureNotifications;
- (BCCloudKitController)initWithConfiguration:(id)a3;
- (void)_attachOrSignalFetchChangesTransaction:(id)a3 reason:(id)a4;
- (void)_reestablishSyncEngineSalt;
- (void)_reestablishSyncEngineSaltIfNeeded;
- (void)_updateAccountCacheWithCompletionBlock:(id)a3;
- (void)applicationDidBecomeActive;
- (void)aq_requestUpdateAttachmentWithCompletion:(id)a3;
- (void)attachOrSignalFetchChangesTransaction:(id)a3 reason:(id)a4;
- (void)handleRemoteCKNotification:(id)a3;
- (void)handleRemoteNotification:(id)a3;
- (void)p_accountChanged:(id)a3;
- (void)p_accountReallyChangedWithCompletion:(id)a3;
- (void)p_flushPendingRequestUpdateAttachmentCompletionBlocks;
- (void)p_getAccountInfoWithCompletion:(id)a3;
- (void)p_getNecessaryAccountInfoFromContainer:(id)a3 completion:(id)a4;
- (void)p_identityChanged:(id)a3;
- (void)p_testAccountChanged:(id)a3;
- (void)p_updateAttachment;
- (void)requestUpdateAttachmentWithCompletion:(id)a3;
- (void)setEnableCloudSync:(BOOL)a3 serviceMode:(BOOL)a4;
- (void)setGettingAccountInfo:(BOOL)a3;
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
  v6 = [a1 p_privateDatabaseArchiveURLForConfiguration:v4];
  v7 = [(BCCloudKitDatabaseController *)v5 initWithConfiguration:v4 archiveURL:v6];

  if (![(BCCloudKitDatabaseController *)v7 hasSubscription])
  {
    v8 = [v4 queueIdentifier];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001D598;
    v13[3] = &unk_10023FDF8;
    v14 = v4;
    v15 = v11;
    v17 = a1;
    v16 = v7;
    v12 = v11;
    dispatch_async(v12, v13);
  }
}

+ (id)instanceForCKNotification:(id)a3
{
  v3 = [a3 containerIdentifier];
  v4 = +[BCCloudKitController sharedInstance];
  v5 = +[BCCloudKitSecureConfiguration configuration];
  v6 = [v4 configuration];
  v7 = [v6 containerIdentifier];
  v8 = [v3 isEqualToString:v7];

  if (v8)
  {
    v9 = v4;
LABEL_5:
    v12 = v9;
    goto LABEL_7;
  }

  v10 = [v5 containerIdentifier];
  v11 = [v3 isEqualToString:v10];

  if (v11)
  {
    v9 = +[BCCloudKitController secureSharedInstance];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (BCCloudKitController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BCCloudKitController;
  v5 = [(BCCloudKitController *)&v42 init];
  v6 = v5;
  if (v5)
  {
    [(BCCloudKitController *)v5 setConfiguration:v4];
    v7 = objc_alloc_init(NSMutableArray);
    pendingGetAccountInfoCompletionBlocks = v6->_pendingGetAccountInfoCompletionBlocks;
    v6->_pendingGetAccountInfoCompletionBlocks = v7;

    v9 = objc_alloc_init(NSMutableArray);
    pendingRequestUpdateAttachmentCompletionBlocks = v6->_pendingRequestUpdateAttachmentCompletionBlocks;
    v6->_pendingRequestUpdateAttachmentCompletionBlocks = v9;

    v6->_currentStatus = 0;
    v11 = [v4 queueIdentifier];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);

    objc_storeStrong(&v6->_accessQueue, v14);
    v15 = +[NSNotificationCenter defaultCenter];
    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 addObserver:v6 selector:"p_testAccountChanged:" name:@"com.apple.BDSService.BCCloudAccountChanged" object:0];

    [v15 addObserver:v6 selector:"p_accountChanged:" name:CKAccountChangedNotification object:0];
    [v15 addObserver:v6 selector:"p_identityChanged:" name:CKIdentityUpdateNotification object:0];
    v17 = [BCCloudKitDatabaseController alloc];
    v18 = [objc_opt_class() p_privateDatabaseArchiveURLForConfiguration:v4];
    v19 = [(BCCloudKitDatabaseController *)v17 initWithConfiguration:v4 archiveURL:v18];
    privateCloudDatabaseController = v6->_privateCloudDatabaseController;
    v6->_privateCloudDatabaseController = v19;

    v21 = v6->_privateCloudDatabaseController;
    v22 = [v4 containerIdentifier];
    v23 = [(BCCloudKitController *)v6 serviceMode];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001E0FC;
    v40[3] = &unk_10023FE20;
    v24 = v6;
    v41 = v24;
    [(BCCloudKitDatabaseController *)v21 willAttachToContainer:v22 serviceMode:v23 completion:v40];

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

- (void)setEnableCloudSync:(BOOL)a3 serviceMode:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BCCloudKitController *)self configuration];
    v9 = [v8 containerIdentifier];
    v10 = v9;
    v11 = @"NO";
    if (v5)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138543874;
    v18 = v9;
    v20 = v12;
    v19 = 2114;
    if (v4)
    {
      v11 = @"YES";
    }

    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) #enableCloudSync setEnableCloudSync %{public}@ serviceMode:%{public}@", buf, 0x20u);
  }

  v13 = [(BCCloudKitController *)self accessQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E8A8;
  v14[3] = &unk_10023FF20;
  v14[4] = self;
  v15 = v4;
  v16 = v5;
  dispatch_async(v13, v14);
}

- (void)requestUpdateAttachmentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitController *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E9C0;
  v7[3] = &unk_10023FED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)aq_requestUpdateAttachmentWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BCCloudKitController *)self pendingRequestUpdateAttachmentCompletionBlocks];
    v6 = objc_retainBlock(v4);

    [v5 addObject:v6];
  }

  v7 = [(BCCloudKitController *)self coalescedAttachment];
  [v7 signalWithCompletion:&stru_10023FF40];
}

- (void)p_flushPendingRequestUpdateAttachmentCompletionBlocks
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_flushPendingRequestUpdateAttachmentCompletionBlocks", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001EC04;
  v7[3] = &unk_10023FF90;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [v6 getAttached:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)p_updateAttachment
{
  objc_initWeak(&location, self);
  v3 = sub_10000DC08();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - p_updateAttachment", buf, 0xCu);
  }

  v6 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F1A0;
  v7[3] = &unk_10023FF90;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 getAttached:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[BCCloudKitController sharedInstance];
  v6 = [v5 configuration];
  v7 = [a1 databaseFolderURLForConfiguration:v6];

  v8 = +[NSFileManager defaultManager];
  v17 = 0;
  [v8 removeItemAtURL:v7 error:&v17];
  v9 = v17;

  v10 = +[BCCloudKitController secureSharedInstance];
  v11 = [v10 configuration];
  v12 = [a1 databaseFolderURLForConfiguration:v11];

  v13 = +[NSFileManager defaultManager];
  v16 = v9;
  [v13 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  v15 = objc_retainBlock(v4);
  if (v15)
  {
    v15[2](v15, v14 == 0, v14);
  }
}

+ (id)databaseFolderURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[BDSAppGroupContainer documentsURL];
  v5 = [v3 dbArchiveFolderName];

  v6 = [v4 URLByAppendingPathComponent:v5];
  v7 = [v6 path];

  if (v7)
  {
    v8 = [[NSURL alloc] initFileURLWithPath:v7 isDirectory:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)p_createDatabaseArchiveDirectoryForConfiguration:(id)a3
{
  v3 = [a1 databaseFolderURLForConfiguration:a3];
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

+ (id)p_privateDatabaseArchiveURLForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [a1 p_createDatabaseArchiveDirectoryForConfiguration:v4];
  if (v5)
  {
    v6 = [v4 dbArchiveFilename];
    v7 = [v4 dbArchiveExtension];
    v8 = [v6 stringByAppendingPathExtension:v7];

    v9 = [v5 URLByAppendingPathComponent:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)p_getNecessaryAccountInfoFromContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudKitController *)self configuration];
  v9 = [v8 requiresDeviceToDeviceEncryption];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001FC48;
  v12[3] = &unk_100240030;
  v15 = v9;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v11 accountStatusWithCompletionHandler:v12];
}

- (void)p_getAccountInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitController *)self configuration];
    v8 = [v7 containerIdentifier];
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_getAccountInfo", buf, 0xCu);
  }

  if (v4)
  {
    v9 = [(BCCloudKitController *)self pendingGetAccountInfoCompletionBlocks];
    v10 = objc_retainBlock(v4);
    [v9 addObject:v10];
  }

  if (![(BCCloudKitController *)self gettingAccountInfo])
  {
    [(BCCloudKitController *)self setGettingAccountInfo:1];
    v11 = sub_10000DC08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(BCCloudKitController *)self configuration];
      v13 = [v12 containerIdentifier];
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - getAccountInfo self.gettingAccountInfo=YES", buf, 0xCu);
    }

    v14 = [(BCCloudKitController *)self configuration];
    v15 = [v14 containerIdentifier];
    v16 = [CKContainer containerWithIdentifier:v15];

    v17 = [(BCCloudKitController *)self configuration];
    v18 = [v17 appBundleIdentifier];
    [v16 setSourceApplicationBundleIdentifier:v18];

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

- (void)setGettingAccountInfo:(BOOL)a3
{
  self->_gettingAccountInfo = a3;
  if (!a3)
  {
    v4 = [(BCCloudKitController *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020AB4;
    block[3] = &unk_10023F6B0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)applicationDidBecomeActive
{
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - applicationDidBecomeActive", buf, 0xCu);
  }

  v6 = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020E70;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)handleRemoteNotification:(id)a3
{
  v4 = [CKNotification notificationFromRemoteNotificationDictionary:a3];
  [(BCCloudKitController *)self handleRemoteCKNotification:v4];
}

- (void)handleRemoteCKNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self container];
    v7 = [v6 containerIdentifier];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) handleRemoteNotification:", &v10, 0xCu);
  }

  v8 = [v4 subscriptionID];

  v9 = [v8 copy];
  [(BCCloudKitController *)self _attachOrSignalFetchChangesTransaction:v9 reason:@"handleRemoteNotification"];
}

- (void)_attachOrSignalFetchChangesTransaction:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000211E4;
  v14[3] = &unk_1002400F8;
  objc_copyWeak(&v17, &location);
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  [v8 getAttached:v14];

  v11 = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000213EC;
  block[3] = &unk_100240058;
  objc_copyWeak(&v13, &location);
  dispatch_async(v11, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)attachOrSignalFetchChangesTransaction:(id)a3 reason:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v8 = [v7 subscriptionID];
  v9 = [v8 isEqualToString:v10];

  if (v9)
  {
    [(BCCloudKitController *)self _attachOrSignalFetchChangesTransaction:v10 reason:v6];
  }
}

- (void)_updateAccountCacheWithCompletionBlock:(id)a3
{
  v4 = a3;
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
  v6 = [(BCCloudKitController *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021638;
  block[3] = &unk_1002401C0;
  objc_copyWeak(&v11, &location);
  v9 = v4;
  v10 = v13;
  block[4] = self;
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(v13, 8);
}

- (void)p_testAccountChanged:(id)a3
{
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  v6 = sub_100002660();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
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
  v9 = [v8 verboseLoggingEnabled];

  if (v9)
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

  v12 = [(BCCloudKitController *)self coalescedChangeAttachment];
  [v12 signalWithCompletion:&stru_1002401E0];
}

- (void)p_accountChanged:(id)a3
{
  v4 = a3;
  v5 = sub_10000DC08();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BEDB0(self);
  }

  v6 = [(BCCloudKitController *)self coalescedChangeAttachment];
  [v6 signalWithCompletion:&stru_100240200];
}

- (void)p_accountReallyChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self configuration];
    v7 = [v6 containerIdentifier];
    v8 = [(BCCloudKitController *)self currentUserIDName];
    *buf = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = [(BCCloudKitController *)self currentStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "p_accountChanged (%{public}@) account=%@ status=%ld", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v16 = NSLocalizedDescriptionKey;
  v17 = @"Account changed";
  v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v10 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2001 userInfo:v9];

  v11 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100022458;
  v13[3] = &unk_10023FE48;
  objc_copyWeak(&v15, buf);
  v12 = v4;
  v14 = v12;
  [v11 detachWithError:v10 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)p_identityChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self configuration];
    v7 = [v6 containerIdentifier];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "p_identityChanged (%{public}@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2005 userInfo:0];
  v9 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002278C;
  v10[3] = &unk_10023F9A8;
  objc_copyWeak(&v11, buf);
  v10[4] = self;
  [v9 detachWithError:v8 completion:v10];

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