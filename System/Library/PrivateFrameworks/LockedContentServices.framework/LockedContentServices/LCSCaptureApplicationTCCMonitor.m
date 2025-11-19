@interface LCSCaptureApplicationTCCMonitor
+ (LCSCaptureApplicationTCCMonitor)sharedMonitor;
+ (id)TCCServer;
- (BOOL)_bundleHasCameraEntitlement:(id)a3;
- (LCSCaptureApplicationTCCMonitor)init;
- (id)_fetchCameraTCCUpdatesForBundleIdentifiers:(id)a3;
- (id)_tccUpdateForAuthorizationRecord:(id)a3;
- (id)addObserver:(id)a3 forBundleIdentifiers:(id)a4;
- (unint64_t)cameraTCCStatusForBundleIdentifier:(id)a3;
- (void)_beginObservingTCC;
- (void)_notifyObserversOfUpdates:(id)a3;
- (void)_observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers;
- (void)_observerQueue_notifyObserversOfUpdates:(id)a3;
- (void)_removeObserver:(id)a3;
- (void)_setupQueue_setupTCCEventsSubscription;
- (void)_tccUpdatesAccessQueue_handleTCCEventOfType:(unint64_t)a3 authorizationRecord:(id)a4;
@end

@implementation LCSCaptureApplicationTCCMonitor

+ (LCSCaptureApplicationTCCMonitor)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[LCSCaptureApplicationTCCMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

uint64_t __48__LCSCaptureApplicationTCCMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(LCSCaptureApplicationTCCMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)TCCServer
{
  if (TCCServer_onceToken != -1)
  {
    +[LCSCaptureApplicationTCCMonitor TCCServer];
  }

  v3 = TCCServer_tccServer;

  return v3;
}

void __44__LCSCaptureApplicationTCCMonitor_TCCServer__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v0 = tcc_server_create();
  v1 = TCCServer_tccServer;
  TCCServer_tccServer = v0;
}

- (LCSCaptureApplicationTCCMonitor)init
{
  v10.receiver = self;
  v10.super_class = LCSCaptureApplicationTCCMonitor;
  v2 = [(LCSCaptureApplicationTCCMonitor *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    tccUpdatesAccessQueue = v2->_tccUpdatesAccessQueue;
    v2->_tccUpdatesAccessQueue = v5;

    v7 = BSDispatchQueueCreateSerial();
    tccSetupQueue = v2->_tccSetupQueue;
    v2->_tccSetupQueue = v7;
  }

  return v2;
}

- (id)addObserver:(id)a3 forBundleIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB98] setWithArray:a4];
  v8 = objc_alloc_init(_LCSCaptureApplicationTCCObservationToken);
  [(_LCSCaptureApplicationTCCObservationToken *)v8 setObserver:v6];
  [(_LCSCaptureApplicationTCCObservationToken *)v8 setBundleIdentifiers:v7];
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke;
  v15[3] = &unk_279825048;
  objc_copyWeak(&v20, &location);
  v16 = v6;
  v17 = v7;
  v10 = v8;
  v18 = v10;
  v19 = self;
  v11 = v7;
  v12 = v6;
  dispatch_async(observerQueue, v15);
  v13 = v10;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke_2;
    v15[3] = &unk_279825020;
    v16 = *(a1 + 32);
    v5 = [v4 bs_firstObjectPassingTest:v15];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 40);
      v8 = [v5 bundleIdentifiers];
      v9 = [v7 isEqualToSet:v8];
    }

    else
    {
      v9 = 0;
    }

    v10 = v3[3];
    if (v10)
    {
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB58] set];
    }

    v12 = v11;
    if (v6)
    {
      [v11 removeObject:v6];
    }

    [v12 addObject:*(a1 + 48)];
    v13 = [v12 copy];
    v14 = v3[3];
    v3[3] = v13;

    if ((v9 & 1) == 0)
    {
      [*(a1 + 56) _observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers];
    }

    if ([v3[3] count] == 1)
    {
      [*(a1 + 56) _beginObservingTCC];
    }
  }
}

BOOL __68__LCSCaptureApplicationTCCMonitor_addObserver_forBundleIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (unint64_t)cameraTCCStatusForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  tccUpdatesAccessQueue = self->_tccUpdatesAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__LCSCaptureApplicationTCCMonitor_cameraTCCStatusForBundleIdentifier___block_invoke;
  block[3] = &unk_279825070;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(tccUpdatesAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __70__LCSCaptureApplicationTCCMonitor_cameraTCCStatusForBundleIdentifier___block_invoke(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = [v2 tccStatus];
  }

  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v17[0] = a1[5];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v6 = [v4 _fetchCameraTCCUpdatesForBundleIdentifiers:v5];

    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 tccStatus];
      if (v9)
      {
        v10 = v9;
        *(*(a1[6] + 8) + 24) = v9;
        v11 = [*(a1[4] + 40) mutableCopy];
        v12 = [[LCSCaptureApplicationTCCUpdate alloc] initWithBundleIdentifier:a1[5] status:v10];
        [v11 setObject:v12 forKeyedSubscript:a1[5]];

        v13 = [v11 copy];
        v14 = a1[4];
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke;
  v7[3] = &unk_279825098;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] allObjects];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke_2;
    v9[3] = &unk_279825020;
    v10 = a1[4];
    v5 = [v4 bs_firstObjectPassingTest:v9];

    if (v5)
    {
      v6 = [v3[3] mutableCopy];
      [v6 removeObject:v5];
      v7 = [v6 copy];
      v8 = v3[3];
      v3[3] = v7;

      if (![v3[3] count])
      {
        [a1[5] _endObservingTCC];
      }
    }
  }
}

