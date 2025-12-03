@interface IRSessionServer
+ (BOOL)isGlobalLowLatencyMiLoWithPersistenceManager:(id)manager;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (BOOL)unregisterWithServiceIdentifier:(id)identifier withConnection:(id)connection;
- (IRSessionServer)initWithQueue:(id)queue;
- (id)registerWithServiceIdentifier:(id)identifier withConnection:(id)connection;
- (void)_dispatchToConnectionsForServiceContainer:(id)container usingBlock:(id)block;
- (void)_logConnectionsAndServices;
- (void)_logStateOnStateCaptureEvent;
- (void)_refreshUpdateModeForServiceIdentifier:(id)identifier;
- (void)dealloc;
- (void)performXPCActivityUnderServerContext:(id)context;
- (void)refreshUpdateModeForServiceIdentifier:(id)identifier;
- (void)serviceContainer:(id)container didSpotOnLocationCompleteForClientIds:(id)ids withError:(id)error;
- (void)serviceContainer:(id)container didUpdateBundlesWithSignificantInteractionPattern:(id)pattern;
- (void)serviceContainer:(id)container didUpdateContexts:(id)contexts withReason:(id)reason;
@end

@implementation IRSessionServer

- (IRSessionServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v44.receiver = self;
  v44.super_class = IRSessionServer;
  v5 = [(IRSessionServer *)&v44 init];
  v6 = v5;
  if (v5)
  {
    [(IRSessionServer *)v5 setQueue:queueCopy];
    [(IRSessionServer *)v6 setLock:0];
    v7 = objc_opt_new();
    [(IRSessionServer *)v6 setConnections:v7];

    v8 = objc_opt_new();
    [(IRSessionServer *)v6 setServices:v8];

    v9 = objc_alloc_init(IRAVOutputDeviceProvider);
    [(IRSessionServer *)v6 setAvOutputDeviceProvider:v9];

    v10 = [IRAVOutputDeviceDiscoverySessionController alloc];
    avOutputDeviceProvider = [(IRSessionServer *)v6 avOutputDeviceProvider];
    v12 = [(IRAVOutputDeviceDiscoverySessionController *)v10 initWithAVOutputDeviceProvider:avOutputDeviceProvider];
    avOutputDeviceProvider2 = [(IRSessionServer *)v6 avOutputDeviceProvider];
    [avOutputDeviceProvider2 setDiscoverySessionController:v12];

    v14 = objc_alloc_init(IRPersistenceManager);
    [(IRSessionServer *)v6 setPersistenceManager:v14];

    v15 = objc_alloc_init(IRBiomeProvider);
    [(IRSessionServer *)v6 setBiomeProvider:v15];

    biomeProvider = [(IRSessionServer *)v6 biomeProvider];
    createStandardBiomeInterface = [biomeProvider createStandardBiomeInterface];
    biomeProvider2 = [(IRSessionServer *)v6 biomeProvider];
    [biomeProvider2 setBiomeInterface:createStandardBiomeInterface];

    v19 = objc_alloc_init(IRRapportProvider);
    [(IRSessionServer *)v6 setRapportProvider:v19];

    v20 = objc_alloc_init(IRProximityProvider);
    [(IRSessionServer *)v6 setProximityProvider:v20];

    v21 = [[IRBackgroundActivitiesManager alloc] initWithServer:v6];
    [(IRSessionServer *)v6 setBackgroundActivitiesManager:v21];

    v22 = objc_alloc_init(IRDisplayMonitor);
    [(IRSessionServer *)v6 setDisplayMonitor:v22];

    v23 = [[IRAVOutputContextController alloc] initWithOutputContextType:0];
    [(IRSessionServer *)v6 setAudioAVOutputContextController:v23];

    v24 = [IRAnalyticsManager alloc];
    backgroundActivitiesManager = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v26 = [(IRAnalyticsManager *)v24 initWithBackgroundActivitiesManager:backgroundActivitiesManager];
    [(IRSessionServer *)v6 setAnalyticsManager:v26];

    v27 = [IRCleanupManager alloc];
    backgroundActivitiesManager2 = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v29 = [(IRCleanupManager *)v27 initWithBackgroundActivitiesManager:backgroundActivitiesManager2];
    [(IRSessionServer *)v6 setCleanupManager:v29];

    v30 = [IRMobileAssetManager alloc];
    backgroundActivitiesManager3 = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v32 = [(IRMobileAssetManager *)v30 initWithBackgroundActivitiesManager:backgroundActivitiesManager3];
    [(IRSessionServer *)v6 setMobileAssetManager:v32];

    persistenceManager = [(IRSessionServer *)v6 persistenceManager];
    LODWORD(backgroundActivitiesManager3) = [persistenceManager connectToStore];

    if (backgroundActivitiesManager3)
    {
      persistenceManager2 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore idendifyAndDeleteDuplicateServicesWithWithPersistenceManager:persistenceManager2];

      persistenceManager3 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore adjustDBToStaticTokens:persistenceManager3];

      persistenceManager4 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore adjustFirstSeenDateOfCandidates:persistenceManager4];
    }

    else
    {
      v37 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRSessionServer initWithQueue:v37];
      }
    }

    objc_initWeak(&location, v6);
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("com.apple.intelligentroutingd.stateCapture", v38);
    v41 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v42, &location);
    [(IRSessionServer *)v6 setStateCaptureHandle:os_state_add_handler(), v41, 3221225472, __33__IRSessionServer_initWithQueue___block_invoke, &unk_2797E25E0];

    notify_post([*MEMORY[0x277D21278] UTF8String]);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __33__IRSessionServer_initWithQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _logStateOnStateCaptureEvent];
    }
  }

  return 0;
}

