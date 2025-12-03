@interface MBDataMigratorPlugin
+ (BOOL)setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:(id)account restoreSession:(id)session cloudFormatInfo:(id)info performanceStatistics:(id)statistics backupPolicy:(int64_t)policy error:(id *)error;
- (id)_restoreDefaultsWithEngine:(id)engine;
- (id)_setDMContextWithPolicy:(id)policy engine:(id)engine;
- (id)_updateMobileBackupPreferencesWithEngine:(id)engine;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
- (id)preparingBackupWithEngine:(id)engine;
- (void)_updateDeviceTransferInfoWithPlist:(id)plist;
@end

@implementation MBDataMigratorPlugin

- (id)preparingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy backsUpPrimaryAccount])
  {
    v4 = +[MCProfileConnection sharedConnection];
    isPasscodeSet = [v4 isPasscodeSet];
    properties = [engineCopy properties];
    [properties setPasscodeSet:isPasscodeSet];

    v7 = +[NSFileManager defaultManager];
    if ([v7 fileExistsAtPath:@"/var/root/Library/Caches/Backup"])
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = @"/var/root/Library/Caches/Backup";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing %{public}@", buf, 0xCu);
        _MBLog();
      }

      v13 = 0;
      v9 = [v7 removeItemAtPath:@"/var/root/Library/Caches/Backup" error:&v13];
      v10 = v13;
      if ((v9 & 1) == 0)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v15 = @"/var/root/Library/Caches/Backup";
          v16 = 2114;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@: %{public}@", buf, 0x16u);
          _MBLog();
        }
      }
    }
  }

  return 0;
}

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  v8 = [(MBDataMigratorPlugin *)self _updateMobileBackupPreferencesWithEngine:engineCopy];
  if (v8)
  {
LABEL_2:
    v9 = v8;
    goto LABEL_3;
  }

  if ([engineCopy restoresPrimaryAccount])
  {
    v8 = [(MBDataMigratorPlugin *)self _setDMContextWithPolicy:policyCopy engine:engineCopy];
    if (!v8)
    {
      v8 = [(MBDataMigratorPlugin *)self _restoreDefaultsWithEngine:engineCopy];
    }

    goto LABEL_2;
  }

  v9 = 0;
LABEL_3:

  return v9;
}

