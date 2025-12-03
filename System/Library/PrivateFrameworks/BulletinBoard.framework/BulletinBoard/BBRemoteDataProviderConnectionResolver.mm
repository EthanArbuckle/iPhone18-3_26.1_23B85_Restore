@interface BBRemoteDataProviderConnectionResolver
+ (id)resolverWithDelegate:(id)delegate;
+ (id)xpcInterface;
- (BBRemoteDataProviderConnectionResolver)initWithDelegate:(id)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)dataProviderForSectionID:(id)d;
- (id)dataProvidersForUniversalSectionID:(id)d;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (void)_registerForPublicationNotification;
- (void)_registerServiceName:(id)name appBundleID:(id)d completion:(id)completion;
- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion;
- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory;
- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider;
- (void)dealloc;
- (void)performBlockOnDataProviders:(id)providers;
- (void)registerServiceName:(id)name appBundleID:(id)d completion:(id)completion;
- (void)remoteDataProviderNeedsToWakeClient:(id)client;
- (void)removeDataProvider:(id)provider;
- (void)wakeService:(id)service bundleID:(id)d;
@end

@implementation BBRemoteDataProviderConnectionResolver

+ (id)resolverWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy];

  return v4;
}

- (BBRemoteDataProviderConnectionResolver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = BBRemoteDataProviderConnectionResolver;
  v6 = [(BBRemoteDataProviderConnectionResolver *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsByService = v7->_dataProviderConnectionsByService;
    v7->_dataProviderConnectionsByService = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsBySectionID = v7->_dataProviderConnectionsBySectionID;
    v7->_dataProviderConnectionsBySectionID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProviderConnectionsByUniversalSectionID = v7->_dataProviderConnectionsByUniversalSectionID;
    v7->_dataProviderConnectionsByUniversalSectionID = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    xpcConnectionsByService = v7->_xpcConnectionsByService;
    v7->_xpcConnectionsByService = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProviderConnectionResolver", v16);
    queue = v7->_queue;
    v7->_queue = v17;

    v19 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProviderConnectionResolver.registerQueue", 0);
    registerQueue = v7->_registerQueue;
    v7->_registerQueue = v19;

    dispatch_set_target_queue(v7->_registerQueue, v7->_queue);
    dispatch_suspend(v7->_registerQueue);
    v21 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletinboard.dataproviderconnection"];
    listener = v7->_listener;
    v7->_listener = v21;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
    [(BBRemoteDataProviderConnectionResolver *)v7 _registerForPublicationNotification];
  }

  return v7;
}

- (void)_registerForPublicationNotification
{
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __77__BBRemoteDataProviderConnectionResolver__registerForPublicationNotification__block_invoke;
  handler[3] = &unk_278D2B138;
  handler[4] = self;
  notify_register_dispatch(BBServerListeningForConnectionsKey, &self->_listeningToken, queue, handler);
}

void __77__BBRemoteDataProviderConnectionResolver__registerForPublicationNotification__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  notify_cancel(self->_listeningToken);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_xpcConnectionsByService;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_xpcConnectionsByService objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v10.receiver = self;
  v10.super_class = BBRemoteDataProviderConnectionResolver;
  [(BBRemoteDataProviderConnectionResolver *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (children)
  {
    childrenCopy = children;
    do
    {
      [v5 appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@<%@: %p>", v5, v9, self];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BBRemoteDataProviderConnectionResolver_debugDescriptionWithChildren___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v12 = v10;
  v17 = v12;
  childrenCopy2 = children;
  dispatch_sync(queue, block);
  v13 = v17;
  v14 = v12;

  return v12;
}

void __71__BBRemoteDataProviderConnectionResolver_debugDescriptionWithChildren___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 32) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1[4] + 32);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(a1[4] + 32) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v6)];
          v8 = a1[5];
          v9 = [v7 debugDescriptionWithChildren:a1[6] + 2];
          [v8 appendFormat:@"\n%@", v9];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = connectionCopy;
    _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ received connection request from %{public}@", buf, 0x16u);
  }

  if (self->_listener == listenerCopy)
  {
    v15 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard.dataprovider"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      queue = self->_queue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __77__BBRemoteDataProviderConnectionResolver_listener_shouldAcceptNewConnection___block_invoke;
      v22[3] = &unk_278D2A628;
      v23 = connectionCopy;
      selfCopy = self;
      dispatch_async(queue, v22);

      v12 = 1;
      goto LABEL_5;
    }

    v18 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v26 = v21;
      v27 = 2114;
      v28 = connectionCopy;
      _os_log_impl(&dword_241EFF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling incoming data provider connection because it lacks proper entitlement: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_5:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __77__BBRemoteDataProviderConnectionResolver_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = BBDataProviderConnectionCheckinServerInterface();
  [v2 setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 resume];
}

