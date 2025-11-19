@interface NBiCloudBackupManager
+ (BOOL)isDataProtectionError:(id)a3;
- (BOOL)_shouldCreateDaily:(id)a3;
- (BOOL)_shouldCreateMonthly:(id)a3;
- (BOOL)_shouldCreateWeekly:(id)a3;
- (NBiCloudBackupManager)init;
- (id)_NBBackupFromNBBackupiCloudModel:(id)a3;
- (id)_getGestaltNumber:(__CFString *)a3;
- (id)_getGestaltString:(__CFString *)a3;
- (id)connection;
- (id)dateFromPast:(unint64_t)a3 months:(unint64_t)a4 days:(unint64_t)a5 hours:(unint64_t)a6 seconds:(unint64_t)a7;
- (id)tempDirString;
- (void)_configureStoreDescriptions;
- (void)_determineBackupToCreateFromBackupList:(id)a3 withCompletion:(id)a4;
- (void)_initCoreData;
- (void)_prune:(id)a3;
- (void)_pruneBackups:(id)a3 backupsToKeep:(unint64_t)a4 withPruneAction:(id)a5;
- (void)_seperateBackupListsByType:(id)a3 withCompletion:(id)a4;
- (void)backupForID:(id)a3 completion:(id)a4;
- (void)backupList:(id)a3;
- (void)backupPayloadForID:(id)a3 completion:(id)a4;
- (void)createBackupsAndPruneAtDate:(id)a3 withPayload:(id)a4 completion:(id)a5;
- (void)createInitialBackup:(id)a3;
- (void)createManualBackup:(id)a3;
- (void)dealloc;
- (void)deleteAllBackupsWithCompletion:(id)a3;
- (void)getBackupsWithCompletion:(id)a3;
- (void)getFaceSanpshotWithCompletionHandler:(id)a3;
- (void)injectBackups:(int)a3 completion:(id)a4;
- (void)removeBackupWithID:(id)a3 withCompletion:(id)a4;
- (void)removeBackups:(id)a3;
- (void)requestExportWithCompletion:(id)a3;
- (void)requestImportWithCompletion:(id)a3;
@end

@implementation NBiCloudBackupManager

- (NBiCloudBackupManager)init
{
  v16.receiver = self;
  v16.super_class = NBiCloudBackupManager;
  v2 = [(NBiCloudBackupManager *)&v16 init];
  v3 = [(NBiCloudBackupManager *)v2 _getGestaltString:@"SerialNumber"];
  serialNumber = v2->_serialNumber;
  v2->_serialNumber = v3;

  NBLoggingDaemonObjectInit();
  v5 = dispatch_queue_create("com.apple.nanobackup.iCloud", 0);
  icloudQueue = v2->_icloudQueue;
  v2->_icloudQueue = v5;

  v7 = dispatch_queue_create("com.apple.nanobackup.ntkQueue", 0);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v7;

  out_token = 0;
  if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1)
  {
    [(NBiCloudBackupManager *)v2 _initCoreData];
  }

  else
  {
    v9 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Can't init coredata, not past first unlock", buf, 2u);
    }

    v10 = dispatch_get_global_queue(25, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100013934;
    handler[3] = &unk_10002D070;
    v13 = v2;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v10, handler);
  }

  return v2;
}

- (void)dealloc
{
  [(NBiCloudBackupManager *)self setPersistentContainer:0];
  v3.receiver = self;
  v3.super_class = NBiCloudBackupManager;
  [(NBiCloudBackupManager *)&v3 dealloc];
}

- (void)createBackupsAndPruneAtDate:(id)a3 withPayload:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "create in create - DLog", buf, 2u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013B34;
  v15[3] = &unk_10002D110;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [(NBiCloudBackupManager *)self getBackupsWithCompletion:v15];
}

- (void)backupPayloadForID:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014304;
  v6[3] = &unk_10002D138;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(NBiCloudBackupManager *)v7 backupForID:a3 completion:v6];
}

