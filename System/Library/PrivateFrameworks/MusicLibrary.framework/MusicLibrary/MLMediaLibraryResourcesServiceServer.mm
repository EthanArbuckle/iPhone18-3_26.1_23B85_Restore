@interface MLMediaLibraryResourcesServiceServer
+ (MLMediaLibraryResourcesServiceServer)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MLMediaLibraryResourcesServiceServer)initWithAccountChangeObserver:(id)observer;
- (NSMutableSet)observers;
- (OS_dispatch_semaphore)accountChangeSemaphore;
- (id)_MLMediaLibraryResourcesServiceServerExportedInterface;
- (id)_MLMediaLibraryResourcesServiceServerRemoteObjectInterface;
- (void)_addObserver:(id)observer;
- (void)_removeObserver:(id)observer;
- (void)_unblockExecutionForFutureAccountChange;
- (void)libraryContainerPathWithCompletion:(id)completion;
- (void)musicContainerPathWithCompletion:(id)completion;
- (void)performDatabasePathChange:(id)change completion:(id)completion;
@end

@implementation MLMediaLibraryResourcesServiceServer

- (id)_MLMediaLibraryResourcesServiceServerRemoteObjectInterface
{
  if (_MLMediaLibraryResourcesServiceServerRemoteObjectInterface_sMLMediaLibraryResourcesServiceServerRemoteObjectInterfaceOnceToken != -1)
  {
    dispatch_once(&_MLMediaLibraryResourcesServiceServerRemoteObjectInterface_sMLMediaLibraryResourcesServiceServerRemoteObjectInterfaceOnceToken, &__block_literal_global_135);
  }

  v3 = _MLMediaLibraryResourcesServiceServerRemoteObjectInterface_sMLMediaLibraryResourcesServiceServerRemoteObjectInterface;

  return v3;
}

uint64_t __98__MLMediaLibraryResourcesServiceServer__MLMediaLibraryResourcesServiceServerRemoteObjectInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840DBC30];
  v1 = _MLMediaLibraryResourcesServiceServerRemoteObjectInterface_sMLMediaLibraryResourcesServiceServerRemoteObjectInterface;
  _MLMediaLibraryResourcesServiceServerRemoteObjectInterface_sMLMediaLibraryResourcesServiceServerRemoteObjectInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_MLMediaLibraryResourcesServiceServerExportedInterface
{
  if (_MLMediaLibraryResourcesServiceServerExportedInterface_sMLMediaLibraryResourcesServiceServerExportedInterfaceOnceToken != -1)
  {
    dispatch_once(&_MLMediaLibraryResourcesServiceServerExportedInterface_sMLMediaLibraryResourcesServiceServerExportedInterfaceOnceToken, &__block_literal_global_128);
  }

  v3 = _MLMediaLibraryResourcesServiceServerExportedInterface_sMLMediaLibraryResourcesServiceServerExportedInterface;

  return v3;
}

uint64_t __94__MLMediaLibraryResourcesServiceServer__MLMediaLibraryResourcesServiceServerExportedInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840E3818];
  v1 = _MLMediaLibraryResourcesServiceServerExportedInterface_sMLMediaLibraryResourcesServiceServerExportedInterface;
  _MLMediaLibraryResourcesServiceServerExportedInterface_sMLMediaLibraryResourcesServiceServerExportedInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MLMediaLibraryResourcesServiceServer__removeObserver___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

void __56__MLMediaLibraryResourcesServiceServer__removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MLMediaLibraryResourcesServiceServer__addObserver___block_invoke;
  v7[3] = &unk_2787660F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

