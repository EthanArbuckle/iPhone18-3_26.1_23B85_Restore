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
- (void)aq_setGettingAccountInfo:(BOOL)a3 willRetryUpdateAttachment:(BOOL)a4;
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
  if (qword_1EE2B0570 != -1)
  {
    sub_1E45E41CC();
  }

  v3 = qword_1EE2B0518;

  return v3;
}

+ (id)secureSharedInstance
{
  if (qword_1ECF75E00 != -1)
  {
    sub_1E47078E0();
  }

  v3 = qword_1ECF75DF8;

  return v3;
}

+ (void)registerForSecureNotifications
{
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - registerForSecureNotifications", buf, 2u);
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

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E46347F0;
    v13[3] = &unk_1E875AE20;
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
    v9 = +[BDSSecureManager sharedManager];
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
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingGetAccountInfoCompletionBlocks = v6->_pendingGetAccountInfoCompletionBlocks;
    v6->_pendingGetAccountInfoCompletionBlocks = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingRequestUpdateAttachmentCompletionBlocks = v6->_pendingRequestUpdateAttachmentCompletionBlocks;
    v6->_pendingRequestUpdateAttachmentCompletionBlocks = v9;

    v6->_currentStatus = 0;
    v11 = [v4 queueIdentifier];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);

    objc_storeStrong(&v6->_accessQueue, v14);
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v16 addObserver:v6 selector:sel_p_testAccountChanged_ name:@"com.apple.BDSService.BCCloudAccountChanged" object:0];

    [v15 addObserver:v6 selector:sel_p_accountChanged_ name:*MEMORY[0x1E695B710] object:0];
    [v15 addObserver:v6 selector:sel_p_identityChanged_ name:*MEMORY[0x1E695B770] object:0];
    v17 = [BCCloudKitDatabaseController alloc];
    v18 = [objc_opt_class() p_privateDatabaseArchiveURLForConfiguration:v4];
    v19 = [(BCCloudKitDatabaseController *)v17 initWithConfiguration:v4 archiveURL:v18];
    privateCloudDatabaseController = v6->_privateCloudDatabaseController;
    v6->_privateCloudDatabaseController = v19;

    v21 = v6->_privateCloudDatabaseController;
    v22 = [v4 containerIdentifier];
    v23 = [(BCCloudKitController *)v6 serviceMode];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1E4635350;
    v40[3] = &unk_1E875AE48;
    v24 = v6;
    v41 = v24;
    [(BCCloudKitDatabaseController *)v21 willAttachToContainer:v22 serviceMode:v23 completion:v40];

    objc_initWeak(&location, v24);
    v25 = objc_alloc(MEMORY[0x1E698F548]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1E463535C;
    v37[3] = &unk_1E875A1E8;
    objc_copyWeak(&v38, &location);
    v26 = [v25 initWithNotifyBlock:v37 notifyTimeout:10 blockDescription:@"_coalescedAttachment in BCCloudKitController" notifyTimeoutBlock:&unk_1F5E62188];
    v27 = v24[7];
    v24[7] = v26;

    [v24[7] setCoalescingDelay:2.0];
    v28 = objc_alloc(MEMORY[0x1E698F548]);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = sub_1E46355C4;
    v35 = &unk_1E875A1E8;
    objc_copyWeak(&v36, &location);
    v29 = [v28 initWithNotifyBlock:&v32 notifyTimeout:45 blockDescription:@"_coalescedChangeAttachment in BCCloudKitController" notifyTimeoutBlock:&unk_1F5E621A8];
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
  v24 = *MEMORY[0x1E69E9840];
  v7 = BDSCloudKitLog();
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
    v19 = v9;
    v21 = v12;
    v20 = 2114;
    if (v4)
    {
      v11 = @"YES";
    }

    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) #enableCloudSync setEnableCloudSync %{public}@ serviceMode:%{public}@", buf, 0x20u);
  }

  v13 = [(BCCloudKitController *)self accessQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E4635AFC;
  v15[3] = &unk_1E875AE70;
  v15[4] = self;
  v16 = v4;
  v17 = v5;
  dispatch_async(v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)requestUpdateAttachmentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudKitController *)self accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E4635C14;
  v7[3] = &unk_1E875A3D0;
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
    v6 = _Block_copy(v4);

    [v5 addObject:v6];
  }

  v7 = [(BCCloudKitController *)self coalescedAttachment];
  [v7 signalWithCompletion:&unk_1F5E621C8];
}

