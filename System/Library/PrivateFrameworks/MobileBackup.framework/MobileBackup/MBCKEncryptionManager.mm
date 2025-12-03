@interface MBCKEncryptionManager
+ (BOOL)_findMissingEncryptionKeysFromCKCacheWithAccount:(id)account serviceManager:(id)manager;
+ (BOOL)_findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:(id)persona;
+ (BOOL)saveRestoreKeyBagsWithAccount:(id)account device:(id)device error:(id *)error;
+ (BOOL)tearDownBackupForVolume:(id)volume error:(id *)error;
+ (id)loadRestoreKeyBagsWithAccount:(id)account error:(id *)error;
+ (id)restoreKeyBagsForDevice:(id)device;
+ (void)_exportKeychain;
+ (void)_findMissingEncryptionKeysWithAccount:(id)account serviceManager:(id)manager;
+ (void)_trackFoundEncryptionKeysForAccount:(id)account quiet:(BOOL)quiet;
+ (void)deviceIsLockingWithAccount:(id)account serviceManager:(id)manager completion:(id)completion;
+ (void)deviceIsUnlockedWithAccount:(id)account serviceManager:(id)manager;
+ (void)removeRestoreKeyBagsWithAccount:(id)account device:(id)device;
+ (void)trackMissingEncryptionKeyForAccount:(id)account;
@end

@implementation MBCKEncryptionManager

+ (void)trackMissingEncryptionKeyForAccount:(id)account
{
  accountCopy = account;
  if (!atomic_fetch_add(dword_1004217A8, 1u))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=encryption key= Asking the UEA plugin to wake backupd on next unlock", buf, 2u);
      _MBLog();
    }

    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanTrue, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        persona = [accountCopy persona];
        *buf = 138412290;
        v13 = persona;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Requesting backupd to fetch encryption keys for persona %@ on net unlock", buf, 0xCu);
      }

      persona2 = [accountCopy persona];
      _MBLog();
    }

    persona3 = [accountCopy persona];
    [persona3 setPreferencesValue:&__kCFBooleanTrue forKey:@"FetchMissingKeysAtNextUnlock"];

    objc_sync_exit(selfCopy);
  }
}

+ (void)_trackFoundEncryptionKeysForAccount:(id)account quiet:(BOOL)quiet
{
  accountCopy = account;
  if (quiet)
  {
    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanFalse, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=encryption key= Asking the UEA plugin to not wake backupd on next unlock", buf, 2u);
      _MBLog();
    }

    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanFalse, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      persona = [accountCopy persona];
      *buf = 138412290;
      v12 = persona;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=encryption key= Requesting backupd to not fetch encryption keys for persona %@ on next unlock", buf, 0xCu);

      persona2 = [accountCopy persona];
      _MBLog();
    }
  }

  persona3 = [accountCopy persona];
  [persona3 setPreferencesValue:&__kCFBooleanFalse forKey:@"FetchMissingKeysAtNextUnlock"];
}

+ (void)deviceIsLockingWithAccount:(id)account serviceManager:(id)manager completion:(id)completion
{
  accountCopy = account;
  managerCopy = manager;
  completionCopy = completion;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10012A024;
  v23[3] = &unk_1003BBFE8;
  v23[4] = self;
  if (qword_1004217B8 != -1)
  {
    dispatch_once(&qword_1004217B8, v23);
  }

  v11 = dispatch_group_create();
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A0D0;
  block[3] = &unk_1003BDB10;
  selfCopy = self;
  v13 = accountCopy;
  v20 = v13;
  v14 = managerCopy;
  v21 = v14;
  dispatch_group_async(v11, v12, block);

  if ([v13 isPrimaryAccount])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A118;
    v18[3] = &unk_1003BBFE8;
    v18[4] = self;
    dispatch_group_async(v11, qword_1004217B0, v18);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10012A120;
  v16[3] = &unk_1003BCB38;
  v17 = completionCopy;
  v15 = completionCopy;
  dispatch_group_notify(v11, v12, v16);
}

