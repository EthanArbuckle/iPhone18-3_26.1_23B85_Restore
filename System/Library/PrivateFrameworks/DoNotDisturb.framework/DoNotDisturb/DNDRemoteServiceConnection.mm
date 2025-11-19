@interface DNDRemoteServiceConnection
+ (id)sharedInstance;
- (DNDRemoteServiceConnection)init;
- (id)_monitorTarget;
- (id)_remoteTarget;
- (void)_connectionLock_createConnection;
- (void)_connectionLock_invalidateConnection;
- (void)_monitorLock_createMonitorConnection;
- (void)_monitorLock_invalidateMonitorConnection;
- (void)_setMonitorState:(int64_t)a3;
- (void)activateModeWithDetails:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)activeModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)addEventListener:(id)a3;
- (void)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)clearAppConfigurationActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)clearSystemConfigurationActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)deliverActiveModeAssertion:(id)a3 stateUpdate:(id)a4 clientIdentifiers:(id)a5;
- (void)deliverActiveModeAssertionUpdate:(id)a3 invalidation:(id)a4 clientIdentifiers:(id)a5;
- (void)deliverAllModes:(id)a3;
- (void)deliverAvailableModes:(id)a3;
- (void)deliverMeDeviceState:(id)a3;
- (void)deliverStateUpdate:(id)a3;
- (void)deliverUpdatedBehaviorSettings:(id)a3;
- (void)deliverUpdatedPairSyncState:(id)a3;
- (void)deliverUpdatedPhoneCallBypassSettings:(id)a3;
- (void)deliverUpdatedPreventAutoReplySetting:(id)a3;
- (void)deliverUpdatedScheduleSettings:(id)a3;
- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAccountFeatureSupportWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getActiveModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllModesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)getAllowedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getAppConfigurationActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
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
- (void)getSystemConfigurationActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)getUserAvailabilityInActiveModeForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)invalidateActiveModeAssertionWithDetails:(id)a3 reasonOverride:(id)a4 requestDetails:(id)a5 completionHandler:(id)a6;
- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)invalidateModeAssertionWithUUID:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)publishStatusKitAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)queryMeDeviceStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)queryStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForAssertionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForSettingsUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)registerForStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)removeEventListener:(id)a3;
- (void)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)resetAppConfigurationStateWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)resolveBehaviorForEventDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5;
- (void)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
- (void)setAppConfigurationAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7;
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
- (void)setSystemConfigurationAction:(id)a3 modeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6;
- (void)signalAppConfigurationContextUpdateForModeIdentifier:(id)a3;
- (void)syncModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4;
- (void)takeModeAssertionWithDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5;
@end

