@interface DNDSRemoteServiceProvider
- (DNDSRemoteServiceProvider)initWithClientDetailsProvider:(id)a3;
- (DNDSRemoteServiceProviderDelegate)delegate;
- (id)_clientDetailsForClientIdentifier:(id)a3 clientConnection:(id)a4;
- (void)_addConnection:(id)a3;
- (void)_handleClientConnectionInterrupted:(id)a3;
- (void)_handleClientConnectionInvalidated:(id)a3;
- (void)_iterateClientConnectionsToSendWithHandler:(id)a3;
- (void)_queryStateWithCompletionHandler:(id)a3;
- (void)_registerOrMutateConnectionDetailsForClientConnection:(id)a3 handler:(id)a4;
- (void)_removeConnection:(id)a3;
- (void)_unregisterConnectionDetailsForClientConnection:(id)a3;
- (void)activateModeWithDetails:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)activeModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAccountFeatureSupportWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getActiveModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllModesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllowedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppInfoForBundleIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppInfoForBundleIdentifiers:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAvailableModesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getBehaviorSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getCloudSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getLatestModeAssertionInvalidationWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getModeConfigurationForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getModesCanImpactAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getPairSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getPreventAutoReplyWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getScheduleSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getSilencedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getStateDumpWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getSystemActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getUserAvailabilityInActiveModeForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)handleAppConfigurationContextUpdateForModeIdentifier:(id)a3;
- (void)handleMeDeviceStateUpdate:(id)a3;
- (void)handleModeAssertionUpdateResult:(id)a3;
- (void)handleStateUpdate:(id)a3;
- (void)handleUpdatedBehaviorSettings:(id)a3;
- (void)handleUpdatedModes:(id)a3 availableModes:(id)a4;
- (void)handleUpdatedPairSyncState:(unint64_t)a3;
- (void)handleUpdatedPhoneCallBypassSettings:(id)a3;
- (void)handleUpdatedScheduleSettings:(id)a3;
- (void)invalidate;
- (void)invalidateActiveModeAssertionWithDetails:(id)a3 reasonOverride:(id)a4 requestDetails:(id)a5 completionHandler:(id)a6;
- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)invalidateModeAssertionWithUUID:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)publishStatusKitAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)queryMeDeviceStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)queryStateForUpdateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)queryStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForAssertionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForSettingsUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)resetAppConfigurationStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)resolveBehaviorForEventDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5;
- (void)resume;
- (void)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)setAppConfigurationPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8;
- (void)setAppConfigurationTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8;
- (void)setBehaviorSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setCloudSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setHearingTestIsActive:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setModeConfiguration:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setModesCanImpactAvailability:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setPairSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setPreventAutoReply:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setScheduleSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)setScreenIsShared:(id)a3 screenIsMirrored:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)setSystemAction:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)syncModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)takeModeAssertionWithDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5;
@end

@implementation DNDSRemoteServiceProvider

- (DNDSRemoteServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DNDSRemoteServiceProvider)initWithClientDetailsProvider:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = DNDSRemoteServiceProvider;
  v6 = [(DNDSRemoteServiceProvider *)&v31 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v7->_connections;
    v7->_connections = v8;

    v10 = MEMORY[0x277CF32A0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __59__DNDSRemoteServiceProvider_initWithClientDetailsProvider___block_invoke;
    v29[3] = &unk_278F8A2F8;
    v11 = v7;
    v30 = v11;
    v12 = [v10 listenerWithConfigurator:v29];
    requestListener = v11->_requestListener;
    v11->_requestListener = v12;

    v14 = MEMORY[0x277CF32A0];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __59__DNDSRemoteServiceProvider_initWithClientDetailsProvider___block_invoke_2;
    v27 = &unk_278F8A2F8;
    v15 = v11;
    v28 = v15;
    v16 = [v14 listenerWithConfigurator:&v24];
    monitorListener = v15->_monitorListener;
    v15->_monitorListener = v16;

    v18 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    clientConnectionDetailsByConnection = v15->_clientConnectionDetailsByConnection;
    v15->_clientConnectionDetailsByConnection = v18;

    objc_storeStrong(&v15->_clientDetailsProvider, a3);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.donotdisturbd.remoteserviceprovider", v20);
    clientNotificationQueue = v15->_clientNotificationQueue;
    v15->_clientNotificationQueue = v21;
  }

  return v7;
}

void __59__DNDSRemoteServiceProvider_initWithClientDetailsProvider___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.donotdisturb.service.launching"];
  v3 = DNDRemoteServiceServerInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

void __59__DNDSRemoteServiceProvider_initWithClientDetailsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.donotdisturb.service.non-launching"];
  v3 = DNDRemoteMonitorServerInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(DNDSRemoteServiceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = DNDSRemoteServiceProvider;
  [(DNDSRemoteServiceProvider *)&v3 dealloc];
}

- (void)resume
{
  [(BSServiceConnectionListener *)self->_monitorListener activate];
  [(BSServiceConnectionListener *)self->_requestListener activate];
  v3 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.donotdisturb.service.launching"];
  v4 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.donotdisturb.service.non-launching"];
}

- (void)invalidate
{
  [(BSServiceConnectionListener *)self->_monitorListener invalidate];
  requestListener = self->_requestListener;

  [(BSServiceConnectionListener *)requestListener invalidate];
}

