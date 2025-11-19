@interface PSYSyncCoordinator
+ (PSYSyncCoordinator)syncCoordinatorWithServiceName:(id)a3;
+ (id)filteredErrorWithError:(id)a3;
- (BOOL)_pairedSyncFinishedMigrationSyncWithPairingID:(id)a3;
- (BOOL)_pairedSyncFinishedReunionSync;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PSYServiceSyncSession)activeSyncSession;
- (PSYSyncCoordinator)initWithServiceName:(id)a3;
- (PSYSyncCoordinator)initWithServiceName:(id)a3 serviceLookupPath:(id)a4;
- (PSYSyncCoordinatorDelegate)delegate;
- (id)progressHandler;
- (id)syncSessionForOptions:(id)a3 supportsMigrationSync:(BOOL)a4;
- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (unint64_t)_syncRestriction;
- (unint64_t)readNotifyToken:(int)a3;
- (unint64_t)syncRestriction;
- (void)_cleanup;
- (void)_registerMonitorAllNRDevicesForMigrationChanges:(id)a3;
- (void)_syncRestrictionDidUpdate:(id)a3 forServiceName:(id)a4;
- (void)_unregisterNRDeviceMonitors;
- (void)abortSyncWithCompletion:(id)a3;
- (void)beginDryRunSyncWithOptions:(id)a3 completion:(id)a4;
- (void)beginSyncWithOptions:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deviceChanged:(id)a3;
- (void)exitForTestInput:(id)a3;
- (void)invalidateActiveSyncSession;
- (void)performDelegateBlock:(id)a3;
- (void)registry:(id)a3 added:(id)a4;
- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5;
- (void)reportProgress:(double)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)syncDidComplete;
- (void)syncDidCompleteSending;
- (void)syncDidFailWithError:(id)a3;
- (void)syncSession:(id)a3 didFailWithError:(id)a4;
- (void)syncSession:(id)a3 reportProgress:(double)a4;
- (void)syncSessionDidComplete:(id)a3;
- (void)syncSessionDidCompleteSending:(id)a3;
@end

@implementation PSYSyncCoordinator

- (unint64_t)syncRestriction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PSYSyncCoordinator_syncRestriction__block_invoke;
  v5[3] = &unk_2799FB5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__PSYSyncCoordinator_syncRestriction__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _syncRestriction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_syncRestriction
{
  v3 = +[PSYRegistrySingleton registry];
  v4 = [v3 pairingID];

  if (v4 && ((v5 = [(PSYSyncCoordinator *)self _pairedSyncFinishedMigrationSyncWithPairingID:v4], syncIDOfStartedSync = self->_syncIDOfStartedSync, v5) || syncIDOfStartedSync))
  {
    v9 = +[PSYRegistrySingleton registry];
    v10 = [v9 switchIndex];

    if (syncIDOfStartedSync == v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(PSYSyncCoordinator *)self _pairedSyncFinishedReunionSync]^ 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (PSYSyncCoordinator)syncCoordinatorWithServiceName:(id)a3
{
  v4 = a3;
  if (syncCoordinatorWithServiceName__onceToken != -1)
  {
    +[PSYSyncCoordinator syncCoordinatorWithServiceName:];
  }

  pthread_mutex_lock(&__serviceLock);
  v5 = [syncCoordinatorWithServiceName____listeners objectForKey:v4];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = [[a1 alloc] initWithServiceName:v4];
      if (v6)
      {
        [syncCoordinatorWithServiceName____listeners setObject:v6 forKey:v4];
      }
    }
  }

  pthread_mutex_unlock(&__serviceLock);

  return v6;
}