@implementation DNDRemoteServiceConnection

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DNDRemoteServiceConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __44__DNDRemoteServiceConnection_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (DNDRemoteServiceConnection)init
{
  v18.receiver = self;
  v18.super_class = DNDRemoteServiceConnection;
  v2 = [(DNDRemoteServiceConnection *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    eventListeners = v2->_eventListeners;
    v2->_eventListeners = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    assertionMonitorRequestDetails = v2->_assertionMonitorRequestDetails;
    v2->_assertionMonitorRequestDetails = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    stateMonitorRequestDetails = v2->_stateMonitorRequestDetails;
    v2->_stateMonitorRequestDetails = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    settingsMonitorRequestDetails = v2->_settingsMonitorRequestDetails;
    v2->_settingsMonitorRequestDetails = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    modeIdentifiersMonitorRequestDetails = v2->_modeIdentifiersMonitorRequestDetails;
    v2->_modeIdentifiersMonitorRequestDetails = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    globalConfigurationMonitorRequestDetails = v2->_globalConfigurationMonitorRequestDetails;
    v2->_globalConfigurationMonitorRequestDetails = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    meDeviceStateMonitorRequestDetails = v2->_meDeviceStateMonitorRequestDetails;
    v2->_meDeviceStateMonitorRequestDetails = v15;

    v2->_monitorState = 0;
    *&v2->_stateLock._os_unfair_lock_opaque = 0;
    v2->_monitorLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_monitorLock_createMonitorConnection
{
  os_unfair_lock_assert_owner(&self->_monitorLock);
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_monitorState)
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    self->_monitorState = 1;
    os_unfair_lock_unlock(&self->_stateLock);
    v3 = DNDRemoteMonitorServerInterface();
    v4 = MEMORY[0x277CF3288];
    v5 = [v3 identifier];
    v6 = [v4 endpointForMachName:@"com.apple.donotdisturb.service.non-launching" service:v5 instance:0];

    if (v6)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x277CF3280] connectionWithEndpoint:v6];
      monitorLock_monitorService = self->_monitorLock_monitorService;
      self->_monitorLock_monitorService = v7;

      v9 = self->_monitorLock_monitorService;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke;
      v14 = &unk_27843AE60;
      v15 = v3;
      v16 = self;
      objc_copyWeak(&v17, &location);
      [(BSServiceConnection *)v9 configureConnection:&v11];
      [(BSServiceConnection *)self->_monitorLock_monitorService activate:v11];
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }

    else
    {
      v10 = DNDLogRemoteConnection;
      if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_ERROR))
      {
        [(DNDRemoteServiceConnection *)v10 _monitorLock_createMonitorConnection];
      }

      os_unfair_lock_lock(&self->_stateLock);
      self->_monitorState = 0;
      os_unfair_lock_unlock(&self->_stateLock);
    }
  }
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_2;
  v9[3] = &unk_27843AE10;
  objc_copyWeak(&v10, (a1 + 48));
  v9[4] = *(a1 + 40);
  [v3 setActivationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_290;
  v7[3] = &unk_27843AE38;
  objc_copyWeak(&v8, (a1 + 48));
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_291;
  v5[3] = &unk_27843AE38;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v99 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC monitor connection was activated: connection=%p", buf, 0xCu);
  }

  v55 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setMonitorState:2];
  os_unfair_lock_lock(WeakRetained + 8);
  v5 = [*(WeakRetained + 6) copy];
  v6 = [*(WeakRetained + 7) copy];
  v50 = [*(WeakRetained + 8) copy];
  v56 = [*(WeakRetained + 9) copy];
  v52 = [*(WeakRetained + 10) copy];
  v54 = [*(WeakRetained + 11) copy];
  os_unfair_lock_unlock(WeakRetained + 8);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v89;
    do
    {
      v10 = 0;
      do
      {
        if (*v89 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v88 + 1) + 8 * v10);
        v12 = [WeakRetained _monitorTarget];
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_277;
        v87[3] = &unk_27843AD70;
        v87[4] = v11;
        [v12 registerForAssertionUpdatesWithRequestDetails:v11 completionHandler:v87];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v8);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v58 = v6;
  v13 = [v58 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v84;
    do
    {
      v16 = 0;
      do
      {
        if (*v84 != v15)
        {
          objc_enumerationMutation(v58);
        }

        v17 = *(*(&v83 + 1) + 8 * v16);
        v18 = [WeakRetained _monitorTarget];
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_279;
        v82[3] = &unk_27843AD70;
        v82[4] = v17;
        [v18 registerForStateUpdatesWithRequestDetails:v17 completionHandler:v82];

        if (*(WeakRetained + 13))
        {
          v19 = [WeakRetained _remoteTarget];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_280;
          v81[3] = &unk_27843AD98;
          v81[4] = WeakRetained;
          [v19 queryStateForUpdateWithRequestDetails:v17 completionHandler:v81];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v58 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v14);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v20 = v50;
  v21 = [v20 countByEnumeratingWithState:&v77 objects:v95 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v78;
    do
    {
      v24 = 0;
      do
      {
        if (*v78 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v77 + 1) + 8 * v24);
        v26 = [WeakRetained _monitorTarget];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_2_283;
        v76[3] = &unk_27843AD70;
        v76[4] = v25;
        [v26 registerForSettingsUpdatesWithRequestDetails:v25 completionHandler:v76];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v77 objects:v95 count:16];
    }

    while (v22);
  }

  v51 = v20;

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v57 = v56;
  v27 = [v57 countByEnumeratingWithState:&v72 objects:v94 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v73;
    do
    {
      v30 = 0;
      do
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(v57);
        }

        v31 = *(*(&v72 + 1) + 8 * v30);
        v32 = [WeakRetained _monitorTarget];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_284;
        v71[3] = &unk_27843ADC0;
        v33 = *(a1 + 32);
        v71[4] = v31;
        v71[5] = v33;
        [v32 registerForModeSelectionUpdatesWithRequestDetails:v31 completionHandler:v71];

        ++v30;
      }

      while (v28 != v30);
      v28 = [v57 countByEnumeratingWithState:&v72 objects:v94 count:16];
    }

    while (v28);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = v52;
  v35 = [v34 countByEnumeratingWithState:&v67 objects:v93 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v68;
    do
    {
      v38 = 0;
      do
      {
        if (*v68 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v67 + 1) + 8 * v38);
        v40 = [WeakRetained _monitorTarget];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_287;
        v66[3] = &unk_27843AD70;
        v66[4] = v39;
        [v40 registerForGlobalConfigurationUpdatesWithRequestDetails:v39 completionHandler:v66];

        ++v38;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v67 objects:v93 count:16];
    }

    while (v36);
  }

  v53 = v34;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v41 = v54;
  v42 = [v41 countByEnumeratingWithState:&v62 objects:v92 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v63;
    do
    {
      v45 = 0;
      do
      {
        if (*v63 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v62 + 1) + 8 * v45);
        v47 = [WeakRetained _monitorTarget];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_288;
        v61[3] = &unk_27843ADE8;
        v48 = *(a1 + 32);
        v61[4] = v46;
        v61[5] = v48;
        [v47 registerForMeDeviceStateUpdatesWithRequestDetails:v46 completionHandler:v61];

        ++v45;
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v62 objects:v92 count:16];
    }

    while (v43);
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (id)_remoteTarget
{
  os_unfair_lock_assert_not_owner(&self->_monitorLock);
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = [(BSServiceConnection *)self->_connectionLock_connection remoteTarget];
  if (!v3)
  {
    [(DNDRemoteServiceConnection *)self _connectionLock_invalidateConnection];
    [(DNDRemoteServiceConnection *)self _connectionLock_createConnection];
    v3 = [(BSServiceConnection *)self->_connectionLock_connection remoteTarget];
  }

  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

- (id)_monitorTarget
{
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  os_unfair_lock_lock(&self->_monitorLock);
  v3 = [(BSServiceConnection *)self->_monitorLock_monitorService remoteTarget];
  if (!v3)
  {
    [(DNDRemoteServiceConnection *)self _monitorLock_invalidateMonitorConnection];
    [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
    v3 = [(BSServiceConnection *)self->_monitorLock_monitorService remoteTarget];
  }

  os_unfair_lock_unlock(&self->_monitorLock);

  return v3;
}

- (void)_connectionLock_invalidateConnection
{
  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_assert_not_owner(&self->_monitorLock);
  connectionLock_connection = self->_connectionLock_connection;
  if (connectionLock_connection)
  {
    [(BSServiceConnection *)connectionLock_connection invalidate];
    v4 = self->_connectionLock_connection;
    self->_connectionLock_connection = 0;
  }
}

- (void)_connectionLock_createConnection
{
  os_unfair_lock_assert_owner(&self->_connectionLock);
  os_unfair_lock_assert_not_owner(&self->_monitorLock);
  v3 = DNDRemoteServiceServerInterface();
  v4 = MEMORY[0x277CF3288];
  v5 = [v3 identifier];
  v6 = [v4 endpointForMachName:@"com.apple.donotdisturb.service" service:v5 instance:0];

  if (v6)
  {
    v7 = [MEMORY[0x277CF3280] connectionWithEndpoint:v6];
    connectionLock_connection = self->_connectionLock_connection;
    self->_connectionLock_connection = v7;

    v9 = self->_connectionLock_connection;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __62__DNDRemoteServiceConnection__connectionLock_createConnection__block_invoke;
    v13 = &unk_27843A9E0;
    v14 = v3;
    v15 = self;
    [(BSServiceConnection *)v9 configureConnection:&v10];
    [(BSServiceConnection *)self->_connectionLock_connection activate:v10];
  }
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_279(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 BOOLValue] & 1) == 0)
  {
    v6 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for state updates on activation: requestDetails=%{public}@, error=%{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __62__DNDRemoteServiceConnection__connectionLock_createConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF32C8];
  v5 = a2;
  v4 = [v3 userInitiated];
  [v5 setServiceQuality:v4];

  [v5 setInterface:*(a1 + 32)];
  [v5 setInterfaceTarget:*(a1 + 40)];
  [v5 setActivationHandler:&__block_literal_global_266];
  [v5 setInterruptionHandler:&__block_literal_global_269];
  [v5 setInvalidationHandler:&__block_literal_global_272];
}

void __62__DNDRemoteServiceConnection__connectionLock_createConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was activated: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __62__DNDRemoteServiceConnection__connectionLock_createConnection__block_invoke_267(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was interrupted: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __62__DNDRemoteServiceConnection__connectionLock_createConnection__block_invoke_270(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was invalidated, cannot recover: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 BOOLValue] & 1) == 0)
  {
    v6 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for assertion updates on activation: requestDetails=%{public}@, error=%{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_280(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!a3)
    {
      v8 = v5;
      if (([*(*(a1 + 32) + 104) isEqual:v5] & 1) == 0)
      {
        v6 = [[DNDStateUpdate alloc] initWithPreviousState:*(*(a1 + 32) + 104) state:v8 reason:4 source:1 options:1];
        [*(a1 + 32) deliverStateUpdate:v6];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_2_283(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 BOOLValue] & 1) == 0)
  {
    v6 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for settings updates on activation: requestDetails=%{public}@, error=%{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([a2 BOOLValue])
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) clientIdentifier];
    v15 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v9 deliverActiveModeAssertion:v7 stateUpdate:0 clientIdentifiers:v11];
  }

  else
  {
    v12 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for available mode identifier updates on activation: requestDetails=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_287(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 BOOLValue] & 1) == 0)
  {
    v6 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for global configuration updates on activation: requestDetails=%{public}@, error=%{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_288(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([a2 BOOLValue])
  {
    [*(a1 + 40) deliverMeDeviceState:v7];
  }

  else
  {
    v9 = DNDLogRemoteConnection;
    if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "Remote service connection failed to register for 'Me Device' state updates on activation: requestDetails=%{public}@, error=%{public}@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_290(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_22002F000, v4, OS_LOG_TYPE_DEFAULT, "XPC monitor connection was interrupted, reactivating: connection=%p", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMonitorState:1];

  [v3 activate];
  v6 = *MEMORY[0x277D85DE8];
}

void __66__DNDRemoteServiceConnection__monitorLock_createMonitorConnection__block_invoke_291(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_22002F000, v4, OS_LOG_TYPE_DEFAULT, "XPC monitor connection was invalidated, cannot recover: connection=%p", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMonitorState:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_monitorLock_invalidateMonitorConnection
{
  os_unfair_lock_assert_owner(&self->_monitorLock);
  os_unfair_lock_assert_not_owner(&self->_connectionLock);
  monitorLock_monitorService = self->_monitorLock_monitorService;
  if (monitorLock_monitorService)
  {
    [(BSServiceConnection *)monitorLock_monitorService invalidate];
    v4 = self->_monitorLock_monitorService;
    self->_monitorLock_monitorService = 0;
  }
}

- (void)_setMonitorState:(int64_t)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_monitorState != a3)
  {
    self->_monitorState = a3;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)addEventListener:(id)a3
{
  v5 = a3;
  v4 = self->_eventListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_eventListeners addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeEventListener:(id)a3
{
  v5 = a3;
  v4 = self->_eventListeners;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_eventListeners removeObject:v5];
  objc_sync_exit(v4);
}

- (void)resolveBehaviorForEventDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__DNDRemoteServiceConnection_resolveBehaviorForEventDetails_requestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AE88;
  v14 = v8;
  v12 = v8;
  [v11 resolveBehaviorForEventDetails:v10 requestDetails:v9 completionHandler:v13];
}

- (void)takeModeAssertionWithDetails:(id)a3 requestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__DNDRemoteServiceConnection_takeModeAssertionWithDetails_requestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AEB0;
  v14 = v8;
  v12 = v8;
  [v11 takeModeAssertionWithDetails:v10 requestDetails:v9 completionHandler:v13];
}

- (void)invalidateActiveModeAssertionWithDetails:(id)a3 reasonOverride:(id)a4 requestDetails:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __119__DNDRemoteServiceConnection_invalidateActiveModeAssertionWithDetails_reasonOverride_requestDetails_completionHandler___block_invoke;
  v16[3] = &unk_27843AED8;
  v17 = v10;
  v15 = v10;
  [v14 invalidateActiveModeAssertionWithDetails:v13 reasonOverride:v12 requestDetails:v11 completionHandler:v16];
}

