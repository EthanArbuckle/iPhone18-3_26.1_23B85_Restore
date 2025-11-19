@interface NBServer
+ (id)legacyContactPreferenceKeys;
+ (id)retrieveGizmoWithPairingID:(id)a3;
+ (unint64_t)recursiveDirectorySize:(id)a3;
- (BOOL)isDevice:(id)a3 mirroringDomain:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NBServer)init;
- (void)createLocalBackupForPairingID:(id)a3 completionHandler:(id)a4;
- (void)createManualBackupWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteBackupID:(id)a3 backupType:(unint64_t)a4 completionHandler:(id)a5;
- (void)listBackupsOfType:(unint64_t)a3 timeout:(int64_t)a4 completionHandler:(id)a5;
- (void)migrateBreathePreferences;
- (void)migrateBreathePreferencesFromBackup:(id)a3;
- (void)migrateBreathePreferencesFromDevice:(id)a3;
- (void)migrateFitnessPreferencesFromBackup:(id)a3 device:(id)a4;
- (void)migrateLegacyContactPreferencesFromBackup:(id)a3 device:(id)a4;
- (void)migrateLegacyDigitalTouchPreferencesFromBackup:(id)a3 device:(id)a4;
- (void)restoreFromBackupID:(id)a3 backupType:(unint64_t)a4 forPairingID:(id)a5 completionHandler:(id)a6;
- (void)restoreFromPairingID:(id)a3 forPairingID:(id)a4 completionHandler:(id)a5;
@end

@implementation NBServer

- (NBServer)init
{
  v12.receiver = self;
  v12.super_class = NBServer;
  v2 = [(NBServer *)&v12 init];
  if (v2)
  {
    NBLoggingDaemonObjectInit();
    v3 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launching; NanoBackupDaemon-130 19683", buf, 2u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.nanobackupd", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = v2->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006184;
    block[3] = &unk_10002C7D0;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_vmPressureHandler);
  v3.receiver = self;
  v3.super_class = NBServer;
  [(NBServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "listener: (%p); connection: (%p)", buf, 0x16u);
  }

  v9 = [(__CFString *)v7 valueForEntitlement:@"com.apple.nanobackup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 BOOLValue])
  {
    if (qword_100034AD8 != -1)
    {
      sub_10001D778();
    }

    [(__CFString *)v7 setExportedInterface:qword_100034AE0];
    [(__CFString *)v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006744;
    v13[3] = &unk_10002CAB0;
    objc_copyWeak(&v14, buf);
    [(__CFString *)v7 setInvalidationHandler:v13];
    [(__CFString *)v7 setInterruptionHandler:0];
    [(__CFString *)v7 resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
    v10 = 1;
  }

  else
  {
    v11 = nb_daemon_log;
    v10 = 0;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = @"com.apple.nanobackup";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection (%@) refused; Missing entitlement (%@)", buf, 0x16u);
      v10 = 0;
    }
  }

  return v10;
}

+ (id)retrieveGizmoWithPairingID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = [v4 getAllDevicesWithArchivedDevices];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = NRDevicePropertyPairingID;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 valueForProperty:{v10, v19}];
          if ([v3 isEqual:v13])
          {
            v14 = v12;

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:

    v15 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v3 UUIDString];
      *buf = 134218242;
      v24 = v14;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NanoRegistry returned matching device (%p) for pairingID (%@)", buf, 0x16u);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (unint64_t)recursiveDirectorySize:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v24 = NSURLFileSizeKey;
  v7 = [NSArray arrayWithObjects:&v24 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006C30;
  v22[3] = &unk_10002CAF0;
  v22[4] = a1;
  v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:v22];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        if ([v15 getResourceValue:&v17 forKey:NSURLFileSizeKey error:0])
        {
          v12 += [v17 unsignedLongLongValue];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)listBackupsOfType:(unint64_t)a3 timeout:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_retainBlock(v8);
    *buf = 134217984;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "replyBlock listBackupsOfType: (%p)", buf, 0xCu);
  }

  if (v8)
  {
    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
    v14 = [v12 getAllDevicesWithArchivedAltAccountDevicesMatching:v13];
    v15 = [v14 firstObject];

    v16 = [v15 valueForProperty:NRDevicePropertyIsAltAccount];
    v17 = [v16 BOOLValue];

    v18 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Tinker device is: %d", buf, 8u);
    }

    workQueue = self->_workQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100006F5C;
    v20[3] = &unk_10002CB68;
    v22 = a3;
    v23 = a4;
    v20[4] = self;
    v21 = v8;
    dispatch_async(workQueue, v20);
  }
}

