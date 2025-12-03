@interface CKCompanionMessagesDaemon
+ (id)sharedDaemon;
- (BOOL)syncDeviceSalt;
- (CKCompanionMessagesDaemon)init;
- (void)registerForActivities;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncResponseKitData:(id)data;
- (void)systemDidLeaveDataProtectionLock;
- (void)triggerWRCannedRepliesStoreDowngradeIfNeeded;
@end

@implementation CKCompanionMessagesDaemon

+ (id)sharedDaemon
{
  if (qword_100011810 != -1)
  {
    sub_100005ED0();
  }

  v3 = qword_100011808;

  return v3;
}

- (CKCompanionMessagesDaemon)init
{
  v9.receiver = self;
  v9.super_class = CKCompanionMessagesDaemon;
  v2 = [(CKCompanionMessagesDaemon *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(CKCompanionIDSService);
    service = v2->_service;
    v2->_service = v3;

    v5 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.quickboard"];
    syncCoordinator = v2->_syncCoordinator;
    v2->_syncCoordinator = v5;

    [(PSYSyncCoordinator *)v2->_syncCoordinator setDelegate:v2];
    v7 = +[IMUnlockMonitor sharedInstance];
    [v7 addListener:v2];
  }

  return v2;
}

- (void)registerForActivities
{
  [(CKCompanionMessagesDaemon *)self registerForDeviceSaltSyncActivity];

  [(CKCompanionMessagesDaemon *)self registerForResponseKitSyncActivity];
}

- (BOOL)syncDeviceSalt
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000485C;
  v21 = sub_10000486C;
  v22 = 0;
  v3 = +[IMTextInputCryptographer sharedCryptographer];
  dispatchQueue = [v3 dispatchQueue];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100004874;
  v14 = &unk_10000C3D0;
  v16 = &v17;
  v5 = v3;
  v15 = v5;
  dispatch_sync(dispatchQueue, &v11);

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v18[5] length];
      v8 = @"NO";
      if (!v7)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "deviceSalt empty: %@", buf, 0xCu);
    }
  }

  if (v18[5])
  {
    [(CKCompanionIDSService *)self->_service sendDeviceSalt:?];
    v9 = v18[5] != 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v9;
}

- (void)syncResponseKitData:(id)data
{
  dataCopy = data;
  v5 = +[NSFileManager defaultManager];
  v6 = sub_100005C80();
  path = [v6 path];
  v8 = [v5 fileExistsAtPath:path];

  if (v8)
  {
    v9 = sub_100005D20(1);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 URLByAppendingPathComponent:@"ResponseKit.zip"];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100004E5C;
      v19[3] = &unk_10000C440;
      v19[4] = self;
      v20 = v11;
      v21 = dataCopy;
      v12 = v11;
      v13 = objc_retainBlock(v19);
      v14 = [IMFileCopier alloc];
      path2 = [v12 path];
      v16 = [v14 initWithInputURL:v6 outputURL:v12 identifier:path2 operation:0 completionBlock:v13 queue:&_dispatch_main_q];

      [v16 start];
      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "failed to create temporary path for zip", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No ResponseKit data yet; nothing to sync", buf, 2u);
    }
  }

  if (dataCopy)
  {
    dataCopy[2](dataCopy);
  }

LABEL_14:
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v8 = +[IMSystemMonitor sharedInstance];
  isUnderDataProtectionLock = [v8 isUnderDataProtectionLock];

  if (isUnderDataProtectionLock)
  {
    waitingForUnlockToSyncDeviceSalt = self->_waitingForUnlockToSyncDeviceSalt;
    v11 = IMOSLoggingEnabled();
    if (!waitingForUnlockToSyncDeviceSalt)
    {
      if (v11)
      {
        v14 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Waiting for unlock", buf, 2u);
        }
      }

      self->_waitingForUnlockToSyncDeviceSalt = 1;
      v15 = os_transaction_create();
      waitingForUnlockToSyncDeviceSaltTransaction = self->_waitingForUnlockToSyncDeviceSaltTransaction;
      self->_waitingForUnlockToSyncDeviceSaltTransaction = v15;

      v12 = +[IMSystemMonitor sharedInstance];
      [v12 setActive:1];
      goto LABEL_16;
    }

    if (v11)
    {
      v12 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Already awaiting unlock", buf, 2u);
      }

LABEL_16:
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Unlocked, syncing device salt", buf, 2u);
      }
    }

    [(CKCompanionMessagesDaemon *)self syncDeviceSalt];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100005194;
  v17[3] = &unk_10000C418;
  v17[4] = self;
  [(CKCompanionMessagesDaemon *)self syncResponseKitData:v17];
  [(CKCompanionMessagesDaemon *)self triggerWRCannedRepliesStoreDowngradeIfNeeded];
}

- (void)systemDidLeaveDataProtectionLock
{
  if (self->_waitingForUnlockToSyncDeviceSalt)
  {
    syncDeviceSalt = [(CKCompanionMessagesDaemon *)self syncDeviceSalt];
    v4 = IMOSLoggingEnabled();
    if (syncDeviceSalt)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v11 = 0;
          v6 = "Unlocked. Finished syncing device salt for PairedSync";
          v7 = &v11;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v4)
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v6 = "Unlocked. Failed to read device salt, or one hasn't been created yet";
        v7 = &v10;
        goto LABEL_9;
      }

LABEL_10:
    }

    self->_waitingForUnlockToSyncDeviceSalt = 0;
    waitingForUnlockToSyncDeviceSaltTransaction = self->_waitingForUnlockToSyncDeviceSaltTransaction;
    self->_waitingForUnlockToSyncDeviceSaltTransaction = 0;

    v9 = +[IMSystemMonitor sharedInstance];
    [v9 setActive:0];
  }
}

- (void)triggerWRCannedRepliesStoreDowngradeIfNeeded
{
  v2 = [[WRCannedRepliesStore alloc] initWithCategory:1];
  v3 = [v2 repliesForLanguage:0];

  v5 = [[WRCannedRepliesStore alloc] initWithCategory:2];
  v4 = [v5 repliesForLanguage:0];
}

@end