- (void)registerServiceName:(id)name appBundleID:(id)d completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  if (nameCopy)
  {
    [(BBRemoteDataProviderConnectionResolver *)self _registerServiceName:nameCopy appBundleID:dCopy completion:completionCopy];
  }

  else
  {
    v11 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = dCopy;
      _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to register for app bundle identifier %{public}@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_registerServiceName:(id)name appBundleID:(id)d completion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  registerQueue = self->_registerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke;
  block[3] = &unk_278D2B1D8;
  block[4] = self;
  v18 = nameCopy;
  v19 = dCopy;
  v20 = currentConnection;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = currentConnection;
  v15 = dCopy;
  v16 = nameCopy;
  dispatch_async(registerQueue, block);
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = BBLogConnection;
  v4 = os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v3;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received checkin from %{public}@ [KNOWN]", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v10 = *(a1 + 32);
      v11 = v3;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 40);
      *buf = 138543618;
      v29 = v13;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ received checkin from %{public}@ [NEW]", buf, 0x16u);
    }

    v2 = [[BBRemoteDataProviderConnection alloc] initWithServiceName:*(a1 + 40) bundleID:*(a1 + 48) delegate:*(a1 + 32)];
    [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(buf, *(a1 + 32));
  objc_initWeak(&location, *(a1 + 56));
  objc_initWeak(&from, v2);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_20;
  v21[3] = &unk_278D2B188;
  v22 = *(a1 + 40);
  objc_copyWeak(&v23, buf);
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  v15 = MEMORY[0x245D05D40](v21);
  [*(a1 + 56) setInvalidationHandler:v15];
  [*(a1 + 56) setInterruptionHandler:v15];
  v16 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  [v16 invalidate];
  [*(*(a1 + 32) + 56) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 40)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_2;
  v18[3] = &unk_278D2B1B0;
  v19 = *(a1 + 64);
  objc_copyWeak(&v20, &from);
  [(BBRemoteDataProviderConnection *)v2 setConnected:1 completion:v18];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_20(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Remote data provider XPC connection for service '%{public}@' has been interrupted or invalidated", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_21;
    v8[3] = &unk_278D2B160;
    objc_copyWeak(&v10, a1 + 6);
    v8[4] = v5;
    v9 = a1[4];
    objc_copyWeak(&v11, a1 + 7);
    dispatch_async(v6, v8);
    objc_destroyWeak(&v11);

    objc_destroyWeak(&v10);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];

    WeakRetained = v5;
    if (v5 == v3)
    {
      v4 = objc_loadWeakRetained((a1 + 56));
      [v4 setConnected:0 completion:0];

      [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
      WeakRetained = v5;
    }
  }
}

void __86__BBRemoteDataProviderConnectionResolver__registerServiceName_appBundleID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

+ (id)xpcInterface
{
  if (xpcInterface_onceToken != -1)
  {
    +[BBRemoteDataProviderConnectionResolver xpcInterface];
  }

  v3 = xpcInterface___interface;

  return v3;
}