- (void)p_flushPendingRequestUpdateAttachmentCompletionBlocks
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_flushPendingRequestUpdateAttachmentCompletionBlocks", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E4635E58;
  v8[3] = &unk_1E875AEC0;
  objc_copyWeak(&v9, buf);
  v8[4] = self;
  [v6 getAttached:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)p_updateAttachment
{
  v13 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - p_updateAttachment", buf, 0xCu);
  }

  v6 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E46363F4;
  v8[3] = &unk_1E875AEC0;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v6 getAttached:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[BCCloudKitController sharedInstance];
  v6 = [v5 configuration];
  v7 = [a1 databaseFolderURLForConfiguration:v6];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  [v8 removeItemAtURL:v7 error:&v17];
  v9 = v17;

  v10 = +[BCCloudKitController secureSharedInstance];
  v11 = [v10 configuration];
  v12 = [a1 databaseFolderURLForConfiguration:v11];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = v9;
  [v13 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  v15 = _Block_copy(v4);
  if (v15)
  {
    v15[2](v15, v14 == 0, v14);
  }
}

+ (id)databaseFolderURLForConfiguration:(id)a3
{
  v3 = a3;
  v4 = +[BDSApplication applicationDocumentsDirectory];
  v5 = [v3 dbArchiveFolderName];

  v6 = [v4 stringByAppendingPathComponent:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6 isDirectory:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)p_createDatabaseArchiveDirectoryForConfiguration:(id)a3
{
  v3 = [a1 databaseFolderURLForConfiguration:a3];
  if (v3 && ([MEMORY[0x1E696AC08] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v3, 1, 0, 0), v4, v5))
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

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E4636ED4;
  v12[3] = &unk_1E875AF60;
  v15 = v9;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v11 accountStatusWithCompletionHandler:v12];
}