- (id)registerWithServiceIdentifier:(id)identifier withConnection:(id)connection
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  connections = [(IRSessionServer *)self connections];
  v9 = [connections objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    connections2 = [(IRSessionServer *)self connections];
    v11 = [connections2 objectForKeyedSubscript:identifierCopy];
    v12 = [v11 containsObject:connectionCopy];

    if (v12)
    {
      v13 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v35 = MEMORY[0x277CCABB0];
        client = [connectionCopy client];
        connection = [client connection];
        v38 = [v35 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
        *buf = 138412546;
        v44 = identifierCopy;
        v45 = 2112;
        v46 = v38;
        _os_log_error_impl(&dword_25543D000, v13, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Duplicate connection] Registering the same connection twice: %@ for pid: %@", buf, 0x16u);
      }

LABEL_6:
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v15 = objc_opt_new();
    connections3 = [(IRSessionServer *)self connections];
    [connections3 setObject:v15 forKeyedSubscript:identifierCopy];
  }

  connections4 = [(IRSessionServer *)self connections];
  v18 = [connections4 objectForKeyedSubscript:identifierCopy];
  [v18 addObject:connectionCopy];

  services = [(IRSessionServer *)self services];
  v14 = [services objectForKeyedSubscript:identifierCopy];

  if (!v14)
  {
    v40 = [IRServiceContainer alloc];
    avOutputDeviceProvider = [(IRSessionServer *)self avOutputDeviceProvider];
    biomeProvider = [(IRSessionServer *)self biomeProvider];
    rapportProvider = [(IRSessionServer *)self rapportProvider];
    proximityProvider = [(IRSessionServer *)self proximityProvider];
    persistenceManager = [(IRSessionServer *)self persistenceManager];
    displayMonitor = [(IRSessionServer *)self displayMonitor];
    audioAVOutputContextController = [(IRSessionServer *)self audioAVOutputContextController];
    persistenceManager2 = [(IRSessionServer *)self persistenceManager];
    LOBYTE(v39) = [IRSessionServer isGlobalLowLatencyMiLoWithPersistenceManager:persistenceManager2];
    v14 = [(IRServiceContainer *)v40 initWithServiceIdentifier:identifierCopy delegate:self avOutputDeviceProvider:avOutputDeviceProvider biomeProvider:biomeProvider rapportProvider:rapportProvider proximityProvider:proximityProvider persistenceManager:persistenceManager displayMonitor:displayMonitor audioAVOutputContextController:audioAVOutputContextController isLowLatencyMiLo:v39];

    if (!v14)
    {
      v34 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRSessionServer registerWithServiceIdentifier:identifierCopy withConnection:v34];
      }

      goto LABEL_6;
    }

    services2 = [(IRSessionServer *)self services];
    [services2 setObject:v14 forKeyedSubscript:identifierCopy];
  }

  [(IRServiceContainer *)v14 requestUpdatedBundlesWithSignificantInteraction];
  v27 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = MEMORY[0x277CCABB0];
    client2 = [connectionCopy client];
    connection2 = [client2 connection];
    v31 = [v28 numberWithInt:{objc_msgSend(connection2, "processIdentifier")}];
    *buf = 138412546;
    v44 = identifierCopy;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_25543D000, v27, OS_LOG_TYPE_DEFAULT, "#session-server, New connection registered for serviceIdentifier: %@ and pid: %@", buf, 0x16u);
  }

  [(IRSessionServer *)self _logConnectionsAndServices];