uint64_t __53__PSYSyncCoordinator_syncCoordinatorWithServiceName___block_invoke()
{
  syncCoordinatorWithServiceName____listeners = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (PSYSyncCoordinator)initWithServiceName:(id)a3
{
  v4 = a3;
  v5 = PSYGetClientListDirectory();
  v6 = [(PSYSyncCoordinator *)self initWithServiceName:v4 serviceLookupPath:v5];

  return v6;
}

- (PSYSyncCoordinator)initWithServiceName:(id)a3 serviceLookupPath:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = PSYSyncCoordinator;
  v8 = [(PSYSyncCoordinator *)&v36 init];
  if (v8)
  {
    v9 = psy_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = psy_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "[PSYSyncCoordinator initWithServiceName:serviceLookupPath:]";
        v39 = 2114;
        v40 = v6;
        _os_log_impl(&dword_25DF25000, v11, OS_LOG_TYPE_DEFAULT, "%s: %{public}@", buf, 0x16u);
      }
    }

    v8->_syncSwitchIDToken = -1;
    v29 = [v6 stringByAppendingPathExtension:@"plist"];
    v12 = [v7 URLByAppendingPathComponent:v29];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v12];
    v14 = [PSYActivityInfo activityWithPlist:v13];
    v8->_syncRestriction = 1;
    objc_initWeak(buf, v8);
    if (v14)
    {
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.pairedsync.coordinator", v28);
      queue = v8->_queue;
      v8->_queue = v15;

      objc_storeStrong(&v8->_delegateQueue, MEMORY[0x277D85CD0]);
      v17 = [v6 copy];
      serviceName = v8->_serviceName;
      v8->_serviceName = v17;

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __60__PSYSyncCoordinator_initWithServiceName_serviceLookupPath___block_invoke;
      v33[3] = &unk_2799FB778;
      objc_copyWeak(&v35, buf);
      v19 = v8;
      v34 = v19;
      v20 = MEMORY[0x25F8A84D0](v33);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__PSYSyncCoordinator_initWithServiceName_serviceLookupPath___block_invoke_2;
      v30[3] = &unk_2799FB7A0;
      objc_copyWeak(&v32, buf);
      v21 = v20;
      v31 = v21;
      v8->_syncSwitchIDToken = [(PSYSyncCoordinator *)v19 registerNotifyTokenWithName:@"com.apple.pairedsync.lastsyncswitchid" withBlock:v30];
      [(PSYSyncCoordinator *)v19 _registerMonitorAllNRDevicesForMigrationChanges:v21];
      [PSYRegistrySingleton addDelegate:v19];
      pthread_mutex_init(&v19->_delegateLock, 0);
      v22 = objc_alloc(MEMORY[0x277CCAE98]);
      v23 = [v14 machServiceName];
      v24 = [v22 initWithMachServiceName:v23];
      listener = v19->_listener;
      v19->_listener = v24;

      [(NSXPCListener *)v19->_listener setDelegate:v19];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v35);
    }

    else
    {

      NSLog(&cfstr_ErrorCouldNotC.isa, v12, v6);
      v19 = 0;
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v19 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

void __60__PSYSyncCoordinator_initWithServiceName_serviceLookupPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "_syncRestriction")}];
    [v3 _syncRestrictionDidUpdate:v4 forServiceName:v5[20]];

    WeakRetained = v5;
  }
}