+ (void)deviceIsUnlockedWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager deviceIsUnlockedWithAccount:serviceManager:]", "MBCKEncryptionManager.m", 100, "account");
  }

  v8 = managerCopy;
  v9 = atomic_exchange(dword_1004217A8, 0);
  if (v9)
  {
    goto LABEL_5;
  }

  buf[0] = 0;
  v10 = objc_opt_class();
  objc_sync_enter(v10);
  persona = [accountCopy persona];
  v12 = [persona getBooleanValueForKey:@"FetchMissingKeysAtNextUnlock" keyExists:buf];

  objc_sync_exit(v10);
  if (buf[0])
  {
    if (v12)
    {
LABEL_5:
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v20 = v9;
        v21 = 2112;
        v22 = @"FetchMissingKeysAtNextUnlock";
        v23 = 1024;
        v24 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=encryption key= Forcing missing encryption keys lookup, count:%lu, %@:%d", buf, 0x1Cu);
        _MBLog();
      }

      v14 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012A3B4;
      block[3] = &unk_1003BDB10;
      selfCopy = self;
      v16 = accountCopy;
      v17 = v8;
      dispatch_sync(v14, block);
    }
  }
}

+ (void)_findMissingEncryptionKeysWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  persona = [accountCopy persona];
  v8 = [self _findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:persona];
  v9 = [self _findMissingEncryptionKeysFromCKCacheWithAccount:accountCopy serviceManager:managerCopy];
  v10 = objc_opt_class();
  objc_sync_enter(v10);
  if (v8 && v9)
  {
    [objc_opt_class() _trackFoundEncryptionKeysForAccount:accountCopy quiet:1];
  }

  else
  {
    [objc_opt_class() trackMissingEncryptionKeyForAccount:accountCopy];
  }

  objc_sync_exit(v10);
}

