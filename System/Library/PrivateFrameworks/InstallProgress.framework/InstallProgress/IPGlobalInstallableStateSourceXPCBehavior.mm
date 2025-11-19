@interface IPGlobalInstallableStateSourceXPCBehavior
- (IPGlobalInstallableStateSourceXPCBehavior)initWithXPCConnectionProvider:(id)a3 stateStreamSource:(id)a4 queue:(id)a5;
- (id)_installableStateSourcesForStates:(id)a3;
- (id)_queue_asyncProxyWithErrorHandler:(id)a3;
- (id)_queue_connectedConnection;
- (id)_queue_makeExtantStateSourcesForGlobalSource:(id)a3 error:(id *)a4;
- (id)_queue_makeInstallingStateSourcesForGlobalSource:(id)a3 error:(id *)a4;
- (id)_queue_syncProxyWithErrorHandler:(id)a3;
- (id)currentProgressForIdentity:(id)a3 error:(id *)a4;
- (void)_queue_noteInstallBeganForIdentity:(id)a3;
- (void)_queue_registerAsProgressObserverIfNecessary;
- (void)_queue_resumeStateStreamSourceIfNecessary;
- (void)_queue_sendStateSourceAvailableForIdentity:(id)a3;
- (void)_queue_sendStateSourceUnavailableForIdentity:(id)a3;
- (void)addObserver:(id)a3;
- (void)installableForIdentity:(id)a3 progressChanged:(id)a4;
- (void)installableForIdentity:(id)a3 progressEndedForReason:(unint64_t)a4;
- (void)makeExtantStateSourcesForGlobalSource:(id)a3 andEnumerate:(id)a4;
- (void)makeInstallingStateSourcesForGlobalSource:(id)a3 andEnumerate:(id)a4;
- (void)registerProgressSource:(id)a3;
- (void)registerStateSource:(id)a3;
- (void)removeObserver:(id)a3;
- (void)serverActionBarrierForTesting;
- (void)stateUpdateStreamSource:(id)a3 updateMessageReceived:(id)a4;
- (void)unregisterProgressSource:(id)a3;
- (void)unregisterStateSource:(id)a3;
@end

@implementation IPGlobalInstallableStateSourceXPCBehavior

- (IPGlobalInstallableStateSourceXPCBehavior)initWithXPCConnectionProvider:(id)a3 stateStreamSource:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = IPGlobalInstallableStateSourceXPCBehavior;
  v11 = [(IPGlobalInstallableStateSourceXPCBehavior *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stateStreamSource, a4);
    [(IPStateUpdateStreamSource *)v12->_stateStreamSource setDelegate:v12];
    v13 = [v8 copy];
    connectionProvider = v12->_connectionProvider;
    v12->_connectionProvider = v13;

    objc_storeStrong(&v12->_q, a5);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.InstallProgress.GISSXPCB.callout", v15);
    calloutQueue = v12->_calloutQueue;
    v12->_calloutQueue = v16;

    currentConnection = v12->_currentConnection;
    v12->_currentConnection = 0;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registeredStateSources = v12->_registeredStateSources;
    v12->_registeredStateSources = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registeredProgressSources = v12->_registeredProgressSources;
    v12->_registeredProgressSources = v21;

    v23 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    stateUpdateObservers = v12->_stateUpdateObservers;
    v12->_stateUpdateObservers = v23;
  }

  return v12;
}

- (void)registerStateSource:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke;
  v7[3] = &unk_2797B1E00;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(q, v7);
}

void __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _IPDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_254C69000, v2, OS_LOG_TYPE_DEFAULT, "registering state source %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) collationKey];
  v5 = [*(*(a1 + 40) + 32) objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(*(a1 + 40) + 32) setObject:v5 forKey:v4];
  }

  [v5 addObject:*(a1 + 32)];
  [*(a1 + 40) _queue_resumeStateStreamSourceIfNecessary];
  v6 = *(*(a1 + 40) + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke_7;
  block[3] = &unk_2797B2030;
  v9 = *(a1 + 32);
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

void __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 currentStateWithError:&v6];
  v4 = v6;
  if (v3)
  {
    [*(a1 + 32) notifyOfUpdate:v3];
  }

  else
  {
    v5 = _IPClientLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke_7_cold_1();
    }
  }
}