void __60__PSYSyncCoordinator_initWithServiceName_serviceLookupPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "_syncRestriction")}];
    [v4 _syncRestrictionDidUpdate:v3 forServiceName:v4[20]];

    [v4 _registerMonitorAllNRDevicesForMigrationChanges:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (unint64_t)readNotifyToken:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    v11 = notify_register_dispatch(v10, &out_token, v8, v9);
  }

  else
  {
    v11 = notify_register_check(v10, &out_token);
  }

  v12 = v11;
  if (v11)
  {
    v13 = psy_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = psy_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v21 = v12;
        v22 = 2114;
        v23 = v7;
        _os_log_impl(&dword_25DF25000, v15, OS_LOG_TYPE_DEFAULT, "notify_register call failed with state: (%u) for %{public}@", buf, 0x12u);
      }
    }
  }

  v16 = out_token;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_registerMonitorAllNRDevicesForMigrationChanges:(id)a3
{
  v4 = [a3 copy];
  migrationChangeBlock = self->_migrationChangeBlock;
  self->_migrationChangeBlock = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_unregisterNRDeviceMonitors
{
  migrationChangeBlock = self->_migrationChangeBlock;
  self->_migrationChangeBlock = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.pairedsync.scheduler"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = PSYActivityXPCInterface();
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:self];
    v11 = PSYActivityProgressXPCInterface();
    [v7 setRemoteObjectInterface:v11];

    objc_initWeak(location, self);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __57__PSYSyncCoordinator_listener_shouldAcceptNewConnection___block_invoke;
    v20 = &unk_2799FB7C8;
    v21 = self;
    objc_copyWeak(&v22, location);
    [v7 setInvalidationHandler:&v17];
    objc_storeStrong(&self->_connection, a4);
    [v7 resume];
    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = psy_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = psy_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138543618;
        *&location[4] = v7;
        v24 = 2112;
        v25 = @"com.apple.pairedsync.scheduler";
        _os_log_impl(&dword_25DF25000, v14, OS_LOG_TYPE_DEFAULT, "Dropping connection %{public}@ because it's missing the entitlement for %@", location, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

void __57__PSYSyncCoordinator_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PSYSyncCoordinator_listener_shouldAcceptNewConnection___block_invoke_2;
  block[3] = &unk_2799FB6C8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __57__PSYSyncCoordinator_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v3 = psd_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = psd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25DF25000, v5, OS_LOG_TYPE_DEFAULT, "Connection to pairedsyncd lost, invalidating sync session", v7, 2u);
    }
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 invalidateActiveSyncSession];
}

- (BOOL)_pairedSyncFinishedReunionSync
{
  v2 = [(PSYSyncCoordinator *)self readNotifyToken:self->_syncSwitchIDToken];
  v3 = +[PSYRegistrySingleton registry];
  LOBYTE(v2) = v2 == [v3 switchIndex];

  return v2;
}

- (BOOL)_pairedSyncFinishedMigrationSyncWithPairingID:(id)a3
{
  v3 = a3;
  v4 = [v3 UUIDString];
  v5 = +[PSYRegistrySingleton registry];
  v6 = [v5 deviceForPairingID:v3];

  v7 = [v6 valueForProperty:*MEMORY[0x277D37BD0]];
  v8 = [v7 integerValue];
  v9 = *MEMORY[0x277CBF010];
  CFPreferencesSynchronize(@"com.apple.pairedsyncd", @"mobile", *MEMORY[0x277CBF010]);
  v10 = CFPreferencesCopyValue(@"pairingIDMigrationCountDictionary", @"com.apple.pairedsyncd", @"mobile", v9);
  v11 = [v10 objectForKeyedSubscript:v4];
  LOBYTE(v8) = v8 == [v11 integerValue];

  return v8;
}

- (void)_syncRestrictionDidUpdate:(id)a3 forServiceName:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_syncRestriction];
  v9 = [v8 isEqual:v6];

  if ((v9 & 1) == 0)
  {
    self->_syncRestriction = [v6 integerValue];
    if ([v7 isEqual:self->_serviceName])
    {
      pthread_mutex_lock(&self->_delegateLock);
      v10 = self->_delegateQueue;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      pthread_mutex_unlock(&self->_delegateLock);
      v12 = psy_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = psy_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138543874;
          v24 = v10;
          v25 = 2112;
          v26 = v17;
          v27 = 1024;
          v28 = [v6 integerValue];
          _os_log_impl(&dword_25DF25000, v14, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - dispatching sync restriction did update on queue %{public}@ to delegate %@ (%d)", buf, 0x1Cu);
        }
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __63__PSYSyncCoordinator__syncRestrictionDidUpdate_forServiceName___block_invoke;
      v20[3] = &unk_2799FB588;
      v21 = WeakRetained;
      v22 = self;
      v18 = WeakRetained;
      dispatch_async(v10, v20);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PSYSyncCoordinator__syncRestrictionDidUpdate_forServiceName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 syncCoordinatorDidChangeSyncRestriction:v5];
  }

  return result;
}