- (void)handleStateUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive state update, will handle; stateUpdate=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DNDSRemoteServiceProvider_handleStateUpdate___block_invoke;
  v8[3] = &unk_278F8BE08;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __47__DNDSRemoteServiceProvider_handleStateUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v34 = a3;
  if ([v5 wantsStateUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v34 remoteProcess];
      v9 = [v8 pid];
      v10 = *(a1 + 32);
      *buf = 67109634;
      v43 = v9;
      v44 = 2114;
      v45 = v10;
      v46 = 2114;
      v47 = v34;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Delivering state update: pid=%d, stateUpdate=%{public}@, connection=%{public}@", buf, 0x1Cu);
    }

    v11 = [v34 remoteTarget];
    [v11 deliverStateUpdate:*(a1 + 32)];
  }

  if ([v5 wantsActiveModeUpdates])
  {
    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v34 remoteProcess];
      v15 = [v14 pid];
      v16 = [*(a1 + 32) state];
      v17 = [v16 activeModeIdentifier];
      *buf = 67109634;
      v43 = v15;
      v44 = 2114;
      v45 = v17;
      v46 = 2114;
      v47 = v34;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Delivering active mode update: pid=%d, activeModeIdentifier=%{public}@, connection=%{public}@", buf, 0x1Cu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v5 activeAssertionUpdateClientIdentifiers];
    v18 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v32 = v5;
      v20 = 0;
      v21 = *v37;
      do
      {
        v22 = 0;
        v23 = v20;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v36 + 1) + 8 * v22);
          v25 = [*(a1 + 40) delegate];
          v26 = *(a1 + 40);
          v35 = v23;
          v27 = [v25 remoteServiceProvider:v26 activeAssertionWithClientIdentifer:v24 error:&v35];
          v20 = v35;

          v28 = [v34 remoteTarget];
          v29 = *(a1 + 32);
          v40 = v24;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          [v28 deliverActiveModeAssertion:v27 stateUpdate:v29 clientIdentifiers:v30];

          ++v22;
          v23 = v20;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v19);

      v5 = v32;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleModeAssertionUpdateResult:(id)a3
{
  v4 = a3;
  clientNotificationQueue = self->_clientNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke;
  v7[3] = &unk_278F89F48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(clientNotificationQueue, v7);
}

void __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 assertions];
    v6 = [v5 count];
    v7 = [*(a1 + 32) invalidations];
    v8 = [v7 count];
    v9 = *(a1 + 32);
    *buf = 134218498;
    v63 = v6;
    v64 = 2048;
    v65 = v8;
    v66 = 2114;
    v67 = v9;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Did receive update result with %lu assertion(s) & %lu invalidation(s), will handle; updateResult=%{public}@", buf, 0x20u);
  }

  v10 = [*(a1 + 32) assertions];
  v11 = [v10 mutableCopy];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [*(a1 + 32) invalidations];
  v12 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v12)
  {
    v14 = v12;
    v41 = *v57;
    *&v13 = 138412290;
    v39 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * i);
        v17 = DNDSLogServiceProvider;
        if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v39;
          v63 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Handling invalidation: %@", buf, 0xCu);
        }

        v18 = [v16 assertion];
        v19 = [v18 source];
        v20 = [v19 clientIdentifier];

        v21 = [*(*(a1 + 40) + 32) clientDetailsForIdentifier:v20];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_22;
        v54[3] = &unk_278F8AEF8;
        v54[4] = *(a1 + 40);
        v22 = v21;
        v55 = v22;
        v23 = [v11 bs_firstObjectPassingTest:v54];
        if (v23)
        {
          [v11 removeObject:v23];
        }

        v24 = *(a1 + 40);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_2;
        v50[3] = &unk_278F8BE58;
        v51 = v22;
        v52 = v23;
        v53 = v16;
        v25 = v23;
        v26 = v22;
        [v24 _iterateClientConnectionsToSendWithHandler:v50];
      }

      v14 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v14);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42 = v11;
  v27 = [v42 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v42);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = DNDSLogServiceProvider;
        if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v31;
          _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Handling assertion: %@", buf, 0xCu);
        }

        v33 = [v31 source];
        v34 = [v33 clientIdentifier];

        v35 = [*(*(a1 + 40) + 32) clientDetailsForIdentifier:v34];
        v36 = *(a1 + 40);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_25;
        v43[3] = &unk_278F8BE08;
        v44 = v35;
        v45 = v31;
        v37 = v35;
        [v36 _iterateClientConnectionsToSendWithHandler:v43];
      }

      v28 = [v42 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v28);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = [a2 source];
  v5 = [v4 clientIdentifier];
  v6 = [v3 clientDetailsForIdentifier:v5];

  v7 = [*(a1 + 40) isEqual:v6];
  return v7;
}

void __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) identifiers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_3;
  v15[3] = &unk_278F8BE30;
  v8 = v5;
  v16 = v8;
  v9 = [v7 bs_filter:v15];

  if ([v9 count])
  {
    v10 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Delivering assertion update with invalidation: assertion=%{public}@, invalidation=%{public}@, connection=%{public}@", buf, 0x20u);
    }

    v13 = [v6 remoteTarget];
    [v13 deliverActiveModeAssertionUpdate:*(a1 + 40) invalidation:*(a1 + 48) clientIdentifiers:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assertionUpdateClientIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5;
}