- (void)getActiveModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__DNDRemoteServiceConnection_getActiveModeAssertionWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AEB0;
  v11 = v6;
  v9 = v6;
  [v8 getActiveModeAssertionWithRequestDetails:v7 completionHandler:v10];
}

- (void)getLatestModeAssertionInvalidationWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__DNDRemoteServiceConnection_getLatestModeAssertionInvalidationWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AED8;
  v11 = v6;
  v9 = v6;
  [v8 getLatestModeAssertionInvalidationWithRequestDetails:v7 completionHandler:v10];
}

- (void)invalidateAllActiveModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__DNDRemoteServiceConnection_invalidateAllActiveModeAssertionsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF00;
  v11 = v6;
  v9 = v6;
  [v8 invalidateAllActiveModeAssertionsWithRequestDetails:v7 completionHandler:v10];
}

- (void)getAllModeAssertionsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__DNDRemoteServiceConnection_getAllModeAssertionsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF28;
  v11 = v6;
  v9 = v6;
  [v8 getAllModeAssertionsWithRequestDetails:v7 completionHandler:v10];
}

- (void)registerForAssertionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_assertionMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForAssertionUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0);
  }

LABEL_7:
}

- (void)deliverActiveModeAssertionUpdate:(id)a3 invalidation:(id)a4 clientIdentifiers:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = a4;
  v8 = a5;
  v9 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = v20;
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "Remote service connection got assertion update: assertion=%{public}@, invalidation=%{public}@, clientIdentifiers=%{public}@", buf, 0x20u);
  }

  obj = self->_eventListeners;
  objc_sync_enter(obj);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_eventListeners;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 clientIdentifier];
          v16 = [v8 containsObject:v15];

          if (v16)
          {
            [v14 remoteService:self didChangeActiveModeAssertion:v20 invalidation:v19];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  objc_sync_exit(obj);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)queryStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DNDRemoteServiceConnection_queryStateWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF50;
  v11 = v6;
  v9 = v6;
  [v8 queryStateWithRequestDetails:v7 completionHandler:v10];
}