- (void)beginSyncWithOptions:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = psy_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = psy_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_25DF25000, v10, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - beginSyncWithOptions: %{public}@", buf, 0xCu);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PSYSyncCoordinator_beginSyncWithOptions_completion___block_invoke;
  block[3] = &unk_2799FB7F0;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(queue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __54__PSYSyncCoordinator_beginSyncWithOptions_completion___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((*(a1 + 32) + 40));
  v2 = *(*(a1 + 32) + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  pthread_mutex_unlock((*(a1 + 32) + 40));
  v4 = objc_opt_respondsToSelector();
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = @"DOES NOT SUPPORT";
      *buf = 138412802;
      v51 = v8;
      if (v4)
      {
        v9 = @"SUPPORTS";
      }

      v52 = 2048;
      v53 = WeakRetained;
      v54 = 2112;
      v55 = v9;
      v10 = v8;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator: in beginSyncWithOptions determined that delegate %@<%p> %@ migration sync", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 32) syncSessionForOptions:*(a1 + 40) supportsMigrationSync:v4 & 1];
  if (v11)
  {
    v12 = WeakRetained == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = psy_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (WeakRetained)
    {
      if (v14)
      {
        v15 = psy_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DF25000, v15, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - No sync session could be created. Most likely no active device in NanoRegistry. Skipping beginSyncSession call into client.", buf, 2u);
        }
      }

      v16 = *(a1 + 48);
      v17 = 6;
    }

    else
    {
      if (v14)
      {
        v36 = psy_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DF25000, v36, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - client delegate missing.", buf, 2u);
        }
      }

      v16 = *(a1 + 48);
      v17 = 7;
    }

    v37 = PSYErrorForCode(v17);
    (*(v16 + 16))(v16, 0, v37);
  }

  else
  {
    v18 = +[PSYRegistrySingleton registry];
    *(*(a1 + 32) + 136) = [v18 switchIndex];

    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "_syncRestriction")}];
    [v19 _syncRestrictionDidUpdate:v20 forServiceName:*(*(a1 + 32) + 160)];

    v21 = MEMORY[0x25F8A84D0](*(a1 + 48));
    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    *(v22 + 16) = v21;

    v24 = [*(*(a1 + 32) + 112) sessionIdentifier];
    v25 = [*(a1 + 40) sessionIdentifier];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      v27 = psd_log();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

      if (v28)
      {
        v29 = psd_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DF25000, v29, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator received beginSyncWithOptions: for the current sessionIdentifier. Ignoring message", buf, 2u);
        }
      }
    }

    v30 = *(a1 + 32);
    v32 = *(v30 + 112);
    v31 = (v30 + 112);
    if (v32)
    {
      v33 = psy_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

      if (v34)
      {
        v35 = psy_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __54__PSYSyncCoordinator_beginSyncWithOptions_completion___block_invoke_cold_1(v35);
        }
      }
    }

    else
    {
      objc_storeStrong(v31, v11);
      [*(a1 + 32) beginMonitoringDeviceChanges];
      v39 = [*(a1 + 40) dryRun];
      v40 = psy_log();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v39)
      {
        if (v41)
        {
          v42 = psy_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25DF25000, v42, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - Dry run - not calling delegate", buf, 2u);
          }
        }

        [*(a1 + 32) beginDryRunSyncWithOptions:*(a1 + 40) completion:*(a1 + 48)];
      }

      else
      {
        if (v41)
        {
          v43 = psy_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = objc_loadWeakRetained((*(a1 + 32) + 104));
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = NSStringfromPSYSyncSessionType([v11 syncSessionType]);
            *buf = 138543874;
            v51 = v2;
            v52 = 2112;
            v53 = v46;
            v54 = 2112;
            v55 = v47;
            _os_log_impl(&dword_25DF25000, v43, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - dispatching start sync on queue %{public}@ to delegate %@ syncType %@", buf, 0x20u);
          }
        }

        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __54__PSYSyncCoordinator_beginSyncWithOptions_completion___block_invoke_31;
        v48[3] = &unk_2799FB588;
        v48[4] = *(a1 + 32);
        v49 = WeakRetained;
        dispatch_async(v2, v48);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __54__PSYSyncCoordinator_beginSyncWithOptions_completion___block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSyncSession];

  if (v2)
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v3 = objc_opt_respondsToSelector();
    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = *(a1 + 32);
      v16 = [v5 activeSyncSession];
      [v4 syncCoordinator:v5 beginSyncSession:v16];