- (void)deleteBackupID:(id)a3 backupType:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 UUIDString];
    v12 = objc_retainBlock(v8);
    *buf = 138412546;
    v24 = v11;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "deleteBackupID - backupID: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000074B0;
  v21[3] = &unk_10002C960;
  v13 = v8;
  v22 = v13;
  v14 = objc_retainBlock(v21);
  if (v7)
  {
    workQueue = self->_workQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000074C8;
    v18[3] = &unk_10002C848;
    v18[4] = self;
    v19 = v7;
    v20 = v14;
    dispatch_async(workQueue, v18);
  }

  else
  {
    v16 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invalid parameters; backupID: (%@)", buf, 0xCu);
    }

    v17 = NBError();
    (v14[2])(v14, v17);
  }
}

- (void)createManualBackupWithCompletion:(id)a3
{
  v4 = a3;
  iCloudBackup = self->_iCloudBackup;
  if (!iCloudBackup)
  {
    v6 = objc_opt_new();
    v7 = self->_iCloudBackup;
    self->_iCloudBackup = v6;

    iCloudBackup = self->_iCloudBackup;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100007A14;
  v9[3] = &unk_10002C960;
  v10 = v4;
  v8 = v4;
  [(NBBackupiCloud *)iCloudBackup createManualBackupWithCompletion:v9];
}

- (void)restoreFromBackupID:(id)a3 backupType:(unint64_t)a4 forPairingID:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v9 UUIDString];
    v15 = [v10 UUIDString];
    v16 = objc_retainBlock(v11);
    *buf = 138412802;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2048;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "backupID: (%@); pairingID: (%@); replyBlock: (%p)", buf, 0x20u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100007CE8;
  v26[3] = &unk_10002C960;
  v17 = v11;
  v27 = v17;
  v18 = objc_retainBlock(v26);
  if (v9 && v10)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007D00;
    block[3] = &unk_10002CC58;
    block[4] = self;
    v23 = v9;
    v25 = v18;
    v24 = v10;
    dispatch_async(workQueue, block);
  }

  else
  {
    v20 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Invalid parameters; backupID: (%@); pairingID: (%@)", buf, 0x16u);
    }

    v21 = NBError();
    (v18[2])(v18, v21);
  }
}

- (void)restoreFromPairingID:(id)a3 forPairingID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 UUIDString];
    v14 = [v9 UUIDString];
    v15 = objc_retainBlock(v10);
    *buf = 138412802;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "existingPairingID: (%@); pairingID: (%@); replyBlock: (%p)", buf, 0x20u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000923C;
  v25[3] = &unk_10002C960;
  v16 = v10;
  v26 = v16;
  v17 = objc_retainBlock(v25);
  if (v8 && v9)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009254;
    block[3] = &unk_10002CCF8;
    block[4] = self;
    v22 = v8;
    v23 = v9;
    v24 = v17;
    dispatch_async(workQueue, block);
  }

  else
  {
    v19 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalid parameters; existingPairingID: (%@); pairingID: (%@)", buf, 0x16u);
    }

    v20 = NBError();
    (v17[2])(v17, v20);
  }
}

- (void)createLocalBackupForPairingID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 UUIDString];
    v11 = objc_retainBlock(v7);
    *buf = 138412546;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pairingID: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000A310;
  v20[3] = &unk_10002C960;
  v12 = v7;
  v21 = v12;
  v13 = objc_retainBlock(v20);
  if (v6)
  {
    workQueue = self->_workQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A330;
    v17[3] = &unk_10002C848;
    v17[4] = self;
    v18 = v6;
    v19 = v12;
    dispatch_async(workQueue, v17);
  }

  else
  {
    v15 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Invalid parameters; pairingID: (%@)", buf, 0xCu);
    }

    v16 = NBError();
    (v13[2])(v13, v16);
  }
}

+ (id)legacyContactPreferenceKeys
{
  if (qword_100034AF0 != -1)
  {
    sub_10001D7A0();
  }

  v3 = qword_100034AE8;

  return v3;
}

- (BOOL)isDevice:(id)a3 mirroringDomain:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.bulletinboard.apps" pairedDevice:v6];

  v8 = [v7 synchronize];
  v9 = [v7 objectForKey:v5];

  v10 = [v9 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
  v11 = [v10 BOOLValue];

  return v11 ^ 1;
}

