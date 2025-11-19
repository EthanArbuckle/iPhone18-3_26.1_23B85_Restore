@interface IRSessionServer
+ (BOOL)isGlobalLowLatencyMiLoWithPersistenceManager:(id)a3;
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (BOOL)unregisterWithServiceIdentifier:(id)a3 withConnection:(id)a4;
- (IRSessionServer)initWithQueue:(id)a3;
- (id)registerWithServiceIdentifier:(id)a3 withConnection:(id)a4;
- (void)_dispatchToConnectionsForServiceContainer:(id)a3 usingBlock:(id)a4;
- (void)_logConnectionsAndServices;
- (void)_logStateOnStateCaptureEvent;
- (void)_refreshUpdateModeForServiceIdentifier:(id)a3;
- (void)dealloc;
- (void)performXPCActivityUnderServerContext:(id)a3;
- (void)refreshUpdateModeForServiceIdentifier:(id)a3;
- (void)serviceContainer:(id)a3 didSpotOnLocationCompleteForClientIds:(id)a4 withError:(id)a5;
- (void)serviceContainer:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4;
- (void)serviceContainer:(id)a3 didUpdateContexts:(id)a4 withReason:(id)a5;
@end

@implementation IRSessionServer

- (IRSessionServer)initWithQueue:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = IRSessionServer;
  v5 = [(IRSessionServer *)&v44 init];
  v6 = v5;
  if (v5)
  {
    [(IRSessionServer *)v5 setQueue:v4];
    [(IRSessionServer *)v6 setLock:0];
    v7 = objc_opt_new();
    [(IRSessionServer *)v6 setConnections:v7];

    v8 = objc_opt_new();
    [(IRSessionServer *)v6 setServices:v8];

    v9 = objc_alloc_init(IRAVOutputDeviceProvider);
    [(IRSessionServer *)v6 setAvOutputDeviceProvider:v9];

    v10 = [IRAVOutputDeviceDiscoverySessionController alloc];
    v11 = [(IRSessionServer *)v6 avOutputDeviceProvider];
    v12 = [(IRAVOutputDeviceDiscoverySessionController *)v10 initWithAVOutputDeviceProvider:v11];
    v13 = [(IRSessionServer *)v6 avOutputDeviceProvider];
    [v13 setDiscoverySessionController:v12];

    v14 = objc_alloc_init(IRPersistenceManager);
    [(IRSessionServer *)v6 setPersistenceManager:v14];

    v15 = objc_alloc_init(IRBiomeProvider);
    [(IRSessionServer *)v6 setBiomeProvider:v15];

    v16 = [(IRSessionServer *)v6 biomeProvider];
    v17 = [v16 createStandardBiomeInterface];
    v18 = [(IRSessionServer *)v6 biomeProvider];
    [v18 setBiomeInterface:v17];

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
    v25 = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v26 = [(IRAnalyticsManager *)v24 initWithBackgroundActivitiesManager:v25];
    [(IRSessionServer *)v6 setAnalyticsManager:v26];

    v27 = [IRCleanupManager alloc];
    v28 = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v29 = [(IRCleanupManager *)v27 initWithBackgroundActivitiesManager:v28];
    [(IRSessionServer *)v6 setCleanupManager:v29];

    v30 = [IRMobileAssetManager alloc];
    v31 = [(IRSessionServer *)v6 backgroundActivitiesManager];
    v32 = [(IRMobileAssetManager *)v30 initWithBackgroundActivitiesManager:v31];
    [(IRSessionServer *)v6 setMobileAssetManager:v32];

    v33 = [(IRSessionServer *)v6 persistenceManager];
    LODWORD(v31) = [v33 connectToStore];

    if (v31)
    {
      v34 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore idendifyAndDeleteDuplicateServicesWithWithPersistenceManager:v34];

      v35 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore adjustDBToStaticTokens:v35];

      v36 = [(IRSessionServer *)v6 persistenceManager];
      [IRServiceStore adjustFirstSeenDateOfCandidates:v36];
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