LABEL_15:

      return;
    }

    v9 = *(a1 + 40);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = *MEMORY[0x277CBE658];
      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v12 raise:v13 format:{@"delegate %@ must respond to either syncCoordinator:beginSyncSession: or syncCoordinatorDidReceiveStartSyncCommand:", v16}];
      goto LABEL_15;
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);

    [v10 syncCoordinatorDidReceiveStartSyncCommand:v11];
  }

  else
  {
    v6 = psy_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psy_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - Sync session disappeared before it could be started. Most likely the daemon has died due to a quickswitch.", buf, 2u);
      }
    }
  }
}

- (void)abortSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = psy_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psy_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator - abortSyncWithCompletion:", buf, 2u);
    }
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__PSYSyncCoordinator_abortSyncWithCompletion___block_invoke;
  v10[3] = &unk_2799FB818;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(queue, v10);
}

uint64_t __46__PSYSyncCoordinator_abortSyncWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateActiveSyncSession];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (PSYServiceSyncSession)activeSyncSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PSYSyncCoordinator_activeSyncSession__block_invoke;
  v5[3] = &unk_2799FB5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)progressHandler
{
  v2 = [(PSYSyncCoordinator *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)syncSessionDidCompleteSending:(id)a3
{
  v3 = [(PSYSyncCoordinator *)self progressHandler];
  [v3 activityDidCompleteSending];
}

- (void)syncSessionDidComplete:(id)a3
{
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 1, 0);
    [(PSYSyncCoordinator *)self _cleanup];

    [(PSYSyncCoordinator *)self invalidateActiveSyncSession];
  }
}

- (void)syncSession:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = psy_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psy_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 psy_safeDescription];
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator client called syncDidFailWithError: %{public}@", &v15, 0xCu);
    }
  }

  if (self->_pendingCompletion)
  {
    v10 = [PSYSyncCoordinator filteredErrorWithError:v5];
    if (v10 != v5)
    {
      v11 = psy_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = psy_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&dword_25DF25000, v13, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator client has custom classes in NSError userinfo, filtered error is: %@", &v15, 0xCu);
        }
      }
    }

    (*(self->_pendingCompletion + 2))();
    [(PSYSyncCoordinator *)self _cleanup];
    [(PSYSyncCoordinator *)self invalidateActiveSyncSession];
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)filteredErrorWithError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [PSYPlistFilter filteredPlistDictionary:v4];

  v6 = [v3 userInfo];

  if (v5 == v6)
  {
    v9 = v3;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v3 domain];
    v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v3 userInfo:{"code"), v5}];
  }

  return v9;
}

- (void)syncSession:(id)a3 reportProgress:(double)a4
{
  v6 = [(PSYSyncCoordinator *)self progressHandler];
  *&v5 = a4;
  [v6 activityDidUpdateProgress:v5];
}

- (void)syncDidCompleteSending
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PSYSyncCoordinator_syncDidCompleteSending__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)syncDidComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PSYSyncCoordinator_syncDidComplete__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)syncDidFailWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PSYSyncCoordinator_syncDidFailWithError___block_invoke;
  v7[3] = &unk_2799FB588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)reportProgress:(double)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PSYSyncCoordinator_reportProgress___block_invoke;
  v4[3] = &unk_2799FB738;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  obj = a4;
  if (!obj)
  {
    obj = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
  }

  v7 = a3;
  pthread_mutex_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, v7);

  objc_storeStrong(&self->_delegateQueue, obj);
  if (!self->_hasStartedListening)
  {
    [(NSXPCListener *)self->_listener resume];
    self->_hasStartedListening = 1;
  }

  pthread_mutex_unlock(&self->_delegateLock);
}