+ (BOOL)_findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:(id)persona
{
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  v4 = [snapshotDatabaseDirectory stringByAppendingPathComponent:@"pending"];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v46 = 0;
    v7 = [MBFileOperation symbolicLinkTargetWithPath:v4 error:&v46];
    v8 = v46;
    if (v7)
    {
      if (MBSnapshotDirectoryExists(snapshotDatabaseDirectory, v7))
      {
        v45 = 0;
        v43 = snapshotDatabaseDirectory;
        v44 = v7;
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Finding missed encryption keys for pending commitID: %@", buf, 0xCu);
          _MBLog();
        }

        v48 = 0;
        v10 = [MBMissedEncryptionKeysDB openDatabaseIn:v43 commitID:v44 readOnly:1 error:&v48];
        v11 = v48;
        if (v10)
        {
          v47 = v11;
          v12 = [MBMissedEncryptionKeysDB openDatabaseIn:v43 commitID:v44 readOnly:0 error:&v47];
          v13 = v47;

          if (v12)
          {
            v42 = v13;
            v14 = [v12 countMissedEncryptionKeysWithError:&v45];
            if (v14 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = 0;
            }

            else
            {
              v21 = v10;
              v22 = v12;
              v39 = v44;
              v40 = +[NSDate now];
              v37 = v14;
              v54 = 0;
              v55 = &v54;
              v56 = 0x2020000000;
              v57 = 0;
              v50 = 0;
              v51 = &v50;
              v52 = 0x2020000000;
              v53 = 0;
              v49 = 0;
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10012DE70;
              v69 = &unk_1003BF648;
              v12 = v22;
              v70 = v12;
              v71 = &v50;
              v72 = &v54;
              v38 = v21;
              LOBYTE(v22) = [v21 enumerateInodesMissingEncryptionKeys:&v49 block:buf];
              v41 = v49;
              v13 = v42;
              if (v22)
              {

                [v40 timeIntervalSinceNow];
                v24 = -v23;
                if (v55[3] + v51[3] >= v14)
                {
                  v25 = MBGetDefaultLog();
                  v15 = 1;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v30 = v55[3];
                    v31 = v51[3];
                    *v58 = 134219010;
                    v59 = v30;
                    v60 = 2048;
                    v61 = v37;
                    v62 = 2048;
                    v63 = v31;
                    v64 = 2112;
                    v65 = v39;
                    v66 = 2048;
                    v67 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=encryption key= Found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v58, 0x34u);
                    v36 = v51[3];
                    v34 = v55[3];
                    _MBLog();
                  }
                }

                else
                {
                  v25 = MBGetDefaultLog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = v55[3];
                    v27 = v51[3];
                    *v58 = 134219010;
                    v59 = v26;
                    v60 = 2048;
                    v61 = v14;
                    v62 = 2048;
                    v63 = v27;
                    v64 = 2112;
                    v65 = v39;
                    v66 = 2048;
                    v67 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=encryption key= Partially found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v58, 0x34u);
                    v35 = v51[3];
                    v33 = v55[3];
                    _MBLog();
                  }

                  v15 = 0;
                }
              }

              else
              {
                v28 = MBGetDefaultLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *v58 = 138412290;
                  v59 = v41;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=encryption key= Error enumerating missed encryption keys: %@", v58, 0xCu);
                  _MBLog();
                }

                v29 = v41;
                v15 = 0;
                v45 = v41;
                v25 = v70;
              }

              _Block_object_dispose(&v50, 8);
              _Block_object_dispose(&v54, 8);
            }
          }

          else
          {
            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=encryption key= Failed to open r/w missed encryption keys db: %@", buf, 0xCu);
              _MBLog();
            }

            v20 = v13;
            v12 = 0;
            v15 = 0;
            v45 = v13;
          }
        }

        else
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=encryption key= Failed to open r/o missed encryption keys db: %@", buf, 0xCu);
            _MBLog();
          }

          v18 = v11;
          v12 = 0;
          v15 = 0;
          v45 = v11;
          v13 = v11;
        }

        if (v10)
        {
          [v10 close:0];
        }

        if (v12)
        {
          [v12 close:0];
        }

        goto LABEL_41;
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = snapshotDatabaseDirectory;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=encryption key= Snapshot directory for commitID %@ does not exist under %@", buf, 0x16u);
        _MBLog();
      }
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=encryption key= Failed to resolve symlink target at %@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    v15 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v8 = MBGetDefaultLog();
  v15 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Pending snapshot directory does not exist at %{public}@", buf, 0xCu);
    _MBLog();
  }

LABEL_42:

  return v15 & 1;
}

+ (BOOL)_findMissingEncryptionKeysFromCKCacheWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager _findMissingEncryptionKeysFromCKCacheWithAccount:serviceManager:]", "MBCKEncryptionManager.m", 165, "account");
  }

  v7 = managerCopy;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Finding missing encryption keys from MBCKCache for:%@", &buf, 0xCu);
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = sub_10012B1F4;
  v43 = sub_10012B204;
  v44 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10012B1F4;
  v28 = sub_10012B204;
  v29 = 0;
  obj = 0;
  v9 = [v7 openCacheWithAccount:accountCopy accessType:2 error:&obj];
  objc_storeStrong(&v29, obj);
  if (v9)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10012B20C;
    v16[3] = &unk_1003BF620;
    v19 = &v30;
    v20 = &v24;
    p_buf = &buf;
    v17 = v7;
    v18 = accountCopy;
    v22 = &v34;
    v10 = [v9 enumerateFilesMissingEncryptionKeys:v16];
    if (*(v35 + 24) == 1)
    {
      [*(*(&buf + 1) + 40) flush];
    }

    v11 = v25[5];
    if (v11)
    {
      v12 = v11;

      v10 = v12;
    }

    else if (!v10)
    {
LABEL_14:
      v13 = *(v31 + 24);

      goto LABEL_15;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v38 = 138412290;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=encryption key= Failed to enumerate files missing encryption keys: %@", v38, 0xCu);
      _MBLog();
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&buf, 8);

  return v13 & 1;
}