uint64_t __54__BBRemoteDataProviderConnectionResolver_xpcInterface__block_invoke()
{
  xpcInterface___interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543D510];

  return MEMORY[0x2821F96F8]();
}

- (void)remoteDataProviderNeedsToWakeClient:(id)client
{
  v20 = *MEMORY[0x277D85DE8];
  sectionIdentifier = [client sectionIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataProviderConnectionsBySectionID objectForKeyedSubscript:sectionIdentifier];
  serviceName = [v5 serviceName];
  v7 = serviceName;
  if (v5)
  {
    v8 = serviceName == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    serviceName2 = [v5 serviceName];
    bundleID = [v5 bundleID];
    [(BBRemoteDataProviderConnectionResolver *)self wakeService:serviceName2 bundleID:bundleID];

LABEL_13:
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = serviceName == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      serviceName2 = v10;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = sectionIdentifier;
      _os_log_impl(&dword_241EFF000, serviceName2, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to wake client with no serviceName for sectionID %{public}@", &v16, 0x16u);

      goto LABEL_13;
    }
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)wakeService:(id)service bundleID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dCopy = d;
  if (!serviceCopy)
  {
    [BBRemoteDataProviderConnectionResolver wakeService:a2 bundleID:self];
  }

  v9 = dispatch_group_create();
  v10 = v9;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  if (dCopy)
  {
    dispatch_group_enter(v9);
    v11 = MEMORY[0x277D46F48];
    v12 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:dCopy];
    v13 = v43;
    obj = 0;
    v14 = [v11 handleForPredicate:v12 error:&obj];
    objc_storeStrong(v13 + 5, obj);

    if (v43[5])
    {
      v15 = BBLogConnection;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = v43[5];
        *buf = 138543874;
        v49 = v17;
        v50 = 2114;
        v51 = dCopy;
        v52 = 2114;
        v53 = v18;
        _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get process handle for %{public}@; %{public}@", buf, 0x20u);
      }

      v19 = v43[5];
      v43[5] = 0;

      dispatch_group_leave(v10);
    }

    else
    {
      currentState = [v14 currentState];
      process = [currentState process];

      if (!process || [process pid] == -1)
      {
        v26 = MEMORY[0x277CBEAC0];
        v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v28 = [v26 dictionaryWithObject:v27 forKey:*MEMORY[0x277D0ABF0]];

        v29 = [MEMORY[0x277D0AD60] optionsWithDictionary:v28];
        serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke;
        v38[3] = &unk_278D2B200;
        v40 = &v42;
        v39 = v10;
        [serviceWithDefaultShellEndpoint openApplication:dCopy withOptions:v29 completion:v38];
      }

      else
      {
        v22 = BBLogConnection;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [process pid];
          *buf = 138543874;
          v49 = v24;
          v50 = 2114;
          v51 = dCopy;
          v52 = 1024;
          LODWORD(v53) = v25;
          _os_log_impl(&dword_241EFF000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ will not launch %{public}@ because it is already running with a pid of %d", buf, 0x1Cu);
        }

        dispatch_group_leave(v10);
      }
    }
  }

  queue = self->_queue;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_42;
  v34[3] = &unk_278D2A8D8;
  selfCopy = self;
  v37 = &v42;
  v35 = serviceCopy;
  v32 = serviceCopy;
  dispatch_group_notify(v10, queue, v34);

  _Block_object_dispose(&v42, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_42(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:a1[4] options:0];
    v9 = a1[5];
    v10 = [objc_opt_class() xpcInterface];
    [v8 setRemoteObjectInterface:v10];

    [v8 resume];
    v11 = [v8 remoteObjectProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__BBRemoteDataProviderConnectionResolver_wakeService_bundleID___block_invoke_2;
    v13[3] = &unk_278D2A600;
    v14 = v8;
    v4 = v8;
    [v11 ping:v13];

    goto LABEL_5;
  }

  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = a1[4];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to wake %{public}@", buf, 0x16u);

LABEL_5:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dataProviderForSectionID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BBRemoteDataProviderConnectionResolver_dataProviderForSectionID___block_invoke;
  block[3] = &unk_278D2B228;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__BBRemoteDataProviderConnectionResolver_dataProviderForSectionID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v2 = [v5 dataProviderForSectionID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dataProvidersForUniversalSectionID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BBRemoteDataProviderConnectionResolver_dataProvidersForUniversalSectionID___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v13 = dCopy;
  v7 = v5;
  v14 = v7;
  v8 = dCopy;
  dispatch_sync(queue, block);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __77__BBRemoteDataProviderConnectionResolver_dataProvidersForUniversalSectionID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) dataProvidersForUniversalSectionID:*(a1 + 40)];
        [*(a1 + 48) unionSet:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BBRemoteDataProviderConnectionResolver_removeDataProvider___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

void __61__BBRemoteDataProviderConnectionResolver_removeDataProvider___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) sectionIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  [v4 removeDataProvider:*(a1 + 40)];
}

