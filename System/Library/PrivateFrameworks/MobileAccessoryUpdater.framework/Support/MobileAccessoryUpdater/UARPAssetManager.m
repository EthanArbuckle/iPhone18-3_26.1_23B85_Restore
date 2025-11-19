@interface UARPAssetManager
- (BOOL)getFetchedSupportedAccessories:(id)a3 forProductGroup:(id)a4;
- (BOOL)isAccessoryInfoAvailable:(id)a3;
- (BOOL)isAssetLookupComplete:(id)a3 forAccessory:(id)a4;
- (UARPAssetManager)initWithDelegate:(id)a3;
- (id)containerIDForAssetID:(id)a3;
- (id)copyAssetIDForAccessoryID:(id)a3;
- (id)createUARPAccessoryInternalFromArchivedData:(id)a3;
- (id)getAttestationCertificates:(id)a3;
- (id)getSupplementalAssetNameForAccessoryID:(id)a3;
- (id)getUARPAccessoryInternalForUARPAccessoryID:(id)a3;
- (int64_t)addAccessoryID:(id)a3 assetID:(id)a4;
- (int64_t)changeAssetLocation:(id)a3 assetID:(id)a4;
- (int64_t)checkForUpdate:(id)a3;
- (int64_t)downloadFirmwareForAccessory:(id)a3 assetID:(id)a4 userIntent:(BOOL)a5;
- (int64_t)downloadFirmwareFromLocalPathForAccessory:(id)a3 assetID:(id)a4;
- (int64_t)downloadReleaseNotesForAccessoryID:(id)a3 assetID:(id)a4;
- (int64_t)downloadReleaseNotesFromLocalPathForAccessory:(id)a3 assetID:(id)a4;
- (int64_t)getAttestationCertificates:(id)a3 assetID:(id)a4;
- (int64_t)performLocalUpdateCheckForAccessory:(id)a3;
- (int64_t)performRemoteUpdateCheckForAccessoryID:(id)a3;
- (int64_t)qCheckDropBoxForAccessory:(id)a3;
- (int64_t)removeAccessoryID:(id)a3;
- (int64_t)removeAccessoryIDInternal:(id)a3;
- (int64_t)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5;
- (void)allowConditionalDownloadOnCellular;
- (void)assetAvailabilityUpdateForAccessory:(id)a3 assetID:(id)a4 downstreamAppleModelNumber:(id)a5;
- (void)attestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4;
- (void)checkForPreInstalledFirmware;
- (void)checkForUpdateIfPossible:(id)a3;
- (void)createTemporaryFolder:(id)a3;
- (void)createTemporaryFolders;
- (void)dealloc;
- (void)handlePeriodicLaunch;
- (void)handlePeriodicLaunchInternal;
- (void)postActiveFirmwareAnalyticsEventForAccessoryID:(id)a3;
- (void)postFirmwareUpdateAppliedNotificationForAccessoryID:(id)a3;
- (void)postUrgentFirmwareUpdateAppliedNotificationForAccessoryID:(id)a3 assetID:(id)a4;
- (void)qCheckForMultipleiCloudUpdates:(id)a3;
- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5;
- (void)settingsChangedForSerialNumber:(id)a3;
- (void)supplementalAssetAvailabilityUpdateForAccessory:(id)a3 assetName:(id)a4;
- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5;
- (void)updateCacheForAccessory:(id)a3 addAccessory:(BOOL)a4;
- (void)updateSettingsDatabaseForAccessory:(id)a3;
@end

@implementation UARPAssetManager