+ (void)_exportKeychain
{
  v7 = 0;
  v2 = [MBKeychainPlugin exportKeychainForCKBackupEngine:0 error:&v7];
  v3 = v7;
  if ((v2 & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MBError descriptionForError:v3];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=encryption key= Error exporting keychain: %@", buf, 0xCu);

      v6 = [MBError descriptionForError:v3];
      _MBLog();
    }
  }
}

+ (BOOL)tearDownBackupForVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=encryption key= Tearing down backup keybag", buf, 2u);
    _MBLog();
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=encryption key= Unregistering keybag for %@", buf, 0xCu);
    _MBLog();
  }

  v12 = 0;
  v8 = [MBKeyBag unregisterOTAKeyBagForVolume:volumeCopy error:&v12];
  v9 = v12;
  if (v8)
  {
    +[MBKeychainPlugin removeServiceKeychainBackup];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = volumeCopy;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=encryption key= Failed to unregister OTA keybag for %@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 error:v9 format:@"Error unregistering keybag"];
    }
  }

  return v8;
}

+ (id)loadRestoreKeyBagsWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager loadRestoreKeyBagsWithAccount:error:]", "MBCKEncryptionManager.m", 267, "account");
  }

  v6 = accountCopy;
  persona = [accountCopy persona];
  restoreKeyBagsPath = [persona restoreKeyBagsPath];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = restoreKeyBagsPath;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Loading restore keybags at %{public}@", buf, 0xCu);
    _MBLog();
  }

  v46 = 0;
  v10 = [NSData dataWithContentsOfFile:restoreKeyBagsPath options:0 error:&v46];
  v11 = v46;
  if (v10)
  {
    v45 = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v45];
    v13 = v45;

    if (v12)
    {
      v35 = v13;
      v36 = v10;
      v37 = restoreKeyBagsPath;
      v38 = v6;
      v40 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v34 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v15)
      {
        v16 = v15;
        v39 = *v42;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            v19 = [[NSData alloc] initWithBase64EncodedString:v18 options:0];
            v20 = [MBKeychainManager fetchKeybagSecretForUUID:v18 error:error];
            if (!v20)
            {

              v30 = 0;
              restoreKeyBagsPath = v37;
              v6 = v38;
              v13 = v35;
              v10 = v36;
              v12 = v34;
              v28 = v40;
              goto LABEL_24;
            }

            v21 = v20;
            errorCopy = error;
            v23 = [v14 objectForKeyedSubscript:v18];
            v24 = [v23 mutableCopy];

            [v24 setObject:v19 forKeyedSubscript:@"keybagUUID"];
            [v24 setObject:v21 forKeyedSubscript:@"secret"];
            v25 = [[MBCKKeyBag alloc] initWithDictionary:v24 device:0];
            [v40 setObject:v25 forKeyedSubscript:v18];
            v26 = MBGetDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v49 = v18;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=encryption key= Loaded secret for keybag %{public}@", buf, 0xCu);
              _MBLog();
            }

            error = errorCopy;
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v27 = MBGetDefaultLog();
      v28 = v40;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v40 count];
        *buf = 134217984;
        v49 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=encryption key= Loaded %ld keybag secrets from the keychain", buf, 0xCu);
        [v40 count];
        _MBLog();
      }

      v30 = v40;
      restoreKeyBagsPath = v37;
      v6 = v38;
      v13 = v35;
      v10 = v36;
      v12 = v34;
LABEL_24:
    }

    else
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v13;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=encryption key= Failed to deserialize the restore keybags: %{public}@", buf, 0xCu);
        _MBLog();
      }

      v30 = 0;
      if (error && v13)
      {
        [MBError errorWithCode:1 error:v13 format:@"Error deserializing restore keybag plist"];
        *error = v30 = 0;
      }
    }
  }

  else
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = restoreKeyBagsPath;
      v50 = 2114;
      v51 = v11;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=encryption key= Failed to load the restore keybags from %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      [MBError errorForNSError:v11 path:restoreKeyBagsPath format:@"Error reading restore keybag file"];
      *error = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    v13 = v11;
  }

  return v30;
}