- (id)_setDMContextWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  settingsContext = [engineCopy settingsContext];
  properties = [engineCopy properties];
  deviceName = [properties deviceName];
  isRestoringToSameDevice = [policyCopy isRestoringToSameDevice];
  v44 = deviceName;
  if (isRestoringToSameDevice)
  {
    v48 = @"same device";
  }

  else
  {
    productType = [properties productType];
    deviceID = [properties deviceID];
    v48 = [NSString stringWithFormat:@"%@ (%@ %@)", deviceName, productType, deviceID];
  }

  buildVersion = [properties buildVersion];
  date = [properties date];
  shouldPreserveSettings = [settingsContext shouldPreserveSettings];
  wasPasscodeSet = [properties wasPasscodeSet];
  isServiceEngine = [engineCopy isServiceEngine];
  isDeviceTransferEngine = [engineCopy isDeviceTransferEngine];
  v46 = engineCopy;
  if (isDeviceTransferEngine)
  {
    isDriveEngine = 0;
  }

  else
  {
    isDriveEngine = [engineCopy isDriveEngine];
  }

  buildVersion2 = [properties buildVersion];
  productType2 = [properties productType];
  v45 = settingsContext;
  if (isDeviceTransferEngine)
  {
    if (isServiceEngine)
    {
      __assert_rtn("[MBDataMigratorPlugin _setDMContextWithPolicy:engine:]", "MBDataMigratorPlugin.m", 120, "!restoredFromCloudBackup");
    }

    if (isDriveEngine)
    {
      __assert_rtn("[MBDataMigratorPlugin _setDMContextWithPolicy:engine:]", "MBDataMigratorPlugin.m", 121, "!restoredFromiTunesBackup");
    }

    v19 = [NSString stringWithFormat:@"Restored from a %@ backup of %@ created using %@ at %@", @"D2D", v48, buildVersion, date];
  }

  else
  {
    if ((isServiceEngine & isDriveEngine) == 1)
    {
      __assert_rtn("[MBDataMigratorPlugin _setDMContextWithPolicy:engine:]", "MBDataMigratorPlugin.m", 129, "!restoredFromCloudBackup || !restoredFromiTunesBackup");
    }

    v40 = isRestoringToSameDevice;
    v20 = policyCopy;
    v21 = shouldPreserveSettings;
    if (isServiceEngine)
    {
      v22 = wasPasscodeSet;
      v23 = @"iCloud";
    }

    else
    {
      if (!isDriveEngine)
      {
        goto LABEL_38;
      }

      v22 = wasPasscodeSet;
      encrypted = [properties encrypted];
      v25 = @"unencrypted";
      if (encrypted)
      {
        v25 = @"encrypted";
      }

      v23 = [NSString stringWithFormat:@"%@ iTunes", v25];
      if (!v23)
      {
LABEL_38:
        __assert_rtn("[MBDataMigratorPlugin _setDMContextWithPolicy:engine:]", "MBDataMigratorPlugin.m", 138, "backupType");
      }
    }

    v26 = [NSString stringWithFormat:@"Restored from an %@ backup of %@ created using %@ at %@", v23, v48, buildVersion, date];

    v19 = v26;
    wasPasscodeSet = v22;
    shouldPreserveSettings = v21;
    policyCopy = v20;
    isRestoringToSameDevice = v40;
  }

  if (!v19)
  {
    __assert_rtn("[MBDataMigratorPlugin _setDMContextWithPolicy:engine:]", "MBDataMigratorPlugin.m", 141, "reason");
  }

  v39 = buildVersion;
  v41 = policyCopy;
  v51[0] = @"Reason";
  v51[1] = @"DidRestoreFromBackup";
  v38 = v19;
  v52[0] = v19;
  v52[1] = &__kCFBooleanTrue;
  v51[2] = @"DidMigrateBackupFromDifferentDevice";
  v27 = [NSNumber numberWithInt:isRestoringToSameDevice ^ 1];
  v52[2] = v27;
  v51[3] = @"ShouldPreserveSettingsAfterRestore";
  v28 = [NSNumber numberWithBool:shouldPreserveSettings];
  v52[3] = v28;
  v51[4] = @"WasPasscodeSetInBackup";
  v29 = [NSNumber numberWithBool:wasPasscodeSet];
  v52[4] = v29;
  v51[5] = @"RestoreFromBackupSourceiTunes";
  v30 = [NSNumber numberWithBool:isDriveEngine];
  v52[5] = v30;
  v51[6] = @"RestoreFromBackupSourceDeviceToDevice";
  v31 = [NSNumber numberWithBool:isDeviceTransferEngine];
  v52[6] = v31;
  v51[7] = @"DidRestoreFromCloudBackup";
  v32 = [NSNumber numberWithBool:isServiceEngine];
  v52[7] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:8];
  v34 = [v33 mutableCopy];

  if (buildVersion2)
  {
    [v34 setObject:buildVersion2 forKeyedSubscript:@"RestoredBackupBuildVersion"];
  }

  if (productType2)
  {
    [v34 setObject:productType2 forKeyedSubscript:@"RestoredBackupProductType"];
  }

  v35 = MBDeviceUUID();
  if (v35)
  {
    [v34 setObject:v35 forKeyedSubscript:@"BackupDeviceUUID"];
  }

  if (v44)
  {
    [v34 setObject:v44 forKeyedSubscript:@"RestoredBackupDeviceName"];
  }

  if (isServiceEngine && [v46 backupPolicy] == 1)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  }

  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v34;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting data migration context: %@", buf, 0xCu);
    _MBLog();
  }

  DMSetContext();
  return 0;
}