- (void)unregisterStateSource:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__IPGlobalInstallableStateSourceXPCBehavior_unregisterStateSource___block_invoke;
  v7[3] = &unk_2797B1E00;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(q, v7);
}

void __67__IPGlobalInstallableStateSourceXPCBehavior_unregisterStateSource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _IPDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_254C69000, v2, OS_LOG_TYPE_DEFAULT, "unregistering state source %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) collationKey];
  v5 = [*(*(a1 + 40) + 32) objectForKey:v4];
  [v5 removeObject:*(a1 + 32)];
  if (![v5 count])
  {
    [*(*(a1 + 40) + 32) removeObjectForKey:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerProgressSource:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke;
  block[3] = &unk_2797B1EF0;
  v8 = v4;
  v9 = self;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(q, block);
  dispatch_async(self->_calloutQueue, v12[5]);

  _Block_object_dispose(&v11, 8);
}

void __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = _IPDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_254C69000, v2, OS_LOG_TYPE_DEFAULT, "registering progress source %@", &buf, 0xCu);
  }

  [*(a1 + 40) _queue_registerAsProgressObserverIfNecessary];
  v4 = [*(a1 + 32) installableStateSource];
  v5 = [v4 installableType] == 1;

  if (v5)
  {
    v6 = [*(a1 + 32) installableStateSource];
    v7 = [v6 launchServicesIdentity];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__8;
    v43 = __Block_byref_object_dispose__9;
    v44 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__8;
    v36 = __Block_byref_object_dispose__9;
    v37 = 0;
    v8 = *(a1 + 40);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_10;
    v31[3] = &unk_2797B2058;
    v31[4] = &buf;
    v9 = [v8 _queue_syncProxyWithErrorHandler:v31];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_2;
    v30[3] = &unk_2797B2080;
    v30[4] = &buf;
    v30[5] = &v32;
    [v9 getProgressForIdentity:v7 completion:v30];

    v10 = v33[5];
    if (v10)
    {
      if ([v10 installPhase] != 6)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_2_14;
        v26[3] = &unk_2797B1F90;
        v27 = *(a1 + 32);
        v28 = &v32;
        v19 = MEMORY[0x259C29600](v26);
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&buf, 8);

        v22 = _IPDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_254C69000, v22, OS_LOG_TYPE_DEFAULT, "really registering progress source", &buf, 2u);
        }

        v7 = [*(a1 + 32) collationKey];
        v23 = [*(*(a1 + 40) + 40) objectForKey:v7];
        if (!v23)
        {
          v23 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
          [*(*(a1 + 40) + 40) setObject:v23 forKey:v7];
        }

        [v23 addObject:*(a1 + 32)];

        goto LABEL_18;
      }

      v11 = _IPClientLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *v38 = 138412290;
        v39 = v12;
        _os_log_impl(&dword_254C69000, v11, OS_LOG_TYPE_DEFAULT, "current progress for %@ was complete on resumption; synthesizing end event and not registering", v38, 0xCu);
      }

      v13 = v29;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v14 = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_13;
    }

    else
    {
      v15 = _IPClientLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_cold_1(v7, &buf + 8);
      }

      v13 = v25;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v14 = __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_15;
    }

    v13[2] = v14;
    v13[3] = &unk_2797B2030;
    v13[4] = *(a1 + 32);
    v16 = MEMORY[0x259C29600](v13);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&buf, 8);