- (PSYSyncCoordinatorDelegate)delegate
{
  pthread_mutex_lock(&self->_delegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pthread_mutex_unlock(&self->_delegateLock);

  return WeakRetained;
}

- (void)performDelegateBlock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_delegateLock);
  v5 = self->_delegateQueue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pthread_mutex_unlock(&self->_delegateLock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PSYSyncCoordinator_performDelegateBlock___block_invoke;
  v9[3] = &unk_2799FB600;
  v10 = WeakRetained;
  v11 = v4;
  v7 = WeakRetained;
  v8 = v4;
  dispatch_async(v5, v9);
}

- (void)invalidateActiveSyncSession
{
  v15 = *MEMORY[0x277D85DE8];
  activeSyncSession = self->_activeSyncSession;
  if (activeSyncSession)
  {
    v4 = activeSyncSession;
    v5 = self->_activeSyncSession;
    self->_activeSyncSession = 0;

    [(PSYSyncCoordinator *)self endMonitoringDeviceChanges];
    v6 = psy_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psy_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v4;
        _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating sync session: %{public}@", buf, 0xCu);
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__PSYSyncCoordinator_invalidateActiveSyncSession__block_invoke;
    v11[3] = &unk_2799FB840;
    v11[4] = self;
    v12 = v4;
    v9 = v4;
    [(PSYSyncCoordinator *)self performDelegateBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__PSYSyncCoordinator_invalidateActiveSyncSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 syncCoordinator:*(a1 + 32) didInvalidateSyncSession:*(a1 + 40)];
  }
}

- (void)dealloc
{
  v3 = +[PSYRegistrySingleton registry];
  [v3 removeDelegate:self];

  syncSwitchIDToken = self->_syncSwitchIDToken;
  if (syncSwitchIDToken != -1)
  {
    notify_cancel(syncSwitchIDToken);
  }

  v5.receiver = self;
  v5.super_class = PSYSyncCoordinator;
  [(PSYSyncCoordinator *)&v5 dealloc];
}

- (void)_cleanup
{
  pendingCompletion = self->_pendingCompletion;
  self->_pendingCompletion = 0;
  MEMORY[0x2821F96F8]();
}

- (void)deviceChanged:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PSYSyncCoordinator_deviceChanged___block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__PSYSyncCoordinator_deviceChanged___block_invoke(uint64_t a1)
{
  v2 = +[PSYRegistrySingleton registry];
  v3 = [v2 pairingID];

  v4 = *(*(a1 + 32) + 112);
  if (v4)
  {
    v5 = [v4 pairingID];
    v6 = [v5 isEqual:v3];

    if ((v6 & 1) == 0)
    {
      v7 = psd_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = psd_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "Device changed, invalidating sync session", v10, 2u);
        }
      }

      [*(a1 + 32) invalidateActiveSyncSession];
    }
  }
}

- (id)syncSessionForOptions:(id)a3 supportsMigrationSync:(BOOL)a4
{
  v25 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[PSYRegistrySingleton registry];
  v7 = [v6 getPairedDevices];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = [v13 pairingID];
      v15 = [v5 pairingIdentifier];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v13;

    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = [[PSYServiceSyncSession alloc] initWithQueue:self->_queue supportsMigrationSync:v25];
    [(PSYServiceSyncSession *)v18 setPdrPairedDevice:v17];
    -[PSYServiceSyncSession setSyncSessionType:](v18, "setSyncSessionType:", [v5 syncSessionType]);
    v19 = [v5 sessionIdentifier];
    [(PSYServiceSyncSession *)v18 setSessionIdentifier:v19];

    [(PSYServiceSyncSession *)v18 setDelegate:self];
    [(PSYServiceSyncSession *)v18 setSyncCoordinator:self];
    v20 = +[PSYRegistrySingleton registry];
    -[PSYServiceSyncSession setSwitchID:](v18, "setSwitchID:", [v20 switchIndex]);

    goto LABEL_16;
  }