- (void)_updateDeviceTransferInfoWithPlist:(id)plist
{
  plistCopy = plist;
  v4 = [MBPersona personalPersonaWithError:0];
  v5 = [v4 copyPreferencesValueForKey:@"DeviceTransferInfo" class:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"RestoreStartDate"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:v8];
        v11 = v10;

        v12 = [NSNumber numberWithLongLong:v11];
        [v7 setObject:v12 forKeyedSubscript:@"RestoreDuration"];
      }
    }

    [plistCopy setObject:v7 forKeyedSubscript:@"DeviceTransferInfo"];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = @"DeviceTransferInfo";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated %{public}@: %@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (id)_updateMobileBackupPreferencesWithEngine:(id)engine
{
  engineCopy = engine;
  v5 = +[NSFileManager defaultManager];
  persona = [engineCopy persona];
  if (!persona)
  {
    __assert_rtn("[MBDataMigratorPlugin _updateMobileBackupPreferencesWithEngine:]", "MBDataMigratorPlugin.m", 197, "persona");
  }

  v7 = persona;
  v71 = persona;
  v72 = engineCopy;
  selfCopy = self;
  if ([engineCopy restoresPrimaryAccount])
  {
    userIncompleteRestoreDirectory = [v7 userIncompleteRestoreDirectory];
    v9 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.apple.MobileBackup.plist"];

    v10 = v9;
    v11 = [NSMutableDictionary dictionaryWithContentsOfFile:v10];
    if (v11)
    {
      v12 = v11;
      v69 = 0;
      v70 = v5;
      v73 = v10;
      v74 = v10;
      goto LABEL_17;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MobileBackup preferences not found in backup at %{public}@", buf, 0xCu);
      v65 = v10;
      _MBLog();
    }

    sharedIncompleteRestoreDirectory = [v7 sharedIncompleteRestoreDirectory];
    v17 = [sharedIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/root/Library/Preferences/com.apple.MobileBackup.plist"];

    v18 = [NSMutableDictionary dictionaryWithContentsOfFile:v17];
    v74 = v17;
    [v5 removeItemAtPath:v17 error:0];
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trying to find MobileBackup preferences at %{public}@", buf, 0xCu);
      v65 = v17;
      _MBLog();
    }

    v12 = v18;
  }

  else
  {
    preferencesDirectory = [v7 preferencesDirectory];
    v14 = [preferencesDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.plist"];

    v12 = [NSMutableDictionary dictionaryWithContentsOfFile:v14];
    v10 = v14;
    v74 = v10;
  }

  v73 = v10;
  if (v12)
  {
    v69 = 0;
    v70 = v5;
  }

  else
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v86 = v74;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MobileBackup preferences not found in backup at %{public}@", buf, 0xCu);
      v65 = v74;
      _MBLog();
    }

    v75 = +[NSMutableDictionary dictionary];
    stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
    v92[0] = NSFileOwnerAccountName;
    v92[1] = NSFileGroupOwnerAccountName;
    v93[0] = @"mobile";
    v93[1] = @"mobile";
    v22 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
    v83 = 0;
    v23 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v22 error:&v83];
    v24 = v83;

    if ((v23 & 1) == 0)
    {
      if ([MBError codeForNSError:v24]!= 3)
      {
        goto LABEL_50;
      }

      v39 = MBGetDefaultLog();
      v40 = v73;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v86 = stringByDeletingLastPathComponent;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Removing existing file at %@", buf, 0xCu);
        v65 = stringByDeletingLastPathComponent;
        _MBLog();
      }

      v82 = v24;
      v41 = [v5 removeItemAtPath:stringByDeletingLastPathComponent error:&v82];
      v42 = v82;

      if ((v41 & 1) == 0)
      {
        v52 = [MBError errorWithCode:1 error:v42 path:stringByDeletingLastPathComponent format:@"Error removing file"];
        v34 = v71;
        v24 = v42;
        goto LABEL_75;
      }

      v90[0] = NSFileOwnerAccountName;
      v90[1] = NSFileGroupOwnerAccountName;
      v91[0] = @"mobile";
      v91[1] = @"mobile";
      v43 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
      v81 = v42;
      v44 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v43 error:&v81];
      v24 = v81;

      if ((v44 & 1) == 0)
      {
LABEL_50:
        v52 = [MBError errorWithCode:1 error:v24 path:stringByDeletingLastPathComponent format:@"Error creating directory", v65];
        v34 = v71;
        v40 = v73;
        goto LABEL_75;
      }
    }

    v70 = v5;

    v69 = v24;
    v12 = v75;
  }

