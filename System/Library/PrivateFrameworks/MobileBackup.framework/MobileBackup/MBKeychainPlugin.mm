@interface MBKeychainPlugin
+ (BOOL)_exportKeychainForCKBackupEngine:(id)a3 error:(id *)a4;
+ (BOOL)exportKeychainForCKBackupEngine:(id)a3 error:(id *)a4;
+ (void)removeServiceKeychainBackup;
- (id)_endingRestoreWithDriveEngine:(id)a3;
- (id)_preparingBackupWithCKEngine:(id)a3;
- (id)_preparingBackupWithDriveEngine:(id)a3;
- (id)endingBackupWithEngine:(id)a3;
- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (id)preparingBackupWithEngine:(id)a3;
- (void)_endingRestoreWithServicePolicy:(id)a3 engine:(id)a4;
- (void)_restoreKeychainBackupAtPath:(id)a3 withEngine:(id)a4;
@end

@implementation MBKeychainPlugin

- (id)_preparingBackupWithDriveEngine:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = @"/var/Keychains/keychain-backup.plist";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Exporting keychain to %@", buf, 0xCu);
    v19 = @"/var/Keychains/keychain-backup.plist";
    _MBLog();
  }

  v6 = [v3 settingsContext];
  v7 = [v6 keybag];
  v21 = 0;
  v8 = [v7 dataWithError:&v21];
  v9 = v21;

  if (v8)
  {
    v20 = v9;
    v10 = [MBKeychainManager fetchLocalBackupPasswordAndReturnError:&v20];
    v11 = v20;

    if (!v10)
    {
      if (![MBError isError:v11 withCode:4])
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = @"/var/Keychains/keychain-backup.plist";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Exporting keychain to %@ failed: no password", buf, 0xCu);
          _MBLog();
        }

        v9 = v11;
        v14 = v9;
        goto LABEL_17;
      }

      v11 = 0;
    }

    v12 = [v10 dataUsingEncoding:{4, v19}];
    v13 = WriteKeychainToDisk(@"/var/Keychains/keychain-backup.plist");
    v14 = v11;

    v15 = MBGetDefaultLog();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = @"/var/Keychains/keychain-backup.plist";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Exporting keychain to %@ succeeded", buf, 0xCu);
        _MBLog();
      }

      v9 = 0;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = @"/var/Keychains/keychain-backup.plist";
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Exporting keychain to %@ failed: %@", buf, 0x16u);
        _MBLog();
      }

      v9 = v14;
    }

LABEL_17:
    goto LABEL_18;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = @"/var/Keychains/keychain-backup.plist";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Exporting keychain to %@ failed: no keybag", buf, 0xCu);
    _MBLog();
  }

LABEL_18:

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (id)_preparingBackupWithCKEngine:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = dispatch_queue_create(Name, 0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1001405D0;
  v31 = sub_1001405E0;
  v32 = 0;
  v7 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001405E8;
  block[3] = &unk_1003BE1F8;
  v8 = v3;
  v24 = v8;
  v26 = &v27;
  v9 = v7;
  v25 = v9;
  dispatch_async(v6, block);
  Current = CFAbsoluteTimeGetCurrent();
  v11 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = 0;
    while (![v8 isCanceled])
    {
      if ((v12 & 1) == 0)
      {
        v13 = CFAbsoluteTimeGetCurrent();
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = v13 - Current;
          *buf = 134217984;
          v34 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Waiting for keychain export to finish (%.1fs)", buf, 0xCu);
          v22 = v15;
          _MBLog();
        }
      }

      ++v12;
      v16 = dispatch_time(0, 5000000000);
      if (!dispatch_semaphore_wait(v9, v16))
      {
        goto LABEL_9;
      }
    }

    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Backup was cancelled while waiting for the keychain export to finish", buf, 2u);
      _MBLog();
    }

    v18 = [MBError errorWithCode:202 format:@"Cancelled while waiting for keychain export"];
    goto LABEL_14;
  }

LABEL_9:
  v17 = v28[5];
  if (v17)
  {
    v18 = v17;
LABEL_14:
    v20 = v18;
    goto LABEL_16;
  }

  v20 = 0;