void __53__MLMediaLibraryResourcesServiceServer__addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (OS_dispatch_semaphore)accountChangeSemaphore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19995;
  v11 = __Block_byref_object_dispose__19996;
  v12 = 0;
  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__MLMediaLibraryResourcesServiceServer_accountChangeSemaphore__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __62__MLMediaLibraryResourcesServiceServer_accountChangeSemaphore__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = dispatch_semaphore_create(1);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (void)_unblockExecutionForFutureAccountChange
{
  accountChangeSemaphore = [(MLMediaLibraryResourcesServiceServer *)self accountChangeSemaphore];
  dispatch_semaphore_signal(accountChangeSemaphore);

  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MLMediaLibraryResourcesServiceServer__unblockExecutionForFutureAccountChange__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __79__MLMediaLibraryResourcesServiceServer__unblockExecutionForFutureAccountChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (NSMutableSet)observers
{
  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  return observers;
}

- (MLMediaLibraryResourcesServiceServer)initWithAccountChangeObserver:(id)observer
{
  observerCopy = observer;
  v16.receiver = self;
  v16.super_class = MLMediaLibraryResourcesServiceServer;
  v5 = [(MLMediaLibraryResourcesServiceServer *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.medialibraryd.multi-user-resources-service.serialQueue", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = dispatch_queue_create("com.apple.medialibraryd.multi-user-resources-service.workQueue", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;

    v10 = dispatch_queue_create("com.apple.medialibraryd.multi-user-resources-service.calloutQueue", MEMORY[0x277D85CD8]);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    if (observerCopy)
    {
      v12 = observerCopy;
    }

    else
    {
      v12 = v5;
    }

    v13 = v12;
    v14 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
    [v14 addAccountChangeObserver:v13];
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  _MLMediaLibraryResourcesServiceServerExportedInterface = [(MLMediaLibraryResourcesServiceServer *)self _MLMediaLibraryResourcesServiceServerExportedInterface];
  [connectionCopy setExportedInterface:_MLMediaLibraryResourcesServiceServerExportedInterface];

  [connectionCopy setExportedObject:self];
  _MLMediaLibraryResourcesServiceServerRemoteObjectInterface = [(MLMediaLibraryResourcesServiceServer *)self _MLMediaLibraryResourcesServiceServerRemoteObjectInterface];
  [connectionCopy setRemoteObjectInterface:_MLMediaLibraryResourcesServiceServerRemoteObjectInterface];

  processIdentifier = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v11 = MSVBundleIDForAuditToken();
  v12 = [_MLChangeObserver observerWithConnection:connectionCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__MLMediaLibraryResourcesServiceServer_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &unk_2787641E0;
  objc_copyWeak(&v28, &location);
  v13 = v11;
  v27 = v13;
  v30 = processIdentifier;
  objc_copyWeak(&v29, &from);
  [connectionCopy setInterruptionHandler:v26];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __75__MLMediaLibraryResourcesServiceServer_listener_shouldAcceptNewConnection___block_invoke_120;
  v21 = &unk_2787641E0;
  objc_copyWeak(&v23, &location);
  v14 = v13;
  v22 = v14;
  v25 = processIdentifier;
  objc_copyWeak(&v24, &from);
  [connectionCopy setInvalidationHandler:&v18];
  v15 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 1024;
    *&buf[24] = processIdentifier;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Connecting to %{public}@[%d]", buf, 0x1Cu);
  }

  [(MLMediaLibraryResourcesServiceServer *)self _addObserver:v12, v18, v19, v20, v21];
  connection = [v12 connection];
  [connection resume];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __75__MLMediaLibraryResourcesServiceServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 56);
      v10 = 138543874;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Connection interrupted for %{public}@[%d]", &v10, 0x1Cu);
    }

    v6 = objc_loadWeakRetained((a1 + 48));
    if (v6)
    {
      v7 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 56);
        v10 = 138543874;
        v11 = WeakRetained;
        v12 = 2114;
        v13 = v8;
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ - Removing observer for %{public}@[%d]", &v10, 0x1Cu);
      }

      [WeakRetained _removeObserver:v6];
    }
  }
}

void __75__MLMediaLibraryResourcesServiceServer_listener_shouldAcceptNewConnection___block_invoke_120(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 56);
      v10 = 138543874;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Connection invalidated for %{public}@[%d]", &v10, 0x1Cu);
    }

    v6 = objc_loadWeakRetained((a1 + 48));
    if (v6)
    {
      v7 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 56);
        v10 = 138543874;
        v11 = WeakRetained;
        v12 = 2114;
        v13 = v8;
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ - Removing observer for %{public}@[%d]", &v10, 0x1Cu);
      }

      [WeakRetained _removeObserver:v6];
    }
  }
}

- (void)performDatabasePathChange:(id)change completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = changeCopy;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - queued - newPath=%{public}@", buf, 0x16u);
  }

  [(MLMediaLibraryResourcesServiceServer *)self _blockExecutionForOnGoingAccountChangeIfNeeded];
  v9 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: - started", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = __Block_byref_object_copy__19995;
  v22 = __Block_byref_object_dispose__19996;
  v23 = 0;
  accessQueue = [(MLMediaLibraryResourcesServiceServer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MLMediaLibraryResourcesServiceServer_performDatabasePathChange_completion___block_invoke;
  block[3] = &unk_278766080;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(accessQueue, block);

  workQueue = [(MLMediaLibraryResourcesServiceServer *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__MLMediaLibraryResourcesServiceServer_performDatabasePathChange_completion___block_invoke_2;
  v14[3] = &unk_2787641B8;
  v15 = changeCopy;
  selfCopy = self;
  v17 = completionCopy;
  v18 = buf;
  v12 = completionCopy;
  v13 = changeCopy;
  dispatch_async(workQueue, v14);

  _Block_object_dispose(buf, 8);
}

void __77__MLMediaLibraryResourcesServiceServer_performDatabasePathChange_completion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__MLMediaLibraryResourcesServiceServer_performDatabasePathChange_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__MLMediaLibraryResourcesServiceServer_performDatabasePathChange_completion___block_invoke_3;
  v5[3] = &unk_278764190;
  v6 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) _unblockExecutionForFutureAccountChange];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - performDatabasePathChange: - Calling completion block", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)musicContainerPathWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[ML3MusicLibraryResourcesManager sharedManager];
  musicAssetsContainerPath = [v6 musicAssetsContainerPath];
  (*(completion + 2))(completionCopy, musicAssetsContainerPath);
}

- (void)libraryContainerPathWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[ML3MusicLibraryResourcesManager sharedManager];
  libraryContainerPath = [v6 libraryContainerPath];
  (*(completion + 2))(completionCopy, libraryContainerPath);
}

+ (MLMediaLibraryResourcesServiceServer)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_20016);
  }

  v3 = sharedInstance___sharedService;

  return v3;
}

uint64_t __54__MLMediaLibraryResourcesServiceServer_sharedInstance__block_invoke()
{
  v0 = [[MLMediaLibraryResourcesServiceServer alloc] initWithAccountChangeObserver:0];
  v1 = sharedInstance___sharedService;
  sharedInstance___sharedService = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end