LABEL_17:
  stringByDeletingLastPathComponent = [NSSet setWithObjects:@"DebugContext", @"Options", @"DisabledDomains", @"AllowiTunesBackup", @"EnableBackupScheduling", @"BackupEnabledForMegaBackup", @"SyncSettingsEnabledForMegaBackup", @"BackupDomainsEnabledForMegaBackup", @"EnableBackupOnCellular", @"MegaBackupTurnOnAllAppsSync", @"MegaBackupTurnOniCloudBackup", @"SyncSettingsEnabledForMegaBackup", @"MegaBackupEntryPoint", @"MegaBackupFlowStartDate", @"EnterPrebuddyUIDateDelta", @"InitialMegaBackupStartDateDelta", @"InitialMegaBackupFinishedDateDelta", @"RestoreAfterMegaBackupDateDelta", @"RestoreFinishedAfterMegaBackupDateDelta", @"MegaBackupRefreshDelta", @"PrebuddyFlowStep", @"MegaBackupSourceDeviceUUID", 0];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v75 = v12;
  allKeys = [v12 allKeys];
  v26 = [allKeys countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v78;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v78 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v77 + 1) + 8 * i);
        v31 = [stringByDeletingLastPathComponent containsObject:{v30, v66}];
        v32 = MBGetDefaultLog();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *buf = 138543362;
            v86 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Restoring MobileBackup preference: %{public}@", buf, 0xCu);
            v66 = v30;
            _MBLog();
          }
        }

        else
        {
          if (v33)
          {
            *buf = 138543362;
            v86 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Not restoring MobileBackup preference: %{public}@", buf, 0xCu);
            v66 = v30;
            _MBLog();
          }

          [v75 removeObjectForKey:v30];
        }
      }

      v27 = [allKeys countByEnumeratingWithState:&v77 objects:v89 count:16];
    }

    while (v27);
  }

  engineCopy = v72;
  v34 = v71;
  if ([v72 isCloudKitEngine])
  {
    if ([v72 conformsToProtocol:&OBJC_PROTOCOL___MBHasServiceAccount])
    {
      serviceAccount = [v72 serviceAccount];

      if (serviceAccount)
      {
        if ([v72 restoresPrimaryAccount])
        {
          userIncompleteRestoreDirectory2 = [v71 userIncompleteRestoreDirectory];
          skippedFileRecordsPlistPath = [v71 skippedFileRecordsPlistPath];
          skippedFileRecordsPlistPath2 = [userIncompleteRestoreDirectory2 stringByAppendingPathComponent:skippedFileRecordsPlistPath];
        }

        else
        {
          skippedFileRecordsPlistPath2 = [v71 skippedFileRecordsPlistPath];
        }

        if ([v70 fileExistsAtPath:{skippedFileRecordsPlistPath2, v66}])
        {
          v45 = MBGetDefaultLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v86 = skippedFileRecordsPlistPath2;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Copying skipped file records plist (%@) to preferences", buf, 0xCu);
            v67 = skippedFileRecordsPlistPath2;
            _MBLog();
          }

          v46 = skippedFileRecordsPlistPath2;
          v47 = [NSData dataWithContentsOfFile:v46];
          if (v47)
          {
            v84 = 0;
            v48 = [NSPropertyListSerialization propertyListWithData:v47 options:0 format:0 error:&v84];
            v49 = v84;
            v50 = v49;
            if (!v48 || v49)
            {
              v53 = MBGetDefaultLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v86 = v50;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "NSPropertyListSerialization failed %@", buf, 0xCu);
                v67 = v50;
                _MBLog();
              }

              v51 = 0;
            }

            else
            {
              v51 = v48;
            }
          }

          else
          {
            v50 = MBGetDefaultLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v86 = v46;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "dataWithContentsOfFile returned nil for path %@", buf, 0xCu);
              v67 = v46;
              _MBLog();
            }

            v51 = 0;
          }

          if (v51)
          {
            [v75 setObject:v51 forKeyedSubscript:@"RestoredFilesSkippedFromBackup"];
          }

          v76 = 0;
          v54 = [v70 removeItemAtPath:v46 error:{&v76, v67}];
          v55 = v76;
          if ((v54 & 1) == 0)
          {
            v56 = MBGetDefaultLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v86 = v46;
              v87 = 2112;
              v88 = v55;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to remove skipped file records plist %@ %@", buf, 0x16u);
              _MBLog();
            }
          }
        }
      }
    }
  }

  v57 = objc_alloc_init(MBRestoreInfo);
  v58 = +[NSDate date];
  [v57 setDate:v58];

  [v57 setWasCloudRestore:{objc_msgSend(v72, "isServiceEngine")}];
  properties = [v72 properties];
  buildVersion = [properties buildVersion];
  [v57 setBackupBuildVersion:buildVersion];

  v61 = MBBuildVersion();
  [v57 setDeviceBuildVersion:v61];

  dictionaryRepresentation = [v57 dictionaryRepresentation];
  [v75 setObject:dictionaryRepresentation forKeyedSubscript:@"RestoreInfo"];

  v5 = v70;
  if ([v72 isDeviceTransferEngine])
  {
    [(MBDataMigratorPlugin *)selfCopy _updateDeviceTransferInfoWithPlist:v75];
  }

  v63 = MBGetDefaultLog();
  v40 = v73;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v86 = v73;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Writing out trimmed MobileBackup plist at %@", buf, 0xCu);
    _MBLog();
  }

  if ([v75 writeToFile:v73 atomically:1])
  {
    v52 = 0;
  }

  else
  {
    v52 = [MBError errorWithCode:1 path:v74 format:@"Error saving MobileBackup preferences"];
  }

  v24 = v69;