LABEL_14:
  os_unfair_lock_unlock(&self->_lock);

  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)unregisterWithServiceIdentifier:(id)identifier withConnection:(id)connection
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  connections = [(IRSessionServer *)self connections];
  v9 = [connections objectForKeyedSubscript:identifierCopy];
  v10 = [v9 containsObject:connectionCopy];

  if ((v10 & 1) == 0)
  {
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x277CCABB0];
      client = [connectionCopy client];
      connection = [client connection];
      v22 = [v19 numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
      v39 = 138412546;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = v22;
      _os_log_error_impl(&dword_25543D000, v18, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Unregister unavailable connection] Unregistering a connection which is not available: %@ for pid: %@", &v39, 0x16u);
    }

    goto LABEL_9;
  }

  services = [(IRSessionServer *)self services];
  v12 = [services objectForKeyedSubscript:identifierCopy];

  if (!v12)
  {
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x277CCABB0];
      client2 = [connectionCopy client];
      connection2 = [client2 connection];
      v38 = [v35 numberWithInt:{objc_msgSend(connection2, "processIdentifier")}];
      v39 = 138412546;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = v38;
      _os_log_error_impl(&dword_25543D000, v18, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Unregister unavailable identifier] Unregistering a serviceIdentifier which is not available: %@ for pid: %@", &v39, 0x16u);
    }

LABEL_9:

    v23 = 0;
    goto LABEL_14;
  }

  connections2 = [(IRSessionServer *)self connections];
  v14 = [connections2 objectForKeyedSubscript:identifierCopy];
  [v14 removeObject:connectionCopy];

  connections3 = [(IRSessionServer *)self connections];
  v16 = [connections3 objectForKeyedSubscript:identifierCopy];
  v17 = [v16 count];

  if (v17)
  {
    [(IRSessionServer *)self _refreshUpdateModeForServiceIdentifier:identifierCopy];
  }

  else
  {
    connections4 = [(IRSessionServer *)self connections];
    [connections4 removeObjectForKey:identifierCopy];

    services2 = [(IRSessionServer *)self services];
    v26 = [services2 objectForKeyedSubscript:identifierCopy];
    [v26 deallocSync];

    services3 = [(IRSessionServer *)self services];
    [services3 removeObjectForKey:identifierCopy];
  }

  v28 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = MEMORY[0x277CCABB0];
    client3 = [connectionCopy client];
    connection3 = [client3 connection];
    v32 = [v29 numberWithInt:{objc_msgSend(connection3, "processIdentifier")}];
    v39 = 138412546;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = v32;
    _os_log_impl(&dword_25543D000, v28, OS_LOG_TYPE_DEFAULT, "#session-server, Unregister connection for serviceIdentifier: %@ and pid: %@", &v39, 0x16u);
  }

  [(IRSessionServer *)self _logConnectionsAndServices];
  v23 = 1;
