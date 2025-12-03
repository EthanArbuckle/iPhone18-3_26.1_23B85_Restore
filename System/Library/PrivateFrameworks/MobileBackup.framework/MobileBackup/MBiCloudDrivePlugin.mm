@interface MBiCloudDrivePlugin
+ (id)_backupManagerForSnapshotURL:(id)l liveFSURL:(id)rL;
+ (id)_restoreManagerForRestoreDirURL:(id)l;
+ (id)backUpFPFSDatabaseManifestForUserVolume:(id)volume snapshotMountPoint:(id)point;
+ (id)backUpiCloudDriveDatabaseManifestForUserVolume:(id)volume snapshotMountPoint:(id)point;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBiCloudDrivePlugin

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  persona = [engine persona];
  userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
  v6 = [NSURL fileURLWithPath:userIncompleteRestoreDirectory isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"var/mobile" isDirectory:1];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=iCloudDrive= restoreDirectoryURL:%@, userURL:%@", buf, 0x16u);
    _MBLog();
  }

  v9 = [objc_opt_class() _restoreManagerForRestoreDirURL:v7];
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001907E8;
    v12[3] = &unk_1003C05E8;
    v13 = dispatch_semaphore_create(0);
    v10 = v13;
    [v9 restoreWithCompletionBlock:v12];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

+ (id)backUpiCloudDriveDatabaseManifestForUserVolume:(id)volume snapshotMountPoint:(id)point
{
  volumeCopy = volume;
  pointCopy = point;
  if (FPIsCloudDocsWithFPFSEnabled())
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=iCloudDrive= FPFS is enabled for iCloud Drive, no need to do legacy backup.", buf, 2u);
      _MBLog();
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (!volumeCopy)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "=iCloudDrive= Missing userVolumeMountPoint for iCloud Drive Database", buf, 2u);
      _MBLog();
    }

    goto LABEL_18;
  }

  if (!pointCopy)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "=iCloudDrive= Missing snapshotMountPoint for iCloud Drive Database", buf, 2u);
      _MBLog();
    }

    goto LABEL_18;
  }

  v8 = [NSURL fileURLWithPath:pointCopy isDirectory:1];
  v9 = [NSURL fileURLWithPath:volumeCopy isDirectory:1];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=iCloudDrive= userFolderURLInSnapshot:%@, userFolderURLInLiveFS:%@", buf, 0x16u);
    _MBLog();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = sub_100190D44;
  v29 = sub_100190D54;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_100190D44;
  v23[4] = sub_100190D54;
  v24 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = [self _backupManagerForSnapshotURL:v8 liveFSURL:v9];
  if (v12)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100190D5C;
    v19[3] = &unk_1003C0610;
    v21 = v23;
    v22 = buf;
    v13 = v11;
    v20 = v13;
    [v12 backUpWithCompletionBlock:v19];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(*&buf[8] + 40))
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*&buf[8] + 40);
      *v25 = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=iCloudDrive= BRCDatabaseBackupManager failed: %@", v25, 0xCu);
      v18 = *(*&buf[8] + 40);
      _MBLog();
    }

    v16 = *(*&buf[8] + 40);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(buf, 8);

LABEL_19:

  return v16;
}

+ (id)backUpFPFSDatabaseManifestForUserVolume:(id)volume snapshotMountPoint:(id)point
{
  volumeCopy = volume;
  pointCopy = point;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100190D44;
  v25 = sub_100190D54;
  v26 = 0;
  v7 = [NSURL fileURLWithPath:pointCopy isDirectory:1];
  v8 = [NSURL fileURLWithPath:volumeCopy isDirectory:1];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=iCloudDrive= FPFS: userFolderURLInSnapshot:%@, userFolderURLInLiveFS:%@", buf, 0x16u);
    _MBLog();
  }

  v10 = dispatch_semaphore_create(0);
  v11 = +[FPDaemonConnection sharedConnection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100191104;
  v18[3] = &unk_1003C0638;
  v20 = &v21;
  v12 = v10;
  v19 = v12;
  [v11 backUpUserURL:v7 outputUserURL:v8 completionHandler:v18];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (v22[5])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v22[5];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=iCloudDrive= FPFSSQLBackupManager failed: %@", buf, 0xCu);
      v17 = v22[5];
      _MBLog();
    }

    v15 = v22[5];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

+ (id)_backupManagerForSnapshotURL:(id)l liveFSURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = MBWeakLinkSymbol();
  if (v7)
  {
    v8 = v7(lCopy, rLCopy);
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = MBWeakLinkClass();
  if (v9)
  {
    v8 = [[v9 alloc] initWithUserURL:lCopy outputUserURL:rLCopy];
    goto LABEL_5;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=iCloudDrive= Failed to create CloudDocs database backup manager", v13, 2u);
    _MBLog();
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (id)_restoreManagerForRestoreDirURL:(id)l
{
  lCopy = l;
  v4 = MBWeakLinkSymbol();
  if (v4)
  {
    v5 = v4(lCopy);
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = MBWeakLinkClass();
  if (v6)
  {
    v5 = [[v6 alloc] initWithUserURL:lCopy];
    goto LABEL_5;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=iCloudDrive= Failed to create CloudDocs database restore manager", v10, 2u);
    _MBLog();
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end