void __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) identifiers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_2_26;
  v14[3] = &unk_278F8BE30;
  v8 = v5;
  v15 = v8;
  v9 = [v7 bs_filter:v14];

  if ([v9 count])
  {
    v10 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Delivering assertion update: assertion=%{public}@, connection=%{public}@", buf, 0x16u);
    }

    v12 = [v6 remoteTarget];
    [v12 deliverActiveModeAssertionUpdate:*(a1 + 40) invalidation:0 clientIdentifiers:v9];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke_2_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assertionUpdateClientIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)handleUpdatedBehaviorSettings:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated behavior settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DNDSRemoteServiceProvider_handleUpdatedBehaviorSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = v4;
  v6 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __59__DNDSRemoteServiceProvider_handleUpdatedBehaviorSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsSettingsUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Delivering settings update: settings=%{public}@, connection=%{public}@", &v10, 0x16u);
    }

    v8 = [v5 remoteTarget];
    [v8 deliverUpdatedBehaviorSettings:*(a1 + 32)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPhoneCallBypassSettings:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated phone call bypass settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__DNDSRemoteServiceProvider_handleUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = v4;
  v6 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __66__DNDSRemoteServiceProvider_handleUpdatedPhoneCallBypassSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 wantsGlobalConfigurationUpdates] & 1) != 0 || objc_msgSend(v5, "wantsSettingsUpdates"))
  {
    v7 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Delivering bypass update: settings=%{public}@, connection=%{public}@", &v11, 0x16u);
    }

    v9 = [v6 remoteTarget];
    [v9 deliverUpdatedPhoneCallBypassSettings:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPairSyncState:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:a3];
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Did receive updated pair sync state, will handle; state=%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__DNDSRemoteServiceProvider_handleUpdatedPairSyncState___block_invoke;
  v10[3] = &__block_descriptor_40_e89_v24__0__DNDSClientConnectionDetails_8__BSServiceConnection_BSServiceConnectionContext__16l;
  v10[4] = a3;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __56__DNDSRemoteServiceProvider_handleUpdatedPairSyncState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsGlobalConfigurationUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v7 numberWithUnsignedInteger:v8];
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Delivering pair sync state: state=%{public}@, connection=%{public}@", &v14, 0x16u);
    }

    v11 = [v5 remoteTarget];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
    [v11 deliverUpdatedPairSyncState:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __66__DNDSRemoteServiceProvider_handleUpdatedPreventAutoReplySetting___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v5 wantsGlobalConfigurationUpdates] & 1) != 0 || objc_msgSend(v5, "wantsSettingsUpdates"))
  {
    v7 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v8 numberWithBool:v9];
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Delivering prevent auto reply update: settings=%{public}@, connection=%{public}@", &v15, 0x16u);
    }

    v12 = [v6 remoteTarget];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
    [v12 deliverUpdatedPreventAutoReplySetting:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedScheduleSettings:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated schedule settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DNDSRemoteServiceProvider_handleUpdatedScheduleSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = v4;
  v6 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __59__DNDSRemoteServiceProvider_handleUpdatedScheduleSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsSettingsUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Delivering settings update: settings=%{public}@, connection=%{public}@", &v10, 0x16u);
    }

    v8 = [v5 remoteTarget];
    [v8 deliverUpdatedScheduleSettings:*(a1 + 32)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedModes:(id)a3 availableModes:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Did receive updated available modes, will handle; modes=%{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__DNDSRemoteServiceProvider_handleUpdatedModes_availableModes___block_invoke;
  v12[3] = &unk_278F8BE08;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __63__DNDSRemoteServiceProvider_handleUpdatedModes_availableModes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsModeUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 remoteProcess];
      v9 = [v8 pid];
      v10 = *(a1 + 32);
      v19 = 67109634;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Delivering modes update: pid=%d, modes=%{public}@, connection=%{public}@", &v19, 0x1Cu);
    }

    v11 = [v5 remoteTarget];
    [v11 deliverAllModes:*(a1 + 40)];

    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v5 remoteProcess];
      v15 = [v14 pid];
      v16 = *(a1 + 32);
      v19 = 67109634;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Delivering available modes update: pid=%d, modes=%{public}@, connection=%{public}@", &v19, 0x1Cu);
    }

    v17 = [v5 remoteTarget];
    [v17 deliverAvailableModes:*(a1 + 32)];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAppConfigurationContextUpdateForModeIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Mode did receive updated app configuration context, will handle; mode=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__DNDSRemoteServiceProvider_handleAppConfigurationContextUpdateForModeIdentifier___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = v4;
  v6 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __82__DNDSRemoteServiceProvider_handleAppConfigurationContextUpdateForModeIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsModeUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 remoteProcess];
      v9 = [v8 pid];
      v10 = *(a1 + 32);
      v13[0] = 67109634;
      v13[1] = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Signaling mode app configuration context update: pid=%d, mode=%{public}@, connection=%{public}@", v13, 0x1Cu);
    }

    v11 = [v5 remoteTarget];
    [v11 signalAppConfigurationContextUpdateForModeIdentifier:*(a1 + 32)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleMeDeviceStateUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    [v4 meDeviceStatus];
    v7 = DNDMeDeviceStatusToString();
    v8 = [v4 meDeviceName];
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Did receive updated 'Me Device' state, will handle; meDeviceStatus=%{public}@, meDeviceName=%{public}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__DNDSRemoteServiceProvider_handleMeDeviceStateUpdate___block_invoke;
  v11[3] = &unk_278F8BE80;
  v12 = v4;
  v9 = v4;
  [(DNDSRemoteServiceProvider *)self _iterateClientConnectionsToSendWithHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__DNDSRemoteServiceProvider_handleMeDeviceStateUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 wantsMeDeviceStateUpdates])
  {
    v6 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 remoteProcess];
      v9 = [v8 pid];
      [*(a1 + 32) meDeviceStatus];
      v10 = DNDMeDeviceStatusToString();
      v11 = [*(a1 + 32) meDeviceName];
      v14[0] = 67109890;
      v14[1] = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Delivering 'Me Device' state update: pid=%d, meDeviceStatus=%{public}@, meDeviceName=%{public}@, connection=%{public}@", v14, 0x26u);
    }

    v12 = [v5 remoteTarget];
    [v12 deliverMeDeviceState:*(a1 + 32)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  if (self->_requestListener == v8)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v17[3] = &unk_278F8A348;
    v17[4] = self;
    v11 = &v18;
    objc_copyWeak(&v18, &location);
    [v9 configureConnection:v17];
  }

  else
  {
    if (self->_monitorListener != v8)
    {
      [v9 invalidate];
      goto LABEL_11;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_4;
    v15[3] = &unk_278F8A348;
    v15[4] = self;
    v11 = &v16;
    objc_copyWeak(&v16, &location);
    [v9 configureConnection:v15];
  }

  objc_destroyWeak(v11);
  if ([v9 dnds_hasAnyValidEntitlement])
  {
    [(DNDSRemoteServiceProvider *)self _addConnection:v9];
    [v9 activate];
    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "XPC connection successfully accepted: connection=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v9 invalidate];
    v13 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider listener:v9 didReceiveConnection:v13 withContext:?];
    }
  }