LABEL_16:

  _Block_object_dispose(&v27, 8);

  return v20;
}

+ (BOOL)_exportKeychainForCKBackupEngine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v57 = 0;
  v7 = [v6 attributesOfItemAtPath:@"/var/Keychains/keychain-2.db-wal" error:&v57];
  v8 = v57;
  v9 = v8;
  if (v7)
  {
    v56 = v8;
    v10 = [v6 attributesOfItemAtPath:@"/var/Keychains/keychain-ota-backup.plist" error:&v56];
    v11 = v56;

    if (v10)
    {
      v12 = [v10 fileModificationDate];
      v13 = [v7 fileModificationDate];
      [v12 timeIntervalSinceReferenceDate];
      v15 = v14 * 1000.0;
      [v13 timeIntervalSinceReferenceDate];
      v17 = v16 * 1000.0;
      if (v15 > 1.84467441e19 || v17 > 1.84467441e19)
      {
        v21 = [v12 isEqualToDate:v13, v17]^ 1;
        if (!v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = *&v15 != *&v17;
        if (!v5)
        {
LABEL_16:
          if (v21)
          {
            v22 = +[MBBehaviorOptions sharedOptions];
            [v22 keychainExportFrequency];
            v24 = v23;

            [v13 timeIntervalSinceDate:v12];
            v26 = v25;
            v27 = +[NSDate now];
            [v27 timeIntervalSinceDate:v13];
            v29 = v28;

            if (v29 >= 0.0 && v29 < v24 && v26 >= 0.0 && v26 < v24)
            {
              v38 = MBGetDefaultLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v61 = v12;
                v62 = 2048;
                v63 = v26;
                v64 = 2112;
                v65 = v13;
                v66 = 2048;
                v67 = v29;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Not exporting keychain database during unlock - last export:%@ (%.2fs) last modified:%@ (%.2fs)", buf, 0x2Au);
                _MBLog();
              }

              goto LABEL_32;
            }
          }
        }
      }

      if (!v21)
      {
LABEL_32:

        v19 = 1;
LABEL_64:

        v9 = v11;
        goto LABEL_65;
      }

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        [v12 timeIntervalSince1970];
        v32 = v31;
        [v13 timeIntervalSince1970];
        *buf = 134218240;
        v61 = v32;
        v62 = 2048;
        v63 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Keychain database was modified since the last export (%.6f, %.6f)", buf, 0x16u);
        [v12 timeIntervalSince1970];
        v35 = v34;
        [v13 timeIntervalSince1970];
        v50 = v35;
        v51 = v36;
        _MBLog();
      }

LABEL_36:
      if (!+[MBKeyBag isDeviceKeyBagLocked])
      {
        v55 = v11;
        v40 = WriteKeychainToDisk(@"/var/Keychains/keychain-ota-backup.plist");
        v41 = v11;

        if (v40)
        {
          if (v5)
          {
            v42 = open_dprotected_np([@"/var/Keychains/keychain-ota-backup.plist" fileSystemRepresentation], 0, 1, 0, 256);
            if (v42 < 0)
            {
              v43 = MBGetDefaultLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Failed to verify keychain keybag because open_dprotected_np failed", buf, 2u);
                _MBLog();
              }
            }

            else
            {
              v54 = 0.0;
              v43 = _SecKeychainCopyKeybagUUIDFromFileDescriptor();
              if (v43)
              {
                v44 = [NSData mb_dataFromHexadecimalString:v43];
                v45 = [v44 base64EncodedStringWithOptions:0];
                if (([v5 checkIfBackupHasKeybagWithUUID:v45] & 1) == 0)
                {
                  log = MBGetDefaultLog();
                  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138543362;
                    v61 = v43;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Current backup doesn't have keybag %{public}@", buf, 0xCu);
                    v50 = v43;
                    _MBLog();
                  }
                }
              }

              else
              {
                v44 = MBGetDefaultLog();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543618;
                  v61 = @"/var/Keychains/keychain-ota-backup.plist";
                  v62 = 2114;
                  v63 = v54;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Failed to copy the UUID from the keybag plist at %{public}@: %{public}@", buf, 0x16u);
                  v50 = @"/var/Keychains/keychain-ota-backup.plist";
                  v51 = v54;
                  _MBLog();
                }
              }
            }

            close(v42);
          }

          v58 = NSFileModificationDate;
          v47 = [v7 fileModificationDate];
          v59 = v47;
          v48 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];

          v53 = v41;
          v19 = [v6 setAttributes:v48 ofItemAtPath:@"/var/Keychains/keychain-ota-backup.plist" error:&v53];
          v11 = v53;

          if ((v19 & 1) == 0)
          {
            [v6 removeItemAtPath:@"/var/Keychains/keychain-ota-backup.plist" error:0];
            if (a4)
            {
              *a4 = [MBError errorWithCode:100 error:v11 path:@"/var/Keychains/keychain-ota-backup.plist" format:@"Error setting keychain backup modification date"];
            }
          }
        }

        else
        {
          if (a4)
          {
            v46 = v41;
            v19 = 0;
            *a4 = v41;
          }

          else
          {
            v19 = 0;
          }

          v11 = v41;
        }

        goto LABEL_64;
      }

      if (a4)
      {
        v37 = [MBError errorWithCode:208 format:@"Can't export modified keychain because the device is locked"];
        goto LABEL_39;
      }

      goto LABEL_49;
    }

    v20 = [v11 domain];
    if ([v20 isEqualToString:NSCocoaErrorDomain])
    {
      if ([v11 code] == 4)
      {

        goto LABEL_34;
      }

      v39 = [v11 code];

      if (v39 == 260)
      {
LABEL_34:
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Keychain backup not found", buf, 2u);
          _MBLog();
        }

        goto LABEL_36;
      }
    }

    else
    {
    }

    if (a4)
    {
      v37 = [MBError errorWithCode:100 error:v11 path:@"/var/Keychains/keychain-ota-backup.plist" format:@"Error getting keychain backup attributes"];
LABEL_39:
      v19 = 0;
      *a4 = v37;
      goto LABEL_64;
    }