- (void)_prune:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100014628;
  v3[3] = &unk_10002D188;
  v3[4] = self;
  [(NBiCloudBackupManager *)self _seperateBackupListsByType:a3 withCompletion:v3];
}

- (id)_getGestaltString:(__CFString *)a3
{
  v3 = MGCopyAnswer();

  return v3;
}

- (id)_getGestaltNumber:(__CFString *)a3
{
  v3 = MGCopyAnswer();

  return v3;
}

- (id)tempDirString
{
  v2 = NSTemporaryDirectory();
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringByAppendingPathComponent:v4];

  v6 = +[NSFileManager defaultManager];
  LOBYTE(v3) = [v6 fileExistsAtPath:v5];

  if ((v3 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v12 = 0, [v7 createDirectoryAtPath:v5 withIntermediateDirectories:0 attributes:0 error:&v12], v8 = v12, v7, !v8))
  {
    v10 = v5;
  }

  else
  {
    v9 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error creating temp directory: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)getFaceSanpshotWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_retainBlock(v4);
    *buf = 134217984;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "replyBlock(getFaceSanpshotWithCompletionHandler): (%p)", buf, 0xCu);
  }

  if (!v4)
  {
    [NSException raise:NSInvalidArgumentException format:@"nil replyBlock"];
  }

  objc_initWeak(&location, self);
  v8 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&location);
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "weakSelf: %@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014CDC;
  block[3] = &unk_10002D200;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  v12 = v4;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)connection
{
  ntkXpcConnection = self->_ntkXpcConnection;
  if (!ntkXpcConnection)
  {
    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.nanotimekit.facesnapshotserver" options:4096];
    v5 = self->_ntkXpcConnection;
    self->_ntkXpcConnection = v4;

    if (qword_100034AF8 != -1)
    {
      sub_10001D7B4();
    }

    [(NSXPCConnection *)self->_ntkXpcConnection setRemoteObjectInterface:qword_100034B00];
    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_ntkXpcConnection setInterruptionHandler:&stru_10002D240];
    v6 = self->_ntkXpcConnection;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100015544;
    v11 = &unk_10002CAB0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v8];
    [(NSXPCConnection *)self->_ntkXpcConnection resume:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    ntkXpcConnection = self->_ntkXpcConnection;
  }

  return ntkXpcConnection;
}

- (void)backupList:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000156C8;
  v4[3] = &unk_10002C7F8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NBiCloudBackupManager *)v5 getBackupsWithCompletion:v4];
}

- (void)deleteAllBackupsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000158D4;
  v4[3] = &unk_10002D268;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NBiCloudBackupManager *)v5 getBackupsWithCompletion:v4];
}

- (id)_NBBackupFromNBBackupiCloudModel:(id)a3
{
  v3 = a3;
  v4 = [v3 backupMetaData];
  v16 = 0;
  v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_NBBackupFromNBBackupiCloudModel failed with error: %@ - %@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v5 finishDecoding];
    v9 = [NSUUID alloc];
    v10 = [v3 backupID];
    v11 = [v9 initWithUUIDString:v10];
    [v8 setUuid:v11];

    v12 = [v3 payload];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 length]);
    [v8 setSizeInBytes:v13];

    v14 = [v3 dateCreated];
    [v8 setLastModificationDate:v14];
  }

  return v8;
}

- (void)_pruneBackups:(id)a3 backupsToKeep:(unint64_t)a4 withPruneAction:(id)a5
{
  v13 = a3;
  v7 = a5;
  if ([v13 count] > a4)
  {
    v8 = [v13 sortedArrayUsingComparator:&stru_10002D2A8];
    if ([v8 count] != a4)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v9];
        v7[2](v7, v11);

        v9 = v10;
      }

      while ([v8 count] - a4 > v10++);
    }
  }
}

- (void)_determineBackupToCreateFromBackupList:(id)a3 withCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015D5C;
  v6[3] = &unk_10002D2D0;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(NBiCloudBackupManager *)v7 _seperateBackupListsByType:a3 withCompletion:v6];
}

