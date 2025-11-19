@interface PSYInitialSyncStateObserver
- (PSYInitialSyncStateObserver)initWithDelegate:(id)a3;
- (PSYInitialSyncStateObserverDelegate)delegate;
- (id)syncProviderWithErrorHandler:(id)a3;
- (void)_handleConnectionInvalidated;
- (void)_queue_initializeIfNotInitialized;
- (void)_queue_notifyCanRetryFailedRequests;
- (void)_queue_querySyncState;
- (void)_queue_updateSyncStates:(id)a3 notifyDelegateOfChanges:(BOOL)a4;
- (void)dealloc;
- (void)didUpdateSyncForPairingID:(id)a3;
- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5;
- (void)requestInitialNonMigrationSyncStateForPairingIdentifier:(id)a3 completion:(id)a4;
- (void)requestInitialSyncStateForPairingIdentifier:(id)a3 completion:(id)a4;
- (void)requestSyncStateForPairingIdentifier:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation PSYInitialSyncStateObserver

- (void)_queue_initializeIfNotInitialized
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PSYInitialSyncStateObserver *)self syncProviderWithErrorHandler:0];
  [v3 registerSyncStateObserverIfNeeded];

  if (!self->_init)
  {
    v4 = +[PSYRegistrySingleton registry];
    v10 = [v4 getAllDevices];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = [v10 count];
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    if (*(v20 + 6))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      obj = v10;
      v5 = [obj countByEnumeratingWithState:&v13 objects:v23 count:16];
      if (v5)
      {
        v6 = *v14;
        do
        {
          v7 = 0;
          do
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = [*(*(&v13 + 1) + 8 * v7) pairingID];
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke;
            v12[3] = &unk_2799FB5D8;
            v12[5] = v17;
            v12[6] = &v19;
            v12[4] = self;
            [(PSYInitialSyncStateObserver *)self requestSyncStateForPairingIdentifier:v8 completion:v12];

            ++v7;
          }

          while (v5 != v7);
          v5 = [obj countByEnumeratingWithState:&v13 objects:v23 count:16];
        }

        while (v5);
      }
    }

    else
    {
      self->_init = 1;
    }

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  daemonStartedNotifyToken = self->_daemonStartedNotifyToken;
  if (daemonStartedNotifyToken != -1)
  {
    notify_cancel(daemonStartedNotifyToken);
  }

  syncSwitchNotifyToken = self->_syncSwitchNotifyToken;
  if (syncSwitchNotifyToken != -1)
  {
    notify_cancel(syncSwitchNotifyToken);
  }

  v5.receiver = self;
  v5.super_class = PSYInitialSyncStateObserver;
  [(PSYInitialSyncStateObserver *)&v5 dealloc];
}

void __59__PSYInitialSyncStateObserver__handleConnectionInvalidated__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_handleConnectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PSYInitialSyncStateObserver__handleConnectionInvalidated__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

- (PSYInitialSyncStateObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PSYInitialSyncStateObserver;
  v5 = [(PSYInitialSyncStateObserver *)&v33 init];
  if (v5)
  {
    v6 = psy_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psy_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25DF25000, v8, OS_LOG_TYPE_DEFAULT, "Initializing PSYInitialSyncStateObserver to monitor sync state", buf, 2u);
      }
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncStateCache = v5->_syncStateCache;
    v5->_syncStateCache = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    initialSyncStateCache = v5->_initialSyncStateCache;
    v5->_initialSyncStateCache = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncStateEntryCache = v5->_syncStateEntryCache;
    v5->_syncStateEntryCache = v14;

    v16 = dispatch_queue_create("com.apple.pairedsync.syncobserver", v9);
    queue = v5->_queue;
    v5->_queue = v16;

    v18 = dispatch_queue_create("com.apple.pairedsync.delegate", v9);
    delegateQueue = v5->_delegateQueue;
    v5->_delegateQueue = v18;

    [(PSYInitialSyncStateObserver *)v5 setDelegate:v4];
    objc_initWeak(buf, v5);
    v20 = [@"com.apple.pairedsyncd.launched" UTF8String];
    v21 = v5->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke;
    handler[3] = &unk_2799FB538;
    objc_copyWeak(&v31, buf);
    notify_register_dispatch(v20, &v5->_daemonStartedNotifyToken, v21, handler);
    v22 = [@"com.apple.pairedsync.lastsyncswitchid" UTF8String];
    v23 = v5->_queue;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_2;
    v28[3] = &unk_2799FB538;
    objc_copyWeak(&v29, buf);
    notify_register_dispatch(v22, &v5->_syncSwitchNotifyToken, v23, v28);
    [PSYRegistrySingleton addDelegate:v5];
    v24 = v5->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_3;
    block[3] = &unk_2799FB560;
    v27 = v5;
    dispatch_async(v24, block);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  return v5;
}

