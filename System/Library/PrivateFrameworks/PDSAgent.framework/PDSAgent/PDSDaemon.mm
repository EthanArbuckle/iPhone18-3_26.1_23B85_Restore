@interface PDSDaemon
- (PDSCDCache)underlyingStorage;
- (PDSDaemon)initWithConfiguration:(id)configuration;
- (PDSEntryStore)entryStore;
- (id)_entryStore;
- (id)_underlyingStorage;
- (id)remoteInternalListener;
- (id)remoteListenerForAllClientIDs;
- (id)remoteListenerForClientIDs:(id)ds;
- (void)_setupSysdiagnoseDump;
- (void)_underlyingStorage;
- (void)start;
@end

@implementation PDSDaemon

- (PDSDaemon)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [PDSDaemon initWithConfiguration:];
  }

  queue = [configurationCopy queue];

  if (!queue)
  {
    [PDSDaemon initWithConfiguration:];
  }

  workloop = [configurationCopy workloop];

  if (!workloop)
  {
    [PDSDaemon initWithConfiguration:];
  }

  daemonRootDirectory = [configurationCopy daemonRootDirectory];

  if (!daemonRootDirectory)
  {
    [PDSDaemon initWithConfiguration:];
  }

  pushHandlerPort = [configurationCopy pushHandlerPort];

  if (!pushHandlerPort)
  {
    [PDSDaemon initWithConfiguration:];
  }

  v13.receiver = self;
  v13.super_class = PDSDaemon;
  v9 = [(PDSDaemon *)&v13 init];
  if (v9)
  {
    v10 = [configurationCopy copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;
  }

  return v9;
}

- (void)start
{
  configuration = [(PDSDaemon *)self configuration];
  queue = [configuration queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__PDSDaemon_start__block_invoke;
  block[3] = &unk_2799F82F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __18__PDSDaemon_start__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D37AD8] setDisableXPC:1];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 workloop];
  v5 = dispatch_queue_create_with_target_V2("com.apple.pds.idsd.queue", v2, v4);

  v48 = [[PDSDaemonRemoteVendor alloc] initWithQueue:v5 daemonListenerVendor:*(a1 + 32)];
  [MEMORY[0x277D37AC8] registerGlobalVendor:?];
  v6 = [*(a1 + 32) configuration];
  v7 = [v6 workloop];
  v8 = createPDSServerBag(v7);
  [*(a1 + 32) setBag:v8];

  v9 = [*(a1 + 32) bag];
  [v9 startBagLoad];

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PDSCurrentServerEnvironment();
    v12 = PDSStringForServerEnvironment(v11);
    v13 = [*(a1 + 32) configuration];
    *buf = 138412546;
    v62 = v12;
    v63 = 2112;
    v64 = v13;
    _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "Starting PDSAgent [Environment %@] [Configuration %@]", buf, 0x16u);
  }

  v14 = [PDSCDCacheContainer alloc];
  v15 = [*(a1 + 32) configuration];
  v16 = [v15 daemonRootDirectory];
  v17 = [(PDSCDCacheContainer *)v14 initWithContainingPath:v16];
  [*(a1 + 32) setCacheContainer:v17];

  v18 = objc_alloc_init(PDSUserTracker);
  [*(a1 + 32) setUserTracker:v18];

  v19 = [*(a1 + 32) configuration];
  v20 = [v19 queue];

  objc_initWeak(buf, *(a1 + 32));
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __18__PDSDaemon_start__block_invoke_61;
  v59[3] = &unk_2799F83C8;
  v50 = v20;
  v60 = v50;
  v52 = MEMORY[0x25F8A7090](v59);
  v21 = objc_alloc(MEMORY[0x277D07DD0]);
  v22 = [*(a1 + 32) bag];
  v51 = [v21 initWithIDSServerBag:v22];

  v23 = [PDSRequestQueue alloc];
  v24 = [*(a1 + 32) userTracker];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __18__PDSDaemon_start__block_invoke_2;
  v57[3] = &unk_2799F83F0;
  objc_copyWeak(&v58, buf);
  v25 = [(PDSRequestQueue *)v23 initWithMessageDelivery:v51 userTracker:v24 queue:v50 pushTokenBlock:v52 entryStoreBlock:v57];
  [*(a1 + 32) setRequestQueue:v25];

  v26 = MEMORY[0x277D18A00];
  v27 = [*(a1 + 32) configuration];
  v28 = [v27 pushHandlerPort];
  v49 = [v26 sharedInstanceWithPortName:v28];

  v29 = [PDSCoordinator alloc];
  v30 = [*(a1 + 32) configuration];
  v31 = [v30 queue];
  v32 = [*(a1 + 32) bag];
  v33 = [*(a1 + 32) requestQueue];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __18__PDSDaemon_start__block_invoke_3;
  v55[3] = &unk_2799F8418;
  objc_copyWeak(&v56, buf);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __18__PDSDaemon_start__block_invoke_4;
  v53[3] = &unk_2799F83F0;
  objc_copyWeak(&v54, buf);
  v34 = [MEMORY[0x277D192A8] sharedInstance];
  v35 = [(PDSCoordinator *)v29 initWithQueue:v31 serverBag:v32 requestQueue:v33 kvStoreBlock:v55 entryStoreBlock:v53 pushTokenBlock:v52 systemMonitor:v34 pushHandler:v49];
  [*(a1 + 32) setCoordinator:v35];

  v36 = [*(a1 + 32) coordinator];
  [v36 registerIfNeeded];

  v37 = [PDSXPCServer alloc];
  v38 = [MEMORY[0x277D37AD8] defaultListenerVendor];
  v39 = [MEMORY[0x277D37AD8] defaultInterfaceVendor];
  v40 = *(a1 + 32);
  v41 = [v40 configuration];
  v42 = [v41 queue];
  v43 = [*(a1 + 32) configuration];
  v44 = [v43 workloop];
  v45 = [(PDSXPCServer *)v37 initWithServiceName:*MEMORY[0x277D37B00] listenerVendor:v38 interfaceVendor:v39 daemonListenerVendor:v40 queue:v42 workloop:v44];
  [*(a1 + 32) setXPCServer:v45];

  v46 = [*(a1 + 32) XPCServer];
  [v46 resume];

  [*(a1 + 32) _setupSysdiagnoseDump];
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);

  objc_destroyWeak(&v58);
  objc_destroyWeak(buf);

  v47 = *MEMORY[0x277D85DE8];
}