- (BOOL)_shouldCreateMonthly:(id)a3
{
  v4 = a3;
  v5 = [(NBiCloudBackupManager *)self sortBackupsByDate:v4];
  v6 = [v5 lastObject];

  v7 = [v4 count];
  if (v7)
  {
    v8 = [v6 dateCreated];
    v9 = objc_alloc_init(NSDateComponents);
    [v9 setMonth:1];
    v10 = +[NSCalendar currentCalendar];
    v11 = [v10 dateByAddingComponents:v9 toDate:v8 options:0];
    v12 = +[NSDate date];
    v13 = [v11 compare:v12];

    v14 = v13 + 1 < 2;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_shouldCreateWeekly:(id)a3
{
  v3 = [(NBiCloudBackupManager *)self sortBackupsByDate:a3];
  v4 = [v3 lastObject];

  v5 = [v4 dateCreated];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:7];
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];
  v9 = +[NSDate date];
  v10 = [v8 compare:v9];

  return v10 + 1 < 2;
}

- (BOOL)_shouldCreateDaily:(id)a3
{
  v3 = [(NBiCloudBackupManager *)self sortBackupsByDate:a3];
  v4 = [v3 lastObject];

  v5 = [v4 dateCreated];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:1];
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];
  v9 = +[NSDate date];
  v10 = [v8 compare:v9];

  return v10 + 1 < 2;
}

- (void)_seperateBackupListsByType:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v19 = a4;
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  v6 = objc_opt_new();
  v20 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = MGCopyAnswer();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 serialNumber];
        v16 = [v15 isEqualToString:v8];

        v17 = v7;
        if (!v16)
        {
          goto LABEL_14;
        }

        v18 = [v14 backupType];
        if (v18 > 2)
        {
          v17 = v6;
          if (v18 != 3)
          {
            if (v18 != 4)
            {
              continue;
            }

            v17 = v20;
          }

LABEL_14:
          [v17 addObject:v14];
          continue;
        }

        v17 = v22;
        if (v18 == 1)
        {
          goto LABEL_14;
        }

        v17 = v21;
        if (v18 == 2)
        {
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19[2](v19, v22, v21, v6, v20, v7);
}

- (void)removeBackups:(id)a3
{
  v4 = a3;
  v5 = [(NSPersistentContainer *)self->_persistentContainer viewContext];
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting records: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 deleteObject:*(*(&v16 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = 0;
  v12 = [v5 save:&v15];
  v13 = v15;
  if ((v12 & 1) == 0)
  {
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting records failed: %@", buf, 0xCu);
    }
  }
}

- (void)removeBackupWithID:(id)a3 withCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000166A8;
  v6[3] = &unk_10002D318;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(NBiCloudBackupManager *)v7 backupForID:a3 completion:v6];
}

- (void)createInitialBackup:(id)a3
{
  v4 = a3;
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device paired, creating initial backup", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016A68;
  v7[3] = &unk_10002D268;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NBiCloudBackupManager *)self getBackupsWithCompletion:v7];
}

- (void)createManualBackup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016EF0;
  v6[3] = &unk_10002D368;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(NBiCloudBackupManager *)self saveBackup:3 withDate:0 payload:0 withCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)getBackupsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017324;
  v4[3] = &unk_10002D390;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NBiCloudBackupManager *)v5 requestImportWithCompletion:v4];
}

- (void)backupForID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Import for backupForID", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017688;
  v11[3] = &unk_10002D3B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NBiCloudBackupManager *)self requestImportWithCompletion:v11];
}

- (void)requestExportWithCompletion:(id)a3
{
  v4 = a3;
  icloudQueue = self->_icloudQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017A9C;
  v7[3] = &unk_10002C740;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(icloudQueue, v7);
}

- (void)requestImportWithCompletion:(id)a3
{
  v4 = a3;
  icloudQueue = self->_icloudQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017CDC;
  v7[3] = &unk_10002C740;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(icloudQueue, v7);
}