LABEL_49:
    v19 = 0;
    goto LABEL_64;
  }

  if (a4)
  {
    [MBError errorWithCode:100 error:v8 path:@"/var/Keychains/keychain-2.db-wal" format:@"Error getting keychain database attributes"];
    *a4 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_65:

  return v19;
}

+ (BOOL)exportKeychainForCKBackupEngine:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [objc_opt_class() _exportKeychainForCKBackupEngine:v5 error:&v11];
  v8 = v11;
  objc_autoreleasePoolPop(v6);
  if (a4 && (v7 & 1) == 0)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v7;
}

+ (void)removeServiceKeychainBackup
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v5 = @"/var/Keychains/keychain-ota-backup.plist";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Removing %@", buf, 0xCu);
    _MBLog();
  }

  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:@"/var/Keychains/keychain-ota-backup.plist" error:0];
}

- (id)preparingBackupWithEngine:(id)a3
{
  v4 = a3;
  if (![v4 backsUpPrimaryAccount] || (objc_msgSend(v4, "isDeviceTransferEngine") & 1) != 0)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  if (![v4 isDriveEngine])
  {
    if ([v4 isCloudKitEngine])
    {
      v7 = [(MBKeychainPlugin *)self _preparingBackupWithCKEngine:v4];
      if (v7)
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to back up the keychain: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    goto LABEL_3;
  }

  v5 = [(MBKeychainPlugin *)self _preparingBackupWithDriveEngine:v4];
LABEL_4:

  return v5;
}

- (id)endingBackupWithEngine:(id)a3
{
  v3 = a3;
  if ([v3 backsUpPrimaryAccount] && (objc_msgSend(v3, "isDeviceTransferEngine") & 1) == 0 && objc_msgSend(v3, "isDriveEngine"))
  {
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:@"/var/Keychains/keychain-backup.plist" error:0];

    v5 = [v3 settingsContext];
    v6 = [v5 encryptionManager];
    v11 = 0;
    v7 = [v6 makeLockdownAndKeychainConsistentWithError:&v11];
    v8 = v11;

    v9 = 0;
    if ((v7 & 1) == 0)
    {
      v9 = [MBError errorWithCode:1 error:v8 format:@"Error making lockdown and keychain encryption state consistent"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_endingRestoreWithDriveEngine:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 persona];
  v6 = [v5 sharedIncompleteRestoreDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"/var/Keychains/keychain-backup.plist"];

  v8 = [v3 settingsContext];
  v9 = [v8 password];

  if ([MBRestoreDirectoryAnnotator isRestoredPath:v7])
  {
    v10 = [v3 keybag];
    v30 = 0;
    v11 = [v10 dataWithError:&v30];
    v12 = v30;

    if (!v11)
    {
      v21 = v12;
      v24 = v21;
      goto LABEL_18;
    }

    v13 = [v9 dataUsingEncoding:4];
    v29 = v12;
    v14 = RestoreKeychainFromDisk(v7, v11, v13, &v29);
    v15 = v29;

    if (!v14)
    {
      v21 = v15;

      v24 = v21;
      goto LABEL_18;
    }

    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:v7 error:0];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No keychain in backup", buf, 2u);
      _MBLog();
    }

    v15 = 0;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Restoring backup password to keychain", buf, 2u);
    _MBLog();
  }

  v18 = [v3 settingsContext];
  v19 = [v18 encryptionManager];

  v27 = v15;
  v20 = [v19 setPasswordInKeychain:v9 error:&v27];
  v21 = v27;

  if (v20)
  {
    v26 = v21;
    v22 = [v19 setWillEncryptInLockdown:v9 != 0 error:&v26];
    v23 = v26;

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = [MBError errorWithCode:1 error:v23 format:@"Error setting WillEncrypt value in lockdown"];
    }

    v21 = v23;
  }

  else
  {
    v24 = [MBError errorWithCode:1 error:v21 format:@"Error restoring backup password to keychain"];
  }