LABEL_9:

LABEL_12:
  v21 = psd_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    v17 = psd_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PSYSyncCoordinator syncSessionForOptions:v8 supportsMigrationSync:v17];
    }

    v18 = 0;
LABEL_16:

    goto LABEL_18;
  }

  v18 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)beginDryRunSyncWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v8 = [v6 testInput];
  v9 = [v8 action];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(0, v10);
  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v11);

  dispatch_source_set_timer(v12, 0, 0x5F5E100uLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__PSYSyncCoordinator_beginDryRunSyncWithOptions_completion___block_invoke;
  handler[3] = &unk_2799FB868;
  v21 = v12;
  v22 = v23;
  handler[4] = self;
  v13 = v12;
  dispatch_source_set_event_handler(v13, handler);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__PSYSyncCoordinator_beginDryRunSyncWithOptions_completion___block_invoke_2;
  v16[3] = &unk_2799FB890;
  v16[4] = self;
  v17 = v8;
  v18 = v7;
  v19 = v9;
  v14 = v7;
  v15 = v8;
  dispatch_source_set_cancel_handler(v13, v16);
  dispatch_resume(v13);

  _Block_object_dispose(v23, 8);
}

void __60__PSYSyncCoordinator_beginDryRunSyncWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 24) + 0.1;
  *(v2 + 24) = v3;
  [*(a1 + 32) reportProgress:*(*(*(a1 + 48) + 8) + 24)];
  if (*(*(*(a1 + 48) + 8) + 24) >= 1.0)
  {
    v4 = *(a1 + 40);

    dispatch_source_cancel(v4);
  }
}

void __60__PSYSyncCoordinator_beginDryRunSyncWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if ((v2 - 2) >= 2)
  {
    v3 = 0;
    v5 = 0;
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pairedsync.synccoordinator" code:1 userInfo:0];
    v4 = 0;
    v2 = *(a1 + 56);
    v5 = v3;
  }

  if (v2 == 1)
  {
    [*(a1 + 32) exitForTestInput:*(a1 + 40)];
    v5 = v3;
  }

  v6 = psy_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psy_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) serviceName];
      v10 = [v5 psy_safeDescription];
      v14 = 138543874;
      v15 = v9;
      v16 = 1024;
      v17 = v4;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "Service %{public}@ completed dry run with success: %d error: %{public}@", &v14, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)exitForTestInput:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "action")}];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "Exiting due to test input action: %{public}@", &v8, 0xCu);
    }
  }

  exit(1);
}

- (void)registry:(id)a3 added:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_monitoringDeviceChanges)
  {
    v7 = v5;
    v5 = [v5 isActive];
    v6 = v7;
    if (v5)
    {
      v5 = [(PSYSyncCoordinator *)self deviceChanged:v7];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (self->_monitoringDeviceChanges)
  {
    v11 = [v9 containsObject:*MEMORY[0x277D37BB8]];
    v12 = [v10 containsObject:*MEMORY[0x277D37BA8]];
    if (v12)
    {
      v12 = [v8 isActive];
    }

    if (v12 | v11)
    {
      [(PSYSyncCoordinator *)self deviceChanged:v8];
    }
  }

  if (self->_migrationChangeBlock && [v10 containsObject:*MEMORY[0x277D37BD0]])
  {
    dispatch_async(self->_queue, self->_migrationChangeBlock);
  }
}

- (void)syncSessionForOptions:(void *)a1 supportsMigrationSync:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_error_impl(&dword_25DF25000, a2, OS_LOG_TYPE_ERROR, "missing paired device. devices count: %tu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end