void __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _queue_querySyncState];
    [v2 _queue_notifyCanRetryFailedRequests];
    WeakRetained = v2;
  }
}

void __48__PSYInitialSyncStateObserver_initWithDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_querySyncState];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PSYInitialSyncStateObserver_setDelegate___block_invoke;
  v7[3] = &unk_2799FB588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, v7);
}

- (PSYInitialSyncStateObserverDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  delegateQueue = self->_delegateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PSYInitialSyncStateObserver_delegate__block_invoke;
  v5[3] = &unk_2799FB5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__PSYInitialSyncStateObserver_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if (!--*(*(a1[6] + 8) + 24) && !*(*(a1[5] + 8) + 24))
  {
    v5 = a1[4];
    v6 = *(v5 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PSYInitialSyncStateObserver__queue_initializeIfNotInitialized__block_invoke_2;
    block[3] = &unk_2799FB560;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (void)requestSyncStateForPairingIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke;
    block[3] = &unk_2799FB6A0;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = PSYErrorForCode(5);
    (v8)[2](v8, 0, v10);
  }
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2799FB628;
  v10[4] = v2;
  v11 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v10];
  v12[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_4;
  v7[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __79__PSYInitialSyncStateObserver_requestSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedSync];

  v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];

  if (v4)
  {
    v5 = psy_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = psy_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) UUIDString];
      v9 = v8;
      v10 = @"NO";
      if (v3)
      {
        v10 = @"YES";
      }

      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "requestSyncStateForPairingIdentifier:%@ hasCompletedSync=%@", &v16, 0x16u);
    }

    v11 = 0;
    goto LABEL_11;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.pairedsync" code:43 userInfo:0];
  v12 = psy_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v7 = psy_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 48) UUIDString];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "requestSyncStateForPairingIdentifier:%@ error=%@", &v16, 0x16u);
    }

LABEL_11:
  }