LABEL_18:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)unregisterProgressSource:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__IPGlobalInstallableStateSourceXPCBehavior_unregisterProgressSource___block_invoke;
  v7[3] = &unk_2797B1E00;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(q, v7);
}

void __70__IPGlobalInstallableStateSourceXPCBehavior_unregisterProgressSource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _IPDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_254C69000, v2, OS_LOG_TYPE_DEFAULT, "unregistering progress source %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) collationKey];
  v5 = [*(*(a1 + 40) + 40) objectForKey:v4];
  [v5 removeObject:*(a1 + 32)];
  if (![v5 count])
  {
    [*(*(a1 + 40) + 40) removeObjectForKey:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resumeStateStreamSourceIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_stateStreamSourceResumed)
  {
    v3 = _IPClientLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      stateStreamSource = self->_stateStreamSource;
      v6 = 138412290;
      v7 = stateStreamSource;
      _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "resuming state stream source %@", &v6, 0xCu);
    }

    [(IPStateUpdateStreamSource *)self->_stateStreamSource resume];
    self->_stateStreamSourceResumed = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__IPGlobalInstallableStateSourceXPCBehavior_addObserver___block_invoke;
  v7[3] = &unk_2797B1E00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(q, v7);
}

uint64_t __57__IPGlobalInstallableStateSourceXPCBehavior_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _queue_resumeStateStreamSourceIfNecessary];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__IPGlobalInstallableStateSourceXPCBehavior_removeObserver___block_invoke;
  v7[3] = &unk_2797B1E00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(q, v7);
}

- (void)_queue_registerAsProgressObserverIfNecessary
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_1(&dword_254C69000, a2, a3, "Could not register as progress observer! %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_queue_connectedConnection
{
  dispatch_assert_queue_V2(self->_q);
  p_currentConnection = &self->_currentConnection;
  currentConnection = self->_currentConnection;
  if (!currentConnection)
  {
    v5 = (*(self->_connectionProvider + 2))();
    [v5 _setQueue:self->_q];
    v6 = IPClientExportedInterface();
    [v5 setExportedInterface:v6];

    [v5 setExportedObject:self];
    v7 = IPServerExportedInterface();
    [v5 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke;
    v12[3] = &unk_2797B20A8;
    objc_copyWeak(&v13, &location);
    [v5 setInterruptionHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke_16;
    v10[3] = &unk_2797B20A8;
    objc_copyWeak(&v11, &location);
    [v5 setInvalidationHandler:v10];
    objc_storeStrong(p_currentConnection, v5);
    [(NSXPCConnection *)*p_currentConnection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);

    currentConnection = *p_currentConnection;
    if (!*p_currentConnection)
    {
      v8 = _IPClientLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(IPGlobalInstallableStateSourceXPCBehavior *)v8 _queue_connectedConnection];
      }

      currentConnection = *p_currentConnection;
    }
  }

  return currentConnection;
}

void __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _IPClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 72) = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = WeakRetained[5];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4[5] objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
          v11 = [v10 count];

          if (v11)
          {
            v12 = _IPClientLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&dword_254C69000, v12, OS_LOG_TYPE_DEFAULT, "someone is registered for progress, reconnecting...", v14, 2u);
            }

            [v4 _queue_registerAsProgressObserverIfNecessary];
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke_16(uint64_t a1)
{
  v2 = _IPClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__IPGlobalInstallableStateSourceXPCBehavior__queue_connectedConnection__block_invoke_16_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }
}

- (id)_queue_syncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_connectedConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_queue_asyncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_connectedConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_installableStateSourcesForStates:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [IPAppStateSource alloc];
        v13 = [v11 identity];
        v14 = [(IPAppStateSource *)v12 initWithApplicationIdentity:v13 forStateSourceRegistry:self];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_queue_makeExtantStateSourcesForGlobalSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke;
  v12[3] = &unk_2797B2058;
  v12[4] = &v13;
  v7 = [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_syncProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_19;
  v11[3] = &unk_2797B20D0;
  v11[5] = &v13;
  v11[6] = &v19;
  v11[4] = self;
  [v7 getAllInstallableStates:v11];

  v8 = v20[5];
  if (a4 && !v8)
  {
    *a4 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IPClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v5)
  {
    v7 = [*(a1 + 32) _installableStateSourcesForStates:v5];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = _IPClientLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_19_cold_1();
    }
  }
}