LABEL_18:
  objc_autoreleasePoolPop(v4);

  return v24;
}

- (void)_restoreKeychainBackupAtPath:(id)a3 withEngine:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v31 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup at %{public}@", buf, 0xCu);
    _MBLog();
  }

  v29 = 0;
  v8 = [MBProtectionClassUtils getWithPath:v5 error:&v29];
  v9 = v29;
  if (v8 == 255)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *v31 = v5;
      *&v31[8] = 2114;
      *&v31[10] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the keychain backup protection class at %{public}@: %{public}@", buf, 0x16u);
LABEL_9:
      _MBLog();
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (v8 - 3 > 0xFFFFFFFD)
  {
    v10 = [NSURL fileURLWithPath:v5 isDirectory:0];
    v28 = v9;
    v11 = [NSFileHandle fileHandleForReadingFromURL:v10 error:&v28];
    v12 = v28;

    if (!v11)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v31 = v5;
        *&v31[8] = 2114;
        *&v31[10] = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to open the keychain backup at %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_33;
    }

    v27 = 0;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      __assert_rtn("[MBKeychainPlugin _restoreKeychainBackupAtPath:withEngine:]", "MBKeychainPlugin.m", 510, "keyBagData");
    }

    [v11 fileDescriptor];
    v13 = _SecKeychainCopyKeybagUUIDFromFileDescriptor();
    if (!v13)
    {
      v23 = v27;

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v31 = v5;
        *&v31[8] = 2114;
        *&v31[10] = v27;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to copy the UUID from the keybag at %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      v20 = 0;
      v18 = 0;
      goto LABEL_31;
    }

    v14 = v13;
    v15 = [NSData mb_dataFromHexadecimalString:v13];
    v16 = [v6 keyBagForUUID:v15];
    v17 = v16;
    if (v16)
    {
      v26 = v12;
      v18 = [v16 dataWithError:&v26];
      v19 = v26;

      if (v18)
      {
        v25 = v15;
        v20 = [v6 secretForUUID:v15];
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v18 length];
          *buf = 138543618;
          *v31 = v14;
          *&v31[8] = 2048;
          *&v31[10] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found keybag for keychain restore: %{public}@ (%ld bytes)", buf, 0x16u);
          [v18 length];
          _MBLog();
        }

        [v11 fileDescriptor];
        if (_SecKeychainRestoreBackupFromFileDescriptor())
        {
          goto LABEL_32;
        }

        v23 = v27;

        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *v31 = v5;
          *&v31[8] = 2114;
          *&v31[10] = v23;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "_SecKeychainRestoreBackupFromFileDescriptor failed for the keychain backup at %{public}@: %{public}@", buf, 0x16u);
          _MBLog();
        }

