@interface PSDSyncStateManager
+ (id)sharedSyncStateManager;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PSDSyncStateManager)init;
- (id)_queue_deviceSyncStateEntryForPairingID:(id)a3;
- (id)domainAccessorForPairingID:(id)a3;
- (id)isInitialSyncCompleteForPairingID:(id)a3;
- (id)isSyncCompleteForPairingID:(id)a3;
- (id)syncStatePersistentURL;
- (void)_loadLegacySyncStateAndMigrateIfNeeded;
- (void)_queue_tellRemoteObserversDidCompleteSyncForPairingID:(id)a3;
- (void)_updateMigrationCounter;
- (void)connectionInterrupted:(id)a3;
- (void)requestDeviceSyncStateEntriesForPairingIDs:(id)a3 completion:(id)a4;
- (void)setSyncCompleteForPairingID:(id)a3 withBlock:(id)a4;
- (void)setupListener;
@end

@implementation PSDSyncStateManager

+ (id)sharedSyncStateManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000097F0;
  block[3] = &unk_10002C778;
  block[4] = a1;
  if (qword_100038058 != -1)
  {
    dispatch_once(&qword_100038058, block);
  }

  v2 = qword_100038050;

  return v2;
}

- (PSDSyncStateManager)init
{
  v24.receiver = self;
  v24.super_class = PSDSyncStateManager;
  v2 = [(PSDSyncStateManager *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.pairedsyncd.syncstatemanager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    syncStateCache = v2->_syncStateCache;
    v2->_syncStateCache = v6;

    [(PSDSyncStateManager *)v2 _loadLegacySyncStateAndMigrateIfNeeded];
    v8 = +[PSYRegistrySingleton registry];
    v9 = [v8 getPairedDevices];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * v14) pairingID];
          v16 = [(PSDSyncStateManager *)v2 isSyncCompleteForPairingID:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v17 = objc_alloc_init(NSMutableArray);
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = v17;

    [(PSDSyncStateManager *)v2 setupListener];
  }

  return v2;
}

- (void)_updateMigrationCounter
{
  v2 = psd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating last watch migration counter dictionary.", buf, 2u);
    }
  }

  v5 = +[PSYRegistrySingleton registry];
  v6 = [v5 pairingID];

  if (v6)
  {
    v7 = [v6 UUIDString];
    v8 = +[PSYRegistrySingleton registry];
    v9 = [v8 deviceForPairingID:v6];

    v28 = v9;
    v10 = [v9 valueForProperty:PDRDevicePropertyKeyMigrationCount];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue]);
    v12 = [v11 stringValue];

    v13 = PSYPairedSyncDomainName;
    v14 = CFPreferencesCopyValue(@"pairingIDMigrationCountDictionary", PSYPairedSyncDomainName, @"mobile", kCFPreferencesAnyHost);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 mutableCopy];
    }

    else
    {
      v16 = +[NSMutableDictionary dictionary];
    }

    v19 = v16;
    v20 = psd_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = psd_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_updateMigrationCounter: Reading pairingIDMigrationCountDictionary- Value is %@", buf, 0xCu);
      }
    }

    v23 = [v19 objectForKeyedSubscript:v7];
    v24 = [v12 isEqual:v23];

    if ((v24 & 1) == 0)
    {
      [v19 setObject:v12 forKeyedSubscript:v7];
      v25 = psd_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v27 = psd_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v19;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "_updateMigrationCounter: Updating pairingIDMigrationCountDictionary- Value is %@", buf, 0xCu);
        }
      }

      CFPreferencesSetValue(@"pairingIDMigrationCountDictionary", v19, v13, @"mobile", kCFPreferencesAnyHost);
      CFPreferencesSynchronize(v13, @"mobile", kCFPreferencesAnyHost);
    }

LABEL_23:
    goto LABEL_24;
  }

  v17 = psd_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not updating because no active paired device", buf, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)setSyncCompleteForPairingID:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PSYRegistrySingleton registry];
  v9 = [v8 deviceForPairingID:v6];

  v10 = [v9 isPaired];
  v11 = [v9 isAltAccount];
  v12 = psd_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if ((v11 & 1) != 0 || !v10)
  {
    if (v13)
    {
      v16 = psd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001AF50(v16);
      }
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    if (v13)
    {
      v14 = psd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001AED8(v6, v14);
      }
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F54;
    block[3] = &unk_10002C908;
    v18 = v6;
    v19 = self;
    v20 = v7;
    dispatch_async(queue, block);
  }
}