BOOL __51__LCSCaptureApplicationTCCMonitor__removeObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(NSSet *)self->_observerQueue_observerTokens count])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_observerQueue_observerTokens;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v18 + 1) + 8 * v8) bundleIdentifiers];
          v10 = [v9 allObjects];
          [v3 addObjectsFromArray:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    objc_initWeak(&location, self);
    tccUpdatesAccessQueue = self->_tccUpdatesAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke;
    block[3] = &unk_2798250C0;
    objc_copyWeak(&v16, &location);
    v15 = v3;
    v12 = v3;
    dispatch_async(tccUpdatesAccessQueue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  v4 = [WeakRetained[5] allKeys];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v41 = a1;
  v42 = v4;
  if ([v4 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v7 = [*(a1 + 32) allObjects];
    v8 = [v7 differenceFromArray:v4];

    if ([v8 hasChanges])
    {
      v9 = v3;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v54;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v54 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v16 = [v15 object];
            v17 = [v15 changeType];
            v18 = v6;
            if (v17 == 1 || (v19 = [v15 changeType], v18 = v5, !v19))
            {
              [v18 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v12);
      }

      v3 = v9;
      v4 = v42;
    }
  }

  else
  {
    if (![*(a1 + 32) count])
    {
      goto LABEL_19;
    }

    v8 = [*(a1 + 32) allObjects];
    [v5 addObjectsFromArray:v8];
  }

LABEL_19:
  if ([v6 count] || objc_msgSend(v5, "count"))
  {
    v20 = [MEMORY[0x277CBEB18] array];
    v21 = [v3[5] mutableCopy];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v21 setObject:0 forKeyedSubscript:*(*(&v49 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v24);
    }

    v27 = [v5 allObjects];
    v40 = v3;
    v28 = [v3 _fetchCameraTCCUpdatesForBundleIdentifiers:v27];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v46;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v45 + 1) + 8 * k);
          v35 = [v34 bundleIdentifier];
          [v21 setObject:v34 forKeyedSubscript:v35];
          [v20 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v31);
    }

    v36 = [v21 copy];
    v3 = v40;
    v37 = v40[5];
    v40[5] = v36;

    if ([v20 count])
    {
      [v40 _notifyObserversOfUpdates:v20];
    }

    v38 = v40[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke_2;
    block[3] = &unk_279824CE0;
    objc_copyWeak(&v44, (v41 + 40));
    dispatch_async(v38, block);
    objc_destroyWeak(&v44);

    v4 = v42;
  }

LABEL_39:
  v39 = *MEMORY[0x277D85DE8];
}

void __97__LCSCaptureApplicationTCCMonitor__observerQueue_fetchInitialTCCStateForUpdatedBundleIdentifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupQueue_setupTCCEventsSubscription];
    WeakRetained = v2;
  }
}

- (id)_fetchCameraTCCUpdatesForBundleIdentifiers:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *MEMORY[0x277D6C120];
  v8 = tcc_service_singleton_for_CF_name();
  v9 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v10 = [objc_opt_class() TCCServer];
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke;
  v38 = &unk_2798250E8;
  v39 = self;
  v40 = v4;
  v41 = v5;
  v11 = v6;
  v42 = v11;
  v27 = v9;
  v28 = v8;
  tcc_server_message_get_authorization_records_by_service();

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke_2;
  v33[3] = &unk_279825110;
  v25 = v41;
  v26 = v40;
  v34 = v25;
  v12 = [v40 bs_filter:v33];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [(LCSCaptureApplicationTCCMonitor *)self _bundleHasCameraEntitlement:v17];
        v19 = [LCSCaptureApplicationTCCUpdate alloc];
        if (v18)
        {
          v20 = 4;
        }

        else
        {
          v20 = 1;
        }

        v21 = [(LCSCaptureApplicationTCCUpdate *)v19 initWithBundleIdentifier:v17 status:v20];
        [v11 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v14);
  }

  v22 = [v11 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __78__LCSCaptureApplicationTCCMonitor__fetchCameraTCCUpdatesForBundleIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = [*(a1 + 32) _tccUpdateForAuthorizationRecord:a2];
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = v4;
      v6 = [v4 bundleIdentifier];
      LODWORD(v5) = [v5 containsObject:v6];

      v4 = v9;
      if (v5)
      {
        v7 = *(a1 + 48);
        v8 = [v9 bundleIdentifier];
        [v7 addObject:v8];

        [*(a1 + 56) addObject:v9];
        v4 = v9;
      }
    }
  }
}