LABEL_31:

        v19 = v23;
LABEL_32:

        v12 = v19;
LABEL_33:

        v9 = v12;
        goto LABEL_34;
      }

      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v31 = v14;
        *&v31[8] = 2114;
        *&v31[10] = v19;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch the keybag data for %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }

      v12 = v19;
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v31 = v14;
        *&v31[8] = 2114;
        *&v31[10] = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch the keybag for %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }
    }

    v20 = 0;
    v18 = 0;
    v23 = v12;
    goto LABEL_31;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *v31 = v8;
    *&v31[4] = 2114;
    *&v31[6] = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Found an unexpected protection class (%d) for the keychain backup at %{public}@", buf, 0x12u);
    goto LABEL_9;
  }

LABEL_34:
}

- (void)_endingRestoreWithServicePolicy:(id)a3 engine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 persona];
  v9 = [v8 sharedIncompleteRestoreDirectory];
  v10 = [v9 stringByAppendingPathComponent:@"/var/Keychains/keychain-ota-backup.plist"];

  if ([MBRestoreDirectoryAnnotator isRestoredPath:v10])
  {
    if ([v6 isRestoringToSameDevice])
    {
      v28 = 0;
      v11 = [MBKeychain allPasswordItemsForServices:&off_1003E22A0 error:&v28];
      v12 = v28;
      if (!v11)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch the preserved keychain items: %{public}@", buf, 0xCu);
          _MBLog();
        }
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 count];
        v16 = MBStringWithArray();
        *buf = 134218242;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Preserving %ld keychain items: %@", buf, 0x16u);

        [v11 count];
        v26 = MBStringWithArray();
        _MBLog();
      }

      [(MBKeychainPlugin *)self _restoreKeychainBackupAtPath:v10 withEngine:v7];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing the keychain backup at %{public}@", buf, 0xCu);
        _MBLog();
      }

      v18 = +[NSFileManager defaultManager];
      [v18 removeItemAtPath:v10 error:0];

      v27 = v12;
      v19 = [MBKeychain addAllPasswordItems:v11 error:&v27];
      v20 = v27;

      v21 = MBGetDefaultLog();
      v22 = v21;
      if (v19)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v11 count];
          *buf = 134217984;
          v30 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Added %ld preserved keychain items to the restored keychain", buf, 0xCu);
          [v11 count];
LABEL_21:
          _MBLog();
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v25 = [v11 count];
        *buf = 134218242;
        v30 = v25;
        v31 = 2114;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to add %ld items to the restored keychain: %{public}@", buf, 0x16u);
        [v11 count];
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Can't migrate keychain - removing the keychain backup at %{public}@", buf, 0xCu);
      _MBLog();
    }

    v20 = +[NSFileManager defaultManager];
    [v20 removeItemAtPath:v10 error:0];
  }

  else
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No keychain in backup", buf, 2u);
      _MBLog();
    }
  }

LABEL_23:
}

- (id)endingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 restoresPrimaryAccount] && (objc_msgSend(v7, "isDeviceTransferEngine") & 1) == 0)
  {
    if ([v7 isDriveEngine])
    {
      v8 = [(MBKeychainPlugin *)self _endingRestoreWithDriveEngine:v7];
      goto LABEL_7;
    }

    [(MBKeychainPlugin *)self _endingRestoreWithServicePolicy:v6 engine:v7];
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end