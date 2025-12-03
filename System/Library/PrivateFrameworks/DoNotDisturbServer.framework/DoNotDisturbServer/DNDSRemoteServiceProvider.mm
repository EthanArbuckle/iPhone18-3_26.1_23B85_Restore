@interface DNDSRemoteServiceProvider
- (DNDSRemoteServiceProvider)initWithClientDetailsProvider:(id)provider;
- (DNDSRemoteServiceProviderDelegate)delegate;
- (id)_clientDetailsForClientIdentifier:(id)identifier clientConnection:(id)connection;
- (void)_addConnection:(id)connection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)_iterateClientConnectionsToSendWithHandler:(id)handler;
- (void)_queryStateWithCompletionHandler:(id)handler;
- (void)_registerOrMutateConnectionDetailsForClientConnection:(id)connection handler:(id)handler;
- (void)_removeConnection:(id)connection;
- (void)_unregisterConnectionDetailsForClientConnection:(id)connection;
- (void)activateModeWithDetails:(id)details withRequestDetails:(id)requestDetails completionHandler:(id)handler;
- (void)activeModeAssertionWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)dealloc;
- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAccountFeatureSupportWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getActiveModeAssertionWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAllModeAssertionsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAllModesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAllowedModesForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAppActionsForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAppConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAppInfoForBundleIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAppInfoForBundleIdentifiers:(id)identifiers withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getAvailableModesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getBehaviorSettingsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getCloudSyncStateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getLatestModeAssertionInvalidationWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getModeConfigurationForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getModeConfigurationsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getModesCanImpactAvailabilityWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getPairSyncStateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getPreventAutoReplyWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getScheduleSettingsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getSilencedModesForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getStateDumpWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)getSystemActionsForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)getUserAvailabilityInActiveModeForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler;
- (void)handleAppConfigurationContextUpdateForModeIdentifier:(id)identifier;
- (void)handleMeDeviceStateUpdate:(id)update;
- (void)handleModeAssertionUpdateResult:(id)result;
- (void)handleStateUpdate:(id)update;
- (void)handleUpdatedBehaviorSettings:(id)settings;
- (void)handleUpdatedModes:(id)modes availableModes:(id)availableModes;
- (void)handleUpdatedPairSyncState:(unint64_t)state;
- (void)handleUpdatedPhoneCallBypassSettings:(id)settings;
- (void)handleUpdatedScheduleSettings:(id)settings;
- (void)invalidate;
- (void)invalidateActiveModeAssertionWithDetails:(id)details reasonOverride:(id)override requestDetails:(id)requestDetails completionHandler:(id)handler;
- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)invalidateModeAssertionWithUUID:(id)d withRequestDetails:(id)details completionHandler:(id)handler;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)publishStatusKitAvailabilityWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)queryMeDeviceStateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)queryStateForUpdateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)queryStateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForAssertionUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForSettingsUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)registerForStateUpdatesWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(id)placeholder withRequestDetails:(id)details completionHandler:(id)handler;
- (void)resetAppConfigurationStateWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)resolveBehaviorForEventDetails:(id)details requestDetails:(id)requestDetails completionHandler:(id)handler;
- (void)resume;
- (void)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setBehaviorSettings:(id)settings withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setCloudSyncPreferenceEnabled:(id)enabled withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setHearingTestIsActive:(id)active withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setModeConfiguration:(id)configuration withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setModesCanImpactAvailability:(id)availability withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setPairSyncPreferenceEnabled:(id)enabled withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setPreventAutoReply:(id)reply withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setScheduleSettings:(id)settings withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setScreenIsShared:(id)shared screenIsMirrored:(id)mirrored withRequestDetails:(id)details completionHandler:(id)handler;
- (void)setSystemAction:(id)action forModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler;
- (void)syncModeConfigurationsWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)takeModeAssertionWithDetails:(id)details requestDetails:(id)requestDetails completionHandler:(id)handler;
@end

@implementation DNDSRemoteServiceProvider