LABEL_13:
  (*(*(a1 + 56) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestInitialSyncStateForPairingIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke;
  block[3] = &unk_2799FB6A0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2799FB628;
  v10[4] = v2;
  v11 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v10];
  v12[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_4;
  v7[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t __86__PSYInitialSyncStateObserver_requestInitialSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedInitialOrMigrationSync];

  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) UUIDString];
      v8 = v7;
      v9 = @"NO";
      if (v3)
      {
        v9 = @"YES";
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "requestInitialSyncStateForPairingIdentifier:%@ hasCompletedInitialOrMigrationSync=%@", &v12, 0x16u);
    }
  }

  result = (*(*(a1 + 56) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestInitialNonMigrationSyncStateForPairingIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke;
  block[3] = &unk_2799FB6A0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2799FB628;
  v10[4] = v2;
  v11 = *(a1 + 48);
  v3 = [v2 syncProviderWithErrorHandler:v10];
  v12[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_4;
  v7[3] = &unk_2799FB678;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_3;
  v7[3] = &unk_2799FB600;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_5;
  v8[3] = &unk_2799FB650;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t __98__PSYInitialSyncStateObserver_requestInitialNonMigrationSyncStateForPairingIdentifier_completion___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateSyncStates:*(a1 + 40) notifyDelegateOfChanges:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [v2 hasCompletedInitialSync];

  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) UUIDString];
      v8 = v7;
      v9 = @"NO";
      if (v3)
      {
        v9 = @"YES";
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "requestInitialNonMigrationSyncStateForPairingIdentifier:%@ hasCompletedInitialSync=%@", &v12, 0x16u);
    }
  }

  result = (*(*(a1 + 56) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)syncProviderWithErrorHandler:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  if (!connection)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pairedsyncd.syncstate" options:4096];
    v7 = self->_connection;
    self->_connection = v6;

    v8 = objc_alloc_init(PSYSyncStateObserverExportedObject);
    [(PSYSyncStateObserverExportedObject *)v8 setDelegate:self];
    [(NSXPCConnection *)self->_connection setExportedObject:v8];
    v9 = self->_connection;
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC3990];
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    v11 = self->_connection;
    v12 = PSYSyncStateProviderXPCInterface();
    [(NSXPCConnection *)v11 setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    v13 = self->_connection;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __60__PSYInitialSyncStateObserver_syncProviderWithErrorHandler___block_invoke;
    v19 = &unk_2799FB6C8;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v16];
    [(NSXPCConnection *)self->_connection resume:v16];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    connection = self->_connection;
  }

  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v4];

  return v14;
}

void __60__PSYInitialSyncStateObserver_syncProviderWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInvalidated];
}

- (void)_queue_querySyncState
{
  [(PSYInitialSyncStateObserver *)self _queue_initializeIfNotInitialized];
  v3 = [(NSMutableDictionary *)self->_syncStateCache keyEnumerator];
  v4 = [v3 allObjects];

  if ([v4 count])
  {
    v5 = [(PSYInitialSyncStateObserver *)self syncProviderWithErrorHandler:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke;
    v6[3] = &unk_2799FB6F0;
    v6[4] = self;
    [v5 requestDeviceSyncStateEntriesForPairingIDs:v4 completion:v6];
  }
}

void __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PSYInitialSyncStateObserver__queue_querySyncState__block_invoke_2;
  v7[3] = &unk_2799FB588;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_queue_notifyCanRetryFailedRequests
{
  v3 = [(PSYInitialSyncStateObserver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PSYInitialSyncStateObserver *)self delegate];
    [v5 initialSyncStateObserverClientCanRetryFailedRequests:self];
  }
}

- (void)_queue_updateSyncStates:(id)a3 notifyDelegateOfChanges:(BOOL)a4
{
  v4 = a4;
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v63 = [MEMORY[0x277CBEB58] set];
    v60 = [MEMORY[0x277CBEB58] set];
    v61 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v63 = 0;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = [v6 keyEnumerator];
  v7 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  v62 = v6;
  if (v7)
  {
    v9 = v7;
    v65 = *v80;
    *&v8 = 138412290;
    v59 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v80 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v79 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v59}];
        [(NSMutableDictionary *)self->_syncStateEntryCache setObject:v12 forKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_syncStateCache objectForKeyedSubscript:v11];
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "hasCompletedSync")}];
        if ([v13 BOOLValue] & 1) == 0 && (v15 = objc_msgSend(v14, "BOOLValue"), v16 = v63, (v15) || objc_msgSend(v13, "BOOLValue") && (v17 = objc_msgSend(v14, "BOOLValue"), v16 = v61, (v17 & 1) == 0))
        {
          [v16 addObject:v11];
          [(NSMutableDictionary *)self->_syncStateCache setObject:v14 forKeyedSubscript:v11];
        }

        v18 = [(NSMutableDictionary *)self->_initialSyncStateCache objectForKeyedSubscript:v11];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "hasCompletedInitialOrMigrationSync")}];

        if (([v18 BOOLValue] & 1) == 0 && objc_msgSend(v19, "BOOLValue"))
        {
          [v60 addObject:v11];
LABEL_23:
          [(NSMutableDictionary *)self->_initialSyncStateCache setObject:v19 forKeyedSubscript:v11];
          v6 = v62;
          goto LABEL_24;
        }

        if ([v18 BOOLValue] && (objc_msgSend(v19, "BOOLValue") & 1) == 0)
        {
          v20 = psy_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

          if (v21)
          {
            v22 = psy_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v59;
              v87 = v11;
              _os_log_impl(&dword_25DF25000, v22, OS_LOG_TYPE_DEFAULT, "Initial sync status changed, reset cached value for: %@", buf, 0xCu);
            }
          }

          goto LABEL_23;
        }