- (UARPAssetManager)initWithDelegate:(id)a3
{
  if (a3)
  {
    if ([a3 conformsToProtocol:&OBJC_PROTOCOL___UARPAssetManagerDelegate])
    {
      v14.receiver = self;
      v14.super_class = UARPAssetManager;
      v5 = [(UARPAssetManager *)&v14 init];
      self = v5;
      if (v5)
      {
        v5->_delegate = a3;
        v5->_log = os_log_create("com.apple.accessoryupdater.uarp", "assetManager");
        v6 = UARPStringTempFilesFilepath();
        v13 = 0;
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v6, &v13];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "[UARPAssetManager initWithDelegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v6;
          *&buf[22] = 2112;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Cleared directory at path %@ with error %@", buf, 0x20u);
        }

        v8 = UARPStringDynamicAssetsFilepath();
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v8, &v13];
        v9 = self->_log;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "[UARPAssetManager initWithDelegate:]";
          *&buf[12] = 2112;
          *&buf[14] = v8;
          *&buf[22] = 2112;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Cleared directory at path %@ with error %@", buf, 0x20u);
        }

        [(UARPAssetManager *)self checkForPreInstalledFirmware];
        sub_100038598();
        self->_accessories = +[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", [+[UARPDatabase sharedDatabase](UARPDatabase "sharedDatabase")]);
        self->_workQueue = dispatch_queue_create("com.apple.aam.uarpAssetManager", 0);
        self->_delegateQueue = dispatch_queue_create("com.apple.aam.uarpAssetManager.delegate", 0);
        self->_mobileAssetManager = [[UARPMobileAssetManager alloc] initWithManager:self queue:self->_workQueue];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3052000000;
        v17 = sub_10002A0EC;
        v10 = qword_100099818;
        v18 = sub_10002A0FC;
        v19 = qword_100099818;
        if (!qword_100099818)
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10002C260;
          v15[3] = &unk_100081BF8;
          v15[4] = buf;
          sub_10002C260(v15);
          v10 = *(*&buf[8] + 40);
        }

        _Block_object_dispose(buf, 8);
        v11 = [[v10 alloc] initWithManager:self];
        self->_iCloudAssetManager = v11;
        [(UARPiCloudAssetManager *)v11 cleanupAssetCache];
        self->_productGroupToSupportedAccessoriesMap = objc_alloc_init(NSMutableDictionary);
        self->_isSupportedAccessoriesFetchComplete = 1;
        self->_subjectKeyIdentifierToAttestationCertificatesMap = objc_alloc_init(NSMutableDictionary);
        [(UARPAssetManager *)self allowConditionalDownloadOnCellular];
        if (notify_register_check("com.apple.accessoryUpdater.uarp.firmareUpdateApplied", &self->_firmwareUpdateNotificationToken))
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10004DFE0();
          }

          self->_firmwareUpdateNotificationToken = -1;
        }

        if (notify_register_check("com.apple.accessoryUpdater.uarp.urgentFirmwareUpdateApplied", &self->_urgentFirmwareUpdateNotificationToken))
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10004E074();
          }

          self->_urgentFirmwareUpdateNotificationToken = -1;
        }

        [(UARPAssetManager *)self createTemporaryFolders];
      }
    }
  }

  return self;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
    self->_workQueue = 0;
  }

  urgentFirmwareUpdateNotificationToken = self->_urgentFirmwareUpdateNotificationToken;
  if (urgentFirmwareUpdateNotificationToken != -1)
  {
    notify_cancel(urgentFirmwareUpdateNotificationToken);
  }

  firmwareUpdateNotificationToken = self->_firmwareUpdateNotificationToken;
  if (firmwareUpdateNotificationToken != -1)
  {
    notify_cancel(firmwareUpdateNotificationToken);
  }

  self->_isSupportedAccessoriesFetchComplete = 1;

  v6.receiver = self;
  v6.super_class = UARPAssetManager;
  [(UARPAssetManager *)&v6 dealloc];
}

- (void)checkForPreInstalledFirmware
{
  v3 = +[NSFileManager defaultManager];
  v4 = kUARPStandaloneFirmwareDirectory;
  v5 = [(NSFileManager *)v3 enumeratorAtURL:[NSURL fileURLWithPath:?]errorHandler:0, 0, 0];
  v6 = [(NSDirectoryEnumerator *)v5 nextObject];
  if (v6)
  {
    v8 = v6;
    v9 = kUARPFirmwareDropboxDirectory;
    *&v7 = 136315650;
    v19 = v7;
    do
    {
      if (![v8 hasDirectoryPath])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v22 = "[UARPAssetManager checkForPreInstalledFirmware]";
          v23 = 2114;
          v24 = v8;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Found preinstalled file: %{public}@", buf, 0x16u);
        }

        v20 = 0;
        v11 = [v9 stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(v8, "path"), "substringFromIndex:", objc_msgSend(v4, "length"))}];
        if (-[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [v11 stringByDeletingLastPathComponent], 1, 0, &v20))
        {
          if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
          {
            v12 = self->_log;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v22 = "[UARPAssetManager checkForPreInstalledFirmware]";
              v23 = 2114;
              v24 = v11;
              v25 = 2114;
              v26 = v20;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to delete file at path %{public}@ with error %{public}@", buf, 0x20u);
            }
          }

          v13 = -[NSFileManager copyItemAtPath:toPath:error:](v3, "copyItemAtPath:toPath:error:", [v8 path], v11, &v20);
          v14 = self->_log;
          if (v13)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v22 = "[UARPAssetManager checkForPreInstalledFirmware]";
              v23 = 2114;
              v24 = v8;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: Copied firmware from path %{public}@", buf, 0x16u);
            }

            goto LABEL_16;
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v22 = "[UARPAssetManager checkForPreInstalledFirmware]";
            v23 = 2114;
            v24 = v8;
            v25 = 2114;
            v26 = v20;
            v17 = v14;
            v18 = "%s: Failed to copy from path %{public}@ error: %{public}@";
            goto LABEL_19;
          }
        }

        else
        {
          v15 = self->_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v11 stringByDeletingLastPathComponent];
            *buf = v19;
            v22 = "[UARPAssetManager checkForPreInstalledFirmware]";
            v23 = 2114;
            v24 = v16;
            v25 = 2114;
            v26 = v20;
            v17 = v15;
            v18 = "%s: Failed to create dir %{public}@ error: %{public}@";
LABEL_19:
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x20u);
          }
        }
      }

LABEL_16:
      v8 = [(NSDirectoryEnumerator *)v5 nextObject];
    }

    while (v8);
  }
}