id __18__PDSDaemon_start__block_invoke_61(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEEA10];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithEnvironmentName:v4 namedDelegatePort:*MEMORY[0x277CEE9D8] queue:*(a1 + 32)];

  v7 = [v6 publicToken];

  return v7;
}

id __18__PDSDaemon_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _entryStore];

  return v2;
}

id __18__PDSDaemon_start__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _underlyingStorage];

  return v2;
}

id __18__PDSDaemon_start__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _entryStore];

  return v2;
}

- (id)remoteListenerForClientIDs:(id)ds
{
  dsCopy = ds;
  _entryStore = [(PDSDaemon *)self _entryStore];
  if (_entryStore)
  {
    v6 = [PDSDaemonListener alloc];
    userTracker = [(PDSDaemon *)self userTracker];
    v8 = [(PDSDaemonListener *)v6 initWithClientIDs:dsCopy entryStore:_entryStore userTracker:userTracker];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteListenerForAllClientIDs
{
  _entryStore = [(PDSDaemon *)self _entryStore];
  if (_entryStore)
  {
    v4 = [PDSDaemonListener alloc];
    userTracker = [(PDSDaemon *)self userTracker];
    v6 = [(PDSDaemonListener *)v4 initWithEntryStore:_entryStore userTracker:userTracker];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)remoteInternalListener
{
  v3 = [PDSInternalDaemonListener alloc];
  _underlyingStorage = [(PDSDaemon *)self _underlyingStorage];
  v5 = [(PDSInternalDaemonListener *)v3 initWithKVStore:_underlyingStorage];

  return v5;
}

- (id)_underlyingStorage
{
  underlyingStorage = [(PDSDaemon *)self underlyingStorage];
  if (!underlyingStorage)
  {
    cacheContainer = [(PDSDaemon *)self cacheContainer];
    v8 = 0;
    underlyingStorage = [cacheContainer loadWithError:&v8];
    v5 = v8;

    if (!underlyingStorage)
    {
      v6 = pds_defaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(PDSDaemon *)v5 _underlyingStorage];
      }
    }
  }

  return underlyingStorage;
}

- (id)_entryStore
{
  entryStore = [(PDSDaemon *)self entryStore];
  if (!entryStore)
  {
    _underlyingStorage = [(PDSDaemon *)self _underlyingStorage];
    if (_underlyingStorage)
    {
      v5 = _underlyingStorage;
      entryStore = [[PDSEntryStore alloc] initWithCache:_underlyingStorage];
      [(PDSDaemon *)self setEntryStore:entryStore];
      coordinator = [(PDSDaemon *)self coordinator];
      [(PDSEntryStore *)entryStore setDelegate:coordinator];
    }

    else
    {
      entryStore = 0;
    }
  }

  return entryStore;
}

- (void)_setupSysdiagnoseDump
{
  configuration = [(PDSDaemon *)self configuration];
  queue = [configuration queue];
  IMLogRegisterStateToSysdiagnoseBlock();
}

id __34__PDSDaemon__setupSysdiagnoseDump__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _entryStore];
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v2 appendString:@"Users:\n"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [v1 users];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 appendFormat:@"%@\n", *(*(&v19 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    [v2 appendString:@"Entries:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v1 entries];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v2 appendFormat:@"\t%@\n", *(*(&v15 + 1) + 8 * j)];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

- (PDSEntryStore)entryStore
{
  WeakRetained = objc_loadWeakRetained(&self->_entryStore);

  return WeakRetained;
}

- (PDSCDCache)underlyingStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingStorage);

  return WeakRetained;
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.workloop" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.daemonRootDirectory" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"configuration.pushHandlerPort" object:? file:? lineNumber:? description:?];
}

- (void)_underlyingStorage
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25DED8000, a2, OS_LOG_TYPE_ERROR, "Failed loading cache {error: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end