LABEL_14:
  os_unfair_lock_unlock(&self->_lock);

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  v5 = [[IRSessionClientProxy alloc] initWithConnection:connectionCopy];
  if (v5)
  {
    v6 = [[IRSessionConnection alloc] initWithServer:self client:v5];
    v7 = IRMakeXPCServerInterface();
    [connectionCopy setExportedInterface:v7];

    v8 = IRMakeXPCClientInterface();
    [connectionCopy setRemoteObjectInterface:v8];

    [connectionCopy setExportedObject:v6];
    objc_initWeak(&location, v6);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__IRSessionServer_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_2797E0C18;
    objc_copyWeak(&v17, &location);
    [connectionCopy setInterruptionHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__IRSessionServer_shouldAcceptNewConnection___block_invoke_2;
    v14[3] = &unk_2797E0C18;
    objc_copyWeak(&v15, &location);
    [connectionCopy setInvalidationHandler:v14];
    [connectionCopy resume];
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#session-server, Accepting connection for pid: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
      [(IRSessionServer *)v11 shouldAcceptNewConnection:buf, &v6->super];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

void __45__IRSessionServer_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained xpcInvalidationHandler];
}

void __45__IRSessionServer_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained xpcInterruptionHandler];
}

- (void)performXPCActivityUnderServerContext:(id)context
{
  contextCopy = context;
  queue = [(IRSessionServer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__IRSessionServer_performXPCActivityUnderServerContext___block_invoke;
  v7[3] = &unk_2797E2608;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __56__IRSessionServer_performXPCActivityUnderServerContext___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  os_unfair_lock_lock(v3 + 2);
  v4 = *(a1 + 40);
  v5 = [v7 persistenceManager];
  v6 = [v7 services];
  (*(v4 + 16))(v4, v5, v6);

  os_unfair_lock_unlock(v3 + 2);
}

- (void)refreshUpdateModeForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  services = [(IRSessionServer *)self services];
  v6 = [services objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    [(IRSessionServer *)self _refreshUpdateModeForServiceIdentifier:identifierCopy];
  }

  else
  {
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRSessionServer *)identifierCopy refreshUpdateModeForServiceIdentifier:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

+ (BOOL)isGlobalLowLatencyMiLoWithPersistenceManager:(id)manager
{
  v28 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if ([managerCopy connectToStore])
  {
    [IRServiceStore fetchAllServicesWithPersistenceManager:managerCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v22)
    {
      v21 = *v24;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v23 + 1) + 8 * i);
          v6 = [IRServiceStore alloc];
          serviceIdentifier = [v5 serviceIdentifier];
          v8 = managerCopy;
          v9 = [(IRServiceStore *)v6 initWithPersistenceManager:managerCopy serviceIdentifier:serviceIdentifier];

          v10 = IRCreateServicePackageAdapter([v5 servicePackage]);
          fetchCandidatesContainer = [(IRServiceStore *)v9 fetchCandidatesContainer];
          v12 = +[IRPreferences shared];
          numberOfHistoryEventsInCache = [v12 numberOfHistoryEventsInCache];
          v14 = -[IRServiceStore fetchHistoryEventsContainerWithLimit:](v9, "fetchHistoryEventsContainerWithLimit:", [numberOfHistoryEventsInCache unsignedIntValue]);
          historyEvents = [v14 historyEvents];
          v16 = [v10 shouldAskForLowLatencyMiLo:fetchCandidatesContainer historyEventsAsc:historyEvents];

          if (v16)
          {
            v17 = 1;
            managerCopy = v8;
            goto LABEL_13;
          }

          managerCopy = v8;
        }

        v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  [(IRSessionServer *)self stateCaptureHandle];
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = IRSessionServer;
  [(IRSessionServer *)&v3 dealloc];
}

- (void)_refreshUpdateModeForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  services = [(IRSessionServer *)self services];
  v12 = [services objectForKeyedSubscript:identifierCopy];

  getUpdateMode = [v12 getUpdateMode];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"mode", &unk_2867692F8];
  connections = [(IRSessionServer *)self connections];
  v9 = [connections objectForKeyedSubscript:identifierCopy];

  v10 = [v9 filteredArrayUsingPredicate:v7];
  v11 = [v10 count] != 0;

  if (getUpdateMode != v11)
  {
    [v12 setUpdateMode:v11];
  }
}

- (void)_logConnectionsAndServices
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = v3;
    services = [(IRSessionServer *)self services];
    v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(services, "count")}];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-server, Number of active services: %@", &v10, 0xCu);
  }

  connections = [(IRSessionServer *)self connections];
  [connections enumerateKeysAndObjectsUsingBlock:&__block_literal_global_24];

  v9 = *MEMORY[0x277D85DE8];
}