- (void)performBlockOnDataProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(BBRemoteDataProviderConnectionResolver *)a2 performBlockOnDataProviders:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__BBRemoteDataProviderConnectionResolver_performBlockOnDataProviders___block_invoke;
  v8[3] = &unk_278D2AC38;
  v8[4] = self;
  v9 = providersCopy;
  v7 = providersCopy;
  dispatch_async(queue, v8);
}

void __70__BBRemoteDataProviderConnectionResolver_performBlockOnDataProviders___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 performBlockOnDataProviders:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion
{
  storeCopy = store;
  providerCopy = provider;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__BBRemoteDataProviderConnectionResolver_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke;
  block[3] = &unk_278D2ADF0;
  block[4] = self;
  v18 = providerCopy;
  migrationCopy = migration;
  v19 = storeCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = storeCopy;
  v16 = providerCopy;
  dispatch_async(queue, block);
}

void __107__BBRemoteDataProviderConnectionResolver_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 40);
  v4 = [*(a1 + 40) sectionIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 40) universalSectionIdentifier];
  v7 = v5;
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 48) objectForKey:v5];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(*(a1 + 32) + 48) setObject:v6 forKey:v7];
    }

    [v6 addObject:*(a1 + 48)];
  }

  [*(*(a1 + 32) + 64) dataProviderStore:*(a1 + 32) didAddDataProvider:*(a1 + 40) performMigration:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__BBRemoteDataProviderConnectionResolver_dataProviderStore_didRemoveDataProvider___block_invoke;
  v8[3] = &unk_278D2A628;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  dispatch_async(queue, v8);
}

void __82__BBRemoteDataProviderConnectionResolver_dataProviderStore_didRemoveDataProvider___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) sectionIdentifier];
  v8 = [v2 objectForKey:v3];

  v4 = *(*(a1 + 32) + 40);
  v5 = [*(a1 + 40) sectionIdentifier];
  [v4 removeObjectForKey:v5];

  v6 = [*(a1 + 40) universalSectionIdentifier];
  if (v6)
  {
    v7 = [*(*(a1 + 32) + 48) objectForKey:v6];
    [v7 removeObject:v8];
    if (![v7 count])
    {
      [*(*(a1 + 32) + 48) removeObjectForKey:v6];
    }
  }

  [*(*(a1 + 32) + 64) dataProviderStore:*(a1 + 32) didRemoveDataProvider:*(a1 + 40)];
}

- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory
{
  factoryCopy = factory;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(BBDataProviderStoreDelegate *)self->_delegate dataProviderStore:self didAddParentSectionFactory:factoryCopy];
  }
}

- (void)wakeService:(uint64_t)a1 bundleID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnectionResolver.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBRemoteDataProviderConnectionResolver.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end