LABEL_75:

  return v52;
}

- (id)_restoreDefaultsWithEngine:(id)engine
{
  engineCopy = engine;
  persona = [engineCopy persona];
  v4 = [persona copyPreferencesValueForKey:@"RestoredDefaults" class:objc_opt_class()];

  if (v4)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = MBError_ptr;
      v28 = v5;
      do
      {
        v10 = 0;
        v30 = v7;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          v12 = [v5 objectForKeyedSubscript:v11];
          v13 = v9[101];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v11 componentsSeparatedByString:@":"];
            v15 = [v14 count];
            v16 = [v14 objectAtIndexedSubscript:0];
            if (v15 == 1)
            {
              v17 = @".GlobalPreferences";
            }

            else
            {
              [v14 objectAtIndexedSubscript:1];
              v16 = v17 = v16;
            }

            v18 = MBGetDefaultLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v36 = v17;
              v37 = 2112;
              v38 = v11;
              v39 = 2112;
              v40 = v12;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restoring default %@ %@ = %@", buf, 0x20u);
              _MBLog();
            }

            persona2 = [engineCopy persona];
            userRestoreDirectory = [persona2 userRestoreDirectory];
            v21 = [userRestoreDirectory stringByAppendingFormat:@"/var/mobile/Library/Preferences/%@.plist", v17];

            v22 = [NSMutableDictionary dictionaryWithContentsOfFile:v21];
            if (!v22)
            {
              v22 = +[NSMutableDictionary dictionary];
            }

            [v22 setObject:v12 forKeyedSubscript:v16];
            [v22 writeToFile:v21 atomically:1];
            fileSystemRepresentation = [v21 fileSystemRepresentation];
            v24 = MBMobileUID();
            v25 = MBMobileUID();
            lchown(fileSystemRepresentation, v24, v25);

            v5 = v28;
            v9 = MBError_ptr;
            v7 = v30;
          }

          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v7);
    }

    v4 = v27;
  }

  return 0;
}