- (void)registerForStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_stateMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForStateUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0);
  }

LABEL_7:
}

- (void)deliverStateUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  lastReceivedState = self->_lastReceivedState;
  self->_lastReceivedState = v5;

  v7 = self->_eventListeners;
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_eventListeners;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 remoteService:self didReceiveDoNotDisturbStateUpdate:{v4, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setScreenIsShared:(id)a3 screenIsMirrored:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__DNDRemoteServiceConnection_setScreenIsShared_screenIsMirrored_withRequestDetails_completionHandler___block_invoke;
  v16[3] = &unk_27843AF00;
  v17 = v10;
  v15 = v10;
  [v14 setScreenIsShared:v13 screenIsMirrored:v12 withRequestDetails:v11 completionHandler:v16];
}

- (void)setHearingTestIsActive:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__DNDRemoteServiceConnection_setHearingTestIsActive_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 setHearingTestIsActive:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)getBehaviorSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__DNDRemoteServiceConnection_getBehaviorSettingsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF78;
  v11 = v6;
  v9 = v6;
  [v8 getBehaviorSettingsWithRequestDetails:v7 completionHandler:v10];
}

- (void)setBehaviorSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__DNDRemoteServiceConnection_setBehaviorSettings_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 setBehaviorSettings:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)getScheduleSettingsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__DNDRemoteServiceConnection_getScheduleSettingsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AFA0;
  v11 = v6;
  v9 = v6;
  [v8 getScheduleSettingsWithRequestDetails:v7 completionHandler:v10];
}