- (void)p_getAccountInfoWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BCCloudKitController *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(BCCloudKitController *)self configuration];
    v8 = [v7 containerIdentifier];
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - p_getAccountInfo", buf, 0xCu);
  }

  if (v4)
  {
    v9 = [(BCCloudKitController *)self pendingGetAccountInfoCompletionBlocks];
    v10 = _Block_copy(v4);
    [v9 addObject:v10];
  }

  if (![(BCCloudKitController *)self gettingAccountInfo])
  {
    [(BCCloudKitController *)self setGettingAccountInfo:1];
    v11 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(BCCloudKitController *)self configuration];
      v13 = [v12 containerIdentifier];
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - getAccountInfo self.gettingAccountInfo=YES", buf, 0xCu);
    }

    v14 = MEMORY[0x1E695B888];
    v15 = [(BCCloudKitController *)self configuration];
    v16 = [v15 containerIdentifier];
    v17 = [v14 containerWithIdentifier:v16];

    v18 = [(BCCloudKitController *)self configuration];
    v19 = [v18 appBundleIdentifier];
    [v17 setSourceApplicationBundleIdentifier:v19];

    [(BCCloudKitController *)self setContainer:v17];
    if (v17)
    {
      objc_initWeak(buf, self);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E4637364;
      v21[3] = &unk_1E875AFD8;
      objc_copyWeak(&v23, buf);
      v22 = v17;
      [(BCCloudKitController *)self p_getNecessaryAccountInfoFromContainer:v22 completion:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      [(BCCloudKitController *)self setGettingAccountInfo:0];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setGettingAccountInfo:(BOOL)a3
{
  self->_gettingAccountInfo = a3;
  if (!a3)
  {
    v4 = [(BCCloudKitController *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4637D40;
    block[3] = &unk_1E875A008;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)aq_setGettingAccountInfo:(BOOL)a3 willRetryUpdateAttachment:(BOOL)a4
{
  v6 = [(BCCloudKitController *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  self->_gettingAccountInfo = a3;
  if (!a3)
  {

    MEMORY[0x1EEE66B58](self, sel_aq_flushPendingGetAccountInfoCompletionBlocksWithWillRetryUpdateAttachment_);
  }
}

- (void)applicationDidBecomeActive
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BCCloudKitController *)self configuration];
    v5 = [v4 containerIdentifier];
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - applicationDidBecomeActive", buf, 0xCu);
  }

  v6 = [(BCCloudKitController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46380FC;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleRemoteNotification:(id)a3
{
  v4 = [MEMORY[0x1E695B9D8] notificationFromRemoteNotificationDictionary:a3];
  [(BCCloudKitController *)self handleRemoteCKNotification:v4];
}

- (void)handleRemoteCKNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self container];
    v7 = [v6 containerIdentifier];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) handleRemoteNotification:", &v11, 0xCu);
  }

  v8 = [v4 subscriptionID];

  v9 = [v8 copy];
  [(BCCloudKitController *)self _attachOrSignalFetchChangesTransaction:v9 reason:@"handleRemoteNotification"];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_attachOrSignalFetchChangesTransaction:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E4638470;
  v14[3] = &unk_1E875B000;
  objc_copyWeak(&v17, &location);
  v9 = v6;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  [v8 getAttached:v14];

  v11 = [(BCCloudKitController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4638678;
  block[3] = &unk_1E8759750;
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
  v5 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4707E38(self, v5);
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  objc_initWeak(&location, self);
  v6 = [(BCCloudKitController *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46388C4;
  block[3] = &unk_1E875B0C8;
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
  v4 = [MEMORY[0x1E698F550] shared];
  v5 = [v4 verboseLoggingEnabled];

  v6 = BDSCloudKitLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      sub_1E470828C(self);
    }
  }

  else if (v7)
  {
    sub_1E47081E8(self);
  }

  v8 = [MEMORY[0x1E698F550] shared];
  v9 = [v8 verboseLoggingEnabled];

  if (v9)
  {
    v10 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "\\p_testAccountChanged CloudkitLogging Enabled!\\"", v13, 2u);
    }
  }

  v11 = BDSCloudKitLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1E4708330(self);
  }

  v12 = [(BCCloudKitController *)self coalescedChangeAttachment];
  [v12 signalWithCompletion:&unk_1F5E621E8];
}

- (void)p_accountChanged:(id)a3
{
  v4 = a3;
  v5 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E47083D4(self);
  }

  v6 = [(BCCloudKitController *)self coalescedChangeAttachment];
  [v6 signalWithCompletion:&unk_1F5E62208];
}

- (void)p_accountReallyChangedWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self configuration];
    v7 = [v6 containerIdentifier];
    v8 = [(BCCloudKitController *)self currentUserIDName];
    *buf = 138543874;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2048;
    v25 = [(BCCloudKitController *)self currentStatus];
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "p_accountChanged (%{public}@) account=%@ status=%ld", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v9 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v19 = @"Account changed";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v11 = [v9 errorWithDomain:@"BDSCloudKitClientError" code:2001 userInfo:v10];

  v12 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E46396E4;
  v15[3] = &unk_1E87596B0;
  objc_copyWeak(&v17, buf);
  v13 = v4;
  v16 = v13;
  [v12 detachWithError:v11 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)p_identityChanged:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudKitController *)self configuration];
    v7 = [v6 containerIdentifier];
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "p_identityChanged (%{public}@)", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSCloudKitClientError" code:2005 userInfo:0];
  v9 = [(BCCloudKitController *)self privateCloudDatabaseController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E4639A18;
  v11[3] = &unk_1E875A178;
  objc_copyWeak(&v12, buf);
  v11[4] = self;
  [v9 detachWithError:v8 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_reestablishSyncEngineSalt
{
  v2 = +[_TtC13BookDataStore13BDSSyncEngine shared];
  [v2 reestablishSalt];
}

- (void)_reestablishSyncEngineSaltIfNeeded
{
  v2 = +[_TtC13BookDataStore13BDSSyncEngine shared];
  [v2 reestablishSaltIfNeeded];
}

@end