- (void)postFirmwareUpdateAppliedNotificationForAccessoryID:(id)a3
{
  if (self->_firmwareUpdateNotificationToken != -1 && [a3 capability])
  {
    notify_set_state(self->_firmwareUpdateNotificationToken, [a3 capability]);

    notify_post("com.apple.accessoryUpdater.uarp.firmareUpdateApplied");
  }
}

- (void)postUrgentFirmwareUpdateAppliedNotificationForAccessoryID:(id)a3 assetID:(id)a4
{
  if (self->_urgentFirmwareUpdateNotificationToken != -1 && [a4 isUrgentUpdate])
  {
    notify_set_state(self->_urgentFirmwareUpdateNotificationToken, 0);

    notify_post("com.apple.accessoryUpdater.uarp.urgentFirmwareUpdateApplied");
  }
}

- (BOOL)isAccessoryInfoAvailable:(id)a3
{
  if (![a3 firmwareVersion])
  {
    log = self->_log;
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      return v5;
    }

    v9 = 138412290;
    v10 = a3;
    v7 = "Do not check asset server yet, waiting for firmware version %@";
LABEL_13:
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v7, &v9, 0xCu);
    LOBYTE(v5) = 0;
    return v5;
  }

  if ([a3 productGroup] && objc_msgSend(a3, "productNumber"))
  {
    goto LABEL_6;
  }

  if (![a3 hwFusingType])
  {
    log = self->_log;
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      return v5;
    }

    v9 = 138412290;
    v10 = a3;
    v7 = "Do not check asset server yet, waiting for HW Fusing %@";
    goto LABEL_13;
  }

  if (![a3 hwRevision])
  {
    log = self->_log;
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      return v5;
    }

    v9 = 138412290;
    v10 = a3;
    v7 = "Do not check asset server yet, waiting for HW Revision %@";
    goto LABEL_13;
  }

LABEL_6:
  LOBYTE(v5) = 1;
  return v5;
}

- (int64_t)performLocalUpdateCheckForAccessory:(id)a3
{
  if (![objc_msgSend(a3 "assetID")])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004E240(a3);
    }

    goto LABEL_14;
  }

  v5 = sub_100002A1C([objc_msgSend(objc_msgSend(a3 "assetID")]);
  if (!v5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004E1A4(a3);
    }

LABEL_14:
    [objc_msgSend(a3 "assetID")];
    v12 = 1;
    goto LABEL_18;
  }

  v6 = v5;
  [objc_msgSend(a3 "assetID")];
  [objc_msgSend(a3 "assetID")];
  [objc_msgSend(a3 "assetID")];
  [a3 analyticsSetDownloadAvailableForAssetID:{objc_msgSend(a3, "assetID")}];
  [a3 analyticsSetDownloadConsentRequestedForAssetID:{objc_msgSend(a3, "assetID")}];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = [objc_msgSend(a3 "assetID")];
    v18 = 2114;
    v19 = [a3 accessoryID];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Found firmware version %{public}@ from url %{public}@ provided by client for accessory %{public}@", &v14, 0x20u);
  }

  if ([objc_msgSend(a3 "assetID")])
  {
    v8 = -[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [objc_msgSend(objc_msgSend(a3 "assetID")]);
    v9 = self->_log;
    if (v8)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
      {
        v10 = [objc_msgSend(a3 "assetID")];
        v11 = [a3 accessoryID];
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found release notes from url %@ provided by client for accessory %@", &v14, 0x16u);
      }

      [objc_msgSend(a3 "assetID")];
      [objc_msgSend(a3 "assetID")];
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004E108(a3);
    }
  }

  v12 = 0;
LABEL_18:
  -[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:](self, "assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:", [a3 accessoryID], objc_msgSend(a3, "assetID"), 0);
  return v12;
}

- (int64_t)downloadFirmwareForAccessory:(id)a3 assetID:(id)a4 userIntent:(BOOL)a5
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (a3)
  {
    if (a4)
    {
      if ([a4 remoteURL])
      {
        if (self->_delegate)
        {
          workQueue = self->_workQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100028760;
          block[3] = &unk_100081AB8;
          block[4] = self;
          block[5] = a3;
          block[6] = a4;
          block[7] = &v14;
          v13 = a5;
          dispatch_sync(workQueue, block);
        }

        else
        {
          sub_10004E2C0(self);
        }
      }

      else
      {
        sub_10004E304(self);
      }
    }

    else
    {
      sub_10004E348(self);
    }
  }

  else
  {
    sub_10004E38C(self);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (int64_t)downloadFirmwareFromLocalPathForAccessory:(id)a3 assetID:(id)a4
{
  v7 = +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [objc_msgSend(a4 "remoteURL")]);
  v8 = sub_100003314(v7, [a3 identifier], objc_msgSend(objc_msgSend(a3, "accessoryID"), "hwFusingType"), objc_msgSend(a4, "assetVersion"));
  log = self->_log;
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "File created %@", &v15, 0xCu);
    }

    [a4 setLocalURL:v8];
    [a4 setDownloadStatus:1];
    [a4 setUpdateAvailabilityStatus:3];
    [a3 analyticsSetDownloadCompleteForAssetID:a4 status:1];
    [a3 setAssetID:a4];
    v11 = 0;
  }

  else
  {
    sub_10004E454(v10, log, a4);
    v11 = 1;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "uarpError = %ld", &v15, 0xCu);
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(UARPAssetManagerDelegate *)self->_delegate removeSandboxExtensionWithURL:v7];
  }

  -[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:](self, "assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:", [a3 accessoryID], a4, 0);
  return v11;
}