- (void)migrateLegacyContactPreferencesFromBackup:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 productName];

  if (v8)
  {
    v9 = [v6 productName];
    v10 = [v6 systemVersion];
    NRWatchOSVersion();

    if (NRVersionIsGreaterThanOrEqual())
    {
      goto LABEL_24;
    }

LABEL_5:
    NRWatchOSVersionForRemoteDevice();
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
    v14 = [(NBServer *)self isDevice:v7 mirroringDomain:@"com.apple.PeoplePicker"];
    v15 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.PeoplePicker" pairedDevice:v7];
    v16 = [NPSDomainAccessor alloc];
    v36 = [v16 initWithDomain:NSPersonNameDefaultNamePreferencesDomain pairedDevice:v7];
    if ((IsGreaterThanOrEqual & 1) != 0 || !v14)
    {
      v21 = +[NSMutableDictionary dictionary];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v26 = [objc_opt_class() legacyContactPreferenceKeys];
      v27 = [v26 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v42;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v41 + 1) + 8 * i);
            v32 = [v15 objectForKey:v31];
            if (v32)
            {
              [v21 setObject:v32 forKey:v31];
              if (IsGreaterThanOrEqual)
              {
                [v15 removeObjectForKey:v31];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v28);
      }

      if (![v21 count])
      {
        v7 = v35;
        v25 = v36;
        goto LABEL_23;
      }

      v7 = v35;
      v25 = v36;
      if (IsGreaterThanOrEqual)
      {
        v33 = [v15 synchronize];
      }

      v22 = [NSPersonNameComponentsFormatterPreferences mappedPreferencesForPreferences:v21 from:2 to:0];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10000BE58;
      v39[3] = &unk_10002CDE0;
      v23 = &v40;
      v24 = v36;
      v40 = v24;
      [v22 enumerateKeysAndObjectsUsingBlock:v39];
    }

    else
    {
      v45[0] = NSPersonNameDefaultDisplayNameOrderKey;
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder]);
      v46[0] = v17;
      v45[1] = NSPersonNameDefaultShortNameEnabledKey;
      v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[NSPersonNameComponentsFormatter _shortNameIsEnabled]);
      v46[1] = v18;
      v45[2] = NSPersonNameDefaultShortNameFormatKey;
      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSPersonNameComponentsFormatter _defaultShortNameFormat]);
      v46[2] = v19;
      v45[3] = NSPersonNameDefaultShouldPreferNicknamesKey;
      v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[NSPersonNameComponentsFormatter _shouldPreferNicknames]);
      v46[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];

      v22 = [NSPersonNameComponentsFormatterPreferences mappedPreferencesForPreferences:v21 from:0 to:2];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000BE64;
      v37[3] = &unk_10002CDE0;
      v23 = &v38;
      v24 = v15;
      v38 = v24;
      [v22 enumerateKeysAndObjectsUsingBlock:v37];
      v25 = v36;
    }

    v34 = [v24 synchronize];

LABEL_23:
    goto LABEL_24;
  }

  v11 = [v6 systemBuildVersion];
  v12 = [v11 hasPrefix:@"12S"];

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_24:
}