LABEL_11:
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = DNDRemoteServiceServerInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278F8A320;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_278F8A320;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:v3];
  [WeakRetained _removeConnection:v3];
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:v3];
  [WeakRetained _removeConnection:v3];
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = DNDRemoteMonitorServerInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_5;
  v8[3] = &unk_278F8A320;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_6;
  v6[3] = &unk_278F8A320;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:v3];
  [WeakRetained _removeConnection:v3];
}

void __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:v3];
  [WeakRetained _removeConnection:v3];
}

- (void)resolveBehaviorForEventDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  if ([v16 dnds_hasBehaviorResolutionEntitlementForClientIdentifier:v17])
  {
    v18 = [(DNDSRemoteServiceProvider *)self _clientDetailsForClientIdentifier:v17 clientConnection:v16];
    [(DNDSRemoteServiceProvider *)self delegate];
    v19 = v26 = v11;
    v20 = [MEMORY[0x277CBEAA8] date];
    v27 = 0;
    v21 = [v19 remoteServiceProvider:self resolveBehaviorForEventDetails:v9 clientDetails:v18 date:v20 error:&v27];
    v22 = v10;
    v23 = v15;
    v24 = v9;
    v25 = v27;

    v11 = v26;
    v26[2](v26, v21, v25);

    v9 = v24;
    v15 = v23;
    v10 = v22;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider resolveBehaviorForEventDetails:requestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)takeModeAssertionWithDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  if ([v16 dnds_hasEntitlementsToRequestAssertionWithDetails:v9 clientIdentifier:v17])
  {
    v18 = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v19 = [v18 remoteServiceProvider:self takeModeAssertionWithDetails:v9 clientIdentifier:v17 error:&v26];
    v20 = v26;

    if (v19)
    {
      v21 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:v17];
      if (([v21 isPersistentAssertionClient] & 1) == 0)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __91__DNDSRemoteServiceProvider_takeModeAssertionWithDetails_requestDetails_completionHandler___block_invoke;
        v24[3] = &unk_278F8BEE8;
        v25 = v19;
        [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v16 handler:v24];
      }
    }

    v11[2](v11, v19, v20);
  }

  else
  {
    v22 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v28 = v10;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v9;
      _os_log_error_impl(&dword_24912E000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to take mode assertion, will invalidate: connection=%{public}@, assertionDetails=%{public}@", buf, 0x20u);
    }

    [v16 invalidate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __91__DNDSRemoteServiceProvider_takeModeAssertionWithDetails_requestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) UUID];
  [v3 setInterruptionInvalidationAssertionUUID:v4];

  return v3;
}

- (void)invalidateActiveModeAssertionWithDetails:(id)a3 reasonOverride:(id)a4 requestDetails:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  v19 = [MEMORY[0x277CF3280] currentContext];
  v20 = [v13 clientIdentifier];
  if ([v19 dnds_hasModeAssertionEntitlementForClientIdentifier:v20])
  {
    v21 = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v22 = [v21 remoteServiceProvider:self invalidateModeAssertionForClientIdentifier:v20 reason:3 reasonOverride:objc_msgSend(v12 details:"unsignedIntegerValue") error:{v11, &v24}];
    v23 = v24;

    v14[2](v14, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider invalidateActiveModeAssertionWithDetails:reasonOverride:requestDetails:completionHandler:];
    }

    [v19 invalidate];
  }
}

- (void)getActiveModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14])
  {
    v15 = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [v15 remoteServiceProvider:self assertionWithClientIdentifer:v14 error:&v18];
    v17 = v18;

    v8[2](v8, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getActiveModeAssertionWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getLatestModeAssertionInvalidationWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14])
  {
    v15 = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [v15 remoteServiceProvider:self latestInvalidationWithClientIdentifer:v14 error:&v18];
    v17 = v18;

    v8[2](v8, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getLatestModeAssertionInvalidationWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14] && objc_msgSend(v13, "dnds_hasUserRequestedModeAssertionEntitlementForClientIdentifier:", v14))
  {
    v15 = [(DNDSRemoteServiceProvider *)self delegate];
    v16 = [MEMORY[0x277CBEAA8] date];
    v20 = 0;
    v17 = [v15 remoteServiceProvider:self invalidateAllModeAssertionsTakenBeforeDate:v16 forReason:2 clientIdentifier:v14 error:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17 != 0];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider invalidateAllActiveModeAssertionsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getAllModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14])
  {
    v15 = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [v15 remoteServiceProvider:self allActiveModeAssertionsWithError:&v18];
    v17 = v18;

    v8[2](v8, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllModeAssertionsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)registerForAssertionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__DNDSRemoteServiceProvider_registerForAssertionUpdatesWithRequestDetails_completionHandler___block_invoke;
    v15[3] = &unk_278F8BEE8;
    v16 = v14;
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:v15];
    (*(v8 + 2))(v8, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForAssertionUpdatesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __93__DNDSRemoteServiceProvider_registerForAssertionUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 assertionUpdateClientIdentifiers];
  v5 = [v4 setByAddingObject:*(a1 + 32)];

  [v3 setAssertionUpdateClientIdentifiers:v5];

  return v3;
}

- (void)queryStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasStateRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _queryStateWithCompletionHandler:v8];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryStateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)queryStateForUpdateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasStateUpdatesEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _queryStateWithCompletionHandler:v8];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryStateForUpdateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)_queryStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DNDSRemoteServiceProvider *)self delegate];
  v8 = 0;
  v6 = [v5 remoteServiceProvider:self currentStateWithError:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)registerForStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasStateUpdatesEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:&__block_literal_global_36];
    (*(v8 + 2))(v8, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForStateUpdatesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __89__DNDSRemoteServiceProvider_registerForStateUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsStateUpdates:1];

  return v2;
}