- (int64_t)downloadReleaseNotesForAccessoryID:(id)a3 assetID:(id)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a3)
  {
    if (a4)
    {
      if ([a4 releaseNotesRemoteURL])
      {
        if (self->_delegate)
        {
          workQueue = self->_workQueue;
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100028C90;
          v10[3] = &unk_100081AE0;
          v10[4] = self;
          v10[5] = a3;
          v10[6] = a4;
          v10[7] = &v11;
          dispatch_sync(workQueue, v10);
        }

        else
        {
          sub_10004E2C0(self);
        }
      }

      else
      {
        sub_10004E4B0(self);
      }
    }

    else
    {
      sub_10004E348(self);
    }
  }

  else
  {
    sub_10004E38C(self);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (int64_t)downloadReleaseNotesFromLocalPathForAccessory:(id)a3 assetID:(id)a4
{
  v7 = sub_100003314(+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [objc_msgSend(a4 "releaseNotesRemoteURL")]), objc_msgSend(a3, "identifier"), objc_msgSend(objc_msgSend(a3, "accessoryID"), "hwFusingType"), objc_msgSend(a4, "assetVersion"));
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "File created %@", buf, 0xCu);
    }

    [a4 setReleaseNotesLocalURL:v7];
    v10 = 0;
    v11 = 3;
    v12 = 1;
  }

  else if (v9)
  {
    *buf = 0;
    v10 = 1;
    v12 = 2;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Firmware download failed", buf, 2u);
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v10 = 1;
    v12 = 2;
  }

  [a4 setReleaseNotesDownloadStatus:v12];
  [a4 setReleaseNotesAvailabilityStatus:v11];
  [a3 setAssetID:a4];
  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "uarpError = %ld, calling delegate in 5 sec", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002903C;
  block[3] = &unk_100081800;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(workQueue, block);
  return v10;
}

- (int64_t)removeAccessoryIDInternal:(id)a3
{
  v5 = [(UARPAssetManager *)self getUARPAccessoryInternalForUARPAccessoryID:?];
  if (v5)
  {
    v6 = v5;
    sub_1000061EC(a3, 0);
    [(NSMutableSet *)self->_accessories removeObject:v6];
    [(UARPAssetManager *)self removeAccessoryIDFromCache:a3];
    [+[UARPDatabase sharedDatabase](UARPDatabase "sharedDatabase")];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Accessory removed: %@", &v11, 0xCu);
    }

    return 0;
  }

  else
  {
    v9 = self->_log;
    v8 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[UARPAssetManager removeAccessoryIDInternal:]";
      v13 = 2112;
      v14 = a3;
      v8 = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessoryID %@, dropping it", &v11, 0x16u);
    }
  }

  return v8;
}

- (int64_t)removeAccessoryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000292A0;
  block[3] = &unk_100081A40;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(workQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateSettingsDatabaseForAccessory:(id)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029354;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(workQueue, v4);
}

- (int64_t)checkForUpdate:(id)a3
{
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000293D8;
  v5[3] = &unk_100081788;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(workQueue, v5);
  return 0;
}

- (void)handlePeriodicLaunch
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029458;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)handlePeriodicLaunchInternal
{
  v3 = +[UARPDatabase sharedDatabase];
  v4 = [v3 periodicLaunchAccessories];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[UARPAssetManager handlePeriodicLaunchInternal]";
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Periodic launch accessories in database %@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if (-[UARPAssetManager isAccessoryInfoAvailable:](self, "isAccessoryInfoAvailable:", [v10 accessoryID]))
        {
          -[UARPAssetManager postActiveFirmwareAnalyticsEventForAccessoryID:](self, "postActiveFirmwareAnalyticsEventForAccessoryID:", [v10 accessoryID]);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v21 = v3;
  v11 = [v3 activeAccessories];
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[UARPAssetManager handlePeriodicLaunchInternal]";
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Active accessories in database %@", buf, 0x16u);
  }

  v13 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    v22 = self;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        if ([objc_msgSend(+[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory findByAppleModelNumber:{objc_msgSend(objc_msgSend(v18, "accessoryID"), "modelNumber")), "downstreamAppleModelNumbers"), "count"}])
        {
          [objc_msgSend(v18 "assetID")];
        }

        if ([objc_msgSend(v18 "accessoryID")] || objc_msgSend(objc_msgSend(v18, "accessoryID"), "productNumber"))
        {
          if (-[UARPAssetManager isAccessoryInfoAvailable:](self, "isAccessoryInfoAvailable:", [v18 accessoryID]) && objc_msgSend(v18, "assetID"))
          {
            v19 = [v13 objectForKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v18, "assetID"), "type"))}];
            if (!v19)
            {
              v19 = +[NSMutableArray array];
              self = v22;
              [v13 setObject:v19 forKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(objc_msgSend(v18, "assetID"), "type"))}];
            }

            [v19 addObject:v18];
          }
        }

        else
        {
          v20 = self->_log;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "[UARPAssetManager handlePeriodicLaunchInternal]";
            v36 = 2112;
            v37 = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Periodic Asset Check for %@", buf, 0x16u);
          }

          -[UARPAssetManager checkForUpdateIfPossible:](self, "checkForUpdateIfPossible:", [v18 accessoryID]);
        }
      }

      v15 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000298F0;
  v23[3] = &unk_100081B08;
  v23[4] = self;
  [v13 enumerateKeysAndObjectsUsingBlock:v23];
  [v21 purgePeriodicLaunchCache];
}