- (id)isSyncCompleteForPairingID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A278;
  v17 = sub_10000A288;
  v18 = 0;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A290;
    block[3] = &unk_10002C7C8;
    block[4] = self;
    v11 = v4;
    v12 = &v13;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)isInitialSyncCompleteForPairingID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A278;
  v17 = sub_10000A288;
  v18 = 0;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A438;
    block[3] = &unk_10002C7C8;
    block[4] = self;
    v11 = v4;
    v12 = &v13;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_queue_deviceSyncStateEntryForPairingID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_syncStateCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(PSDSyncStateManager *)self domainAccessorForPairingID:v4];
    if (v6)
    {
      v5 = objc_opt_new();
      if ([v6 BOOLForKey:@"hasCompletedInitialSync"])
      {
        v7 = 3;
      }

      else
      {
        v7 = 4;
      }

      [v5 setInitialSyncState:v7];
      [v5 setMigrationIndex:{objc_msgSend(v6, "integerForKey:", @"migrationCount"}];
      v13 = 0;
      [v5 setSyncSwitchIndex:{objc_msgSend(v6, "integerForKey:keyExistsAndHasValidFormat:", @"syncSwitchIndex", &v13)}];
      if ((v13 & 1) == 0)
      {
        v8 = +[PSYRegistrySingleton registry];
        [v5 setSyncSwitchIndex:{objc_msgSend(v8, "switchIndex")}];
      }

      [v5 setPairingID:v4];
      [(NSMutableDictionary *)self->_syncStateCache setObject:v5 forKeyedSubscript:v4];
    }

    else
    {
      v9 = psd_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = psd_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10001B028(v4);
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)domainAccessorForPairingID:(id)a3
{
  v3 = a3;
  v4 = +[PSYRegistrySingleton registry];
  v5 = [v4 deviceForPairingID:v3];

  v6 = [v5 pairingStorePath];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync" pairingID:v3 pairingDataStore:v6];
  }

  return v9;
}

- (void)setupListener
{
  v3 = [NSXPCListener alloc];
  v4 = [v3 initWithMachServiceName:PSYInitialSyncStateMachServiceName];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v6 = self->_listener;

  [(NSXPCListener *)v6 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setExportedObject:self];
  v8 = PSYSyncStateProviderXPCInterface();
  [v7 setExportedInterface:v8];

  v9 = PSYSyncStateObserverXPCInterface();
  [v7 setRemoteObjectInterface:v9];

  objc_initWeak(&location, v7);
  objc_initWeak(&from, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A95C;
  v19[3] = &unk_10002CA90;
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &location);
  [v7 setInterruptionHandler:v19];
  queue = self->_queue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000A9C0;
  v16 = &unk_10002C8B8;
  v17 = self;
  v11 = v7;
  v18 = v11;
  dispatch_sync(queue, &v13);
  [v11 resume];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)connectionInterrupted:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AA64;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)requestDeviceSyncStateEntriesForPairingIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AB34;
  block[3] = &unk_10002C908;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_queue_tellRemoteObserversDidCompleteSyncForPairingID:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_activeConnections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [v10 didUpdateSyncForPairingID:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_loadLegacySyncStateAndMigrateIfNeeded
{
  v3 = [(PSDSyncStateManager *)self syncStatePersistentURL];
  v4 = [NSData dataWithContentsOfURL:v3 options:0 error:0];
  if (v4)
  {
    [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"PSDDeviceSyncState"];
    v5 = [NSSet setWithObject:objc_opt_class()];
    v6 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v5 withData:v4];

    v7 = [v6 pairingID];

    if (v7 && [v6 hasCompletedInitialSync])
    {
      v8 = [v6 pairingID];
      [(PSDSyncStateManager *)self setSyncCompleteForPairingID:v8 withBlock:0];
    }

    v9 = +[NSFileManager defaultManager];
    v15[0] = 0;
    v10 = [v9 removeItemAtURL:v3 error:v15];
    v11 = v15[0];

    if ((v10 & 1) == 0)
    {
      v12 = psd_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = psd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10001B124(v3, v11);
        }
      }
    }
  }
}

- (id)syncStatePersistentURL
{
  v2 = +[PSDFileManager defaultManager];
  v3 = [v2 storageURL];
  v4 = [v3 URLByAppendingPathComponent:@"/syncState.state"];

  return v4;
}

@end