- (DNDSRemoteServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DNDSRemoteServiceProvider)initWithClientDetailsProvider:(id)provider
{
  providerCopy = provider;
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

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    clientConnectionDetailsByConnection = v15->_clientConnectionDetailsByConnection;
    v15->_clientConnectionDetailsByConnection = weakToStrongObjectsMapTable;

    objc_storeStrong(&v15->_clientDetailsProvider, provider);
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

- (void)handleStateUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = updateCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive state update, will handle; stateUpdate=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DNDSRemoteServiceProvider_handleStateUpdate___block_invoke;
  v8[3] = &unk_278F8BE08;
  v9 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
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

- (void)handleModeAssertionUpdateResult:(id)result
{
  resultCopy = result;
  clientNotificationQueue = self->_clientNotificationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DNDSRemoteServiceProvider_handleModeAssertionUpdateResult___block_invoke;
  v7[3] = &unk_278F89F48;
  v8 = resultCopy;
  selfCopy = self;
  v6 = resultCopy;
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

- (void)handleUpdatedBehaviorSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = settingsCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated behavior settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DNDSRemoteServiceProvider_handleUpdatedBehaviorSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = settingsCopy;
  v6 = settingsCopy;
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

- (void)handleUpdatedPhoneCallBypassSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = settingsCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated phone call bypass settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__DNDSRemoteServiceProvider_handleUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = settingsCopy;
  v6 = settingsCopy;
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

- (void)handleUpdatedPairSyncState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithUnsignedInteger:state];
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Did receive updated pair sync state, will handle; state=%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__DNDSRemoteServiceProvider_handleUpdatedPairSyncState___block_invoke;
  v10[3] = &__block_descriptor_40_e89_v24__0__DNDSClientConnectionDetails_8__BSServiceConnection_BSServiceConnectionContext__16l;
  v10[4] = state;
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

- (void)handleUpdatedScheduleSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = settingsCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Did receive updated schedule settings, will handle; settings=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DNDSRemoteServiceProvider_handleUpdatedScheduleSettings___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = settingsCopy;
  v6 = settingsCopy;
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

- (void)handleUpdatedModes:(id)modes availableModes:(id)availableModes
{
  v17 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  availableModesCopy = availableModes;
  v8 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = availableModesCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Did receive updated available modes, will handle; modes=%{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__DNDSRemoteServiceProvider_handleUpdatedModes_availableModes___block_invoke;
  v12[3] = &unk_278F8BE08;
  v13 = availableModesCopy;
  v14 = modesCopy;
  v9 = modesCopy;
  v10 = availableModesCopy;
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

- (void)handleAppConfigurationContextUpdateForModeIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Mode did receive updated app configuration context, will handle; mode=%{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__DNDSRemoteServiceProvider_handleAppConfigurationContextUpdateForModeIdentifier___block_invoke;
  v8[3] = &unk_278F8BE80;
  v9 = identifierCopy;
  v6 = identifierCopy;
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

- (void)handleMeDeviceStateUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    [updateCopy meDeviceStatus];
    v7 = DNDMeDeviceStatusToString();
    meDeviceName = [updateCopy meDeviceName];
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = meDeviceName;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Did receive updated 'Me Device' state, will handle; meDeviceStatus=%{public}@, meDeviceName=%{public}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__DNDSRemoteServiceProvider_handleMeDeviceStateUpdate___block_invoke;
  v11[3] = &unk_278F8BE80;
  v12 = updateCopy;
  v9 = updateCopy;
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  if (self->_requestListener == listenerCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v17[3] = &unk_278F8A348;
    v17[4] = self;
    v11 = &v18;
    objc_copyWeak(&v18, &location);
    [connectionCopy configureConnection:v17];
  }

  else
  {
    if (self->_monitorListener != listenerCopy)
    {
      [connectionCopy invalidate];
      goto LABEL_11;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__DNDSRemoteServiceProvider_listener_didReceiveConnection_withContext___block_invoke_4;
    v15[3] = &unk_278F8A348;
    v15[4] = self;
    v11 = &v16;
    objc_copyWeak(&v16, &location);
    [connectionCopy configureConnection:v15];
  }

  objc_destroyWeak(v11);
  if ([connectionCopy dnds_hasAnyValidEntitlement])
  {
    [(DNDSRemoteServiceProvider *)self _addConnection:connectionCopy];
    [connectionCopy activate];
    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = connectionCopy;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "XPC connection successfully accepted: connection=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    [connectionCopy invalidate];
    v13 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider listener:connectionCopy didReceiveConnection:v13 withContext:?];
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

- (void)resolveBehaviorForEventDetails:(id)details requestDetails:(id)requestDetails completionHandler:(id)handler
{
  detailsCopy = details;
  requestDetailsCopy = requestDetails;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [requestDetailsCopy clientIdentifier];
  if ([currentContext dnds_hasBehaviorResolutionEntitlementForClientIdentifier:clientIdentifier])
  {
    v18 = [(DNDSRemoteServiceProvider *)self _clientDetailsForClientIdentifier:clientIdentifier clientConnection:currentContext];
    [(DNDSRemoteServiceProvider *)self delegate];
    v19 = v26 = handlerCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v27 = 0;
    v21 = [v19 remoteServiceProvider:self resolveBehaviorForEventDetails:detailsCopy clientDetails:v18 date:date error:&v27];
    v22 = requestDetailsCopy;
    v23 = v15;
    v24 = detailsCopy;
    v25 = v27;

    handlerCopy = v26;
    v26[2](v26, v21, v25);

    detailsCopy = v24;
    v15 = v23;
    requestDetailsCopy = v22;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider resolveBehaviorForEventDetails:requestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)takeModeAssertionWithDetails:(id)details requestDetails:(id)requestDetails completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  requestDetailsCopy = requestDetails;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [requestDetailsCopy clientIdentifier];
  if ([currentContext dnds_hasEntitlementsToRequestAssertionWithDetails:detailsCopy clientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v19 = [delegate remoteServiceProvider:self takeModeAssertionWithDetails:detailsCopy clientIdentifier:clientIdentifier error:&v26];
    v20 = v26;

    if (v19)
    {
      v21 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];
      if (([v21 isPersistentAssertionClient] & 1) == 0)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __91__DNDSRemoteServiceProvider_takeModeAssertionWithDetails_requestDetails_completionHandler___block_invoke;
        v24[3] = &unk_278F8BEE8;
        v25 = v19;
        [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:v24];
      }
    }

    handlerCopy[2](handlerCopy, v19, v20);
  }

  else
  {
    v22 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v28 = requestDetailsCopy;
      v29 = 2114;
      v30 = currentContext;
      v31 = 2114;
      v32 = detailsCopy;
      _os_log_error_impl(&dword_24912E000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to take mode assertion, will invalidate: connection=%{public}@, assertionDetails=%{public}@", buf, 0x20u);
    }

    [currentContext invalidate];
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

- (void)invalidateActiveModeAssertionWithDetails:(id)details reasonOverride:(id)override requestDetails:(id)requestDetails completionHandler:(id)handler
{
  detailsCopy = details;
  overrideCopy = override;
  requestDetailsCopy = requestDetails;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [requestDetailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v22 = [delegate remoteServiceProvider:self invalidateModeAssertionForClientIdentifier:clientIdentifier reason:3 reasonOverride:objc_msgSend(overrideCopy details:"unsignedIntegerValue") error:{detailsCopy, &v24}];
    v23 = v24;

    handlerCopy[2](handlerCopy, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider invalidateActiveModeAssertionWithDetails:reasonOverride:requestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getActiveModeAssertionWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [delegate remoteServiceProvider:self assertionWithClientIdentifer:clientIdentifier error:&v18];
    v17 = v18;

    handlerCopy[2](handlerCopy, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getActiveModeAssertionWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getLatestModeAssertionInvalidationWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [delegate remoteServiceProvider:self latestInvalidationWithClientIdentifer:clientIdentifier error:&v18];
    v17 = v18;

    handlerCopy[2](handlerCopy, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getLatestModeAssertionInvalidationWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier] && objc_msgSend(currentContext, "dnds_hasUserRequestedModeAssertionEntitlementForClientIdentifier:", clientIdentifier))
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    date = [MEMORY[0x277CBEAA8] date];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self invalidateAllModeAssertionsTakenBeforeDate:date forReason:2 clientIdentifier:clientIdentifier error:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17 != 0];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider invalidateAllActiveModeAssertionsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAllModeAssertionsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [delegate remoteServiceProvider:self allActiveModeAssertionsWithError:&v18];
    v17 = v18;

    handlerCopy[2](handlerCopy, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllModeAssertionsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)registerForAssertionUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__DNDSRemoteServiceProvider_registerForAssertionUpdatesWithRequestDetails_completionHandler___block_invoke;
    v15[3] = &unk_278F8BEE8;
    v16 = clientIdentifier;
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:v15];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForAssertionUpdatesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
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

- (void)queryStateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasStateRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _queryStateWithCompletionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryStateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)queryStateForUpdateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasStateUpdatesEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _queryStateWithCompletionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryStateForUpdateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)_queryStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(DNDSRemoteServiceProvider *)self delegate];
  v8 = 0;
  v6 = [delegate remoteServiceProvider:self currentStateWithError:&v8];
  v7 = v8;

  handlerCopy[2](handlerCopy, v6, v7);
}

- (void)registerForStateUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasStateUpdatesEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:&__block_literal_global_36];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForStateUpdatesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

id __89__DNDSRemoteServiceProvider_registerForStateUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsStateUpdates:1];

  return v2;
}