- (id)registerWithServiceIdentifier:(id)a3 withConnection:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(IRSessionServer *)self connections];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [(IRSessionServer *)self connections];
    v11 = [v10 objectForKeyedSubscript:v6];
    v12 = [v11 containsObject:v7];

    if (v12)
    {
      v13 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [v7 client];
        v37 = [v36 connection];
        v38 = [v35 numberWithInt:{objc_msgSend(v37, "processIdentifier")}];
        *buf = 138412546;
        v44 = v6;
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
    v16 = [(IRSessionServer *)self connections];
    [v16 setObject:v15 forKeyedSubscript:v6];
  }

  v17 = [(IRSessionServer *)self connections];
  v18 = [v17 objectForKeyedSubscript:v6];
  [v18 addObject:v7];

  v19 = [(IRSessionServer *)self services];
  v14 = [v19 objectForKeyedSubscript:v6];

  if (!v14)
  {
    v40 = [IRServiceContainer alloc];
    v42 = [(IRSessionServer *)self avOutputDeviceProvider];
    v41 = [(IRSessionServer *)self biomeProvider];
    v20 = [(IRSessionServer *)self rapportProvider];
    v21 = [(IRSessionServer *)self proximityProvider];
    v22 = [(IRSessionServer *)self persistenceManager];
    v23 = [(IRSessionServer *)self displayMonitor];
    v24 = [(IRSessionServer *)self audioAVOutputContextController];
    v25 = [(IRSessionServer *)self persistenceManager];
    LOBYTE(v39) = [IRSessionServer isGlobalLowLatencyMiLoWithPersistenceManager:v25];
    v14 = [(IRServiceContainer *)v40 initWithServiceIdentifier:v6 delegate:self avOutputDeviceProvider:v42 biomeProvider:v41 rapportProvider:v20 proximityProvider:v21 persistenceManager:v22 displayMonitor:v23 audioAVOutputContextController:v24 isLowLatencyMiLo:v39];

    if (!v14)
    {
      v34 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRSessionServer registerWithServiceIdentifier:v6 withConnection:v34];
      }

      goto LABEL_6;
    }

    v26 = [(IRSessionServer *)self services];
    [v26 setObject:v14 forKeyedSubscript:v6];
  }

  [(IRServiceContainer *)v14 requestUpdatedBundlesWithSignificantInteraction];
  v27 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [v7 client];
    v30 = [v29 connection];
    v31 = [v28 numberWithInt:{objc_msgSend(v30, "processIdentifier")}];
    *buf = 138412546;
    v44 = v6;
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

- (BOOL)unregisterWithServiceIdentifier:(id)a3 withConnection:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(IRSessionServer *)self connections];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0)
  {
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = [v7 client];
      v21 = [v20 connection];
      v22 = [v19 numberWithInt:{objc_msgSend(v21, "processIdentifier")}];
      v39 = 138412546;
      v40 = v6;
      v41 = 2112;
      v42 = v22;
      _os_log_error_impl(&dword_25543D000, v18, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Unregister unavailable connection] Unregistering a connection which is not available: %@ for pid: %@", &v39, 0x16u);
    }

    goto LABEL_9;
  }

  v11 = [(IRSessionServer *)self services];
  v12 = [v11 objectForKeyedSubscript:v6];

  if (!v12)
  {
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [v7 client];
      v37 = [v36 connection];
      v38 = [v35 numberWithInt:{objc_msgSend(v37, "processIdentifier")}];
      v39 = 138412546;
      v40 = v6;
      v41 = 2112;
      v42 = v38;
      _os_log_error_impl(&dword_25543D000, v18, OS_LOG_TYPE_ERROR, "#session-server, [ErrorId - Unregister unavailable identifier] Unregistering a serviceIdentifier which is not available: %@ for pid: %@", &v39, 0x16u);
    }