- (void)postActiveFirmwareAnalyticsEventForAccessoryID:(id)a3
{
  v4 = objc_alloc_init(UARPActiveFirmwareAnalyticsEvent);
  [(UARPActiveFirmwareAnalyticsEvent *)v4 updateWithAccessoryID:a3];
  [(UARPActiveFirmwareAnalyticsEvent *)v4 send];
}

- (int64_t)changeAssetLocation:(id)a3 assetID:(id)a4
{
  v4 = 5;
  if (a3 && a4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    workQueue = self->_workQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100029AE8;
    v7[3] = &unk_100081AE0;
    v7[4] = self;
    v7[5] = a3;
    v7[6] = a4;
    v7[7] = &v8;
    dispatch_sync(workQueue, v7);
    v4 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

- (int64_t)qCheckDropBoxForAccessory:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = [a3 accessoryID];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Checking Dropbox for accessory %@", &v17, 0xCu);
  }

  if ([a3 assetID])
  {
    [a3 checkDropbox];
    sub_100006008([a3 accessoryID], 0);
    if ([a3 dropboxFirmwarePath])
    {
      [(UARPMobileAssetManager *)self->_mobileAssetManager updateSettingsDatabaseForAccessory:a3];
      v6 = sub_100002A1C([a3 dropboxFirmwarePath]);
      v7 = self->_log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [a3 dropboxFirmwarePath];
        v9 = [a3 accessoryID];
        v17 = 138412802;
        v18 = v8;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found firmware %@ version %@ in Dropbox for accessory %@", &v17, 0x20u);
      }

      [objc_msgSend(a3 "assetID")];
      [objc_msgSend(a3 "assetID")];
      [objc_msgSend(a3 "assetID")];
      [objc_msgSend(a3 "assetID")];
      [objc_msgSend(a3 "assetID")];
      [a3 analyticsSetDownloadAvailableForAssetID:{objc_msgSend(a3, "assetID")}];
      [a3 analyticsSetDownloadConsentRequestedForAssetID:{objc_msgSend(a3, "assetID")}];
      if ([a3 dropboxReleaseNotesPath])
      {
        v10 = self->_log;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [a3 dropboxReleaseNotesPath];
          v12 = [a3 accessoryID];
          v17 = 138412546;
          v18 = v11;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found release notes %@ in Dropbox for accessory %@", &v17, 0x16u);
        }

        [objc_msgSend(a3 "assetID")];
        [objc_msgSend(a3 "assetID")];
        [objc_msgSend(a3 "assetID")];
      }

      sub_100006008([a3 accessoryID], v6);
      -[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:](self, "assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:", [a3 accessoryID], objc_msgSend(a3, "assetID"), 0);
      return 0;
    }

    v13 = 1;
  }

  else
  {
    v13 = 4;
  }

  v15 = self->_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [a3 accessoryID];
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No firmware found in Dropbox for accessory %@", &v17, 0xCu);
  }

  return v13;
}

- (id)getUARPAccessoryInternalForUARPAccessoryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10002A0EC;
  v11 = sub_10002A0FC;
  v12 = 0;
  accessories = self->_accessories;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A108;
  v6[3] = &unk_100081B30;
  v6[4] = a3;
  v6[5] = &v7;
  [(NSMutableSet *)accessories enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)allowConditionalDownloadOnCellular
{
  if ((MGGetBoolAnswer() & 1) != 0 || ![(UARPMobileAssetManager *)self->_mobileAssetManager isRoamingEnabled])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[UARPAssetManager allowConditionalDownloadOnCellular]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: UARP MA Download On cellular allowed", &v4, 0xCu);
    }

    [(UARPMobileAssetManager *)self->_mobileAssetManager setUarpDownloadOnCellularAllowed:1];
  }
}