- (void)setScreenIsShared:(id)shared screenIsMirrored:(id)mirrored withRequestDetails:(id)details completionHandler:(id)handler
{
  sharedCopy = shared;
  mirroredCopy = mirrored;
  detailsCopy = details;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v21 = [currentContext dnds_hasAuxiliaryStateModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v21)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [delegate remoteServiceProvider:self setScreenIsShared:objc_msgSend(sharedCopy screenIsMirrored:"BOOLValue") withError:{objc_msgSend(mirroredCopy, "BOOLValue"), &v26}];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    handlerCopy[2](handlerCopy, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScreenIsShared:screenIsMirrored:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setHearingTestIsActive:(id)active withRequestDetails:(id)details completionHandler:(id)handler
{
  activeCopy = active;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasHearingTestEventUpdateEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = -[DNDSHearingTestEvent initWithIsHearingTestActive:]([DNDSHearingTestEvent alloc], "initWithIsHearingTestActive:", [activeCopy BOOLValue]);
    v24 = 0;
    v21 = [delegate remoteServiceProvider:self handleHearingTestEvent:v20 withError:&v24];
    v22 = v24;

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    handlerCopy[2](handlerCopy, v23, v22);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScreenIsShared:screenIsMirrored:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getBehaviorSettingsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self behaviorSettingsWithError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getBehaviorSettingsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setBehaviorSettings:(id)settings withRequestDetails:(id)details completionHandler:(id)handler
{
  settingsCopy = settings;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setBehaviorSettings:settingsCopy withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setBehaviorSettings:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getScheduleSettingsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self scheduleSettingsWithError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getScheduleSettingsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setScheduleSettings:(id)settings withRequestDetails:(id)details completionHandler:(id)handler
{
  settingsCopy = settings;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setScheduleSettings:settingsCopy withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScheduleSettings:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)registerForSettingsUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsUpdatesEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:&__block_literal_global_42];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setScheduleSettings:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

id __92__DNDSRemoteServiceProvider_registerForSettingsUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsSettingsUpdates:1];

  return v2;
}

- (void)setPreventAutoReply:(id)reply withRequestDetails:(id)details completionHandler:(id)handler
{
  replyCopy = reply;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setPreventAutoReply:objc_msgSend(replyCopy withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPreventAutoReply:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getPreventAutoReplyWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self getPreventAutoReplyReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getPreventAutoReplyWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setModesCanImpactAvailability:(id)availability withRequestDetails:(id)details completionHandler:(id)handler
{
  availabilityCopy = availability;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setModesCanImpactAvailability:objc_msgSend(availabilityCopy withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPreventAutoReply:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getModesCanImpactAvailabilityWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self getModesCanImpactAvailabilityReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModesCanImpactAvailabilityWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsUpdatesEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:&__block_literal_global_44];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForGlobalConfigurationUpdatesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

id __103__DNDSRemoteServiceProvider_registerForGlobalConfigurationUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsGlobalConfigurationUpdates:1];

  return v2;
}

- (void)getCloudSyncStateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self getCloudSyncStateReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getCloudSyncStateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setCloudSyncPreferenceEnabled:(id)enabled withRequestDetails:(id)details completionHandler:(id)handler
{
  enabledCopy = enabled;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setCloudSyncPreferenceEnabled:objc_msgSend(enabledCopy withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setCloudSyncPreferenceEnabled:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getPairSyncStateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self getPairSyncStateReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getPairSyncStateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setPairSyncPreferenceEnabled:(id)enabled withRequestDetails:(id)details completionHandler:(id)handler
{
  enabledCopy = enabled;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setPairSyncPreferenceEnabled:objc_msgSend(enabledCopy withError:{"BOOLValue"), &v23}];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setPairSyncPreferenceEnabled:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAccountFeatureSupportWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self getAccountFeatureSupportWithError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAccountFeatureSupportWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getStateDumpWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v9];
  [v10 UTF8String];
  v11 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v14 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v14)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v16 = DNDSCollectSysdiagnoseState(date);

    handlerCopy[2](handlerCopy, v16, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getStateDumpWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    [delegate remoteServiceProvider:self didChangeFocusStatusSharingSettingForApplicationIdentifier:identifierCopy];

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider didChangeFocusStatusSharingSettingForApplicationIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setModeConfiguration:(id)configuration withRequestDetails:(id)details completionHandler:(id)handler
{
  configurationCopy = configuration;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self setModeConfiguration:configurationCopy withError:&v23];
    v21 = v23;

    v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setModeConfiguration:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(id)placeholder withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  placeholderCopy = placeholder;
  detailsCopy = details;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v21 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v21)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [delegate remoteServiceProvider:self removeModeConfigurationWithModeIdentifier:identifierCopy deletePlaceholder:objc_msgSend(placeholderCopy withError:{"BOOLValue"), &v26}];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    handlerCopy[2](handlerCopy, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider removeModeConfigurationForModeIdentifier:deletePlaceholder:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getModeConfigurationsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self modeConfigurationsWithError:&v20];
    v18 = v20;

    allValues = [v17 allValues];
    handlerCopy[2](handlerCopy, allValues, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModeConfigurationsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getModeConfigurationForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [delegate remoteServiceProvider:self modeConfigurationForModeIdentifier:identifierCopy withError:&v22];
    v21 = v22;

    handlerCopy[2](handlerCopy, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getModeConfigurationForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAllModesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self allModesReturningError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllModesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAvailableModesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self availableModesReturningError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAvailableModesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)syncModeConfigurationsWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasSettingsModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v20 = 0;
    v17 = [delegate remoteServiceProvider:self syncModeConfigurationsReturningError:&v20];
    v18 = v20;

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider syncModeConfigurationsWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAllowedModesForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler
{
  handleCopy = handle;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v20 = [delegate remoteServiceProvider:self allowedModesForContactHandle:handleCopy withError:&v24];
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

    handlerCopy[2](handlerCopy, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllowedModesForContactHandle:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getSilencedModesForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler
{
  handleCopy = handle;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v24 = 0;
    v20 = [delegate remoteServiceProvider:self silencedModesForContactHandle:handleCopy withError:&v24];
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

    handlerCopy[2](handlerCopy, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAllowedModesForContactHandle:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getUserAvailabilityInActiveModeForContactHandle:(id)handle withRequestDetails:(id)details completionHandler:(id)handler
{
  handleCopy = handle;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self userAvailabilityInActiveModeForContactHandle:handleCopy withError:&v23];
    v21 = v23;

    if (v21)
    {
      handlerCopy[2](handlerCopy, MEMORY[0x277CBEC38], v21);
    }

    else
    {
      v22 = [MEMORY[0x277CCABB0] numberWithBool:v20];
      (handlerCopy)[2](handlerCopy, v22, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getUserAvailabilityInActiveModeForContactHandle:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)publishStatusKitAvailabilityWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self publishStatusKitAvailabilityReturningError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider publishStatusKitAvailabilityWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)activateModeWithDetails:(id)details withRequestDetails:(id)requestDetails completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  requestDetailsCopy = requestDetails;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  modeIdentifier = [detailsCopy modeIdentifier];
  clientIdentifier = [requestDetailsCopy clientIdentifier];
  v19 = [currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier];
  v20 = DNDSLogServiceProvider;
  if (v19)
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = detailsCopy;
      v33 = 2112;
      v34 = requestDetailsCopy;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Activating mode %@ with details %@", buf, 0x16u);
    }

    v28 = v15;
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = delegate;
    if (modeIdentifier)
    {
      v30 = 0;
      v23 = [delegate remoteServiceProvider:self takeModeAssertionWithDetails:detailsCopy clientIdentifier:clientIdentifier error:&v30];
      v24 = v30;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      v29 = 0;
      v23 = [v22 remoteServiceProvider:self invalidateAllModeAssertionsTakenBeforeDate:date forReason:2 clientIdentifier:clientIdentifier error:&v29];
      v24 = v29;
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInt:v23 != 0];
    handlerCopy[2](handlerCopy, v26, v24);

    v15 = v28;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v32 = requestDetailsCopy;
      v33 = 2114;
      v34 = currentContext;
      v35 = 2114;
      v36 = modeIdentifier;
      _os_log_error_impl(&dword_24912E000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to activate a mode, will invalidate: connection=%{public}@, modeIdentifier=%{public}@", buf, 0x20u);
    }

    [currentContext invalidate];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)activeModeAssertionWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  if ([currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier])
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v18 = 0;
    v16 = [delegate remoteServiceProvider:self activeAssertionWithClientIdentifer:clientIdentifier error:&v18];
    v17 = v18;

    handlerCopy[2](handlerCopy, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider activeModeAssertionWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)invalidateModeAssertionWithUUID:(id)d withRequestDetails:(id)details completionHandler:(id)handler
{
  v36[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeAssertionEntitlementForClientIdentifier:clientIdentifier];
  v19 = DNDSLogServiceProvider;
  if (v18)
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = dCopy;
      v31 = 2112;
      v32 = detailsCopy;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Invalidating mode with UUID %@ with details %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v28 = 0;
    v21 = [WeakRetained remoteServiceProvider:self invalidateModeAssertionWithUUID:dCopy reason:2 reasonOverride:0 clientIdentifier:clientIdentifier error:&v28];
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
    handlerCopy[2](handlerCopy, v26, v22);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v30 = detailsCopy;
      v31 = 2114;
      v32 = currentContext;
      v33 = 2114;
      v34 = dCopy;
      _os_log_error_impl(&dword_24912E000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] XPC connection without any valid entitlements tried to invalidate a mode, will invalidate: connection=%{public}@, assertionUUID=%{public}@", buf, 0x20u);
    }

    [currentContext invalidate];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasModeConfigurationUpdatesEntitlementForClientIdentifier:clientIdentifier];

  clientIdentifier2 = [detailsCopy clientIdentifier];
  v17 = [currentContext dnds_hasActiveModeUpdatesEntitlementForClientIdentifier:clientIdentifier2];

  if ((v15 & 1) != 0 || v17)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__DNDSRemoteServiceProvider_registerForModeSelectionUpdatesWithRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_278F8BF30;
    v24 = v15;
    v25 = v17;
    v18 = detailsCopy;
    v23 = v18;
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:v22];
    if (v17)
    {
      delegate = [(DNDSRemoteServiceProvider *)self delegate];
      clientIdentifier3 = [v18 clientIdentifier];
      v21 = [delegate remoteServiceProvider:self activeAssertionWithClientIdentifer:clientIdentifier3 error:0];
    }

    else
    {
      v21 = 0;
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], v21, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForModeSelectionUpdatesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
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

- (void)getAppInfoForBundleIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [delegate remoteServiceProvider:self getAppInfoForBundleIdentifier:identifierCopy withError:&v22];
    v21 = v22;

    handlerCopy[2](handlerCopy, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppInfoForBundleIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAppInfoForBundleIdentifiers:(id)identifiers withRequestDetails:(id)details completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasSettingsRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v22 = 0;
    v20 = [delegate remoteServiceProvider:self getAppInfoForBundleIdentifiers:identifiersCopy withError:&v22];
    v21 = v22;

    handlerCopy[2](handlerCopy, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppInfoForBundleIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)queryMeDeviceStateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasMeDeviceStateEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self currentMeDeviceStateWithError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider queryMeDeviceStateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasMeDeviceStateEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    [(DNDSRemoteServiceProvider *)self _registerOrMutateConnectionDetailsForClientConnection:currentContext handler:&__block_literal_global_51];
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v19 = 0;
    v17 = [delegate remoteServiceProvider:self currentMeDeviceStateWithError:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEC38], v17, v18);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider registerForMeDeviceStateUpdatesWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

id __97__DNDSRemoteServiceProvider_registerForMeDeviceStateUpdatesWithRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setWantsMeDeviceStateUpdates:1];

  return v2;
}

- (void)setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  predicateCopy = predicate;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v20 = MEMORY[0x277CCACA8];
  v21 = NSStringFromSelector(a2);
  v22 = [v20 stringWithFormat:@"com.apple.donotdisturbd.%@", v21];
  [v22 UTF8String];
  v23 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v26 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v26)
  {
    selfCopy = self;
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v38 = v23;
    v39 = 0;
    v29 = modeIdentifierCopy;
    v30 = applicationIdentifierCopy;
    v31 = identifierCopy;
    v32 = predicateCopy;
    v33 = [delegate remoteServiceProvider:selfCopy setAppConfigurationPredicate:predicateCopy forActionIdentifier:v31 forApplicationIdentifier:v30 modeIdentifier:v29 withError:&v39];
    v34 = v39;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    handlerCopy[2](handlerCopy, v35, v34);

    v36 = v32;
    identifierCopy = v31;
    applicationIdentifierCopy = v30;
    modeIdentifierCopy = v29;
    v23 = v38;
  }

  else
  {
    v36 = predicateCopy;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppConfigurationPredicate:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAppConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v24 = [currentContext dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v24)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v28 = 0;
    v26 = [delegate remoteServiceProvider:self getAppConfigurationPredicateForActionIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withError:&v28];
    v27 = v28;

    handlerCopy[2](handlerCopy, v26, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppConfigurationPredicateForActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v20 = MEMORY[0x277CCACA8];
  v21 = NSStringFromSelector(a2);
  v22 = [v20 stringWithFormat:@"com.apple.donotdisturbd.%@", v21];
  [v22 UTF8String];
  v23 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v26 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v26)
  {
    selfCopy = self;
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v38 = v23;
    v39 = 0;
    v29 = modeIdentifierCopy;
    v30 = applicationIdentifierCopy;
    v31 = identifierCopy;
    v32 = prefixCopy;
    v33 = [delegate remoteServiceProvider:selfCopy setAppConfigurationTargetContentIdentifierPrefix:prefixCopy forActionIdentifier:v31 forApplicationIdentifier:v30 modeIdentifier:v29 withError:&v39];
    v34 = v39;

    v35 = [MEMORY[0x277CCABB0] numberWithBool:v33];
    handlerCopy[2](handlerCopy, v35, v34);

    v36 = v32;
    identifierCopy = v31;
    applicationIdentifierCopy = v30;
    modeIdentifierCopy = v29;
    v23 = v38;
  }

  else
  {
    v36 = prefixCopy;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppConfigurationTargetContentIdentifierPrefix:forActionIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  delegate = [(DNDSRemoteServiceProvider *)self delegate];
  clientIdentifier = [detailsCopy clientIdentifier];
  v19 = [currentContext dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v19)
  {
    if ([identifierCopy isEqualToString:@"com.apple.focus.current-sentinel"])
    {
      v27 = 0;
      v20 = [delegate remoteServiceProvider:self currentStateWithError:&v27];
      v21 = v27;
      activeModeIdentifier = [v20 activeModeIdentifier];

      identifierCopy = activeModeIdentifier;
    }

    else
    {
      v21 = 0;
    }

    v23 = objc_alloc_init(MEMORY[0x277D058A8]);
    if (identifierCopy)
    {
      v26 = v21;
      dictionary = [delegate remoteServiceProvider:self getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:identifierCopy withError:&v26];
      v25 = v26;

      v21 = v25;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    [v23 setAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:dictionary];

    handlerCopy[2](handlerCopy, v23, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v24 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v24)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v29 = 0;
    v26 = [delegate remoteServiceProvider:self setAppAction:actionCopy forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy withError:&v29];
    v27 = v29;

    v28 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    handlerCopy[2](handlerCopy, v28, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setAppAction:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v18 = MEMORY[0x277CCACA8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 stringWithFormat:@"com.apple.donotdisturbd.%@", v19];
  [v20 UTF8String];
  v21 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v24 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v24)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v29 = 0;
    v26 = [delegate remoteServiceProvider:self clearAppActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withError:&v29];
    v27 = v29;

    v28 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    handlerCopy[2](handlerCopy, v28, v27);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider clearAppActionWithIdentifier:forApplicationIdentifier:modeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getAppActionsForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self getAppActionsForModeIdentifier:identifierCopy withError:&v23];
    v21 = v23;

    v22 = objc_alloc_init(MEMORY[0x277D058A0]);
    [v22 setAppActionsForModeIdentifier:v20];
    handlerCopy[2](handlerCopy, v22, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getAppActionsForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  detailsCopy = details;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v21 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v21)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [delegate remoteServiceProvider:self clearSystemActionWithIdentifier:identifierCopy forModeIdentifier:modeIdentifierCopy withError:&v26];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    handlerCopy[2](handlerCopy, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider clearSystemActionWithIdentifier:forModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)getSystemActionsForModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"com.apple.donotdisturbd.%@", v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v18 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v18)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v23 = 0;
    v20 = [delegate remoteServiceProvider:self getSystemActionsForModeIdentifier:identifierCopy withError:&v23];
    v21 = v23;

    allObjects = [v20 allObjects];
    handlerCopy[2](handlerCopy, allObjects, v21);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider getSystemActionsForModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)setSystemAction:(id)action forModeIdentifier:(id)identifier withRequestDetails:(id)details completionHandler:(id)handler
{
  actionCopy = action;
  identifierCopy = identifier;
  detailsCopy = details;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(a2);
  v17 = [v15 stringWithFormat:@"com.apple.donotdisturbd.%@", v16];
  [v17 UTF8String];
  v18 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v21 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v21)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v26 = 0;
    v23 = [delegate remoteServiceProvider:self setSystemAction:actionCopy forModeIdentifier:identifierCopy withError:&v26];
    v24 = v26;

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    handlerCopy[2](handlerCopy, v25, v24);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider setSystemAction:forModeIdentifier:withRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)resetAppConfigurationStateWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:@"com.apple.donotdisturbd.%@", v10];
  [v11 UTF8String];
  v12 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  clientIdentifier = [detailsCopy clientIdentifier];
  v15 = [currentContext dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:clientIdentifier];

  if (v15)
  {
    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v17 = [delegate remoteServiceProviderResetAppConfigurationState:self];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    handlerCopy[2](handlerCopy, v18, 0);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteServiceProvider resetAppConfigurationStateWithRequestDetails:completionHandler:];
    }

    [currentContext invalidate];
  }
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v9 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = interruptedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteServiceProvider *)self _unregisterConnectionDetailsForClientConnection:interruptedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v7, 0xCu);
  }

  [(DNDSRemoteServiceProvider *)self _unregisterConnectionDetailsForClientConnection:invalidatedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerOrMutateConnectionDetailsForClientConnection:(id)connection handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  handlerCopy = handler;
  v8 = self->_clientConnectionDetailsByConnection;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_clientConnectionDetailsByConnection objectForKey:connectionCopy];
  if (!v9)
  {
    v10 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = connectionCopy;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Registering new connection details for connection: connection=%{public}@", &v14, 0xCu);
    }

    v9 = objc_alloc_init(DNDSClientConnectionDetails);
  }

  v11 = handlerCopy[2](handlerCopy, v9);
  if (([(DNDSClientConnectionDetails *)v9 isEqual:v11]& 1) == 0)
  {
    v12 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = connectionCopy;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Updating connection details for connection: connection=%{public}@, updatedConnectionDetails=%{public}@", &v14, 0x16u);
    }

    [(NSMapTable *)self->_clientConnectionDetailsByConnection setObject:v11 forKey:connectionCopy];
  }

  objc_sync_exit(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterConnectionDetailsForClientConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = self->_clientConnectionDetailsByConnection;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_clientConnectionDetailsByConnection objectForKey:connectionCopy];
  [(NSMapTable *)self->_clientConnectionDetailsByConnection removeObjectForKey:connectionCopy];
  [(DNDSRemoteServiceProvider *)self _removeConnection:connectionCopy];
  v7 = DNDSLogServiceProvider;
  if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = connectionCopy;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Connection details unregistered: connection=%{public}@, clientDetails=%{public}@", &v13, 0x16u);
  }

  interruptionInvalidationAssertionUUID = [v6 interruptionInvalidationAssertionUUID];
  if (interruptionInvalidationAssertionUUID)
  {
    v9 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = connectionCopy;
      v15 = 2114;
      v16 = interruptionInvalidationAssertionUUID;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating assertion due to client disconnect: connection=%{public}@, UUID=%{public}@", &v13, 0x16u);
    }

    delegate = [(DNDSRemoteServiceProvider *)self delegate];
    v11 = [delegate remoteServiceProvider:self invalidateModeAssertionWithUUID:interruptionInvalidationAssertionUUID reason:6 reasonOverride:1 clientIdentifier:0 error:0];
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_iterateClientConnectionsToSendWithHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
        handlerCopy[2](handlerCopy, v11, v10);
      }

      v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_clientDetailsForClientIdentifier:(id)identifier clientConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  v8 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider findClientDetailsForIdentifier:identifierCopy];
  if (!v8)
  {
    remoteProcess = [connectionCopy remoteProcess];
    auditToken = [remoteProcess auditToken];
    v11 = auditToken;
    if (auditToken)
    {
      [auditToken realToken];
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

    v8 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:identifierCopy applicationBundleURL:v14, v16, v17];
  }

  return v8;
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:connectionCopy];

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