- (void)_initCoreData
{
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.NanoBackup"];
  v3 = [v7 URLForResource:@"Model" withExtension:@"momd"];
  v4 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v3];
  v5 = [[NSPersistentContainer alloc] initWithName:@"NanoBackup" managedObjectModel:v4];
  [(NBiCloudBackupManager *)self setPersistentContainer:v5];

  [(NBiCloudBackupManager *)self _configureStoreDescriptions];
  v6 = [(NBiCloudBackupManager *)self persistentContainer];
  [v6 loadPersistentStoresWithCompletionHandler:&stru_10002D438];
}

+ (BOOL)isDataProtectionError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  if ([v5 isEqualToString:NSSQLiteErrorDomain])
  {
    v6 = [NSNumber numberWithInteger:v4];
  }

  else
  {
    v7 = [v3 userInfo];
    v6 = [v7 objectForKeyedSubscript:NSSQLiteErrorDomain];
  }

  if ([v5 isEqualToString:NSPOSIXErrorDomain])
  {
    v8 = [NSNumber numberWithInteger:v4];
  }

  else
  {
    v9 = [v3 userInfo];
    v8 = [v9 objectForKeyedSubscript:NSPOSIXErrorDomain];
  }

  v10 = [v6 intValue] == 23 || objc_msgSend(v8, "intValue") == 1;

  return v10;
}

- (void)_configureStoreDescriptions
{
  v3 = +[NSFileManager defaultManager];
  v14 = 0;
  v4 = [v3 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v14];
  v5 = v14;
  v6 = [v4 URLByAppendingPathComponent:@"NanoBackup" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"NanoBackupModel" isDirectory:0];
  v8 = [v7 URLByAppendingPathExtension:@"sqlite"];

  v9 = [[NSPersistentStoreDescription alloc] initWithURL:v8];
  v10 = objc_alloc_init(NSCloudKitMirroringDelegateOptions);
  mirroringOptions = self->_mirroringOptions;
  self->_mirroringOptions = v10;

  [(NSCloudKitMirroringDelegateOptions *)self->_mirroringOptions setContainerIdentifier:@"com.apple.watch.setup"];
  [(NSCloudKitMirroringDelegateOptions *)self->_mirroringOptions setUseDeviceToDeviceEncryption:1];
  v12 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:self->_mirroringOptions];
  [v9 setOption:v12 forMirroringKey:NSPersistentStoreMirroringDelegateOptionKey];
  [v9 setOption:&__NSDictionary0__struct forKey:NSPersistentHistoryTrackingKey];
  v15 = v9;
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  [(NSPersistentContainer *)self->_persistentContainer setPersistentStoreDescriptions:v13];
}

- (id)dateFromPast:(unint64_t)a3 months:(unint64_t)a4 days:(unint64_t)a5 hours:(unint64_t)a6 seconds:(unint64_t)a7
{
  v12 = +[NSDate date];
  v13 = objc_alloc_init(NSDateComponents);
  v14 = v13;
  if (a3)
  {
    [v13 setYear:-a3];
  }

  if (a4)
  {
    [v14 setMonth:-a4];
  }

  if (a5)
  {
    [v14 setDay:-a5];
  }

  if (a6)
  {
    [v14 setHour:-a6];
  }

  if (a7)
  {
    [v14 setSecond:-a7];
  }

  v15 = +[NSCalendar currentCalendar];
  v16 = [v15 dateByAddingComponents:v14 toDate:v12 options:0];

  return v16;
}

- (void)injectBackups:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  testQueue = self->_testQueue;
  if (!testQueue)
  {
    v10 = dispatch_queue_create("com.apple.backuptestqueue", v8);
    v11 = self->_testQueue;
    self->_testQueue = v10;

    testQueue = self->_testQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184C8;
  block[3] = &unk_10002D460;
  v15 = a3;
  block[4] = self;
  v14 = v6;
  v12 = v6;
  dispatch_async(testQueue, block);
}

@end