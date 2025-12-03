@interface PSDSyncStateManager
+ (id)sharedSyncStateManager;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PSDSyncStateManager)init;
- (id)_queue_deviceSyncStateEntryForPairingID:(id)d;
- (id)domainAccessorForPairingID:(id)d;
- (id)isInitialSyncCompleteForPairingID:(id)d;
- (id)isSyncCompleteForPairingID:(id)d;
- (id)syncStatePersistentURL;
- (void)_loadLegacySyncStateAndMigrateIfNeeded;
- (void)_queue_tellRemoteObserversDidCompleteSyncForPairingID:(id)d;
- (void)_updateMigrationCounter;
- (void)connectionInterrupted:(id)interrupted;
- (void)requestDeviceSyncStateEntriesForPairingIDs:(id)ds completion:(id)completion;
- (void)setSyncCompleteForPairingID:(id)d withBlock:(id)block;
- (void)setupListener;
@end

@implementation PSDSyncStateManager

+ (id)sharedSyncStateManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000097F0;
  block[3] = &unk_10002C778;
  block[4] = self;
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
    getPairedDevices = [v8 getPairedDevices];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = getPairedDevices;
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

          pairingID = [*(*(&v20 + 1) + 8 * v14) pairingID];
          v16 = [(PSDSyncStateManager *)v2 isSyncCompleteForPairingID:pairingID];

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
  pairingID = [v5 pairingID];

  if (pairingID)
  {
    uUIDString = [pairingID UUIDString];
    v8 = +[PSYRegistrySingleton registry];
    v9 = [v8 deviceForPairingID:pairingID];

    v28 = v9;
    v10 = [v9 valueForProperty:PDRDevicePropertyKeyMigrationCount];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue]);
    stringValue = [v11 stringValue];

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

    v23 = [v19 objectForKeyedSubscript:uUIDString];
    v24 = [stringValue isEqual:v23];

    if ((v24 & 1) == 0)
    {
      [v19 setObject:stringValue forKeyedSubscript:uUIDString];
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
    uUIDString = psd_log();
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "Not updating because no active paired device", buf, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)setSyncCompleteForPairingID:(id)d withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v8 = +[PSYRegistrySingleton registry];
  v9 = [v8 deviceForPairingID:dCopy];

  isPaired = [v9 isPaired];
  isAltAccount = [v9 isAltAccount];
  v12 = psd_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

  if ((isAltAccount & 1) != 0 || !isPaired)
  {
    if (v13)
    {
      v16 = psd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001AF50(v16);
      }
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    if (v13)
    {
      v14 = psd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001AED8(dCopy, v14);
      }
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F54;
    block[3] = &unk_10002C908;
    v18 = dCopy;
    selfCopy = self;
    v20 = blockCopy;
    dispatch_async(queue, block);
  }
}

- (id)isSyncCompleteForPairingID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A278;
  v17 = sub_10000A288;
  v18 = 0;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A290;
    block[3] = &unk_10002C7C8;
    block[4] = self;
    v11 = dCopy;
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

- (id)isInitialSyncCompleteForPairingID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A278;
  v17 = sub_10000A288;
  v18 = 0;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A438;
    block[3] = &unk_10002C7C8;
    block[4] = self;
    v11 = dCopy;
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

- (id)_queue_deviceSyncStateEntryForPairingID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_syncStateCache objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    v6 = [(PSDSyncStateManager *)self domainAccessorForPairingID:dCopy];
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

      [v5 setPairingID:dCopy];
      [(NSMutableDictionary *)self->_syncStateCache setObject:v5 forKeyedSubscript:dCopy];
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
          sub_10001B028(dCopy);
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)domainAccessorForPairingID:(id)d
{
  dCopy = d;
  v4 = +[PSYRegistrySingleton registry];
  v5 = [v4 deviceForPairingID:dCopy];

  pairingStorePath = [v5 pairingStorePath];
  v7 = pairingStorePath;
  if (v5)
  {
    v8 = pairingStorePath == 0;
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
    v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync" pairingID:dCopy pairingDataStore:pairingStorePath];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v8 = PSYSyncStateProviderXPCInterface();
  [connectionCopy setExportedInterface:v8];

  v9 = PSYSyncStateObserverXPCInterface();
  [connectionCopy setRemoteObjectInterface:v9];

  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A95C;
  v19[3] = &unk_10002CA90;
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &location);
  [connectionCopy setInterruptionHandler:v19];
  queue = self->_queue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000A9C0;
  v16 = &unk_10002C8B8;
  selfCopy = self;
  v11 = connectionCopy;
  v18 = v11;
  dispatch_sync(queue, &v13);
  [v11 resume];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)connectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AA64;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = interruptedCopy;
  v6 = interruptedCopy;
  dispatch_async(queue, v7);
}

- (void)requestDeviceSyncStateEntriesForPairingIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AB34;
  block[3] = &unk_10002C908;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

- (void)_queue_tellRemoteObserversDidCompleteSyncForPairingID:(id)d
{
  dCopy = d;
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

        remoteObjectProxy = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [remoteObjectProxy didUpdateSyncForPairingID:dCopy];

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
  syncStatePersistentURL = [(PSDSyncStateManager *)self syncStatePersistentURL];
  v4 = [NSData dataWithContentsOfURL:syncStatePersistentURL options:0 error:0];
  if (v4)
  {
    [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"PSDDeviceSyncState"];
    v5 = [NSSet setWithObject:objc_opt_class()];
    v6 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v5 withData:v4];

    pairingID = [v6 pairingID];

    if (pairingID && [v6 hasCompletedInitialSync])
    {
      pairingID2 = [v6 pairingID];
      [(PSDSyncStateManager *)self setSyncCompleteForPairingID:pairingID2 withBlock:0];
    }

    v9 = +[NSFileManager defaultManager];
    v15[0] = 0;
    v10 = [v9 removeItemAtURL:syncStatePersistentURL error:v15];
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
          sub_10001B124(syncStatePersistentURL, v11);
        }
      }
    }
  }
}

- (id)syncStatePersistentURL
{
  v2 = +[PSDFileManager defaultManager];
  storageURL = [v2 storageURL];
  v4 = [storageURL URLByAppendingPathComponent:@"/syncState.state"];

  return v4;
}

@end