- (void)setScheduleSettings:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__DNDRemoteServiceConnection_setScheduleSettings_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 setScheduleSettings:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)registerForSettingsUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_settingsMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForSettingsUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0);
  }

LABEL_7:
}

- (void)syncModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__DNDRemoteServiceConnection_syncModeConfigurationsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF00;
  v11 = v6;
  v9 = v6;
  [v8 syncModeConfigurationsWithRequestDetails:v7 completionHandler:v10];
}

- (void)getCloudSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DNDRemoteServiceConnection_getCloudSyncStateWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF00;
  v11 = v6;
  v9 = v6;
  [v8 getCloudSyncStateWithRequestDetails:v7 completionHandler:v10];
}

- (void)setCloudSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__DNDRemoteServiceConnection_setCloudSyncPreferenceEnabled_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 setCloudSyncPreferenceEnabled:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)getPairSyncStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__DNDRemoteServiceConnection_getPairSyncStateWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF00;
  v11 = v6;
  v9 = v6;
  [v8 getPairSyncStateWithRequestDetails:v7 completionHandler:v10];
}

- (void)setPairSyncPreferenceEnabled:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__DNDRemoteServiceConnection_setPairSyncPreferenceEnabled_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 setPairSyncPreferenceEnabled:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)getAccountFeatureSupportWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__DNDRemoteServiceConnection_getAccountFeatureSupportWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AFC8;
  v11 = v6;
  v9 = v6;
  [v8 getAccountFeatureSupportWithRequestDetails:v7 completionHandler:v10];
}