+ (BOOL)saveRestoreKeyBagsWithAccount:(id)account device:(id)device error:(id *)error
{
  accountCopy = account;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager saveRestoreKeyBagsWithAccount:device:error:]", "MBCKEncryptionManager.m", 310, "account");
  }

  v10 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager saveRestoreKeyBagsWithAccount:device:error:]", "MBCKEncryptionManager.m", 311, "device");
  }

  errorCopy = error;
  [self removeRestoreKeyBagsWithAccount:accountCopy device:deviceCopy];
  v68 = accountCopy;
  persona = [accountCopy persona];
  restoreKeyBagsPath = [persona restoreKeyBagsPath];

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v88 = restoreKeyBagsPath;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=encryption key= Saving restore keybags at %{public}@", buf, 0xCu);
    v63 = restoreKeyBagsPath;
    _MBLog();
  }

  v69 = restoreKeyBagsPath;

  v14 = [NSMutableDictionary alloc];
  keybagManager = [v10 keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];
  v73 = [v14 initWithCapacity:{objc_msgSend(keybagsByUUIDString, "count")}];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v72 = v10;
  keybagManager2 = [v10 keybagManager];
  keybagsByUUIDString2 = [keybagManager2 keybagsByUUIDString];

  v19 = [keybagsByUUIDString2 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v83;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(keybagsByUUIDString2);
        }

        v23 = *(*(&v82 + 1) + 8 * i);
        keybagManager3 = [v72 keybagManager];
        keybagsByUUIDString3 = [keybagManager3 keybagsByUUIDString];
        v26 = [keybagsByUUIDString3 objectForKeyedSubscript:v23];

        v91 = @"keybagData";
        keybagData = [v26 keybagData];
        v92 = keybagData;
        v28 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];

        [v73 setObject:v28 forKeyedSubscript:v23];
      }

      v20 = [keybagsByUUIDString2 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v20);
  }

  v81 = 0;
  v29 = [NSPropertyListSerialization dataWithPropertyList:v73 format:100 options:0 error:&v81];
  v30 = v81;
  if (v29)
  {
    v31 = v69;
    stringByDeletingLastPathComponent = [v69 stringByDeletingLastPathComponent];
    v33 = +[NSFileManager defaultManager];
    v80 = v30;
    v34 = [v33 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v80];
    v35 = v80;

    if ((v34 & 1) == 0)
    {
      v58 = MBGetDefaultLog();
      v37 = v72;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v88 = stringByDeletingLastPathComponent;
        v89 = 2114;
        v90 = v35;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "=encryption key= Failed create the directory at %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      if (errorCopy)
      {
        [MBError errorForNSError:v35 path:stringByDeletingLastPathComponent format:@"Error creating restore keybag dir"];
        *errorCopy = v56 = 0;
      }

      else
      {
        v56 = 0;
      }

      v30 = v35;
      goto LABEL_56;
    }

    v79 = v35;
    v36 = [v29 writeToFile:v69 options:1073741825 error:&v79];
    v30 = v79;

    v37 = v72;
    if ((v36 & 1) == 0)
    {
      v59 = MBGetDefaultLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v88 = v69;
        v89 = 2114;
        v90 = v30;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=encryption key= Failed serialize restore keybags plist at %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      if (errorCopy)
      {
        [MBError errorWithCode:100 error:v30 path:v69 format:@"Error writing restore keybag plist"];
        *errorCopy = v56 = 0;
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_56;
    }

    v70 = +[NSMutableArray array];
    keybagManager4 = [v72 keybagManager];
    keybagsByUUIDString4 = [keybagManager4 keybagsByUUIDString];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v40 = keybagsByUUIDString4;
    v41 = [v40 countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v41)
    {
      v42 = v41;
      obj = v40;
      v64 = v30;
      v65 = stringByDeletingLastPathComponent;
      v66 = v29;
      v43 = 1;
      v44 = *v76;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v75 + 1) + 8 * j);
          v47 = MBGetDefaultLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v88 = v46;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=encryption key= Saving secret for keybag %{public}@ into keychain", buf, 0xCu);
            _MBLog();
          }

          keybagManager5 = [v72 keybagManager];
          keybagsByUUIDString5 = [keybagManager5 keybagsByUUIDString];
          v50 = [keybagsByUUIDString5 objectForKeyedSubscript:v46];

          secret = [v50 secret];
          v74 = 0;
          v52 = [MBKeychainManager addKeybagSecret:secret forUUID:v46 error:&v74];
          v53 = v74;

          if ((v52 & 1) == 0)
          {
            v54 = MBGetDefaultLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v88 = v46;
              v89 = 2114;
              v90 = v53;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=encryption key= Failed to save secret for keybag %{public}@ into keychain: %{public}@", buf, 0x16u);
              _MBLog();
            }

            if (v53)
            {
              [MBError errorWithCode:1 error:v53 format:@"Failed to save secret for keybag %@ into keychain", v46];
            }

            else
            {
              [MBError errorWithCode:1 format:@"Failed to save secret for keybag %@ into keychain", v46];
            }
            v55 = ;
            [v70 addObject:v55];

            v43 = 0;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v42);
      v40 = obj;

      if (!((errorCopy == 0) | v43 & 1))
      {
        [MBError errorWithErrors:v70];
        *errorCopy = v56 = 0;
        stringByDeletingLastPathComponent = v65;
        v29 = v66;
        v30 = v64;
        v31 = v69;
        goto LABEL_55;
      }

      stringByDeletingLastPathComponent = v65;
      v29 = v66;
      v30 = v64;
      v31 = v69;
      if ((v43 & 1) == 0)
      {
        v56 = 0;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }
    }

    else
    {
    }

    v60 = MBGetDefaultLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [v40 count];
      *buf = 134217984;
      v88 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=encryption key= Saved %ld keybag secrets into keychain", buf, 0xCu);
      [v40 count];
      _MBLog();
    }

    v56 = 1;
    goto LABEL_55;
  }

  v57 = MBGetDefaultLog();
  v31 = v69;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v88 = v30;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "=encryption key= Failed serialize restore keybags plist: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v37 = v72;
  if (errorCopy)
  {
    [MBError errorForNSError:v30 path:v69 format:@"Error serializing restore keybag plist"];
    *errorCopy = v56 = 0;
  }

  else
  {
    v56 = 0;
  }