- (void)setScreenIsShared:(id)a3 screenIsMirrored:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  v19 = [MEMORY[0x277CF3280] currentContext];
  v20 = [v13 clientIdentifier];
  v21 = [v19 dnds_hasAuxiliaryStateModificationEntitlementForClientIdentifier:v20];

  if (v21)
  {
    v22 = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [v22 remoteServiceProvider:self setScreenIsShared:objc_msgSend(v11 screenIsMirrored:"BOOLValue") withError:{objc_msgSend(v12, "BOOLValue"), &v26}];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v14[2](v14, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScreenIsShared:screenIsMirrored:withRequestDetails:completionHandler:];
    }

    [v19 invalidate];
  }
}

- (void)setHearingTestIsActive:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasHearingTestEventUpdateEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = -[DNDSHearingTestEvent initWithIsHearingTestActive:]([DNDSHearingTestEvent alloc], "initWithIsHearingTestActive:", [v9 BOOLValue]);
    v24 = 0;
    v21 = [v19 remoteServiceProvider:self handleHearingTestEvent:v20 withError:&v24];
    v22 = v24;

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    v11[2](v11, v23, v22);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScreenIsShared:screenIsMirrored:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getBehaviorSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self behaviorSettingsWithError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getBehaviorSettingsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)setBehaviorSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setBehaviorSettings:v9 withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setBehaviorSettings:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getScheduleSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self scheduleSettingsWithError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getScheduleSettingsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)setScheduleSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setScheduleSettings:v9 withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScheduleSettings:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)registerForSettingsUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsUpdatesEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:&__block_literal_global_42];
    (*(v8 + 2))(v8, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScheduleSettings:withRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __92__DNDSRemoteServiceProvider_registerForSettingsUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsSettingsUpdates:1];

  return v2;
}

- (void)setPreventAutoReply:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setPreventAutoReply:objc_msgSend(v9 withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPreventAutoReply:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getPreventAutoReplyWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self getPreventAutoReplyReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getPreventAutoReplyWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)setModesCanImpactAvailability:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setModesCanImpactAvailability:objc_msgSend(v9 withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPreventAutoReply:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getModesCanImpactAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self getModesCanImpactAvailabilityReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModesCanImpactAvailabilityWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsUpdatesEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:&__block_literal_global_44];
    (*(v8 + 2))(v8, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForGlobalConfigurationUpdatesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __103__DNDSRemoteServiceProvider_registerForGlobalConfigurationUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsGlobalConfigurationUpdates:1];

  return v2;
}

- (void)getCloudSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self getCloudSyncStateReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getCloudSyncStateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)setCloudSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setCloudSyncPreferenceEnabled:objc_msgSend(v9 withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setCloudSyncPreferenceEnabled:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getPairSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self getPairSyncStateReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getPairSyncStateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)setPairSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setPairSyncPreferenceEnabled:objc_msgSend(v9 withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPairSyncPreferenceEnabled:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getAccountFeatureSupportWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self getAccountFeatureSupportWithError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAccountFeatureSupportWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getStateDumpWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v9];
  [v10 UTF8String];
  v11 = os_transaction_create();

  v12 = [MEMORY[0x277CF3280] currentContext];
  v13 = [v6 clientIdentifier];
  v14 = [v12 dnds_hasSettingsRequestEntitlementForClientIdentifier:v13];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = DNDSCollectSysdiagnoseState(v15);

    v7[2](v7, v16, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getStateDumpWithRequestDetails:completionHandler:];
    }

    [v12 invalidate];
  }
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    [v19 remoteServiceProvider:self didChangeFocusStatusSharingSettingForApplicationIdentifier:v9];

    (*(v11 + 2))(v11, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider didChangeFocusStatusSharingSettingForApplicationIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)setModeConfiguration:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self setModeConfiguration:v9 withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setModeConfiguration:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  v19 = [MEMORY[0x277CF3280] currentContext];
  v20 = [v13 clientIdentifier];
  v21 = [v19 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v20];

  if (v21)
  {
    v22 = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [v22 remoteServiceProvider:self removeModeConfigurationWithModeIdentifier:v11 deletePlaceholder:objc_msgSend(v12 withError:{"BOOLValue"), &v26}];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v14[2](v14, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider removeModeConfigurationForModeIdentifier:deletePlaceholder:withRequestDetails:completionHandler:];
    }

    [v19 invalidate];
  }
}