- (void)deliverUpdatedBehaviorSettings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedBehaviorSettings:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverUpdatedScheduleSettings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedScheduleSettings:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverUpdatedPairSyncState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedPairSyncState:{objc_msgSend(v4, "unsignedIntegerValue", v12)}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverUpdatedPhoneCallBypassSettings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedPhoneCallBypassSettings:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverUpdatedPreventAutoReplySetting:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedPreventAutoReplySetting:{objc_msgSend(v4, "BOOLValue", v12)}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setModeConfiguration:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 setModeConfiguration:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getAllModesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__DNDRemoteServiceConnection_getAllModesWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AFF0;
  v11 = v6;
  v9 = v6;
  [v8 getAllModesWithRequestDetails:v7 completionHandler:v10];
}

- (void)getAvailableModesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DNDRemoteServiceConnection_getAvailableModesWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AFF0;
  v11 = v6;
  v9 = v6;
  [v8 getAvailableModesWithRequestDetails:v7 completionHandler:v10];
}

- (void)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v14 removeModeConfigurationForModeIdentifier:v13 deletePlaceholder:v12 withRequestDetails:v11 completionHandler:v10];
}

- (void)getModeConfigurationsWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__DNDRemoteServiceConnection_getModeConfigurationsWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843B018;
  v11 = v6;
  v9 = v6;
  [v8 getModeConfigurationsWithRequestDetails:v7 completionHandler:v10];
}

- (void)getModeConfigurationForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getModeConfigurationForModeIdentifier:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getAllowedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getAllowedModesForContactHandle:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getSilencedModesForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getSilencedModesForContactHandle:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getUserAvailabilityInActiveModeForContactHandle:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getUserAvailabilityInActiveModeForContactHandle:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)publishStatusKitAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v8 publishStatusKitAvailabilityWithRequestDetails:v7 completionHandler:v6];
}

- (void)getPreventAutoReplyWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v8 getPreventAutoReplyWithRequestDetails:v7 completionHandler:v6];
}

- (void)setPreventAutoReply:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 setPreventAutoReply:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getModesCanImpactAvailabilityWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v8 getModesCanImpactAvailabilityWithRequestDetails:v7 completionHandler:v6];
}

- (void)setModesCanImpactAvailability:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 setModesCanImpactAvailability:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __126__DNDRemoteServiceConnection_didChangeFocusStatusSharingSettingForApplicationIdentifier_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843AF00;
  v14 = v8;
  v12 = v8;
  [v11 didChangeFocusStatusSharingSettingForApplicationIdentifier:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)getStateDumpWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__DNDRemoteServiceConnection_getStateDumpWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843B040;
  v11 = v6;
  v9 = v6;
  [v8 getStateDumpWithRequestDetails:v7 completionHandler:v10];
}

- (void)registerForGlobalConfigurationUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_globalConfigurationMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForGlobalConfigurationUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0);
  }

LABEL_7:
}

- (void)registerForModeSelectionUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_modeIdentifiersMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForModeSelectionUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0, 0);
  }

LABEL_7:
}

- (void)deliverAllModes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = self->_eventListeners;
  objc_sync_enter(obj);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_eventListeners;
  v6 = 0;
  v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedModes:v4];
        }

        if (objc_opt_respondsToSelector())
        {
          if (!v6)
          {
            v6 = [v4 bs_map:&__block_literal_global_322];
          }

          [v10 remoteService:self didReceiveUpdatedModeIdentifiers:v6];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverAvailableModes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = self->_eventListeners;
  objc_sync_enter(obj);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_eventListeners;
  v6 = 0;
  v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedAvailableModes:v4];
        }

        if (objc_opt_respondsToSelector())
        {
          if (!v6)
          {
            v6 = [v4 bs_map:&__block_literal_global_328];
          }

          [v10 remoteService:self didReceiveUpdatedAvailableModeIdentifiers:v6];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverActiveModeAssertion:(id)a3 stateUpdate:(id)a4 clientIdentifiers:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v18 = a4;
  v8 = a5;
  obj = self->_eventListeners;
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_eventListeners;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v13 clientIdentifier];
          v15 = [v8 containsObject:v14];

          if (v15)
          {
            [v13 remoteService:self didReceiveUpdatedActiveModeAssertion:v19 stateUpdate:v18];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)signalAppConfigurationContextUpdateForModeIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveAppConfigurationContextUpdateForModeIdentifier:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)activateModeWithDetails:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 activateModeWithDetails:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)activeModeAssertionWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__DNDRemoteServiceConnection_activeModeAssertionWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AEB0;
  v11 = v6;
  v9 = v6;
  [v8 activeModeAssertionWithRequestDetails:v7 completionHandler:v10];
}

- (void)invalidateModeAssertionWithUUID:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 invalidateModeAssertionWithUUID:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getAppInfoForBundleIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getAppInfoForBundleIdentifier:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)getAppInfoForBundleIdentifiers:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  [v11 getAppInfoForBundleIdentifiers:v10 withRequestDetails:v9 completionHandler:v8];
}