- (void)migrateLegacyDigitalTouchPreferencesFromBackup:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 productName];

  if (v7)
  {
    v8 = [v5 productName];
    v9 = [v5 systemVersion];
    NRWatchOSVersion();

    if (NRVersionIsGreaterThanOrEqual())
    {
      goto LABEL_29;
    }
  }

  else
  {
    v10 = [v5 systemBuildVersion];
    if ([v10 hasPrefix:@"12S"])
    {
    }

    else
    {
      v11 = [v5 systemBuildVersion];
      v12 = [v11 hasPrefix:@"13S"];

      if (!v12)
      {
        goto LABEL_29;
      }
    }
  }

  NRWatchOSVersionForRemoteDevice();
  if (NRVersionIsGreaterThanOrEqual())
  {
    v13 = CFPreferencesCopyAppValue(@"FriendList", @"com.apple.ET");
    v14 = CFPreferencesCopyAppValue(@"ETFriendGroupTitles", @"com.apple.ET");
    keyExistsAndHasValidFormat = 0;
    CFPreferencesGetAppBooleanValue(@"DidNormalizeFriendListDestinations", @"com.apple.ET", &keyExistsAndHasValidFormat);
    v15 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.ET" pairedDevice:v6];
    v16 = [v15 arrayForKey:@"FriendList"];
    v17 = [v15 arrayForKey:@"ETFriendGroupTitles"];
    v25 = 0;
    v23 = [v15 BOOLForKey:@"DidNormalizeFriendListDestinations" keyExistsAndHasValidFormat:&v25];
    v24 = v13;
    v18 = 0;
    if (![v13 count])
    {
      v18 = [v16 count] != 0;
    }

    if ([v14 count])
    {
      v19 = 0;
    }

    else
    {
      v19 = [v17 count] != 0;
    }

    v20 = (keyExistsAndHasValidFormat == 0) & v25;
    if (v18)
    {
      CFPreferencesSetAppValue(@"FriendList", v16, @"com.apple.ET");
    }

    if (v19)
    {
      CFPreferencesSetAppValue(@"ETFriendGroupTitles", v17, @"com.apple.ET");
    }

    if (v20)
    {
      v21 = &kCFBooleanTrue;
      if (!v23)
      {
        v21 = &kCFBooleanFalse;
      }

      CFPreferencesSetAppValue(@"DidNormalizeFriendListDestinations", *v21, @"com.apple.ET");
    }

    if ((((v18 || v19) | v20) & 1) == 0 || CFPreferencesAppSynchronize(@"com.apple.ET") != 1)
    {
      goto LABEL_28;
    }

    if (v18)
    {
      [v15 removeObjectForKey:@"FriendList"];
      if (!v19)
      {
LABEL_25:
        if (!v20)
        {
LABEL_27:
          v22 = [v15 synchronize];
LABEL_28:

          goto LABEL_29;
        }

LABEL_26:
        [v15 removeObjectForKey:@"DidNormalizeFriendListDestinations"];
        goto LABEL_27;
      }
    }

    else if (!v19)
    {
      goto LABEL_25;
    }

    [v15 removeObjectForKey:@"ETFriendGroupTitles"];
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_29:
}