LABEL_24:
      }

      v9 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v9);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v66 = v61;
  v23 = [v66 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v76;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v76 != v25)
        {
          objc_enumerationMutation(v66);
        }

        v27 = *(*(&v75 + 1) + 8 * j);
        v28 = psy_log();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

        if (v29)
        {
          v30 = psy_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v87 = v27;
            _os_log_impl(&dword_25DF25000, v30, OS_LOG_TYPE_DEFAULT, "Resetting sync state for %{public}@", buf, 0xCu);
          }
        }

        v31 = [(PSYInitialSyncStateObserver *)self delegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v33 = [(PSYInitialSyncStateObserver *)self delegate];
          [v33 initialSyncStateObserver:self syncDidResetForPairingIdentifier:v27];
        }
      }

      v24 = [v66 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v24);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v34 = v60;
  v35 = [v34 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v72;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v72 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v71 + 1) + 8 * k);
        v40 = psy_log();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

        if (v41)
        {
          v42 = psy_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v87 = v39;
            _os_log_impl(&dword_25DF25000, v42, OS_LOG_TYPE_DEFAULT, "Setting completed Initial sync state for %{public}@", buf, 0xCu);
          }
        }

        v43 = [(PSYInitialSyncStateObserver *)self delegate];
        v44 = objc_opt_respondsToSelector();

        if (v44)
        {
          v45 = [(PSYInitialSyncStateObserver *)self delegate];
          [v45 initialSyncStateObserver:self initialSyncDidCompleteForPairingIdentifier:v39];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v36);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v46 = v63;
  v47 = [v46 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v68;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v67 + 1) + 8 * m);
        v52 = psy_log();
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

        if (v53)
        {
          v54 = psy_log();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v87 = v51;
            _os_log_impl(&dword_25DF25000, v54, OS_LOG_TYPE_DEFAULT, "Setting completed Reunion sync state for %{public}@", buf, 0xCu);
          }
        }

        v55 = [(PSYInitialSyncStateObserver *)self delegate];
        v56 = objc_opt_respondsToSelector();

        if (v56)
        {
          v57 = [(PSYInitialSyncStateObserver *)self delegate];
          [v57 initialSyncStateObserver:self syncDidCompleteForPairingIdentifier:v51];
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v48);
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5
{
  v6 = a5;
  if (([v6 containsObject:*MEMORY[0x277D37BD0]] & 1) != 0 || objc_msgSend(v6, "containsObject:", *MEMORY[0x277D37BB8]))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PSYInitialSyncStateObserver_registry_changed_properties___block_invoke;
    block[3] = &unk_2799FB560;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)didUpdateSyncForPairingID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PSYInitialSyncStateObserver_didUpdateSyncForPairingID___block_invoke;
  v7[3] = &unk_2799FB588;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__PSYInitialSyncStateObserver_didUpdateSyncForPairingID___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [[PSYDeviceSyncStateEntry alloc] initWithPairingID:*(a1 + 32) syncState:3];
    v3 = v2;
    if (v2)
    {
      v6 = *(a1 + 32);
      v7[0] = v2;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 40) _queue_updateSyncStates:v4 notifyDelegateOfChanges:1];

  v5 = *MEMORY[0x277D85DE8];
}

@end