LABEL_9:

    v23 = 0;
    goto LABEL_14;
  }

  v13 = [(IRSessionServer *)self connections];
  v14 = [v13 objectForKeyedSubscript:v6];
  [v14 removeObject:v7];

  v15 = [(IRSessionServer *)self connections];
  v16 = [v15 objectForKeyedSubscript:v6];
  v17 = [v16 count];

  if (v17)
  {
    [(IRSessionServer *)self _refreshUpdateModeForServiceIdentifier:v6];
  }

  else
  {
    v24 = [(IRSessionServer *)self connections];
    [v24 removeObjectForKey:v6];

    v25 = [(IRSessionServer *)self services];
    v26 = [v25 objectForKeyedSubscript:v6];
    [v26 deallocSync];

    v27 = [(IRSessionServer *)self services];
    [v27 removeObjectForKey:v6];
  }

  v28 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = [v7 client];
    v31 = [v30 connection];
    v32 = [v29 numberWithInt:{objc_msgSend(v31, "processIdentifier")}];
    v39 = 138412546;
    v40 = v6;
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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [[IRSessionClientProxy alloc] initWithConnection:v4];
  if (v5)
  {
    v6 = [[IRSessionConnection alloc] initWithServer:self client:v5];
    v7 = IRMakeXPCServerInterface();
    [v4 setExportedInterface:v7];

    v8 = IRMakeXPCClientInterface();
    [v4 setRemoteObjectInterface:v8];

    [v4 setExportedObject:v6];
    objc_initWeak(&location, v6);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__IRSessionServer_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_2797E0C18;
    objc_copyWeak(&v17, &location);
    [v4 setInterruptionHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__IRSessionServer_shouldAcceptNewConnection___block_invoke_2;
    v14[3] = &unk_2797E0C18;
    objc_copyWeak(&v15, &location);
    [v4 setInvalidationHandler:v14];
    [v4 resume];
    v9 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
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
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
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

- (void)performXPCActivityUnderServerContext:(id)a3
{
  v4 = a3;
  v5 = [(IRSessionServer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__IRSessionServer_performXPCActivityUnderServerContext___block_invoke;
  v7[3] = &unk_2797E2608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  IRDispatchAsyncWithStrongSelf(v5, self, v7);
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

- (void)refreshUpdateModeForServiceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IRSessionServer *)self services];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [(IRSessionServer *)self _refreshUpdateModeForServiceIdentifier:v4];
  }

  else
  {
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRSessionServer *)v4 refreshUpdateModeForServiceIdentifier:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

+ (BOOL)isGlobalLowLatencyMiLoWithPersistenceManager:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 connectToStore])
  {
    [IRServiceStore fetchAllServicesWithPersistenceManager:v3];
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
          v7 = [v5 serviceIdentifier];
          v8 = v3;
          v9 = [(IRServiceStore *)v6 initWithPersistenceManager:v3 serviceIdentifier:v7];

          v10 = IRCreateServicePackageAdapter([v5 servicePackage]);
          v11 = [(IRServiceStore *)v9 fetchCandidatesContainer];
          v12 = +[IRPreferences shared];
          v13 = [v12 numberOfHistoryEventsInCache];
          v14 = -[IRServiceStore fetchHistoryEventsContainerWithLimit:](v9, "fetchHistoryEventsContainerWithLimit:", [v13 unsignedIntValue]);
          v15 = [v14 historyEvents];
          v16 = [v10 shouldAskForLowLatencyMiLo:v11 historyEventsAsc:v15];

          if (v16)
          {
            v17 = 1;
            v3 = v8;
            goto LABEL_13;
          }

          v3 = v8;
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

- (void)_refreshUpdateModeForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IRSessionServer *)self services];
  v12 = [v5 objectForKeyedSubscript:v4];

  v6 = [v12 getUpdateMode];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"mode", &unk_2867692F8];
  v8 = [(IRSessionServer *)self connections];
  v9 = [v8 objectForKeyedSubscript:v4];

  v10 = [v9 filteredArrayUsingPredicate:v7];
  v11 = [v10 count] != 0;

  if (v6 != v11)
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
    v6 = [(IRSessionServer *)self services];
    v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-server, Number of active services: %@", &v10, 0xCu);
  }

  v8 = [(IRSessionServer *)self connections];
  [v8 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_24];

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
    v7 = [v6 preferenceString];
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(IRSessionServer *)self persistenceManager];
    v11 = [IRServiceStore generateLogForStringNumEntitiesInDatabaseWithPersistenceManager:v10];
    v23 = 138412290;
    v24 = v11;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v12 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(IRSessionServer *)self persistenceManager];
    v15 = [IRServiceStore generateLogForServicesDatabaseWithPersistenceManager:v14];
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&dword_25543D000, v13, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v16 = [(IRSessionServer *)self rapportProvider];
  [v16 logActiveDevices];

  v17 = [(IRSessionServer *)self avOutputDeviceProvider];
  [v17 logActiveDevices];

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = +[IRAirPlaySettings shared];
    v21 = [v20 dumpState];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_DEFAULT, "#session-server, %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchToConnectionsForServiceContainer:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IRSessionServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__IRSessionServer_IRServiceContainerDelegate___dispatchToConnectionsForServiceContainer_usingBlock___block_invoke;
  v11[3] = &unk_2797E2678;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  IRDispatchAsyncWithStrongSelf(v8, self, v11);
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

- (void)serviceContainer:(id)a3 didUpdateContexts:(id)a4 withReason:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didUpdateContexts_withReason___block_invoke;
  v12[3] = &unk_2797E26A0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:a3 usingBlock:v12];
}

- (void)serviceContainer:(id)a3 didSpotOnLocationCompleteForClientIds:(id)a4 withError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __112__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didSpotOnLocationCompleteForClientIds_withError___block_invoke;
  v12[3] = &unk_2797E26A0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:a3 usingBlock:v12];
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

- (void)serviceContainer:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __114__IRSessionServer_IRServiceContainerDelegate__serviceContainer_didUpdateBundlesWithSignificantInteractionPattern___block_invoke;
  v8[3] = &unk_2797E26C8;
  v9 = v6;
  v7 = v6;
  [(IRSessionServer *)self _dispatchToConnectionsForServiceContainer:a3 usingBlock:v8];
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