- (id)_queue_makeInstallingStateSourcesForGlobalSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke;
  v12[3] = &unk_2797B2058;
  v12[4] = &v19;
  v7 = [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_syncProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_21;
  v11[3] = &unk_2797B20F8;
  v11[4] = self;
  v11[5] = &v19;
  v11[6] = &v13;
  [v7 getActiveInstallations:v11];

  v8 = v14[5];
  if (a4 && !v8)
  {
    *a4 = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IPClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_21(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v25 = v6;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ([v14 isInstalling])
          {
            v15 = [IPAppStateSource alloc];
            v16 = [v14 identity];
            v17 = [(IPAppStateSource *)v15 initWithApplicationIdentity:v16 forStateSourceRegistry:a1[4]];

            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v18 = [v8 copy];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v7 = v25;
  }

  else
  {
    v21 = _IPClientLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_21_cold_1();
    }

    v22 = *(a1[5] + 8);
    v23 = v7;
    v8 = *(v22 + 40);
    *(v22 + 40) = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)makeInstallingStateSourcesForGlobalSource:(id)a3 andEnumerate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  dispatch_assert_queue_not_V2(self->_q);
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__IPGlobalInstallableStateSourceXPCBehavior_makeInstallingStateSourcesForGlobalSource_andEnumerate___block_invoke;
  block[3] = &unk_2797B2120;
  v16 = &v17;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  dispatch_sync(q, block);
  v10 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__IPGlobalInstallableStateSourceXPCBehavior_makeInstallingStateSourcesForGlobalSource_andEnumerate___block_invoke_2;
  v12[3] = &unk_2797B2148;
  v11 = v7;
  v13 = v11;
  [v10 enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(&v17, 8);
}

uint64_t __100__IPGlobalInstallableStateSourceXPCBehavior_makeInstallingStateSourcesForGlobalSource_andEnumerate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_makeInstallingStateSourcesForGlobalSource:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)makeExtantStateSourcesForGlobalSource:(id)a3 andEnumerate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  dispatch_assert_queue_not_V2(self->_q);
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__IPGlobalInstallableStateSourceXPCBehavior_makeExtantStateSourcesForGlobalSource_andEnumerate___block_invoke;
  block[3] = &unk_2797B2120;
  v16 = &v17;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  dispatch_sync(q, block);
  v10 = v18[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__IPGlobalInstallableStateSourceXPCBehavior_makeExtantStateSourcesForGlobalSource_andEnumerate___block_invoke_2;
  v12[3] = &unk_2797B2148;
  v11 = v7;
  v13 = v11;
  [v10 enumerateObjectsUsingBlock:v12];

  _Block_object_dispose(&v17, 8);
}

uint64_t __96__IPGlobalInstallableStateSourceXPCBehavior_makeExtantStateSourcesForGlobalSource_andEnumerate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_makeExtantStateSourcesForGlobalSource:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)currentProgressForIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__9;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__IPGlobalInstallableStateSourceXPCBehavior_currentProgressForIdentity_error___block_invoke;
  block[3] = &unk_2797B2170;
  block[4] = self;
  block[5] = &v26;
  block[6] = &v20;
  dispatch_sync(q, block);
  v8 = v27[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__IPGlobalInstallableStateSourceXPCBehavior_currentProgressForIdentity_error___block_invoke_3;
  v12[3] = &unk_2797B2080;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 getProgressForIdentity:v6 completion:v12];
  v9 = v15[5];
  if (a4 && !v9)
  {
    *a4 = v21[5];
    v9 = v15[5];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __78__IPGlobalInstallableStateSourceXPCBehavior_currentProgressForIdentity_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__IPGlobalInstallableStateSourceXPCBehavior_currentProgressForIdentity_error___block_invoke_2;
  v6[3] = &unk_2797B2058;
  v6[4] = a1[6];
  v3 = [v2 _queue_syncProxyWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__IPGlobalInstallableStateSourceXPCBehavior_currentProgressForIdentity_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)serverActionBarrierForTesting
{
  dispatch_assert_queue_not_V2(self->_q);
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__IPGlobalInstallableStateSourceXPCBehavior_serverActionBarrierForTesting__block_invoke;
  block[3] = &unk_2797B2030;
  block[4] = self;
  dispatch_sync(q, block);
}

void __74__IPGlobalInstallableStateSourceXPCBehavior_serverActionBarrierForTesting__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _queue_syncProxyWithErrorHandler:&__block_literal_global_24];
  [v1 actionBarrier:&__block_literal_global_24];
}