- (void)deliverMeDeviceState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_eventListeners;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventListeners;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 remoteService:self didReceiveUpdatedMeDeviceState:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)queryMeDeviceStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__DNDRemoteServiceConnection_queryMeDeviceStateWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843B088;
  v11 = v6;
  v9 = v6;
  [v8 queryMeDeviceStateWithRequestDetails:v7 completionHandler:v10];
}

- (void)registerForMeDeviceStateUpdatesWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  monitorState = self->_monitorState;
  [(NSMutableArray *)self->_meDeviceStateMonitorRequestDetails addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  if (monitorState == 2)
  {
    v8 = [(DNDRemoteServiceConnection *)self _monitorTarget];
    [v8 registerForMeDeviceStateUpdatesWithRequestDetails:v9 completionHandler:v6];
  }

  else
  {
    if (monitorState != 1)
    {
      if (monitorState)
      {
        goto LABEL_7;
      }

      os_unfair_lock_lock(&self->_monitorLock);
      [(DNDRemoteServiceConnection *)self _monitorLock_createMonitorConnection];
      os_unfair_lock_unlock(&self->_monitorLock);
    }

    (*(v6 + 2))(v6, MEMORY[0x277CBEC38], 0, 0);
  }

LABEL_7:
}

- (void)setAppConfigurationPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8
{
  v28[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v20 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __156__DNDRemoteServiceConnection_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v25[3] = &unk_27843AF00;
    v26 = v19;
    [v20 setAppConfigurationPredicate:v14 forActionIdentifier:v15 forApplicationIdentifier:v16 modeIdentifier:v17 withRequestDetails:v18 completionHandler:v25];

    v21 = v26;
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v23 = [v22 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v21];
    (*(v19 + 2))(v19, MEMORY[0x277CBEC28], v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __156__DNDRemoteServiceConnection_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Failed to set predicate.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"DNDErrorDomain" code:1008 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v17 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __155__DNDRemoteServiceConnection_getAppConfigurationPredicateForActionIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_27843B0B0;
    v23 = v16;
    [v17 getAppConfigurationPredicateForActionIdentifier:v12 forApplicationIdentifier:v13 modeIdentifier:v14 withRequestDetails:v15 completionHandler:v22];

    v18 = v23;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v19 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v18];
    (*(v16 + 2))(v16, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withRequestDetails:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __176__DNDRemoteServiceConnection_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
  v22[3] = &unk_27843AF00;
  v23 = v14;
  v21 = v14;
  [v20 setAppConfigurationTargetContentIdentifierPrefix:v19 forActionIdentifier:v18 forApplicationIdentifier:v17 modeIdentifier:v16 withRequestDetails:v15 completionHandler:v22];
}

void __176__DNDRemoteServiceConnection_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Failed to set target content identifier prefix.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"DNDErrorDomain" code:1008 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __135__DNDRemoteServiceConnection_getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier_withRequestDetails_completionHandler___block_invoke;
  v13[3] = &unk_27843B0D8;
  v14 = v8;
  v12 = v8;
  [v11 getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v10 withRequestDetails:v9 completionHandler:v13];
}

- (void)setAppConfigurationAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v17 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __133__DNDRemoteServiceConnection_setAppConfigurationAction_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_27843AF00;
    v23 = v16;
    [v17 setAppConfigurationAction:v12 forApplicationIdentifier:v13 modeIdentifier:v14 withRequestDetails:v15 completionHandler:v22];

    v18 = v23;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v19 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v18];
    (*(v16 + 2))(v16, MEMORY[0x277CBEC28], v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clearAppConfigurationActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v17 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __149__DNDRemoteServiceConnection_clearAppConfigurationActionWithIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_27843AF00;
    v23 = v16;
    [v17 clearAppConfigurationActionWithIdentifier:v12 forApplicationIdentifier:v13 modeIdentifier:v14 withRequestDetails:v15 completionHandler:v22];

    v18 = v23;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v19 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v18];
    (*(v16 + 2))(v16, MEMORY[0x277CBEC28], v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getAppConfigurationActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __111__DNDRemoteServiceConnection_getAppConfigurationActionsForModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v16[3] = &unk_27843B100;
    v17 = v10;
    [v11 getAppConfigurationActionsForModeIdentifier:v8 withRequestDetails:v9 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v13 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v12];
    (*(v10 + 2))(v10, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v17 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __120__DNDRemoteServiceConnection_setAppAction_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_27843AF00;
    v23 = v16;
    [v17 setAppAction:v12 forApplicationIdentifier:v13 modeIdentifier:v14 withRequestDetails:v15 completionHandler:v22];

    v18 = v23;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v19 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v18];
    (*(v16 + 2))(v16, MEMORY[0x277CBEC28], v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __120__DNDRemoteServiceConnection_setAppAction_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Failed to save action.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"DNDErrorDomain" code:1008 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getAppActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __98__DNDRemoteServiceConnection_getAppActionsForModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v16[3] = &unk_27843B100;
    v17 = v10;
    [v11 getAppActionsForModeIdentifier:v8 withRequestDetails:v9 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v13 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v12];
    (*(v10 + 2))(v10, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 withRequestDetails:(id)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v17 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __136__DNDRemoteServiceConnection_clearAppActionWithIdentifier_forApplicationIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v22[3] = &unk_27843AF00;
    v23 = v16;
    [v17 clearAppActionWithIdentifier:v12 forApplicationIdentifier:v13 modeIdentifier:v14 withRequestDetails:v15 completionHandler:v22];

    v18 = v23;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"DNDAppConfigurationService is only supported when linking LinkServices";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v19 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v18];
    (*(v16 + 2))(v16, MEMORY[0x277CBEC28], v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setSystemAction:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__DNDRemoteServiceConnection_setSystemAction_forModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v19[3] = &unk_27843AF00;
    v20 = v13;
    [v14 setSystemAction:v10 forModeIdentifier:v11 withRequestDetails:v12 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v16 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v15];
    (*(v13 + 2))(v13, MEMORY[0x277CBEC28], v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __101__DNDRemoteServiceConnection_setSystemAction_forModeIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Failed to save action.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"DNDErrorDomain" code:1008 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearSystemActionWithIdentifier:(id)a3 forModeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117__DNDRemoteServiceConnection_clearSystemActionWithIdentifier_forModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v19[3] = &unk_27843AF00;
    v20 = v13;
    [v14 clearSystemActionWithIdentifier:v10 forModeIdentifier:v11 withRequestDetails:v12 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v16 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v15];
    (*(v13 + 2))(v13, MEMORY[0x277CBEC28], v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getSystemActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__DNDRemoteServiceConnection_getSystemActionsForModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v16[3] = &unk_27843B128;
    v17 = v10;
    [v11 getSystemActionsForModeIdentifier:v8 withRequestDetails:v9 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v13 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v12];
    (*(v10 + 2))(v10, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSystemConfigurationAction:(id)a3 modeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __111__DNDRemoteServiceConnection_setSystemConfigurationAction_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v19[3] = &unk_27843AF00;
    v20 = v13;
    [v14 setSystemConfigurationAction:v10 modeIdentifier:v11 withRequestDetails:v12 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v16 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v15];
    (*(v13 + 2))(v13, MEMORY[0x277CBEC28], v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clearSystemConfigurationActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 withRequestDetails:(id)a5 completionHandler:(id)a6
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v14 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __127__DNDRemoteServiceConnection_clearSystemConfigurationActionWithIdentifier_modeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v19[3] = &unk_27843AF00;
    v20 = v13;
    [v14 clearSystemConfigurationActionWithIdentifier:v10 modeIdentifier:v11 withRequestDetails:v12 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v16 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v15];
    (*(v13 + 2))(v13, MEMORY[0x277CBEC28], v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getSystemConfigurationActionsForModeIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (NSClassFromString(&cfstr_Wftogglesettin.isa))
  {
    v11 = [(DNDRemoteServiceConnection *)self _remoteTarget];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __114__DNDRemoteServiceConnection_getSystemConfigurationActionsForModeIdentifier_withRequestDetails_completionHandler___block_invoke;
    v16[3] = &unk_27843B150;
    v17 = v10;
    [v11 getSystemConfigurationActionsForModeIdentifier:v8 withRequestDetails:v9 completionHandler:v16];

    v12 = v17;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"DNDAppConfigurationService is only supported when linking VoiceShortcutClient";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v13 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v12];
    (*(v10 + 2))(v10, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetAppConfigurationStateWithRequestDetails:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DNDRemoteServiceConnection *)self _remoteTarget];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__DNDRemoteServiceConnection_resetAppConfigurationStateWithRequestDetails_completionHandler___block_invoke;
  v10[3] = &unk_27843AF00;
  v11 = v6;
  v9 = v6;
  [v8 resetAppConfigurationStateWithRequestDetails:v7 completionHandler:v10];
}

@end