- (id)containerIDForAssetID:(id)a3
{
  v5 = [a3 type];
  if (v5 > 6)
  {
    if (v5 > 14)
    {
      if (v5 == 15)
      {
        v6 = "com.apple.chip";
        goto LABEL_19;
      }

      if (v5 == 16)
      {
        v6 = "com.apple.chip.staging";
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 == 7)
      {
        v6 = "com.apple.uarp.beta";
        goto LABEL_19;
      }

      if (v5 == 8)
      {
        v6 = "com.apple.uarp.staging.beta";
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v6 = "com.apple.uarp.uat";
      }

      else
      {
        v6 = "com.apple.uarp.staging.uat";
      }

LABEL_19:

      return [NSString stringWithUTF8String:v6];
    }

    if (v5 == 1)
    {
      v6 = "com.apple.uarp";
      goto LABEL_19;
    }

    if (v5 == 2)
    {
      v6 = "com.apple.uarp.staging";
      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004E570(a3);
  }

  return 0;
}

- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A424;
  v6[3] = &unk_100081B58;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_sync(workQueue, v6);
}

- (void)checkForUpdateIfPossible:(id)a3
{
  if ([(UARPAssetManager *)self isAccessoryInfoAvailable:?])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[UARPAssetManager checkForUpdateIfPossible:]";
      v8 = 2112;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Triggering asset check, for accessory %@", &v6, 0x16u);
    }

    [(UARPAssetManager *)self checkForUpdate:a3];
  }
}

- (void)qCheckForMultipleiCloudUpdates:(id)a3
{
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = -[UARPAssetManager getUARPAccessoryInternalForUARPAccessoryID:](self, "getUARPAccessoryInternalForUARPAccessoryID:", [v10 accessoryID]);
        if (!v11)
        {
          [(NSMutableSet *)self->_accessories addObject:v10];
          v11 = v10;
        }

        [v5 addObject:v11];
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = -[UARPAssetManager containerIDForAssetID:](self, "containerIDForAssetID:", [objc_msgSend(v5 "firstObject")]);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Remote check on iCloud requested for container:%{public}@", buf, 0xCu);
  }

  [(UARPiCloudAssetManager *)self->_iCloudAssetManager performRemoteUpdateCheckForAccessories:v5 inContainer:v12];
}

- (int64_t)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A894;
  block[3] = &unk_100081B80;
  block[4] = self;
  block[5] = a5;
  block[7] = &v9;
  block[8] = a3;
  block[6] = a4;
  dispatch_sync(workQueue, block);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)copyAssetIDForAccessoryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10002A0EC;
  v11 = sub_10002A0FC;
  v12 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B068;
  block[3] = &unk_1000817B0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(workQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)getSupplementalAssetNameForAccessoryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10002A0EC;
  v11 = sub_10002A0FC;
  v12 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B180;
  block[3] = &unk_1000817B0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(workQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isAssetLookupComplete:(id)a3 forAccessory:(id)a4
{
  v5 = [objc_msgSend(+[UARPSupportedAccessory findByAppleModelNumber:](UARPSupportedAccessory findByAppleModelNumber:{objc_msgSend(a4, "modelNumber")), "downstreamAppleModelNumbers"), "count"}];
  if (v5 != [objc_msgSend(a3 "downstreamAssetIDs")])
  {
    return 0;
  }

  if ([a3 downloadStatus])
  {
    return 1;
  }

  return [a3 updateAvailabilityStatus] != 0;
}

- (void)assetAvailabilityUpdateForAccessory:(id)a3 assetID:(id)a4 downstreamAppleModelNumber:(id)a5
{
  if (![a4 localURL] || objc_msgSend(a4, "firmwareHash"))
  {
LABEL_5:
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B460;
    block[3] = &unk_100081B58;
    block[4] = self;
    block[5] = a3;
    block[6] = a5;
    block[7] = a4;
    dispatch_async(workQueue, block);
    if ([a4 deploymentAllowed])
    {
      if ([(UARPAssetManager *)self isAssetLookupComplete:a4 forAccessory:a3])
      {
        delegateQueue = self->_delegateQueue;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10002B4EC;
        v13[3] = &unk_100081800;
        v13[4] = self;
        v13[5] = a3;
        v13[6] = a4;
        dispatch_async(delegateQueue, v13);
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004E66C();
      }
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[UARPAssetManager assetAvailabilityUpdateForAccessory:assetID:downstreamAppleModelNumber:]";
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Deployment not allowed for this asset, not notifying delegate", buf, 0xCu);
      }
    }

    return;
  }

  *buf = 0;
  v9 = sub_10001378C([a4 localURL], 10, buf);
  if (v9)
  {
    [a4 setFirmwareHash:v9];
    goto LABEL_5;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004E5F0(buf);
  }
}

- (void)supplementalAssetAvailabilityUpdateForAccessory:(id)a3 assetName:(id)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[UARPAssetManager supplementalAssetAvailabilityUpdateForAccessory:assetName:]";
    v12 = 2112;
    v13 = a4;
    v14 = 2112;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Supplemental asset %@ for %@; notifying delegate", buf, 0x20u);
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B620;
  block[3] = &unk_100081800;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(delegateQueue, block);
}