- (BOOL)_bundleHasCameraEntitlement:(id)a3
{
  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:1 error:0];
  v4 = [v3 entitlements];
  v5 = objc_opt_self();
  v6 = [v4 objectForKey:@"com.apple.private.tcc.allow" ofClass:v5];

  LOBYTE(v5) = [v6 containsObject:*MEMORY[0x277D6C120]];
  return v5;
}

- (void)_beginObservingTCC
{
  objc_initWeak(&location, self);
  tccSetupQueue = self->_tccSetupQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__LCSCaptureApplicationTCCMonitor__beginObservingTCC__block_invoke;
  v4[3] = &unk_279824CE0;
  objc_copyWeak(&v5, &location);
  dispatch_async(tccSetupQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__LCSCaptureApplicationTCCMonitor__beginObservingTCC__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupQueue_setupTCCEventsSubscription];
    WeakRetained = v2;
  }
}

- (void)_setupQueue_setupTCCEventsSubscription
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C120];
  v4 = xpc_array_create(0, 0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1;
  v38 = __Block_byref_object_dispose__1;
  v39 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__LCSCaptureApplicationTCCMonitor__setupQueue_setupTCCEventsSubscription__block_invoke;
  block[3] = &unk_279824DC8;
  block[4] = self;
  block[5] = &v34;
  dispatch_sync(observerQueue, block);
  v6 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v35[5];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v29 + 1) + 8 * i) bundleIdentifiers];
        v12 = [v11 allObjects];
        [v6 addObjectsFromArray:v12];
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v42 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v25 + 1) + 8 * j) cStringUsingEncoding:4]);
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v42 count:16];
    }

    while (v14);
  }

  v17 = v3;
  keys = [v3 UTF8String];
  v18 = v4;
  values = v18;
  v19 = xpc_dictionary_create(&keys, &values, 1uLL);
  v20 = tcc_events_filter_create_with_criteria();
  objc_initWeak(&location, self);
  [@"com.apple.LockedContentServices.TCCMonitor" cStringUsingEncoding:4];
  tccUpdatesAccessQueue = self->_tccUpdatesAccessQueue;
  objc_copyWeak(&v23, &location);
  tcc_events_subscribe();
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v34, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __73__LCSCaptureApplicationTCCMonitor__setupQueue_setupTCCEventsSubscription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _tccUpdatesAccessQueue_handleTCCEventOfType:a2 authorizationRecord:v7];
  }
}

- (void)_tccUpdatesAccessQueue_handleTCCEventOfType:(unint64_t)a3 authorizationRecord:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = [(LCSCaptureApplicationTCCMonitor *)self _tccUpdateForAuthorizationRecord:a4];
    if (v5)
    {
      v6 = [(NSDictionary *)self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier mutableCopy];
      v7 = [v5 bundleIdentifier];
      [v6 setObject:v5 forKeyedSubscript:v7];

      v8 = [v6 copy];
      tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier = self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier;
      self->_tccUpdatesAccessQueue_latestTCCUpdatesByBundleIdentifier = v8;

      v12[0] = v5;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      [(LCSCaptureApplicationTCCMonitor *)self _notifyObserversOfUpdates:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_tccUpdateForAuthorizationRecord:(id)a3
{
  v3 = a3;
  v4 = tcc_authorization_record_get_subject_identity();
  if (tcc_identity_get_type())
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:tcc_identity_get_identifier() encoding:4];
    v7 = [LCSCaptureApplicationTCCUpdate alloc];
    authorization_right = tcc_authorization_record_get_authorization_right();
    if (authorization_right > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_256184F88[authorization_right];
    }

    v5 = [(LCSCaptureApplicationTCCUpdate *)v7 initWithBundleIdentifier:v6 status:v9];
  }

  return v5;
}

- (void)_notifyObserversOfUpdates:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__LCSCaptureApplicationTCCMonitor__notifyObserversOfUpdates___block_invoke;
  block[3] = &unk_2798250C0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__LCSCaptureApplicationTCCMonitor__notifyObserversOfUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observerQueue_notifyObserversOfUpdates:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_observerQueue_notifyObserversOfUpdates:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSSet *)self->_observerQueue_observerTokens allObjects];
  v6 = [v5 copy];

  if ([v6 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __75__LCSCaptureApplicationTCCMonitor__observerQueue_notifyObserversOfUpdates___block_invoke;
          v16[3] = &unk_279825160;
          v16[4] = v11;
          v12 = [v4 bs_filter:v16];
          v13 = [v11 observer];
          [v13 tccMonitor:self didUpdateCameraTCCStatuses:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __75__LCSCaptureApplicationTCCMonitor__observerQueue_notifyObserversOfUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifiers];
  v5 = [v3 bundleIdentifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

uint64_t __51__LCSCaptureApplicationTCCMonitor__endObservingTCC__block_invoke()
{
  v0 = [@"com.apple.LockedContentServices.TCCMonitor" cStringUsingEncoding:4];

  return MEMORY[0x2821D0B00](v0);
}

@end