- (void)getModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self modeConfigurationsWithError:&v20];
    v18 = v20;

    v19 = [v17 allValues];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModeConfigurationsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getModeConfigurationForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [v19 remoteServiceProvider:self modeConfigurationForModeIdentifier:v9 withError:&v22];
    v21 = v22;

    v11[2](v11, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModeConfigurationForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getAllModesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self allModesReturningError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllModesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getAvailableModesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsRequestEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self availableModesReturningError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAvailableModesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)syncModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasSettingsModificationEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [v16 remoteServiceProvider:self syncModeConfigurationsReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v8[2](v8, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider syncModeConfigurationsWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)getAllowedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v20 = [v19 remoteServiceProvider:self allowedModesForContactHandle:v9 withError:&v24];
    v21 = v24;

    if (v21)
    {
      v22 = 0;
      v23 = v21;
    }

    else
    {
      v22 = v20;
      v23 = 0;
    }

    v11[2](v11, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllowedModesForContactHandle:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getSilencedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v20 = [v19 remoteServiceProvider:self silencedModesForContactHandle:v9 withError:&v24];
    v21 = v24;

    if (v21)
    {
      v22 = 0;
      v23 = v21;
    }

    else
    {
      v22 = v20;
      v23 = 0;
    }

    v11[2](v11, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllowedModesForContactHandle:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getUserAvailabilityInActiveModeForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self userAvailabilityInActiveModeForContactHandle:v9 withError:&v23];
    v21 = v23;

    if (v21)
    {
      v11[2](v11, MEMORY[0x277CBEC38], v21);
    }

    else
    {
      v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
      (v11)[2](v11, v22, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getUserAvailabilityInActiveModeForContactHandle:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)publishStatusKitAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self publishStatusKitAvailabilityReturningError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider publishStatusKitAvailabilityWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)activateModeWithDetails:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v9 modeIdentifier];
  v18 = [v10 clientIdentifier];
  v19 = [v16 dnds_hasModeAssertionEntitlementForClientIdentifier:v18];
  v20 = DNDSLogServiceProvider;
  if (v19)
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Activating mode %@ with details %@", buf, 0x16u);
    }

    v28 = v15;
    v21 = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = v21;
    if (v17)
    {
      v30 = 0;
      v23 = [v21 remoteServiceProvider:self takeModeAssertionWithDetails:v9 clientIdentifier:v18 error:&v30];
      v24 = v30;
    }

    else
    {
      v25 = [MEMORY[0x277CBEAA8] date];
      v29 = 0;
      v23 = [v22 remoteServiceProvider:self invalidateAllModeAssertionsTakenBeforeDate:v25 forReason:2 clientIdentifier:v18 error:&v29];
      v24 = v29;
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInt:v23 != 0];
    v11[2](v11, v26, v24);

    v15 = v28;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v32 = v10;
      v33 = 2114;
      v34 = v16;
      v35 = 2114;
      v36 = v17;
      _os_log_error_impl(&dword_24912E000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to activate a mode, will invalidate: connection=%{public}@, modeIdentifier=%{public}@", buf, 0x20u);
    }

    [v16 invalidate];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)activeModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  if ([v13 dnds_hasModeAssertionEntitlementForClientIdentifier:v14])
  {
    v15 = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [v15 remoteServiceProvider:self activeAssertionWithClientIdentifer:v14 error:&v18];
    v17 = v18;

    v8[2](v8, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider activeModeAssertionWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)invalidateModeAssertionWithUUID:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeAssertionEntitlementForClientIdentifier:v17];
  v19 = DNDSLogServiceProvider;
  if (v18)
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Invalidating mode with UUID %@ with details %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v28 = 0;
    v21 = [WeakRetained remoteServiceProvider:self invalidateModeAssertionWithUUID:v9 reason:2 reasonOverride:0 clientIdentifier:v17 error:&v28];
    v22 = v28;

    if (!(v22 | v21))
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277D05840];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"Mode assertion not found for assertion UUID.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v22 = [v23 errorWithDomain:v24 code:1005 userInfo:v25];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInt:v21 != 0];
    v11[2](v11, v26, v22);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v30 = v10;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v9;
      _os_log_error_impl(&dword_24912E000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to invalidate a mode, will invalidate: connection=%{public}@, assertionUUID=%{public}@", buf, 0x20u);
    }

    [v16 invalidate];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasModeConfigurationUpdatesEntitlementForClientIdentifier:v14];

  v16 = [v7 clientIdentifier];
  v17 = [v13 dnds_hasActiveModeUpdatesEntitlementForClientIdentifier:v16];

  if ((v15 & 1) != 0 || v17)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__DNDSRemoteServiceProvider_registerForModeSelectionUpdatesWithRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_278F8BF30;
    v24 = v15;
    v25 = v17;
    v18 = v7;
    v23 = v18;
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:v22];
    if (v17)
    {
      v19 = [(DNDSRemoteServiceProvider *)self delegate];
      v20 = [v18 clientIdentifier];
      v21 = [v19 remoteServiceProvider:self activeAssertionWithClientIdentifer:v20 error:0];
    }

    else
    {
      v21 = 0;
    }

    (*(v8 + 2))(v8, MEMORY[0x277CBEC38], v21, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForModeSelectionUpdatesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __97__DNDSRemoteServiceProvider_registerForModeSelectionUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setWantsModeUpdates:1];
  }

  if (*(a1 + 41) == 1)
  {
    [v4 setWantsActiveModeUpdates:1];
    v5 = [v4 activeAssertionUpdateClientIdentifiers];
    v6 = [*(a1 + 32) clientIdentifier];
    v7 = [v5 setByAddingObject:v6];

    [v4 setActiveAssertionUpdateClientIdentifiers:v7];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)getAppInfoForBundleIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsRequestEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [v19 remoteServiceProvider:self getAppInfoForBundleIdentifier:v9 withError:&v22];
    v21 = v22;

    v11[2](v11, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppInfoForBundleIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)getAppInfoForBundleIdentifiers:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasSettingsRequestEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [v19 remoteServiceProvider:self getAppInfoForBundleIdentifiers:v9 withError:&v22];
    v21 = v22;

    v11[2](v11, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppInfoForBundleIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)queryMeDeviceStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasMeDeviceStateEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self currentMeDeviceStateWithError:&v19];
    v18 = v19;

    v8[2](v8, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryMeDeviceStateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasMeDeviceStateEntitlementForClientIdentifier:v14];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:v13 handler:&__block_literal_global_51];
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [v16 remoteServiceProvider:self currentMeDeviceStateWithError:&v19];
    v18 = v19;

    v8[2](v8, MEMORY[0x277CBEC38], v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForMeDeviceStateUpdatesWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

id __97__DNDSRemoteServiceProvider_registerForMeDeviceStateUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsMeDeviceStateUpdates:1];

  return v2;
}

- (void)setAppConfigurationPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x277CCACA8];
  v21 = NSStringFromSelector(a2);
  v22 = [v20 stringWithFormat:@"com.apple.donotdisturbd.%@", v21];
  [v22 UTF8String];
  v23 = os_transaction_create();

  v24 = [MEMORY[0x277CF3280] currentContext];
  v25 = [v18 clientIdentifier];
  v26 = [v24 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v25];

  if (v26)
  {
    v27 = self;
    v28 = [(DNDSRemoteServiceProvider *)self delegate];
    v38 = v23;
    v39 = 0;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v32 = v14;
    v33 = [v28 remoteServiceProvider:v27 setAppConfigurationPredicate:v14 forActionIdentifier:v31 forApplicationIdentifier:v30 modeIdentifier:v29 withError:&v39];
    v34 = v39;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    v19[2](v19, v35, v34);

    v36 = v32;
    v15 = v31;
    v16 = v30;
    v17 = v29;
    v23 = v38;
  }

  else
  {
    v36 = v14;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppConfigurationPredicate:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [v24 invalidate];
  }
}