- (void)createTemporaryFolders
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B6BC;
  block[3] = &unk_100080FC8;
  block[4] = self;
  if (qword_100099810 != -1)
  {
    dispatch_once(&qword_100099810, block);
  }
}

- (void)createTemporaryFolder:(id)a3
{
  v5 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v5 fileExistsAtPath:a3])
  {
    v6 = 0;
    if ([(NSFileManager *)v5 createDirectoryAtPath:a3 withIntermediateDirectories:1 attributes:0 error:&v6])
    {
      v7 = NSFilePosixPermissions;
      v8 = &off_1000881F0;
      if (![(NSFileManager *)v5 setAttributes:[NSDictionary dictionaryWithObjects:&v7 forKeys:1 count:?], a3, &v6]&& os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004E750(a3, &v6);
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004E6E0(a3, &v6);
    }
  }
}

- (BOOL)getFetchedSupportedAccessories:(id)a3 forProductGroup:(id)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_10002A0EC;
  v18 = sub_10002A0FC;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  workQueue = self->_workQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002BAB4;
  v9[3] = &unk_100081BA8;
  v9[4] = a4;
  v9[5] = self;
  v9[6] = &v14;
  v9[7] = &v10;
  dispatch_sync(workQueue, v9);
  v6 = v15[5];
  if (v6)
  {
    [a3 addObjectsFromArray:{objc_msgSend(v6, "allObjects")}];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BC08;
  block[3] = &unk_100081BD0;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  v14 = a5;
  dispatch_async(workQueue, block);
  delegateQueue = self->_delegateQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002BC6C;
  v11[3] = &unk_100081BD0;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = a4;
  v12 = a5;
  dispatch_async(delegateQueue, v11);
}

- (int64_t)getAttestationCertificates:(id)a3 assetID:(id)a4
{
  v6 = [(UARPAssetManager *)self containerIDForAssetID:a4];
  if (v6)
  {
    [(UARPiCloudAssetManager *)self->_iCloudAssetManager getAttestationCertificates:a3 inContainer:v6];
    return 0;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004E834();
    }

    return 4;
  }
}

- (id)getAttestationCertificates:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10002A0EC;
  v11 = sub_10002A0FC;
  v12 = 0;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BDFC;
  block[3] = &unk_1000817B0;
  block[4] = a3;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(workQueue, block);
  v4 = [NSDictionary dictionaryWithDictionary:v8[5]];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)attestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_subjectKeyIdentifierToAttestationCertificatesMap addEntriesFromDictionary:a3];
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BF28;
  block[3] = &unk_100081800;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(delegateQueue, block);
}

- (void)settingsChangedForSerialNumber:(id)a3
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002BFB0;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(workQueue, v4);
}

- (int64_t)addAccessoryID:(id)a3 assetID:(id)a4
{
  if (a3)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028044;
    block[3] = &unk_100081800;
    block[4] = a3;
    block[5] = a4;
    block[6] = self;
    dispatch_sync(workQueue, block);
  }

  return 0;
}

- (int64_t)performRemoteUpdateCheckForAccessoryID:(id)a3
{
  v5 = [(UARPAssetManager *)self getUARPAccessoryInternalForUARPAccessoryID:?];
  if (!v5 || !self->_delegate)
  {
    return 1;
  }

  v6 = v5;
  if (![v5 assetID])
  {
    return 4;
  }

  if (!sub_100005DF0([v6 accessoryID]))
  {
    result = [(UARPAssetManager *)self qCheckDropBoxForAccessory:v6];
    if (result != 1)
    {
      return result;
    }

    switch([objc_msgSend(v6 "assetID")])
    {
      case 0uLL:
        if (sub_10002C4B8())
        {
          *v27 = 0;
          sub_10002C490();
          _os_log_impl(v21, v22, v23, v24, v25, 2u);
        }

        return [(UARPAssetManager *)self performLocalUpdateCheckForAccessory:v6, *v27];
      case 1uLL:
      case 2uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 0xFuLL:
        if (sub_10002C4B8())
        {
          *v27 = 0;
          sub_10002C490();
          _os_log_impl(v11, v12, v13, v14, v15, 2u);
        }

        -[UARPiCloudAssetManager performRemoteUpdateCheckForAccessories:inContainer:](self->_iCloudAssetManager, "performRemoteUpdateCheckForAccessories:inContainer:", +[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v6), -[UARPAssetManager containerIDForAssetID:](self, "containerIDForAssetID:", [v6 assetID]));
        return 1;
      case 3uLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
        if (sub_10002C4B8())
        {
          [objc_msgSend(v6 "assetID")];
          UARPAssetLocationTypeToString();
          sub_10000CF90();
          sub_10002C490();
          _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
        }

        return [(UARPMobileAssetManager *)self->_mobileAssetManager performRemoteUpdateCheckForAccessory:v6];
      case 0x11uLL:
        log = self->_log;
        if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *v27 = 138543362;
        *&v27[4] = v6;
        v8 = "Dropbox file path requested for accessory: %{public}@";
        goto LABEL_25;
      default:
        log = self->_log;
        if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        [objc_msgSend(v6 "assetID")];
        sub_10000CF90();
        v8 = "Unsupported assetID.type %ld";
LABEL_25:
        v9 = log;
        break;
    }

    goto LABEL_7;
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v27 = 138412290;
    *&v27[4] = a3;
    v8 = "OTA is disabled for accessory %@";
    v9 = v7;
LABEL_7:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, v27, 0xCu);
  }

  return 1;
}