LABEL_57:

  return v56;
}

+ (id)restoreKeyBagsForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keybagManager = [deviceCopy keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];

  v7 = [keybagsByUUIDString countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(keybagsByUUIDString);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        keybagManager2 = [deviceCopy keybagManager];
        keybagsByUUIDString2 = [keybagManager2 keybagsByUUIDString];
        v14 = [keybagsByUUIDString2 objectForKeyedSubscript:v11];

        [v4 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [keybagsByUUIDString countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (void)removeRestoreKeyBagsWithAccount:(id)account device:(id)device
{
  accountCopy = account;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager removeRestoreKeyBagsWithAccount:device:]", "MBCKEncryptionManager.m", 388, "account");
  }

  v21 = deviceCopy;
  v22 = accountCopy;
  keybagManager = [deviceCopy keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = [keybagsByUUIDString count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Removing secrets for %ld keybags", buf, 0xCu);
    [keybagsByUUIDString count];
    _MBLog();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = keybagsByUUIDString;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=encryption key= Removing the secret for keybag %{public}@", buf, 0xCu);
          _MBLog();
        }

        v23 = 0;
        v17 = [MBKeychainManager removeKeybagSecretForUUID:v15 error:&v23];
        v18 = v23;
        if ((v17 & 1) == 0)
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v29 = v15;
            v30 = 2114;
            v31 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=encryption key= Failed to remove the secret for keybag %{public}@: %{public}@", buf, 0x16u);
            _MBLog();
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v12);
  }

  persona = [v22 persona];
  [persona removeRestoreKeybags];
}

@end