- (void)getAppConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  v22 = [MEMORY[0x277CF3280] currentContext];
  v23 = [v16 clientIdentifier];
  v24 = [v22 dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:v23];

  if (v24)
  {
    v25 = [(DNDSRemoteServiceProvider *)self delegate];
    v28 = 0;
    v26 = [v25 remoteServiceProvider:self getAppConfigurationPredicateForActionIdentifier:v13 forApplicationIdentifier:v14 modeIdentifier:v15 withError:&v28];
    v27 = v28;

    v17[2](v17, v26, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppConfigurationPredicateForActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [v22 invalidate];
  }
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x277CCACA8];
  v21 = NSStringFromSelector(a2);
  v22 = [v20 stringWithFormat:@"com.apple.donotdisturbd.%@", v21];
  [v22 UTF8String];
  v23 = os_transaction_create();

  v24 = [MEMORY[0x277CF3280] currentContext];
  v25 = [v18 clientIdentifier];
  v26 = [v24 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v25];

  if (v26)
  {
    v27 = self;
    v28 = [(DNDSRemoteServiceProvider *)self delegate];
    v38 = v23;
    v39 = 0;
    v29 = v17;
    v30 = v16;
    v31 = v15;
    v32 = v14;
    v33 = [v28 remoteServiceProvider:v27 setAppConfigurationTargetContentIdentifierPrefix:v14 forActionIdentifier:v31 forApplicationIdentifier:v30 modeIdentifier:v29 withError:&v39];
    v34 = v39;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    v19[2](v19, v35, v34);

    v36 = v32;
    v15 = v31;
    v16 = v30;
    v17 = v29;
    v23 = v38;
  }

  else
  {
    v36 = v14;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppConfigurationTargetContentIdentifierPrefix:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [v24 invalidate];
  }
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [(DNDSRemoteServiceProvider *)self delegate];
  v18 = [v10 clientIdentifier];
  v19 = [v16 dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:v18];

  if (v19)
  {
    if ([v9 isEqualToString:@"com.apple.focus.current-sentinel"])
    {
      v27 = 0;
      v20 = [v17 remoteServiceProvider:self currentStateWithError:&v27];
      v21 = v27;
      v22 = [v20 activeModeIdentifier];

      v9 = v22;
    }

    else
    {
      v21 = 0;
    }

    v23 = objc_alloc_init(MEMORY[0x277D058A8]);
    if (v9)
    {
      v26 = v21;
      v24 = [v17 remoteServiceProvider:self getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v9 withError:&v26];
      v25 = v26;

      v21 = v25;
    }

    else
    {
      v24 = [MEMORY[0x277CBEAC0] dictionary];
    }

    [v23 setAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v24];

    v11[2](v11, v23, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  v22 = [MEMORY[0x277CF3280] currentContext];
  v23 = [v16 clientIdentifier];
  v24 = [v22 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v23];

  if (v24)
  {
    v25 = [(DNDSRemoteServiceProvider *)self delegate];
    v29 = 0;
    v26 = [v25 remoteServiceProvider:self setAppAction:v13 forApplicationIdentifier:v14 modeIdentifier:v15 withError:&v29];
    v27 = v29;

    v28 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    v17[2](v17, v28, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppAction:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [v22 invalidate];
  }
}

- (void)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  v22 = [MEMORY[0x277CF3280] currentContext];
  v23 = [v16 clientIdentifier];
  v24 = [v22 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v23];

  if (v24)
  {
    v25 = [(DNDSRemoteServiceProvider *)self delegate];
    v29 = 0;
    v26 = [v25 remoteServiceProvider:self clearAppActionWithIdentifier:v13 forApplicationIdentifier:v14 modeIdentifier:v15 withError:&v29];
    v27 = v29;

    v28 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    v17[2](v17, v28, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider clearAppActionWithIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [v22 invalidate];
  }
}

- (void)getAppActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self getAppActionsForModeIdentifier:v9 withError:&v23];
    v21 = v23;

    v22 = objc_alloc_init(MEMORY[0x277D058A0]);
    [v22 setAppActionsForModeIdentifier:v20];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppActionsForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  v19 = [MEMORY[0x277CF3280] currentContext];
  v20 = [v13 clientIdentifier];
  v21 = [v19 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v20];

  if (v21)
  {
    v22 = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [v22 remoteServiceProvider:self clearSystemActionWithIdentifier:v11 forModeIdentifier:v12 withError:&v26];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v14[2](v14, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider clearSystemActionWithIdentifier:forModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v19 invalidate];
  }
}

- (void)getSystemActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  v16 = [MEMORY[0x277CF3280] currentContext];
  v17 = [v10 clientIdentifier];
  v18 = [v16 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v17];

  if (v18)
  {
    v19 = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [v19 remoteServiceProvider:self getSystemActionsForModeIdentifier:v9 withError:&v23];
    v21 = v23;

    v22 = [v20 allObjects];
    v11[2](v11, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getSystemActionsForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v16 invalidate];
  }
}

- (void)setSystemAction:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  v19 = [MEMORY[0x277CF3280] currentContext];
  v20 = [v13 clientIdentifier];
  v21 = [v19 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v20];

  if (v21)
  {
    v22 = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [v22 remoteServiceProvider:self setSystemAction:v11 forModeIdentifier:v12 withError:&v26];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v14[2](v14, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setSystemAction:forModeIdentifier:withRequestDetails:completionHandler:];
    }

    [v19 invalidate];
  }
}

- (void)resetAppConfigurationStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  v13 = [MEMORY[0x277CF3280] currentContext];
  v14 = [v7 clientIdentifier];
  v15 = [v13 dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:v14];

  if (v15)
  {
    v16 = [(DNDSRemoteServiceProvider *)self delegate];
    v17 = [v16 remoteServiceProviderResetAppConfigurationState:self];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v8[2](v8, v18, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider resetAppConfigurationStateWithRequestDetails:completionHandler:];
    }

    [v13 invalidate];
  }
}