void __45__IRSessionServer__logConnectionsAndServices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#session-server, [%@]: number of active connections: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_logStateOnStateCaptureEvent
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D21270];
  v4 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = +[IRPreferences shared];
    preferenceString = [v6 preferenceString];
    v23 = 138412290;
    v24 = preferenceString;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    persistenceManager = [(IRSessionServer *)self persistenceManager];
    v11 = [IRServiceStore generateLogForStringNumEntitiesInDatabaseWithPersistenceManager:persistenceManager];
    v23 = 138412290;
    v24 = v11;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v12 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    persistenceManager2 = [(IRSessionServer *)self persistenceManager];
    v15 = [IRServiceStore generateLogForServicesDatabaseWithPersistenceManager:persistenceManager2];
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&dword_25543D000, v13, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  rapportProvider = [(IRSessionServer *)self rapportProvider];
  [rapportProvider logActiveDevices];

  avOutputDeviceProvider = [(IRSessionServer *)self avOutputDeviceProvider];
  [avOutputDeviceProvider logActiveDevices];

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = +[IRAirPlaySettings shared];
    dumpState = [v20 dumpState];
    v23 = 138412290;
    v24 = dumpState;
    _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchToConnectionsForServiceContainer:(id)container usingBlock:(id)block
{
  containerCopy = container;
  blockCopy = block;
  queue = [(IRSessionServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__IRSessionServer_IRServiceContainerDelegate___dispatchToConnectionsForServiceContainer_usingBlock___block_invoke;
  v11[3] = &unk_2797E2678;
  v11[4] = self;
  v12 = containerCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = containerCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v11);
}

void __100__IRSessionServer_IRServiceContainerDelegate___dispatchToConnectionsForServiceContainer_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock(v4 + 2);
  v5 = [*(a1 + 40) serviceIdentifier];
  if (v5)
  {
    v6 = [v3 connections];
    v7 = [v6 objectForKeyedSubscript:v5];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__IRSessionServer_IRServiceContainerDelegate___dispatchToConnectionsForServiceContainer_usingBlock___block_invoke_2;
    v8[3] = &unk_2797E2650;
    v9 = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v8];
  }

  os_unfair_lock_unlock(v4 + 2);
}

- (void)serviceContainer:(id)container didUpdateContexts:(id)contexts withReason:(id)reason
{
  contextsCopy = contexts;
  reasonCopy = reason;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didUpdateContexts_withReason___block_invoke;
  v12[3] = &unk_2797E26A0;
  v13 = contextsCopy;
  v14 = reasonCopy;
  v10 = reasonCopy;
  v11 = contextsCopy;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:container usingBlock:v12];
}

- (void)serviceContainer:(id)container didSpotOnLocationCompleteForClientIds:(id)ids withError:(id)error
{
  idsCopy = ids;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __112__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didSpotOnLocationCompleteForClientIds_withError___block_invoke;
  v12[3] = &unk_2797E26A0;
  v13 = idsCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = idsCopy;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:container usingBlock:v12];
}

void __112__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didSpotOnLocationCompleteForClientIds_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 client];
  v6 = [v5 clientIdentifier];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    [v7 didSpotOnLocationComplete:*(a1 + 40)];
  }
}

- (void)serviceContainer:(id)container didUpdateBundlesWithSignificantInteractionPattern:(id)pattern
{
  patternCopy = pattern;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __114__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didUpdateBundlesWithSignificantInteractionPattern___block_invoke;
  v8[3] = &unk_2797E26C8;
  v9 = patternCopy;
  v7 = patternCopy;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:container usingBlock:v8];
}

- (void)registerWithServiceIdentifier:(uint64_t)a1 withConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Service create error] Could not create a new service for identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)shouldAcceptNewConnection:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_25543D000, log, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Client proxy create error] Cant create a client proxy, rejecting connection for pid: %@", buf, 0xCu);
}

- (void)refreshUpdateModeForServiceIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Refresh unavailable service] Refreshing update mode for a a serviceIdentifier which is not available: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end