- (id)createUARPAccessoryInternalFromArchivedData:(id)a3
{
  v9 = 0;
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v9];
  v4 = v3;
  if (v3)
  {
    if ([(UARPAccessoryInternal *)v3 productGroup]&& [(UARPAccessoryInternal *)v4 productNumber])
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    v6 = [[UARPAssetID alloc] initWithLocationType:v5 remoteURL:0];
    if (v6)
    {
      v7 = v6;
      v4 = [[UARPAccessoryInternal alloc] initWithAccessoryID:v4 assetID:v6];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)updateCacheForAccessory:(id)a3 addAccessory:(BOOL)a4
{
  v5 = a4;
  v64 = self;
  i = &MGCopyAnswer_ptr;
  v8 = +[NSMutableArray array];
  v70 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v70];
  if (v9)
  {
    v61 = v9;
    v10 = sub_1000029B4();
    HIDWORD(v62) = v5;
    if (v10)
    {
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = +[NSMutableArray array];
    }

    v12 = v11;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v67;
      *&v14 = 138412290;
      v63 = v14;
      do
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (*v67 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v66 + 1) + 8 * i);
          v4 = NSKeyedUnarchiver;
          v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:&v70];
          if (!v18)
          {
            if (sub_10002C508(0, v19, v20, v21, v22, v23, v24, v25, v58, v60, v61, v62, v63, *(&v63 + 1), v64))
            {
              *buf = 0;
              v27 = NSKeyedUnarchiver;
              v28 = "Found invalid cachedAccessoryIDData in Cache, removing";
              v29 = 2;
LABEL_17:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v28, buf, v29);
            }

LABEL_18:
            [v8 addObject:v17];
            continue;
          }

          v4 = v18;
          if (([a3 isEqual:v18] & 1) != 0 || objc_msgSend(objc_msgSend(a3, "serialNumber"), "isEqual:", -[NSObject serialNumber](v4, "serialNumber")))
          {
            log = v64->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = v63;
              v72 = v4;
              v27 = log;
              v28 = "Found same accessory %@ in Cache, removing";
              v29 = 12;
              goto LABEL_17;
            }

            goto LABEL_18;
          }
        }

        v15 = [v12 countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v15);
    }

    v30 = [v8 count];
    if (v30)
    {
      v30 = [v12 removeObjectsInArray:v8];
    }

    if (HIDWORD(v62))
    {
      if (sub_10002C508(v30, v31, v32, v33, v34, v35, v36, v37, v58, v60, v61, v62, v63, *(&v63 + 1), v64))
      {
        *buf = 138412290;
        v72 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating accessory %@ in cache", buf, 0xCu);
      }

      [v12 addObject:v61];
    }

    v59 = InternalStorageDirectoryPath();
    v38 = [NSString stringWithFormat:@"%@/%@"];
    v39 = +[NSFileManager defaultManager];
    if ([(NSFileManager *)v39 fileExistsAtPath:InternalStorageDirectoryPath()]|| (v65 = 0, v40 = [(NSFileManager *)v39 createDirectoryAtPath:InternalStorageDirectoryPath() withIntermediateDirectories:1 attributes:0 error:&v65], (v40 & 1) != 0))
    {
      v65 = 0;
      v48 = [v12 writeToURL:+[NSURL fileURLWithPath:](NSURL error:{"fileURLWithPath:", v38), &v65}];
      if ((v48 & 1) == 0 && sub_10002C4E8(v48, v49, v50, v51, v52, v53, v54, v55, v59, @"uarpAccessories.plist", v61, v62, v63, *(&v63 + 1), v64))
      {
        *buf = 136315650;
        v72 = "[UARPAssetManager updateCacheForAccessory:addAccessory:]";
        v73 = 2112;
        v74 = v38;
        v75 = 2112;
        v76 = v65;
        v56 = "%s: Failed to write to %@ (%@)";
LABEL_35:
        _os_log_error_impl(&_mh_execute_header, i, OS_LOG_TYPE_ERROR, v56, buf, 0x20u);
      }
    }

    else if (sub_10002C4E8(v40, v41, v42, v43, v44, v45, v46, v47, v59, @"uarpAccessories.plist", v61, v62, v63, *(&v63 + 1), v64))
    {
      v57 = InternalStorageDirectoryPath();
      *buf = 136315650;
      v72 = "[UARPAssetManager updateCacheForAccessory:addAccessory:]";
      v73 = 2112;
      v74 = v57;
      v75 = 2112;
      v76 = v65;
      v56 = "%s: Unable to create directory at %@ (%@)";
      goto LABEL_35;
    }
  }
}

@end