- (void)_handleClientConnectionInterrupted:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteServiceProvider *)self _unregisterConnectionDetailsForClientConnection:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteServiceProvider *)self _unregisterConnectionDetailsForClientConnection:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerOrMutateConnectionDetailsForClientConnection:(id)a3 handler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_clientConnectionDetailsByConnection;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_clientConnectionDetailsByConnection objectForKey:v6];
  if (!v9)
  {
    v10 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Registering new connection details for connection: connection=%{public}@", &v14, 0xCu);
    }

    v9 = objc_alloc_init(DNDSClientConnectionDetails);
  }

  v11 = v7[2](v7, v9);
  if (([(DNDSClientConnectionDetails *)v9 isEqual:v11]& 1) == 0)
  {
    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Updating connection details for connection: connection=%{public}@, updatedConnectionDetails=%{public}@", &v14, 0x16u);
    }

    [(NSMapTable *)self->_clientConnectionDetailsByConnection setObject:v11 forKey:v6];
  }

  objc_sync_exit(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterConnectionDetailsForClientConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_clientConnectionDetailsByConnection;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_clientConnectionDetailsByConnection objectForKey:v4];
  [(NSMapTable *)self->_clientConnectionDetailsByConnection removeObjectForKey:v4];
  [(DNDSRemoteServiceProvider *)self _removeConnection:v4];
  v7 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Connection details unregistered: connection=%{public}@, clientDetails=%{public}@", &v13, 0x16u);
  }

  v8 = [v6 interruptionInvalidationAssertionUUID];
  if (v8)
  {
    v9 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating assertion due to client disconnect: connection=%{public}@, UUID=%{public}@", &v13, 0x16u);
    }

    v10 = [(DNDSRemoteServiceProvider *)self delegate];
    v11 = [v10 remoteServiceProvider:self invalidateModeAssertionWithUUID:v8 reason:6 reasonOverride:1 clientIdentifier:0 error:0];
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_iterateClientConnectionsToSendWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_clientConnectionDetailsByConnection;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_clientConnectionDetailsByConnection;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_clientConnectionDetailsByConnection objectForKey:v10, v13];
        v4[2](v4, v11, v10);
      }

      v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_clientDetailsForClientIdentifier:(id)a3 clientConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider findClientDetailsForIdentifier:v6];
  if (!v8)
  {
    v9 = [v7 remoteProcess];
    v10 = [v9 auditToken];
    v11 = v10;
    if (v10)
    {
      [v10 realToken];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    BSPIDForAuditToken();
    v12 = BSExecutablePathForPID();
    if (v12)
    {
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
      v14 = _CFBundleCopyBundleURLForExecutableURL();
    }

    else
    {
      v14 = 0;
    }

    v8 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:v6 applicationBundleURL:v14, v16, v17];
  }

  return v8;
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "XPC connection without any valid entitlements tried to connect, will reject: connection=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)resolveBehaviorForEventDetails:requestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to process event, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)invalidateActiveModeAssertionWithDetails:reasonOverride:requestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to invalidate mode assertion, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getActiveModeAssertionWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get mode assertion, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getLatestModeAssertionInvalidationWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get mode assertion invalidation, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllActiveModeAssertionsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to invalidate all mode assertions, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAllModeAssertionsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to request all mode assertions, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForAssertionUpdatesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to register for assertion updates, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)queryStateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to query state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)queryStateForUpdateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to query state as a part of registering for updates, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForStateUpdatesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to register for state updates, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setScreenIsShared:screenIsMirrored:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set screen sharing / mirroring settings, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getBehaviorSettingsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get behavior settings, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setBehaviorSettings:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set behavior settings, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getScheduleSettingsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get schedule settings, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setScheduleSettings:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set schedule settings, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setPreventAutoReply:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set global configuration, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getPreventAutoReplyWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get auto reply prevention state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getModesCanImpactAvailabilityWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get global availability state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without valid entitlements tried to register for global configuration updates; will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getCloudSyncStateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get cloud sync state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setCloudSyncPreferenceEnabled:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to change cloud sync preference enabled state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getPairSyncStateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get pair sync state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setPairSyncPreferenceEnabled:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to change pair sync preference enabled state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAccountFeatureSupportWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get supported account features, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getStateDumpWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to fetch state dump, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to notify of focus status sharing change, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setModeConfiguration:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set mode configuration, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeModeConfigurationForModeIdentifier:deletePlaceholder:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to remove mode configuration, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getModeConfigurationsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get mode configurations, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getModeConfigurationForModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get mode configuration, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAllModesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get all modes, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAvailableModesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get available modes, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)syncModeConfigurationsWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to sync modes, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAllowedModesForContactHandle:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get silenced modes for a contact, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getUserAvailabilityInActiveModeForContactHandle:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get availability state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)publishStatusKitAvailabilityWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to publish statuskit availability, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)activeModeAssertionWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get mode assertion, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForModeSelectionUpdatesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without valid entitlements tried to register for available mode identifiers; will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAppInfoForBundleIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without valid entitlements tried to fetch app info; will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)queryMeDeviceStateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without valid entitlements tried to query 'Me Device' state; will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForMeDeviceStateUpdatesWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without valid entitlements tried to register for 'Me Device' state updates; will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setAppConfigurationPredicate:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set app predicate, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationPredicateForActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get app predicate, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set target content identifier prefix, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get target content identifier prefixes, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setAppAction:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set app action, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)clearAppActionWithIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to clear app action, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getAppActionsForModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get app actions, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)clearSystemActionWithIdentifier:forModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to clear system action, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getSystemActionsForModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to get system actions, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setSystemAction:forModeIdentifier:withRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to set system action, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)resetAppConfigurationStateWithRequestDetails:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "[%{public}@] XPC connection without any valid entitlements tried to reset app configuration state, will invalidate: connection=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end