- (void)migrateFitnessPreferencesFromBackup:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 productName];

  if (v7)
  {
    v8 = [v5 productName];
    v9 = [v5 systemVersion];
    NRWatchOSVersion();

    if (NRVersionIsGreaterThanOrEqual())
    {
      goto LABEL_25;
    }
  }

  else
  {
    v10 = [v5 systemBuildVersion];
    if ([v10 hasPrefix:@"12S"])
    {
    }

    else
    {
      v11 = [v5 systemBuildVersion];
      v12 = [v11 hasPrefix:@"13S"];

      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  NRWatchOSVersionForRemoteDevice();
  if (NRVersionIsGreaterThanOrEqual())
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesGetAppBooleanValue(@"EnableHeartRate", @"com.apple.nanolifestyle.privacy", &keyExistsAndHasValidFormat);
    CFPreferencesGetAppBooleanValue(@"EnableFitnessTracking", @"com.apple.nanolifestyle.privacy", &keyExistsAndHasValidFormat);
    v13 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanolifestyle.privacy" pairedDevice:v6];
    v23 = 0;
    v14 = [v13 BOOLForKey:@"EnableHeartRate" keyExistsAndHasValidFormat:&v23];
    v22 = 0;
    v15 = [v13 BOOLForKey:@"EnableFitnessTracking" keyExistsAndHasValidFormat:&v22];
    v16 = (keyExistsAndHasValidFormat == 0) & v23;
    v17 = v22;
    if (v16 == 1)
    {
      if (v14)
      {
        v18 = &kCFBooleanTrue;
      }

      else
      {
        v18 = &kCFBooleanFalse;
      }

      CFPreferencesSetAppValue(@"EnableHeartRate", *v18, @"com.apple.nanolifestyle.privacy");
      if ((v17 & 1) == 0)
      {
        if (CFPreferencesAppSynchronize(@"com.apple.nanolifestyle.privacy") == 1)
        {
          v19 = @"EnableHeartRate";
LABEL_23:
          [v13 removeObjectForKey:v19];
          v21 = [v13 synchronize];
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    else if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v15)
    {
      v20 = &kCFBooleanTrue;
    }

    else
    {
      v20 = &kCFBooleanFalse;
    }

    CFPreferencesSetAppValue(@"EnableFitnessTracking", *v20, @"com.apple.nanolifestyle.privacy");
    if (CFPreferencesAppSynchronize(@"com.apple.nanolifestyle.privacy") != 1)
    {
      goto LABEL_24;
    }

    if (v16)
    {
      [v13 removeObjectForKey:@"EnableHeartRate"];
    }

    v19 = @"EnableFitnessTracking";
    goto LABEL_23;
  }

LABEL_25:
}

- (void)migrateBreathePreferencesFromBackup:(id)a3
{
  v10 = a3;
  v4 = [v10 productName];

  if (!v4)
  {
    v7 = [v10 systemBuildVersion];
    if ([v7 hasPrefix:@"12S"])
    {
    }

    else
    {
      v8 = [v10 systemBuildVersion];
      v9 = [v8 hasPrefix:@"13S"];

      if (!v9)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  v5 = [v10 productName];
  v6 = [v10 systemVersion];
  NRWatchOSVersion();

  if ((NRVersionIsGreaterThanOrEqual() & 1) == 0)
  {
LABEL_7:
    [(NBServer *)self migrateBreathePreferences];
  }

LABEL_8:
}

- (void)migrateBreathePreferencesFromDevice:(id)a3
{
  v4 = a3;
  v5 = [[NSUUID alloc] initWithUUIDString:@"2A51E7B3-1B80-4981-9F09-F725BC3A8065"];
  v6 = [v4 supportsCapability:v5];

  if ((v6 & 1) == 0)
  {

    [(NBServer *)self migrateBreathePreferences];
  }
}

- (void)migrateBreathePreferences
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.bulletinboard.apps"];
  v3 = [v2 dictionaryForKey:@"com.apple.DeepBreathing"];
  v4 = [v3 mutableCopy];

  v5 = [v2 dictionaryForKey:@"com.apple.Mind"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [v4 setObject:@"com.apple.Mind" forKeyedSubscript:@"BPSNanoBulletinSectionId"];
    [v2 setObject:v4 forKey:@"com.apple.Mind"];
    [v2 removeObjectForKey:@"com.apple.DeepBreathing"];
    v8 = [v2 synchronize];
    v9 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating Breathe notification settings %@", buf, 0xCu);
    }
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppIntegerValue(@"RemindersPerDay", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) <= 0)
  {
    v10 = kCFBooleanFalse;
  }

  else
  {
    v10 = kCFBooleanTrue;
  }

  v27 = 0;
  CFPreferencesGetAppBooleanValue(@"EnableStartOfDayReminder", @"com.apple.Mind", &v27);
  if (keyExistsAndHasValidFormat && !v27)
  {
    v11 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating mindfulness start of day reminder %@", buf, 0xCu);
    }

    CFPreferencesSetAppValue(@"EnableStartOfDayReminder", v10, @"com.apple.Mind");
  }

  v26 = 0;
  CFPreferencesGetAppBooleanValue(@"EnableEndOfDayReminder", @"com.apple.Mind", &v26);
  if (keyExistsAndHasValidFormat && !v26)
  {
    v12 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Migrating mindfulness end of day reminder %@", buf, 0xCu);
    }

    CFPreferencesSetAppValue(@"EnableEndOfDayReminder", v10, @"com.apple.Mind");
  }

  v25 = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableWeeklySummary", @"com.apple.DeepBreathing", &v25);
  v24 = 0;
  CFPreferencesGetAppBooleanValue(@"EnableWeeklySummary", @"com.apple.Mind", &v24);
  if (v25 && !v24)
  {
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = AppBooleanValue;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating mindfulness weekly summary enabled %{BOOL}d", buf, 8u);
    }

    if (AppBooleanValue)
    {
      v15 = kCFBooleanTrue;
    }

    else
    {
      v15 = kCFBooleanFalse;
    }

    CFPreferencesSetAppValue(@"EnableWeeklySummary", v15, @"com.apple.Mind");
  }

  v23 = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BreathRate", @"com.apple.DeepBreathing", &v23);
  v22 = 0;
  CFPreferencesGetAppIntegerValue(@"BreathRate", @"com.apple.Mind", &v22);
  if (v23 && !v22)
  {
    v17 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = AppIntegerValue;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Migrating mindfulness breath rate %d", buf, 8u);
    }

    CFPreferencesSetAppValue(@"BreathRate", [NSNumber numberWithInteger:AppIntegerValue], @"com.apple.Mind");
  }

  v21 = 0;
  v18 = CFPreferencesGetAppIntegerValue(@"HapticLevel", @"com.apple.DeepBreathing", &v21);
  v20 = 0;
  CFPreferencesGetAppIntegerValue(@"HapticLevel", @"com.apple.Mind", &v20);
  if (v21 && !v20)
  {
    v19 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Migrating mindfulness haptic level %d", buf, 8u);
    }

    CFPreferencesSetAppValue(@"HapticLevel", [NSNumber numberWithInteger:v18], @"com.apple.Mind");
  }

  CFPreferencesAppSynchronize(@"com.apple.Mind");
}

@end