void __74__IPGlobalInstallableStateSourceXPCBehavior_serverActionBarrierForTesting__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _IPClientLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__IPGlobalInstallableStateSourceXPCBehavior_serverActionBarrierForTesting__block_invoke_2_cold_1();
    }
  }
}

- (void)installableForIdentity:(id)a3 progressChanged:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_q);
  v8 = _IPClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_254C69000, v8, OS_LOG_TYPE_DEFAULT, "Installable for identity %@ progress changed to %@", buf, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->_registeredProgressSources objectForKey:v6];
  v10 = [v9 allObjects];
  v11 = [v10 copy];

  if ([v11 count])
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__IPGlobalInstallableStateSourceXPCBehavior_installableForIdentity_progressChanged___block_invoke;
    block[3] = &unk_2797B21B8;
    v16 = v11;
    v17 = v7;
    v18 = v6;
    dispatch_async(calloutQueue, block);

    v13 = v16;
  }

  else
  {
    v13 = _IPClientLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_254C69000, v13, OS_LOG_TYPE_DEFAULT, "No observers to notify of progress to %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __84__IPGlobalInstallableStateSourceXPCBehavior_installableForIdentity_progressChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6++) notifyOfUpdate:{*(a1 + 40), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = _IPClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_254C69000, v7, OS_LOG_TYPE_DEFAULT, "Notified observers of update to %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)installableForIdentity:(id)a3 progressEndedForReason:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_q);
  v7 = _IPClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_254C69000, v7, OS_LOG_TYPE_DEFAULT, "Installable for identity %@ progress ended with reason %llu", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_registeredProgressSources objectForKey:v6];
  v9 = [v8 allObjects];

  [(NSMutableDictionary *)self->_registeredProgressSources removeObjectForKey:v6];
  if ([v9 count])
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__IPGlobalInstallableStateSourceXPCBehavior_installableForIdentity_progressEndedForReason___block_invoke;
    block[3] = &unk_2797B21E0;
    v14 = v9;
    v16 = a4;
    v15 = v6;
    dispatch_async(calloutQueue, block);

    v11 = v14;
  }

  else
  {
    v11 = _IPClientLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_254C69000, v11, OS_LOG_TYPE_DEFAULT, "No observers to notify of finish of %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __91__IPGlobalInstallableStateSourceXPCBehavior_installableForIdentity_progressEndedForReason___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * v6++) finishWithReason:{*(a1 + 48), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = _IPClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_254C69000, v7, OS_LOG_TYPE_DEFAULT, "Notified observers of finish of %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_noteInstallBeganForIdentity:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_q);
  v5 = _IPClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "Install began for %@", buf, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_registeredStateSources objectForKey:v4];
  v7 = [v6 allObjects];

  if ([v7 count])
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__IPGlobalInstallableStateSourceXPCBehavior__queue_noteInstallBeganForIdentity___block_invoke;
    block[3] = &unk_2797B2030;
    v11 = v7;
    dispatch_async(calloutQueue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __80__IPGlobalInstallableStateSourceXPCBehavior__queue_noteInstallBeganForIdentity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) noteInstallStarted];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendStateSourceAvailableForIdentity:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_q);
  v5 = [(NSHashTable *)self->_stateUpdateObservers allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceAvailableForIdentity___block_invoke;
  v17[3] = &unk_2797B2208;
  v6 = v4;
  v18 = v6;
  v19 = self;
  v7 = MEMORY[0x259C29600](v17);
  calloutQueue = self->_calloutQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceAvailableForIdentity___block_invoke_2;
  v12[3] = &unk_2797B2230;
  v13 = v5;
  v14 = self;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(calloutQueue, v12);
}