+ (BOOL)setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:(id)account restoreSession:(id)session cloudFormatInfo:(id)info performanceStatistics:(id)statistics backupPolicy:(int64_t)policy error:(id *)error
{
  accountCopy = account;
  sessionCopy = session;
  infoCopy = info;
  statisticsCopy = statistics;
  if (!accountCopy)
  {
    __assert_rtn("+[MBDataMigratorPlugin setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:restoreSession:cloudFormatInfo:performanceStatistics:backupPolicy:error:]", "MBDataMigratorPlugin.m", 344, "account");
  }

  v17 = statisticsCopy;
  persona = [accountCopy persona];
  if ([persona isEnterprisePersona])
  {
    [persona setPreferencesValue:infoCopy forKey:@"RestoreCloudFormatInfo"];
    propertyList = [sessionCopy propertyList];
    [persona setPreferencesValue:propertyList forKey:@"RestoreSession"];

    userIncompleteRestoreDirectory = MBGetDefaultLog();
    if (os_log_type_enabled(userIncompleteRestoreDirectory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, userIncompleteRestoreDirectory, OS_LOG_TYPE_DEFAULT, "Modified MobileBackup preferences at in-place for EDS Background Restore", buf, 2u);
      _MBLog();
    }

    LOBYTE(v21) = 1;
  }

  else
  {
    errorCopy = error;
    v44 = sessionCopy;
    userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
    v42 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.apple.MobileBackup.plist"];
    v22 = objc_opt_new();
    [v22 setObject:v17 forKeyedSubscript:@"ForegroundRestorePerformance"];
    v45 = 0;
    v23 = [persona getBooleanValueForKey:@"UseInheritBackupEndpoint" keyExists:&v45];
    if (v45)
    {
      v24 = [NSNumber numberWithUnsignedChar:v23];
      [v22 setObject:v24 forKeyedSubscript:@"UseInheritBackupEndpoint"];
    }

    v43 = v17;
    v45 = 0;
    v25 = [persona getBooleanValueForKey:@"BackgroundRestoreTimeoutTTRInterval" keyExists:&v45];
    if (v45)
    {
      v26 = [NSNumber numberWithInteger:v25];
      [v22 setObject:v26 forKeyedSubscript:@"BackgroundRestoreTimeoutTTRInterval"];
    }

    v27 = [persona copyPreferencesValueForKey:@"ForegroundRestoreCellularAccess" class:objc_opt_class()];
    if (v27)
    {
      [v22 setObject:v27 forKeyedSubscript:@"ForegroundRestoreCellularAccess"];
    }

    v28 = [persona copyPreferencesValueForKey:@"BackgroundRestoreCellularAccess" class:objc_opt_class()];

    if (v28)
    {
      [v22 setObject:v28 forKeyedSubscript:@"BackgroundRestoreCellularAccess"];
    }

    if (policy == 1)
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Set restored device in mega backup mode.", buf, 2u);
        _MBLog();
      }

      [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsMegaBackupMode"];
      v30 = [persona copyPreferencesValueForKey:@"MegaBackupFlowStartDate" class:objc_opt_class()];
      v31 = [persona copyPreferencesValueForKey:@"RestoreFinishedAfterMegaBackupDateDelta" class:objc_opt_class()];
      v32 = v31;
      if (v30 && !v31)
      {
        v33 = +[NSDate now];
        [v33 timeIntervalSinceDate:v30];
        v35 = [NSNumber numberWithInt:v34];
        [persona setPreferencesValue:v35 forKey:@"RestoreFinishedAfterMegaBackupDateDelta"];
      }

      v36 = +[MBCKManager sharedInstance];
      [v36 submitMegaLifeCycleTelemetriesWithAccount:accountCopy];
    }

    [v22 setObject:infoCopy forKeyedSubscript:@"RestoreCloudFormatInfo"];
    sessionCopy = v44;
    propertyList2 = [v44 propertyList];
    [v22 setObject:propertyList2 forKeyedSubscript:@"RestoreSession"];

    v38 = +[NSFileManager defaultManager];
    v21 = [v38 mb_savePlistAtPath:v42 addingItems:v22 removing:&off_1003E2270 error:errorCopy];

    v17 = v43;
    if (v21)
    {
      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v42;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Modified restored MobileBackup preferences at %@ for Background Restore", buf, 0xCu);
        _MBLog();
      }

      sessionCopy = v44;
    }
  }

  return v21;
}

@end