IPAppStateSource *__88__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceAvailableForIdentity___block_invoke(uint64_t a1)
{
  v1 = [[IPAppStateSource alloc] initWithApplicationIdentity:*(a1 + 32) forStateSourceRegistry:*(a1 + 40)];

  return v1;
}

void __88__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceAvailableForIdentity___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) globalStateSourceBehavior:*(a1 + 40) stateSourceAvailableForIdentity:*(a1 + 48) withGenerator:{*(a1 + 56), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendStateSourceUnavailableForIdentity:(id)a3
{
  q = self->_q;
  v5 = a3;
  dispatch_assert_queue_V2(q);
  v6 = [(NSMutableDictionary *)self->_registeredStateSources objectForKey:v5];
  v7 = [v6 allObjects];

  [(NSMutableDictionary *)self->_registeredStateSources removeObjectForKey:v5];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceUnavailableForIdentity___block_invoke;
  block[3] = &unk_2797B2030;
  v11 = v7;
  v9 = v7;
  dispatch_async(calloutQueue, block);
}

void __90__IPGlobalInstallableStateSourceXPCBehavior__queue_sendStateSourceUnavailableForIdentity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) noteRemoved];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stateUpdateStreamSource:(id)a3 updateMessageReceived:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _IPClientLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_254C69000, v6, OS_LOG_TYPE_DEFAULT, "received update message %@", &v12, 0xCu);
  }

  v7 = [v5 type];
  switch(v7)
  {
    case 4:
      v9 = [v5 identity];
      [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_sendStateSourceUnavailableForIdentity:v9];
      goto LABEL_11;
    case 3:
      goto LABEL_7;
    case 1:
      v8 = [v5 identity];
      [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_noteInstallBeganForIdentity:v8];

LABEL_7:
      v9 = [v5 identity];
      [(IPGlobalInstallableStateSourceXPCBehavior *)self _queue_sendStateSourceAvailableForIdentity:v9];
      goto LABEL_11;
  }

  v9 = _IPClientLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 type];
    v12 = 67109120;
    LODWORD(v13) = v10;
    _os_log_impl(&dword_254C69000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring update message of type %u for now", &v12, 8u);
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

void __65__IPGlobalInstallableStateSourceXPCBehavior_registerStateSource___block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "Could not fetch installable state source current state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__IPGlobalInstallableStateSourceXPCBehavior_registerProgressSource___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_254C69000, v4, OS_LOG_TYPE_ERROR, "could not fetch progress data for %@, synthesizing cancel event: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "could not fetch all state sources: connection error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __96__IPGlobalInstallableStateSourceXPCBehavior__queue_makeExtantStateSourcesForGlobalSource_error___block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "couldn't get installable states: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "could not fetch state sources: connection error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__IPGlobalInstallableStateSourceXPCBehavior__queue_makeInstallingStateSourcesForGlobalSource_error___block_invoke_21_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "could not get state sources: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__IPGlobalInstallableStateSourceXPCBehavior_serverActionBarrierForTesting__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_254C69000, v0, v1, "server action barrier failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end