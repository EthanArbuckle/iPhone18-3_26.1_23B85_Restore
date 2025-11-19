@interface DNDSServer
- (BOOL)_setDefaultScheduleTriggerWithScheduleSettings:(id)a3;
- (BOOL)_setDimsLockScreenSetting:(unint64_t)a3 forModeConfigurationWithIdentifier:(id)a4;
- (BOOL)_setLostModeState:(unint64_t)a3 error:(id *)a4;
- (BOOL)_setScheduleTrigger:(id)a3 forModeConfigurationWithIdentifier:(id)a4;
- (BOOL)eventBehaviorResolver:(id)a3 isAvailabilityActiveForBundleIdentifier:(id)a4;
- (BOOL)isCloudSyncDisabledForSyncManager:(id)a3;
- (BOOL)layoutIsLocked:(id)a3;
- (BOOL)remoteAppConfigurationServiceProvider:(id)a3 invalidateAppContextForActionIdentifier:(id)a4 bundleIdentifier:(id)a5 withError:(id *)a6;
- (BOOL)remoteServiceProvider:(id)a3 clearAppActionWithIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withError:(id *)a7;
- (BOOL)remoteServiceProvider:(id)a3 clearSystemActionWithIdentifier:(id)a4 forModeIdentifier:(id)a5 withError:(id *)a6;
- (BOOL)remoteServiceProvider:(id)a3 clearSystemConfigurationActionWithIdentifier:(id)a4 modeIdentifier:(id)a5 withError:(id *)a6;
- (BOOL)remoteServiceProvider:(id)a3 setAppAction:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withError:(id *)a7;
- (BOOL)remoteServiceProvider:(id)a3 setAppConfigurationPredicate:(id)a4 forActionIdentifier:(id)a5 forApplicationIdentifier:(id)a6 modeIdentifier:(id)a7 withError:(id *)a8;
- (BOOL)remoteServiceProvider:(id)a3 setAppConfigurationTargetContentIdentifierPrefix:(id)a4 forActionIdentifier:(id)a5 forApplicationIdentifier:(id)a6 modeIdentifier:(id)a7 withError:(id *)a8;
- (BOOL)remoteServiceProvider:(id)a3 setCloudSyncPreferenceEnabled:(BOOL)a4 withError:(id *)a5;
- (BOOL)remoteServiceProvider:(id)a3 setScheduleSettings:(id)a4 withError:(id *)a5;
- (BOOL)remoteServiceProvider:(id)a3 setSystemAction:(id)a4 forModeIdentifier:(id)a5 withError:(id *)a6;
- (BOOL)remoteServiceProvider:(id)a3 syncModeConfigurationsReturningError:(id *)a4;
- (DNDSServer)init;
- (id)_activeDateIntervalForModeAssertion:(id)a3 currentlyActive:(BOOL)a4;
- (id)_allModes;
- (id)_createDefaultModeForWorkoutTriggerIfNecessary;
- (id)_invalidateModeAssertionForClientIdentifier:(id)a3 reason:(unint64_t)a4 reasonOverride:(unint64_t)a5 details:(id)a6 error:(id *)a7;
- (id)_scheduleSettingsForModeConfigurations;
- (id)_scheduleSettingsFromDefaultScheduleTrigger;
- (id)_scheduleSettingsMatchingTrigger:(id)a3;
- (id)_scheduleTriggerMatchingSettings:(id)a3;
- (id)_stateSystemSnapshot;
- (id)_updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:(id)a3 error:(id *)a4;
- (id)appForegroundTriggerConfigurationForAppForegroundTriggerManager:(id)a3;
- (id)currentStateForAppFocusConfigurationCoordinator:(id)a3;
- (id)currentStateForEventBehaviorResolver:(id)a3;
- (id)currentStateForLegacyAssertionSyncManager:(id)a3;
- (id)currentStateForSystemFocusConfigurationCoordinator:(id)a3;
- (id)drivingModeForDrivingTriggerManager:(id)a3;
- (id)eventBehaviorResolver:(id)a3 bypassSettingsForClientIdentifier:(id)a4;
- (id)eventBehaviorResolver:(id)a3 configurationForModeIdentifier:(id)a4;
- (id)gamingModeForGamingTriggerManager:(id)a3;
- (id)hearingTestModeForHearingTestTriggerManager:(id)a3;
- (id)lifetimeMonitor:(id)a3 modeAssertionsWithLifetimeClass:(Class)a4;
- (id)lifetimeMonitor:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6;
- (id)locationTriggerConfigurationForLifetimeMonitor:(id)a3;
- (id)mindfulnessModeForMindfulnessTriggerManager:(id)a3;
- (id)modesSupportingSmartEntryForSmartTriggerManager:(id)a3;
- (id)pairedCloudDevicesForSyncManager:(id)a3;
- (id)pairedDevicesForSyncManager:(id)a3;
- (id)phoneCallBypassSettingsForSyncManager:(id)a3;
- (id)remoteAppConfigurationServiceProvider:(id)a3 getCurrentAppConfigurationForActionIdentifier:(id)a4 bundleIdentifier:(id)a5 withError:(id *)a6;
- (id)remoteServiceProvider:(id)a3 activeAssertionWithClientIdentifer:(id)a4 error:(id *)a5;
- (id)remoteServiceProvider:(id)a3 allActiveModeAssertionsWithError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 allModesReturningError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 assertionWithClientIdentifer:(id)a4 error:(id *)a5;
- (id)remoteServiceProvider:(id)a3 availableModesReturningError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 behaviorSettingsWithError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 currentStateWithError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 getAppInfoForBundleIdentifiers:(id)a4 withError:(id *)a5;
- (id)remoteServiceProvider:(id)a3 invalidateAllModeAssertionsTakenBeforeDate:(id)a4 forReason:(unint64_t)a5 clientIdentifier:(id)a6 error:(id *)a7;
- (id)remoteServiceProvider:(id)a3 invalidateModeAssertionWithUUID:(id)a4 reason:(unint64_t)a5 reasonOverride:(unint64_t)a6 clientIdentifier:(id)a7 error:(id *)a8;
- (id)remoteServiceProvider:(id)a3 latestInvalidationWithClientIdentifer:(id)a4 error:(id *)a5;
- (id)remoteServiceProvider:(id)a3 publishStatusKitAvailabilityReturningError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 resolveBehaviorForEventDetails:(id)a4 clientDetails:(id)a5 date:(id)a6 error:(id *)a7;
- (id)remoteServiceProvider:(id)a3 scheduleSettingsWithError:(id *)a4;
- (id)remoteServiceProvider:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6;
- (id)scheduleSettingsForSyncManager:(id)a3;
- (id)sleepingModeForSleepingTriggerManager:(id)a3;
- (id)syncManager:(id)a3 deviceForDeviceIdentifier:(id)a4;
- (id)syncManager:(id)a3 scheduleSettingsForModeIdentifier:(id)a4;
- (id)syncManager:(id)a3 updateOutboundModeAssertion:(id)a4;
- (id)triggerManager:(id)a3 assertionsWithClientIdentifer:(id)a4 error:(id *)a5;
- (id)triggerManager:(id)a3 invalidateModeAssertionWithUUID:(id)a4 reason:(unint64_t)a5 reasonOverride:(unint64_t)a6 clientIdentifier:(id)a7 error:(id *)a8;
- (id)triggerManager:(id)a3 latestInvalidationWithClientIdentifer:(id)a4 error:(id *)a5;
- (id)triggerManager:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6;
- (id)workoutModeForWorkoutTriggerManager:(id)a3;
- (void)_forceConfigurationSyncIfNeededWithUpdateResult:(id)a3;
- (void)_handleSignificantTimeChange;
- (void)_migrateBypassSettingsIfNeeded;
- (void)_migrateDefaultDoNotDisturbModeIfNeeded;
- (void)_migrateReduceInterruptionsIfNeeded;
- (void)_queue_handlePairedDeviceAndSyncSettingsChange;
- (void)_queue_resume;
- (void)_queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:(unint64_t)a3 source:(int64_t)a4 options:(int64_t)a5;
- (void)activeAssertionsDidChangeForLifetimeMonitor:(id)a3;
- (void)appFocusConfigurationCoordinator:(id)a3 didUpdateAppConfigurationContextForModeIdentifier:(id)a4;
- (void)globalConfigurationManager:(id)a3 didUpdateModesCanImpactAvailabilitySetting:(BOOL)a4;
- (void)globalConfigurationManager:(id)a3 didUpdatePhoneCallBypassSettings:(id)a4;
- (void)keybagDidUnlockForTheFirstTime:(id)a3;
- (void)lifetimeMonitor:(id)a3 lifetimeDidExpireForAssertionUUIDs:(id)a4 expirationDate:(id)a5;
- (void)modeConfigurationManager:(id)a3 didModifyAvailableMode:(id)a4;
- (void)modeConfigurationManager:(id)a3 didModifyExceptionsForContacts:(id)a4 forModeConfiguration:(id)a5;
- (void)modeConfigurationManager:(id)a3 didUpdateAvailableModes:(id)a4;
- (void)pairedDeviceStateMonitor:(id)a3 cloudPairingChangedFromDevices:(id)a4 toDevices:(id)a5;
- (void)pairedDeviceStateMonitor:(id)a3 pairingChangedFromDevice:(id)a4 toDevice:(id)a5;
- (void)reachabilityChangedTo:(BOOL)a3;
- (void)remoteServiceProvider:(id)a3 didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a4;
- (void)resume;
- (void)setWorkoutTriggerEnabled:(BOOL)a3 forWorkoutTriggerManager:(id)a4;
- (void)settingsManager:(id)a3 didReceiveUpdatedBehaviorSettings:(id)a4;
- (void)settingsManager:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4;
- (void)settingsManager:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4;
- (void)settingsManager:(id)a3 didReceiveUpdatedSyncSettings:(id)a4;
- (void)syncManager:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4;
- (void)syncManager:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4;
- (void)syncManager:(id)a3 performModeAssertionUpdatesWithHandler:(id)a4;
- (void)syncManager:(id)a3 prepareForSyncToDevices:(id)a4;
@end

@implementation DNDSServer

uint64_t __18__DNDSServer_init__block_invoke_128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 layoutIsLocked:?] ^ 1;

  return [v1 setUILockState:v2 error:0];
}

- (id)triggerManager:(id)a3 assertionsWithClientIdentifer:(id)a4 error:(id *)a5
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:a4];
  v7 = MEMORY[0x277D05938];
  v8 = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionsWithClientIdentifiers:v8];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v9];

  return v10;
}

- (id)triggerManager:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __114__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A128;
  v25 = v10;
  v26 = v9;
  v11 = v9;
  v12 = v10;
  v13 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:a6];
  v14 = [v13 assertions];
  v15 = [v14 firstObject];

  clientDetailsProvider = self->_clientDetailsProvider;
  v17 = [v15 source];
  v18 = [v17 clientIdentifier];
  v19 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:v18];

  [(DNDSMetricsManager *)self->_metricsManager assertionTaken:v15 withClientDetails:v19 lockState:[(DNDSServer *)self lockState]];

  return v15;
}

uint64_t __114__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:*(a1 + 32) deviceIdentifier:0];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v3 takeAssertionWithDetails:v5 source:v4 startDate:v6];

  return 1;
}

- (id)triggerManager:(id)a3 invalidateModeAssertionWithUUID:(id)a4 reason:(unint64_t)a5 reasonOverride:(unint64_t)a6 clientIdentifier:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a7;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __139__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A150;
  v25 = v13;
  v26 = v14;
  v27 = a5;
  v28 = a6;
  v15 = v14;
  v16 = v13;
  v17 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:a8];
  v18 = [v17 invalidations];
  v19 = [v18 firstObject];

  return v19;
}

uint64_t __139__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12[0] = a1[4];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v4];

  v6 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:a1[5] deviceIdentifier:0];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v5 requestDate:v7 details:0 source:v6 reason:a1[6] reasonOverride:a1[7]];

  v9 = [v3 invalidateAssertionsForRequest:v8];
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)triggerManager:(id)a3 latestInvalidationWithClientIdentifer:(id)a4 error:(id *)a5
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:a4];
  v7 = MEMORY[0x277D05968];
  v8 = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:v8];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionInvalidationsMatchingPredicate:v9];
  v11 = [v10 firstObject];

  return v11;
}

- (id)appForegroundTriggerConfigurationForAppForegroundTriggerManager:(id)a3
{
  v4 = objc_alloc_init(DNDSAppForegroundTriggerConfiguration);
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__DNDSServer_DNDSAppForegroundTriggerManagerDataSource__appForegroundTriggerConfigurationForAppForegroundTriggerManager___block_invoke;
  v8[3] = &unk_278F8BBF0;
  v6 = v4;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __121__DNDSServer_DNDSAppForegroundTriggerManagerDataSource__appForegroundTriggerConfigurationForAppForegroundTriggerManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 triggers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEnabled])
        {
          v12 = *(a1 + 32);
          v13 = [v11 bundleIdentifier];
          [v12 addTriggerForModeWithIdentifier:v5 onForegroundOfApp:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)drivingModeForDrivingTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DNDSServer_DNDSDrivingTriggerManagerDataSource__drivingModeForDrivingTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __87__DNDSServer_DNDSDrivingTriggerManagerDataSource__drivingModeForDrivingTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 triggers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isEnabled])
          {
            v13 = [v6 mode];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          *a4 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)gamingModeForGamingTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__DNDSServer_DNDSGamingTriggerManagerDataSource__gamingModeForGamingTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __84__DNDSServer_DNDSGamingTriggerManagerDataSource__gamingModeForGamingTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 triggers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isEnabled])
          {
            v13 = [v6 mode];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          *a4 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)hearingTestModeForHearingTestTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__DNDSServer_DNDSHearingTestTriggerManagerDataSource__hearingTestModeForHearingTestTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __99__DNDSServer_DNDSHearingTestTriggerManagerDataSource__hearingTestModeForHearingTestTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 mode];
  v7 = [v6 semanticType];

  if (!v7)
  {
    v8 = [v11 mode];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)mindfulnessModeForMindfulnessTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__DNDSServer_DNDSMindfulnessTriggerManagerDataSource__mindfulnessModeForMindfulnessTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __99__DNDSServer_DNDSMindfulnessTriggerManagerDataSource__mindfulnessModeForMindfulnessTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 triggers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isEnabled])
          {
            v13 = [v6 mode];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          *a4 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)sleepingModeForSleepingTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__DNDSServer_DNDSSleepingTriggerManagerDataSource__sleepingModeForSleepingTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __90__DNDSServer_DNDSSleepingTriggerManagerDataSource__sleepingModeForSleepingTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 triggers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 isEnabled])
          {
            v13 = [v6 mode];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          *a4 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)modesSupportingSmartEntryForSmartTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__DNDSServer_DNDSSmartTriggerManagerDataSource__modesSupportingSmartEntryForSmartTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __97__DNDSServer_DNDSSmartTriggerManagerDataSource__modesSupportingSmartEntryForSmartTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 triggers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v10 isEnabled])
          {
            v11 = *(*(*(a1 + 32) + 8) + 40);
            v12 = [v4 mode];
            [v11 addObject:v12];
          }

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)workoutModeForWorkoutTriggerManager:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DNDSServer_DNDSWorkoutTriggerManagerDataSource__workoutModeForWorkoutTriggerManager___block_invoke;
  v8[3] = &unk_278F8BC18;
  v8[4] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __87__DNDSServer_DNDSWorkoutTriggerManagerDataSource__workoutModeForWorkoutTriggerManager___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = a3;
  v7 = [v14 triggers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
          *a4 = 1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setWorkoutTriggerEnabled:(BOOL)a3 forWorkoutTriggerManager:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v6 = [(DNDSServer *)self workoutModeForWorkoutTriggerManager:a4];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D059E8]);
    if (v4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v8 initWithEnabledSetting:v9];
    v11 = [v7 triggers];
    v12 = [v11 bs_filter:&__block_literal_global_31];
    v13 = [v12 mutableCopy];

    [v13 addObject:v10];
    [v7 setTriggers:v13];
    modeConfigurationManager = self->_modeConfigurationManager;
    v19 = 0;
    LOBYTE(v11) = [(DNDSModeConfigurationManager *)modeConfigurationManager setModeConfiguration:v7 withError:&v19];
    v15 = v19;
    if ((v11 & 1) == 0)
    {
      v16 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"N";
        *buf = 138543874;
        if (v4)
        {
          v17 = @"Y";
        }

        v21 = v17;
        v22 = 2114;
        v23 = v7;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Unable to updated workout trigger enabled setting: enabled=%{public}@ mode=%{public}@ error=%{public}@", buf, 0x20u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

BOOL __101__DNDSServer_DNDSWorkoutTriggerManagerDataSource__setWorkoutTriggerEnabled_forWorkoutTriggerManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)globalConfigurationManager:(id)a3 didUpdatePhoneCallBypassSettings:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND phone call bypass settings changed, will refresh state; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedPhoneCallBypassSettings:v7];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)globalConfigurationManager:(id)a3 didUpdateModesCanImpactAvailabilitySetting:(BOOL)a4
{
  v4 = a4;
  v6 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  v7 = [v6 isCloudSyncEnabled];

  if (v4)
  {
    if (v7)
    {
      userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
      v9 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager relevantContacts];
      v10 = [v9 allObjects];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __124__DNDSServer_DNDSGlobalConfigurationManagerDelegate__globalConfigurationManager_didUpdateModesCanImpactAvailabilitySetting___block_invoke;
      v13[3] = &unk_278F8C058;
      v13[4] = self;
      [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator resumeUpdatingInvitationsForContacts:v10 completionHandler:v13];
    }
  }

  else if (v7)
  {
    v11 = self->_userAvailabilityCoordinator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __124__DNDSServer_DNDSGlobalConfigurationManagerDelegate__globalConfigurationManager_didUpdateModesCanImpactAvailabilitySetting___block_invoke_2;
    v12[3] = &unk_278F8C058;
    v12[4] = self;
    [(DNDSUserAvailabilityCoordinator *)v11 suspendWithOverrideSetting:1 completionHandler:v12];
  }
}

void __124__DNDSServer_DNDSGlobalConfigurationManagerDelegate__globalConfigurationManager_didUpdateModesCanImpactAvailabilitySetting___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 availability];
  v6 = [v5 isAvailable];

  v7 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v11 = [v7 activeModeConfiguration];

  if (v11)
  {
    v8 = [v11 mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  DNDSPowerLogFocusStatusChangeEvent(v10, v6, 0, 0, v9, a3);
}

void __124__DNDSServer_DNDSGlobalConfigurationManagerDelegate__globalConfigurationManager_didUpdateModesCanImpactAvailabilitySetting___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 availability];
  v6 = [v5 isAvailable];

  v7 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v11 = [v7 activeModeConfiguration];

  if (v11)
  {
    v8 = [v11 mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  DNDSPowerLogFocusStatusChangeEvent(v10, v6, 0, 0, v9, a3);
}

- (DNDSServer)init
{
  v151[5] = *MEMORY[0x277D85DE8];
  v150.receiver = self;
  v150.super_class = DNDSServer;
  v2 = [(DNDSServer *)&v150 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.donotdisturb.server.Server"];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[DNDSKeybag sharedInstance];
    keybag = v2->_keybag;
    v2->_keybag = v5;

    v7 = [DNDSAppInfoCache alloc];
    v8 = +[DNDSKeybag sharedInstance];
    v9 = [(DNDSAppInfoCache *)v7 initWithKeybag:v8];
    appInfoCache = v2->_appInfoCache;
    v2->_appInfoCache = v9;

    v11 = objc_alloc_init(DNDSClientDetailsProvider);
    clientDetailsProvider = v2->_clientDetailsProvider;
    v2->_clientDetailsProvider = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    [v13 requestAccessForEntityType:0 completionHandler:&__block_literal_global_40];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, DNDHandleSignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v15, v2, DNDSHandleLostModeStateChange, *MEMORY[0x277D08FB8], 0, CFNotificationSuspensionBehaviorCoalesce);
    v16 = [MEMORY[0x277D08F78] sharedInstance];
    v2->_lostModeState = [v16 lostModeIsActive];

    v17 = objc_alloc_init(DNDSIntelligentBehaviorResolver);
    intelligentBehaviorResolver = v2->_intelligentBehaviorResolver;
    v2->_intelligentBehaviorResolver = v17;

    v19 = objc_alloc_init(DNDSAuxiliaryStateMonitor);
    auxiliaryStateMonitor = v2->_auxiliaryStateMonitor;
    v2->_auxiliaryStateMonitor = v19;

    v21 = [DNDSModeAssertionManager alloc];
    v22 = [MEMORY[0x277CBEBC0] dnds_localAssertionBackingStoreFileURL];
    v23 = [(DNDSModeAssertionManager *)v21 initWithBackingStoreURL:v22 clientDetailsProvider:v2->_clientDetailsProvider];
    modeAssertionManager = v2->_modeAssertionManager;
    v2->_modeAssertionManager = v23;

    v25 = objc_alloc_init(DNDSMeDeviceService);
    meDeviceService = v2->_meDeviceService;
    v2->_meDeviceService = v25;

    [(DNDSMeDeviceService *)v2->_meDeviceService addListener:v2];
    v27 = objc_alloc_init(DNDSXPCEventStream);
    eventStream = v2->_eventStream;
    v2->_eventStream = v27;

    v29 = objc_alloc_init(DNDSCalendarEventLifetimeMonitor);
    calendarEventLifetimeMonitor = v2->_calendarEventLifetimeMonitor;
    v2->_calendarEventLifetimeMonitor = v29;

    [(DNDSBaseLifetimeMonitor *)v2->_calendarEventLifetimeMonitor setDataSource:v2];
    [(DNDSCalendarEventLifetimeMonitor *)v2->_calendarEventLifetimeMonitor setDelegate:v2];
    v31 = [DNDSXPCEventPublisher alloc];
    v32 = [(DNDSXPCEventPublisher *)v31 initWithStream:*MEMORY[0x277D05850]];
    focusConfigurationEventPublisher = v2->_focusConfigurationEventPublisher;
    v2->_focusConfigurationEventPublisher = v32;

    v34 = objc_alloc_init(DNDSScheduleLifetimeMonitor);
    scheduleLifetimeMonitor = v2->_scheduleLifetimeMonitor;
    v2->_scheduleLifetimeMonitor = v34;

    [(DNDSBaseLifetimeMonitor *)v2->_scheduleLifetimeMonitor setDataSource:v2];
    [(DNDSScheduleLifetimeMonitor *)v2->_scheduleLifetimeMonitor setDelegate:v2];
    v36 = objc_alloc_init(DNDSDefaultLifetimeMonitor);
    [(DNDSBaseLifetimeMonitor *)v36 setDataSource:v2];
    [(DNDSBaseLifetimeMonitor *)v36 setDelegate:v2];
    v37 = objc_alloc_init(DNDSDateIntervalLifetimeMonitor);
    [(DNDSBaseLifetimeMonitor *)v37 setDataSource:v2];
    [(DNDSDateIntervalLifetimeMonitor *)v37 setDelegate:v2];
    v38 = [[DNDSLocationLifetimeMonitor alloc] initWithMeDeviceService:v2->_meDeviceService];
    locationLifetimeMonitor = v2->_locationLifetimeMonitor;
    v2->_locationLifetimeMonitor = v38;

    [(DNDSLocationLifetimeMonitor *)v2->_locationLifetimeMonitor setDataSource:v2];
    [(DNDSLocationLifetimeMonitor *)v2->_locationLifetimeMonitor setDelegate:v2];
    v40 = v2->_scheduleLifetimeMonitor;
    v151[0] = v2->_calendarEventLifetimeMonitor;
    v151[1] = v40;
    v146 = v37;
    v147 = v36;
    v151[2] = v36;
    v151[3] = v37;
    v151[4] = v2->_locationLifetimeMonitor;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:5];
    lifetimeMonitors = v2->_lifetimeMonitors;
    v2->_lifetimeMonitors = v41;

    v43 = [[DNDSScheduleManager alloc] initWithModeAssertionManager:v2->_modeAssertionManager];
    scheduleManager = v2->_scheduleManager;
    v2->_scheduleManager = v43;

    [(DNDSScheduleManager *)v2->_scheduleManager setDataSource:v2];
    v45 = [MEMORY[0x277D058F8] currentDevice];
    if ([v45 deviceClass] == 5 || objc_msgSend(v45, "deviceClass") == 1)
    {
      v46 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.donotdisturb"];
      idsLocalService = v2->_idsLocalService;
      v2->_idsLocalService = v46;
    }

    v145 = v45;
    v144 = objc_alloc_init(DNDSModeRepository);
    v48 = [[DNDSEventBehaviorResolver alloc] initWithModeRepository:v144 contactStore:v13 auxiliaryStateMonitor:v2->_auxiliaryStateMonitor intelligentBehaviorResolver:v2->_intelligentBehaviorResolver IDSLocalService:v2->_idsLocalService];
    eventBehaviorResolver = v2->_eventBehaviorResolver;
    v2->_eventBehaviorResolver = v48;

    [(DNDSEventBehaviorResolver *)v2->_eventBehaviorResolver setDataSource:v2];
    v50 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.status.personal"];
    idsCloudService = v2->_idsCloudService;
    v2->_idsCloudService = v50;

    v52 = +[DNDSSyncEngine sharedInstance];
    syncEngine = v2->_syncEngine;
    v2->_syncEngine = v52;

    v54 = [[DNDSIDSSyncService alloc] initWithIDSService:v2->_idsLocalService];
    v55 = [DNDSIDSSyncEngineMetadataStore alloc];
    v56 = [MEMORY[0x277CBEBC0] dnds_idsSyncEngineMetadataFileURL];
    v57 = [(DNDSIDSSyncEngineMetadataStore *)v55 initWithURL:v56];

    v142 = v57;
    v143 = v54;
    v58 = [[DNDSIDSSyncEngine alloc] initWithMetadataStore:v57 syncService:v54 keybag:v2->_keybag];
    idsSyncEngine = v2->_idsSyncEngine;
    v2->_idsSyncEngine = v58;

    v60 = [MEMORY[0x277CBEBC0] dnds_globalConfigurationBackingStoreFileURL];
    v61 = [DNDSGlobalConfiguration backingStoreWithFileURL:v60];

    v141 = v61;
    v140 = [[DNDSMemoryCachedBackingStore alloc] initWithUnderlyingBackingStore:v61];
    v62 = [[DNDSGlobalConfigurationStore alloc] initWithBackingStore:v140 syncEngine:v2->_syncEngine idsSyncEngine:v2->_idsSyncEngine];
    globalConfigurationStore = v2->_globalConfigurationStore;
    v2->_globalConfigurationStore = v62;

    v64 = [[DNDSGlobalConfigurationManager alloc] initWithBackingStore:v2->_globalConfigurationStore];
    globalConfigurationManager = v2->_globalConfigurationManager;
    v2->_globalConfigurationManager = v64;

    [(DNDSGlobalConfigurationManager *)v2->_globalConfigurationManager setDelegate:v2];
    v66 = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsBackingStoreFileURL];
    v67 = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsSecureBackingStoreFileURL];
    v68 = [DNDSModeConfigurationsRecord backingStoreWithFileURL:v66 secureFileURL:v67];

    v139 = v68;
    v138 = [[DNDSMemoryCachedBackingStore alloc] initWithUnderlyingBackingStore:v68];
    v137 = [[DNDSFirstUnlockPurgedBackingStore alloc] initWithUnderlyingBackingStore:v138 keybag:v2->_keybag];
    v69 = [[DNDSModeConfigurationsStore alloc] initWithBackingStore:v137 syncEngine:v2->_syncEngine idsSyncEngine:v2->_idsSyncEngine];
    modeConfigurationsStore = v2->_modeConfigurationsStore;
    v2->_modeConfigurationsStore = v69;

    v71 = [[DNDSModeConfigurationManager alloc] initWithBackingStore:v2->_modeConfigurationsStore keybag:v2->_keybag];
    modeConfigurationManager = v2->_modeConfigurationManager;
    v2->_modeConfigurationManager = v71;

    [(DNDSModeConfigurationManager *)v2->_modeConfigurationManager setDelegate:v2];
    v73 = [MEMORY[0x277CBEBC0] dnds_placeholderModesLocalBackingStoreFileURL];
    v74 = [DNDSPlaceholderModesRecord backingStoreWithFileURL:v73];

    v75 = [[DNDSMemoryCachedBackingStore alloc] initWithUnderlyingBackingStore:v74];
    v76 = [[DNDSPlaceholderModeManager alloc] initWithBackingStore:v75];
    placeholderModeManager = v2->_placeholderModeManager;
    v2->_placeholderModeManager = v76;

    v78 = [[DNDSStateProvider alloc] initWithModeConfigurationManager:v2->_modeConfigurationManager];
    stateProvider = v2->_stateProvider;
    v2->_stateProvider = v78;

    v80 = objc_alloc_init(DNDSAppForegroundTriggerManager);
    appForegroundTriggerManager = v2->_appForegroundTriggerManager;
    v2->_appForegroundTriggerManager = v80;

    [(DNDSAppForegroundTriggerManager *)v2->_appForegroundTriggerManager setDataSource:v2];
    [(DNDSAppForegroundTriggerManager *)v2->_appForegroundTriggerManager refresh];
    v82 = objc_alloc_init(DNDSDrivingTriggerManager);
    drivingTriggerManager = v2->_drivingTriggerManager;
    v2->_drivingTriggerManager = v82;

    [(DNDSDrivingTriggerManager *)v2->_drivingTriggerManager setDataSource:v2];
    [(DNDSDrivingTriggerManager *)v2->_drivingTriggerManager refresh];
    v84 = objc_alloc_init(DNDSGamingTriggerManager);
    gamingTriggerManager = v2->_gamingTriggerManager;
    v2->_gamingTriggerManager = v84;

    [(DNDSGamingTriggerManager *)v2->_gamingTriggerManager setDataSource:v2];
    [(DNDSGamingTriggerManager *)v2->_gamingTriggerManager refresh];
    v86 = objc_alloc_init(DNDSHearingTestTriggerManager);
    hearingTestTriggerManager = v2->_hearingTestTriggerManager;
    v2->_hearingTestTriggerManager = v86;

    [(DNDSHearingTestTriggerManager *)v2->_hearingTestTriggerManager setDataSource:v2];
    [(DNDSHearingTestTriggerManager *)v2->_hearingTestTriggerManager refresh];
    v88 = objc_alloc_init(DNDSMindfulnessTriggerManager);
    mindfulnessTriggerManager = v2->_mindfulnessTriggerManager;
    v2->_mindfulnessTriggerManager = v88;

    [(DNDSMindfulnessTriggerManager *)v2->_mindfulnessTriggerManager setDataSource:v2];
    [(DNDSMindfulnessTriggerManager *)v2->_mindfulnessTriggerManager refresh];
    v90 = objc_alloc_init(DNDSSleepingTriggerManager);
    sleepingTriggerManager = v2->_sleepingTriggerManager;
    v2->_sleepingTriggerManager = v90;

    [(DNDSSleepingTriggerManager *)v2->_sleepingTriggerManager setDataSource:v2];
    [(DNDSSleepingTriggerManager *)v2->_sleepingTriggerManager refresh];
    v92 = objc_alloc_init(DNDSSmartTriggerManager);
    smartTriggerManager = v2->_smartTriggerManager;
    v2->_smartTriggerManager = v92;

    [(DNDSSmartTriggerManager *)v2->_smartTriggerManager setDataSource:v2];
    [(DNDSSmartTriggerManager *)v2->_smartTriggerManager refresh];
    v94 = objc_alloc_init(DNDSWorkoutTriggerManager);
    workoutTriggerManager = v2->_workoutTriggerManager;
    v2->_workoutTriggerManager = v94;

    [(DNDSWorkoutTriggerManager *)v2->_workoutTriggerManager setDataSource:v2];
    [(DNDSWorkoutTriggerManager *)v2->_workoutTriggerManager refreshMigratingIfNecessary];
    v96 = objc_alloc_init(DNDSBiomeDonationManager);
    biomeDonationManager = v2->_biomeDonationManager;
    v2->_biomeDonationManager = v96;

    v98 = [[DNDSPairedDeviceStateMonitor alloc] initWithLocalIDSService:v2->_idsLocalService cloudIDSService:v2->_idsCloudService];
    pairedDeviceStateMonitor = v2->_pairedDeviceStateMonitor;
    v2->_pairedDeviceStateMonitor = v98;

    [(DNDSPairedDeviceStateMonitor *)v2->_pairedDeviceStateMonitor setDelegate:v2];
    v100 = [MEMORY[0x277CBEBC0] dnds_settingsBackingStoreFileURL];
    v101 = [DNDSSettingsRecord backingStoreWithFileURL:v100];

    v102 = [[DNDSMemoryCachedBackingStore alloc] initWithUnderlyingBackingStore:v101];
    v103 = [[DNDSSettingsManager alloc] initWithBackingStore:v102 contactStore:v13];
    settingsManager = v2->_settingsManager;
    v2->_settingsManager = v103;

    [(DNDSSettingsManager *)v2->_settingsManager setDelegate:v2];
    v105 = objc_alloc_init(DNDSContactProvider);
    v106 = [[DNDSContactMonitor alloc] initWithContactStore:v13 contactProvider:v105];
    contactMonitor = v2->_contactMonitor;
    v2->_contactMonitor = v106;

    [(DNDSContactMonitor *)v2->_contactMonitor addListener:v2->_modeConfigurationsStore];
    v108 = [[DNDSRemoteServiceProvider alloc] initWithClientDetailsProvider:v2->_clientDetailsProvider];
    serviceProvider = v2->_serviceProvider;
    v2->_serviceProvider = v108;

    [(DNDSRemoteServiceProvider *)v2->_serviceProvider setDelegate:v2];
    v110 = [[DNDSRemoteAvailabilityServiceProvider alloc] initWithClientDetailsProvider:v2->_clientDetailsProvider];
    availabilityServiceProvider = v2->_availabilityServiceProvider;
    v2->_availabilityServiceProvider = v110;

    [(DNDSRemoteAvailabilityServiceProvider *)v2->_availabilityServiceProvider setDelegate:v2];
    v112 = [[DNDSRemoteAppConfigurationServiceProvider alloc] initWithClientDetailsProvider:v2->_clientDetailsProvider];
    appConfigurationServiceProvider = v2->_appConfigurationServiceProvider;
    v2->_appConfigurationServiceProvider = v112;

    [(DNDSRemoteAppConfigurationServiceProvider *)v2->_appConfigurationServiceProvider setDelegate:v2];
    v114 = [[DNDSAppSpecificSettingsManager alloc] initWithIDSSyncEngine:v2->_idsSyncEngine backingStoreURL:0];
    v115 = [[DNDSAppConfigurationManager alloc] initWithAppSpecificSettingsManager:v114];
    appConfigurationManager = v2->_appConfigurationManager;
    v2->_appConfigurationManager = v115;

    v117 = [[DNDSAppFocusConfigurationCoordinator alloc] initWithAppConfigurationManager:v2->_appConfigurationManager keybagProviding:v2->_keybag xpcEventPublisher:v2->_focusConfigurationEventPublisher];
    appFocusConfigurationCoordinator = v2->_appFocusConfigurationCoordinator;
    v2->_appFocusConfigurationCoordinator = v117;

    [(DNDSAppFocusConfigurationCoordinator *)v2->_appFocusConfigurationCoordinator setDelegate:v2];
    v119 = [[DNDSSystemFocusConfigurationCoordinator alloc] initWithAppConfigurationManager:v2->_appConfigurationManager];
    systemFocusConfigurationCoordinator = v2->_systemFocusConfigurationCoordinator;
    v2->_systemFocusConfigurationCoordinator = v119;

    [(DNDSSystemFocusConfigurationCoordinator *)v2->_systemFocusConfigurationCoordinator setDelegate:v2];
    v121 = +[DNDSReachability commonReachability];
    reachability = v2->_reachability;
    v2->_reachability = v121;

    [(DNDSReachability *)v2->_reachability addDelegate:v2];
    [(DNDSKeybagStateProviding *)v2->_keybag addObserver:v2];
    v123 = objc_alloc_init(MEMORY[0x277D6B998]);
    focusStatusDomainPublisher = v2->_focusStatusDomainPublisher;
    v2->_focusStatusDomainPublisher = v123;

    [(DNDSServer *)v2 _migrateDefaultDoNotDisturbModeIfNeeded];
    [(DNDSServer *)v2 _migrateReduceInterruptionsIfNeeded];
    v125 = objc_alloc_init(DNDSMetricsManager);
    metricsManager = v2->_metricsManager;
    v2->_metricsManager = v125;

    v127 = [[DNDSUserAvailabilityCoordinator alloc] initWithConfigurationProvider:v2->_modeConfigurationManager stateProvider:v2->_stateProvider];
    userAvailabilityCoordinator = v2->_userAvailabilityCoordinator;
    v2->_userAvailabilityCoordinator = v127;

    v129 = [(DNDSSettingsManager *)v2->_settingsManager syncSettingsWithError:0];
    LODWORD(v54) = [v129 isCloudSyncEnabled];

    v130 = v2->_userAvailabilityCoordinator;
    if (v54)
    {
      [(DNDSUserAvailabilityCoordinator *)v130 resume];
    }

    else
    {
      [(DNDSUserAvailabilityCoordinator *)v130 suspend];
    }

    v131 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = __18__DNDSServer_init__block_invoke_128;
    v148[3] = &unk_278F8C080;
    v132 = v2;
    v149 = v132;
    [v131 setTransitionHandler:v148];
    v133 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v131];
    layoutMonitor = v132->_layoutMonitor;
    v132->_layoutMonitor = v133;

    [(DNDSXPCEventStream *)v2->_eventStream start];
  }

  v135 = *MEMORY[0x277D85DE8];
  return v2;
}

void __18__DNDSServer_init__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Access to contacts store: granted=%{BOOL}u, error=%{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__DNDSServer_resume__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_handleSignificantTimeChange
{
  v3 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Got significant time change; update lifetime monitors", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DNDSServer__handleSignificantTimeChange__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__DNDSServer__handleSignificantTimeChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:4 source:1];
  v2 = *(a1 + 32);

  return [v2 _queue_validateIDSSyncEngine];
}

- (BOOL)_setLostModeState:(unint64_t)a3 error:(id *)a4
{
  [(DNDSServer *)self setLostModeState:a3, a4];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DNDSServer__setLostModeState_error___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (id)currentStateForEventBehaviorResolver:(id)a3
{
  v3 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = v5;

  return v6;
}

- (id)eventBehaviorResolver:(id)a3 bypassSettingsForClientIdentifier:(id)a4
{
  v4 = [(DNDSServer *)self currentStateForEventBehaviorResolver:a3, a4];
  v5 = [v4 activeModeConfiguration];

  v6 = [v5 configuration];
  v7 = [v6 phoneCallBypassSettings];

  return v7;
}

- (id)eventBehaviorResolver:(id)a3 configurationForModeIdentifier:(id)a4
{
  modeConfigurationManager = self->_modeConfigurationManager;
  v13 = 0;
  v6 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:a4 withError:&v13];
  v7 = v13;
  v8 = [v6 configuration];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(DNDSGlobalConfigurationManager *)self->_globalConfigurationManager fallbackConfiguration];
  }

  v11 = v10;

  return v11;
}

- (BOOL)eventBehaviorResolver:(id)a3 isAvailabilityActiveForBundleIdentifier:(id)a4
{
  v4 = [(DNDSServer *)self currentStateForEventBehaviorResolver:a3, a4];
  v5 = [v4 activeModeConfiguration];
  v6 = [v5 impactsAvailability];

  return v6 != 1;
}

- (void)keybagDidUnlockForTheFirstTime:(id)a3
{
  [(DNDSServer *)self _migrateDefaultDoNotDisturbModeIfNeeded];
  if (+[DNDSPlatformEligibility isIntelligenceAvailable])
  {

    [(DNDSServer *)self _migrateReduceInterruptionsIfNeeded];
  }
}

- (id)lifetimeMonitor:(id)a3 modeAssertionsWithLifetimeClass:(Class)a4
{
  v5 = [MEMORY[0x277D05938] predicateForModeAssertionsWithLifetimeClass:a4];
  v6 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v5];

  return v6;
}

- (id)locationTriggerConfigurationForLifetimeMonitor:(id)a3
{
  v4 = objc_alloc_init(DNDSLocationTriggerConfiguration);
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__DNDSServer_locationTriggerConfigurationForLifetimeMonitor___block_invoke;
  v11[3] = &unk_278F8BBF0;
  v12 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
  v7 = [(DNDSLocationTriggerConfiguration *)v6 regions];
  if ([v7 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void __61__DNDSServer_locationTriggerConfigurationForLifetimeMonitor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 triggers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEnabled])
        {
          v12 = [v11 region];
          [*(a1 + 32) addTriggerForModeWithIdentifier:v5 forRegion:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)activeAssertionsDidChangeForLifetimeMonitor:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Lifetime monitor says active assertions changed; monitor=%p", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DNDSServer_activeAssertionsDidChangeForLifetimeMonitor___block_invoke;
  v9[3] = &unk_278F89F48;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __58__DNDSServer_activeAssertionsDidChangeForLifetimeMonitor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2 == v1[3])
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  return [v1 _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:v3 source:1];
}

- (id)lifetimeMonitor:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __82__DNDSServer_lifetimeMonitor_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A128;
  v25 = v10;
  v26 = v9;
  v11 = v9;
  v12 = v10;
  v13 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:a6];
  v14 = [v13 assertions];
  v15 = [v14 firstObject];

  clientDetailsProvider = self->_clientDetailsProvider;
  v17 = [v15 source];
  v18 = [v17 clientIdentifier];
  v19 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:v18];

  [(DNDSMetricsManager *)self->_metricsManager assertionTaken:v15 withClientDetails:v19 lockState:[(DNDSServer *)self lockState]];

  return v15;
}

uint64_t __82__DNDSServer_lifetimeMonitor_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:*(a1 + 32) deviceIdentifier:0];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v3 takeAssertionWithDetails:v5 source:v4 startDate:v6];

  return 1;
}

- (void)lifetimeMonitor:(id)a3 lifetimeDidExpireForAssertionUUIDs:(id)a4 expirationDate:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Lifetime monitor says UUIDs should expire; monitor=%{public}@, UUIDs=%{public}@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DNDSServer_lifetimeMonitor_lifetimeDidExpireForAssertionUUIDs_expirationDate___block_invoke;
    v16[3] = &unk_278F8C0A8;
    v17 = v9;
    v18 = v8;
    v19 = self;
    v20 = v10;
    v15 = 0;
    v12 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v16 error:&v15];
    v13 = v15;
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __80__DNDSServer_lifetimeMonitor_lifetimeDidExpireForAssertionUUIDs_expirationDate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:a1[4]];
  v5 = objc_alloc(MEMORY[0x277D05988]);
  v6 = [v5 initWithClientIdentifier:*MEMORY[0x277D05870] deviceIdentifier:0];
  v7 = a1[5];
  v8 = a1[6];
  if (v7 == *(v8 + 32))
  {
    v9 = 7;
  }

  else if (v7 == *(v8 + 16))
  {
    v9 = 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:a1[7] details:0 source:v6 reason:v9 reasonOverride:0];
  v11 = [v3 invalidateAssertionsForRequest:v10];

  return 1;
}

- (id)remoteServiceProvider:(id)a3 resolveBehaviorForEventDetails:(id)a4 clientDetails:(id)a5 date:(id)a6 error:(id *)a7
{
  v26 = *MEMORY[0x277D85DE8];
  metricsManager = self->_metricsManager;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  [(DNDSMetricsManager *)metricsManager sendMetricsHeartbeatsIfNeeded];
  v15 = [(DNDSEventBehaviorResolver *)self->_eventBehaviorResolver resolveBehaviorForEventDetails:v14 clientDetails:v13 date:v12 error:a7];

  v16 = [v15 eventDetails];
  v17 = [v16 bundleIdentifier];

  if (v17)
  {
    v18 = DNDSPowerLogInterruptionSuppressionForDNDInterruptionSuppression([v15 interruptionSuppression]);
    v19 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_INFO))
    {
      v22 = 138543618;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_INFO, "Notifying PowerLog of Focus interruption suppression event: bundleIdentifier=%{public}@ suppression=%ld", &v22, 0x16u);
    }

    DNDSPowerLogFocusInterruptionSuppresionEvent(v17, v18);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)remoteServiceProvider:(id)a3 activeAssertionWithClientIdentifer:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v8 = [(DNDSStateProvider *)self->_stateProvider lastSystemSnapshot];
  v9 = [v7 activeModeIdentifier];
  v10 = [v8 assertions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke;
  v20[3] = &unk_278F8AEF8;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v13 = [v10 bs_filter:v20];

  if ([v13 count] < 2)
  {
    v15 = [v13 firstObject];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke_2;
    v18[3] = &unk_278F8A0B0;
    v19 = v6;
    v14 = [v13 bs_filter:v18];
    if ([v14 count] == 1)
    {
      v15 = [v14 firstObject];
    }

    else
    {
      v16 = [v13 sortedArrayUsingComparator:&__block_literal_global_145];
      v15 = [v16 lastObject];
    }
  }

  return v15;
}

uint64_t __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activeAssertionUUIDs];
  v5 = [v3 UUID];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 details];
    v7 = [v6 modeIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = [v3 clientIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)remoteServiceProvider:(id)a3 assertionWithClientIdentifer:(id)a4 error:(id *)a5
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:a4];
  v7 = MEMORY[0x277D05938];
  v8 = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionsWithClientIdentifiers:v8];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v9];
  v11 = [v10 firstObject];

  return v11;
}

- (id)remoteServiceProvider:(id)a3 takeModeAssertionWithDetails:(id)a4 clientIdentifier:(id)a5 error:(id *)a6
{
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  modeConfigurationManager = self->_modeConfigurationManager;
  v12 = [v9 modeIdentifier];
  v13 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:v12 withError:a6];

  if (v13)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __88__DNDSServer_remoteServiceProvider_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
    v32 = &unk_278F8A128;
    v33 = v10;
    v34 = v9;
    v14 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v29 error:a6];
    v15 = [v14 assertions];
    v16 = [v15 firstObject];

    clientDetailsProvider = self->_clientDetailsProvider;
    v18 = [v16 source];
    v19 = [v18 clientIdentifier];
    v20 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:v19];

    [(DNDSMetricsManager *)self->_metricsManager assertionTaken:v16 withClientDetails:v20 lockState:[(DNDSServer *)self lockState]];
  }

  else
  {
    if (a6)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D05840];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"No mode configuration found for mode identifier.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *a6 = [v21 errorWithDomain:v22 code:1003 userInfo:v23];
    }

    v24 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [v9 modeIdentifier];
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "No mode configuration found for mode identifier: modeIdentifier=%{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __88__DNDSServer_remoteServiceProvider_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:*(a1 + 32) deviceIdentifier:0];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v3 takeAssertionWithDetails:v5 source:v4 startDate:v6];

  return 1;
}

- (id)remoteServiceProvider:(id)a3 invalidateModeAssertionWithUUID:(id)a4 reason:(unint64_t)a5 reasonOverride:(unint64_t)a6 clientIdentifier:(id)a7 error:(id *)a8
{
  v42[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = *MEMORY[0x277D05870];
  if (a7)
  {
    v14 = a7;
  }

  v15 = v14;
  modeAssertionManager = self->_modeAssertionManager;
  v17 = MEMORY[0x277D05938];
  v42[0] = v13;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v19 = [v17 predicateForModeAssertionsWithUUIDs:v18];
  v20 = [(DNDSModeAssertionManager *)modeAssertionManager modeAssertionsMatchingPredicate:v19];
  v21 = [v20 firstObject];

  v22 = [v21 source];
  v23 = [v22 clientIdentifier];

  if ([v23 hasSuffix:@".private.schedule"])
  {
    v24 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = v15;
      v40 = 2114;
      v41 = v23;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Overriding invalidation client (%{public}@) with assertion client (%{public}@)", buf, 0x16u);
    }

    v25 = [(DNDSServer *)self _invalidateModeAssertionForClientIdentifier:v23 reason:a5 reasonOverride:a6 details:0 error:a8];
  }

  else
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __113__DNDSServer_remoteServiceProvider_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke;
    v33 = &unk_278F8A150;
    v34 = v13;
    v35 = v15;
    v36 = a5;
    v37 = a6;
    v26 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v30 error:a8];
    v27 = [v26 invalidations];
    v25 = [v27 firstObject];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __113__DNDSServer_remoteServiceProvider_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12[0] = a1[4];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:v4];

  v6 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:a1[5] deviceIdentifier:0];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v5 requestDate:v7 details:0 source:v6 reason:a1[6] reasonOverride:a1[7]];

  v9 = [v3 invalidateAssertionsForRequest:v8];
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_invalidateModeAssertionForClientIdentifier:(id)a3 reason:(unint64_t)a4 reasonOverride:(unint64_t)a5 details:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__DNDSServer__invalidateModeAssertionForClientIdentifier_reason_reasonOverride_details_error___block_invoke;
  v20[3] = &unk_278F8C0D0;
  v20[4] = self;
  v21 = v12;
  v22 = v13;
  v23 = a4;
  v24 = a5;
  v14 = v13;
  v15 = v12;
  v16 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v20 error:a7];
  v17 = [v16 invalidations];
  v18 = [v17 firstObject];

  return v18;
}

uint64_t __94__DNDSServer__invalidateModeAssertionForClientIdentifier_reason_reasonOverride_details_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 392) clientDetailsForIdentifier:a1[5]];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 identifiers];
  v7 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:v6];

  v8 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:a1[5] deviceIdentifier:0];
  v9 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v7 requestDate:v5 details:a1[6] source:v8 reason:a1[7] reasonOverride:a1[8]];
  v10 = [v3 invalidateAssertionsForRequest:v9];

  return 1;
}

- (id)remoteServiceProvider:(id)a3 latestInvalidationWithClientIdentifer:(id)a4 error:(id *)a5
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:a4];
  v7 = MEMORY[0x277D05968];
  v8 = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:v8];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionInvalidationsMatchingPredicate:v9];
  v11 = [v10 firstObject];

  return v11;
}

- (id)remoteServiceProvider:(id)a3 invalidateAllModeAssertionsTakenBeforeDate:(id)a4 forReason:(unint64_t)a5 clientIdentifier:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __112__DNDSServer_remoteServiceProvider_invalidateAllModeAssertionsTakenBeforeDate_forReason_clientIdentifier_error___block_invoke;
  v18[3] = &unk_278F8B298;
  v19 = v12;
  v20 = v11;
  v21 = a5;
  v13 = v11;
  v14 = v12;
  v15 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v18 error:a7];
  v16 = [v15 invalidations];

  return v16;
}

uint64_t __112__DNDSServer_remoteServiceProvider_invalidateAllModeAssertionsTakenBeforeDate_forReason_clientIdentifier_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[DNDSModeAssertionInvalidationPredicate predicateForAnyAssertion];
  v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:a1[4] deviceIdentifier:0];
  v6 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:a1[5] source:v5 reason:a1[6]];
  v7 = [v3 invalidateAssertionsForRequest:v6];

  return 1;
}

- (id)remoteServiceProvider:(id)a3 allActiveModeAssertionsWithError:(id *)a4
{
  v4 = [(DNDSServer *)self _stateSystemSnapshot:a3];
  v5 = [v4 assertions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__DNDSServer_remoteServiceProvider_allActiveModeAssertionsWithError___block_invoke;
  v9[3] = &unk_278F8A0B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v9];

  return v7;
}

uint64_t __69__DNDSServer_remoteServiceProvider_allActiveModeAssertionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeAssertionUUIDs];
  v5 = [v3 UUID];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (id)remoteServiceProvider:(id)a3 currentStateWithError:(id *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__DNDSServer_remoteServiceProvider_currentStateWithError___block_invoke;
  v7[3] = &unk_278F89EA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __58__DNDSServer_remoteServiceProvider_currentStateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)appFocusConfigurationCoordinator:(id)a3 didUpdateAppConfigurationContextForModeIdentifier:(id)a4
{
  v10 = a4;
  v5 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v8 = v7;

  v9 = [v8 activeModeIdentifier];
  if (!(v10 | v9) || v9 && [v9 isEqualToString:v10])
  {
    [(DNDSRemoteServiceProvider *)self->_serviceProvider handleAppConfigurationContextUpdateForModeIdentifier:v10];
  }
}

- (id)currentStateForAppFocusConfigurationCoordinator:(id)a3
{
  v3 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = v5;

  return v6;
}

- (id)currentStateForSystemFocusConfigurationCoordinator:(id)a3
{
  v3 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = v5;

  return v6;
}

- (id)remoteServiceProvider:(id)a3 behaviorSettingsWithError:(id *)a4
{
  settingsManager = self->_settingsManager;
  v13 = 0;
  v6 = [(DNDSSettingsManager *)settingsManager behaviorSettingsWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (v6 | v7)
  {
    if (a4 && v7)
    {
      v10 = v7;
      *a4 = v8;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D058D0]);
    v9 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "No behavior settings in settings manager, will return default settings", v12, 2u);
    }
  }

  return v6;
}

- (id)remoteServiceProvider:(id)a3 scheduleSettingsWithError:(id *)a4
{
  v4 = [(DNDSServer *)self _scheduleSettingsFromDefaultScheduleTrigger:a3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277D05A80]);
    v5 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "No schedule settings in settings manager, will return default settings", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)remoteServiceProvider:(id)a3 setScheduleSettings:(id)a4 withError:(id *)a5
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 date];
  v9 = [DNDSScheduleSettings settingsWithClientSettings:v7 creationDate:v8];

  LOBYTE(self) = [(DNDSServer *)self _setDefaultScheduleTriggerWithScheduleSettings:v9];
  return self;
}

- (id)pairedCloudDevicesForSyncManager:(id)a3
{
  v4 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  if (![v4 isCloudSyncEnabled] || (-[DNDSPairedDeviceStateMonitor cloudDevices](self->_pairedDeviceStateMonitor, "cloudDevices"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEBUG))
  {
    [DNDSServer pairedCloudDevicesForSyncManager:];
  }

  return v5;
}

- (id)pairedDevicesForSyncManager:(id)a3
{
  v4 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  if (![v4 isCloudSyncEnabled] || (-[DNDSPairedDeviceStateMonitor cloudDevices](self->_pairedDeviceStateMonitor, "cloudDevices"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  if ([v4 isPairSyncEnabled])
  {
    v6 = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDevice];
    if (v6)
    {
      v7 = [v5 setByAddingObject:v6];

      v5 = v7;
    }

    else
    {
      v8 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "No default paired device", v10, 2u);
      }
    }
  }

  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEBUG))
  {
    [DNDSServer pairedDevicesForSyncManager:];
  }

  return v5;
}

- (id)syncManager:(id)a3 deviceForDeviceIdentifier:(id)a4
{
  v5 = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDeviceForDeviceIdentifier:a4];
  v6 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  if ([v5 syncServiceType] == 2 && !objc_msgSend(v6, "isCloudSyncEnabled") || objc_msgSend(v5, "syncServiceType") == 1 && (objc_msgSend(v6, "isPairSyncEnabled") & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

- (id)syncManager:(id)a3 updateOutboundModeAssertion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 details];
  v7 = [v6 mutableCopy];

  modeConfigurationManager = self->_modeConfigurationManager;
  v9 = [v7 modeIdentifier];
  v10 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:v9 withError:0];

  if (v10)
  {
    v11 = [v10 lastModified];
    if (v11 && ([MEMORY[0x277CBEAA8] distantPast], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToDate:", v12), v12, (v13 & 1) == 0))
    {
      v21 = [v10 lastModified];
      [v7 setModeConfigurationModifiedDate:v21];

      v22 = objc_alloc(MEMORY[0x277D05938]);
      v23 = [v5 UUID];
      v24 = [v5 startDate];
      v25 = [v5 source];
      v17 = [v22 initWithUUID:v23 startDate:v24 details:v7 source:v25];

      v26 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = v11;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_24912E000, v26, OS_LOG_TYPE_INFO, "Updated mode modifification date to %@ on assertion %@", &v27, 0x16u);
      }
    }

    else
    {
      v14 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v7 modeIdentifier];
        v27 = 138412546;
        v28 = v16;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "%@ configuration doesn't have a useful modification date: %@", &v27, 0x16u);
      }

      v17 = v5;
    }

    v5 = v17;
  }

  else
  {
    v18 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_FAULT))
    {
      [DNDSServer syncManager:v18 updateOutboundModeAssertion:v7];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)syncManager:(id)a3 scheduleSettingsForModeIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(DNDSServer *)self _scheduleSettingsForModeConfigurations];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 firstObject];

  return v8;
}

- (BOOL)isCloudSyncDisabledForSyncManager:(id)a3
{
  v3 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  v4 = [v3 isCloudSyncEnabled];

  return v4 ^ 1;
}

- (void)syncManager:(id)a3 performModeAssertionUpdatesWithHandler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 0;
  v7 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:a4 error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = +[DNDSModeAssertionUpdateResult emptyResult];
    v10 = [v7 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v6;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Performed update for sync manager; manager=%{public}@", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [DNDSServer syncManager:performModeAssertionUpdatesWithHandler:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:(id)a3 prepareForSyncToDevices:(id)a4
{
  if ([a4 bs_containsObjectPassingTest:&__block_literal_global_162])
  {
    syncEngine = self->_syncEngine;

    [(DNDSSyncEngine *)syncEngine sendChangesWithCompletionHandler:&__block_literal_global_165];
  }

  else
  {
    v6 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Not requesting cloud sync because the Focus sync does not target any cloud devices.", v7, 2u);
    }
  }
}

void __50__DNDSServer_syncManager_prepareForSyncToDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DNDSLogGeneral;
  if (v2)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      __50__DNDSServer_syncManager_prepareForSyncToDevices___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Completed settings sync for Focus sync.", v4, 2u);
  }
}

- (id)currentStateForLegacyAssertionSyncManager:(id)a3
{
  v3 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = v5;

  return v6;
}

- (id)phoneCallBypassSettingsForSyncManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:*MEMORY[0x277D05830] withError:0];
  v6 = [v5 configuration];
  v7 = [v6 phoneCallBypassSettings];

  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sync manager gets bypass settings; manager=%{public}@, settings=%{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)scheduleSettingsForSyncManager:(id)a3
{
  v3 = [(DNDSServer *)self _scheduleSettingsFromDefaultScheduleTrigger];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D05A80]);
    v7 = [MEMORY[0x277CBEAA8] date];
    v5 = [DNDSScheduleSettings settingsWithClientSettings:v6 creationDate:v7];
  }

  return v5;
}

- (void)syncManager:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received updated bypass settings via sync; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  modeConfigurationManager = self->_modeConfigurationManager;
  v10 = *MEMORY[0x277D05830];
  v20 = 0;
  v11 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:v10 withError:&v20];
  v12 = v20;
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSServer syncManager:didReceiveUpdatedPhoneCallBypassSettings:];
    }
  }

  else
  {
    v14 = [v11 mutableCopy];
    v15 = [v14 configuration];
    v16 = [v15 mutableCopy];

    [v16 setPhoneCallBypassSettings:v7];
    [v14 setConfiguration:v16];
    v17 = self->_modeConfigurationManager;
    v19 = 0;
    [(DNDSModeConfigurationManager *)v17 setModeConfiguration:v14 withError:&v19];
    v13 = v19;
    if (v13 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSServer syncManager:didReceiveUpdatedPhoneCallBypassSettings:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received updated schedule settings via sync; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSServer *)self _setDefaultScheduleTriggerWithScheduleSettings:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)a3 didReceiveUpdatedBehaviorSettings:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND behavior settings changed, will refresh state; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDSServer_settingsManager_didReceiveUpdatedBehaviorSettings___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedBehaviorSettings:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)a3 didReceiveUpdatedPhoneCallBypassSettings:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND phone call bypass settings changed, will refresh state; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedPhoneCallBypassSettings:v7];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)a3 didReceiveUpdatedScheduleSettings:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND schedule settings changed, will refresh state; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedScheduleSettings:v7];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDSServer_settingsManager_didReceiveUpdatedScheduleSettings___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)a3 didReceiveUpdatedSyncSettings:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sync settings updated; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  -[DNDSSyncEngine setSyncPreferenceEnabled:](self->_syncEngine, "setSyncPreferenceEnabled:", [v7 isCloudSyncEnabled]);
  v9 = [v7 isCloudSyncEnabled];
  v10 = [(DNDSGlobalConfigurationManager *)self->_globalConfigurationManager getModesCanImpactAvailabilityReturningError:0];
  if (v9)
  {
    if (v10)
    {
      userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
      v12 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager relevantContacts];
      v13 = [v12 allObjects];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke;
      v19[3] = &unk_278F8C058;
      v19[4] = self;
      [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator resumeUpdatingInvitationsForContacts:v13 completionHandler:v19];
    }
  }

  else if (v10)
  {
    v14 = self->_userAvailabilityCoordinator;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke_2;
    v18[3] = &unk_278F8C058;
    v18[4] = self;
    [(DNDSUserAvailabilityCoordinator *)v14 suspendWithOverrideSetting:1 completionHandler:v18];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke_3;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);

  v16 = *MEMORY[0x277D85DE8];
}

void __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 availability];
  v6 = [v5 isAvailable];

  v7 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v11 = [v7 activeModeConfiguration];

  if (v11)
  {
    v8 = [v11 mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  DNDSPowerLogFocusStatusChangeEvent(v10, v6, 0, 0, v9, a3);
}

void __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 availability];
  v6 = [v5 isAvailable];

  v7 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v11 = [v7 activeModeConfiguration];

  if (v11)
  {
    v8 = [v11 mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  DNDSPowerLogFocusStatusChangeEvent(v10, v6, 0, 0, v9, a3);
}

uint64_t __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _queue_handlePairedDeviceAndSyncSettingsChange];
  v2 = *(a1 + 32);

  return [v2 _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:1 source:1 options:1];
}

- (void)modeConfigurationManager:(id)a3 didUpdateAvailableModes:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = v6;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Available modes updated; manager=%{public}@, modes=%{public}@", buf, 0x16u);
  }

  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];
  [(DNDSAppForegroundTriggerManager *)self->_appForegroundTriggerManager refresh];
  [(DNDSDrivingTriggerManager *)self->_drivingTriggerManager refresh];
  [(DNDSGamingTriggerManager *)self->_gamingTriggerManager refresh];
  [(DNDSMindfulnessTriggerManager *)self->_mindfulnessTriggerManager refresh];
  [(DNDSSleepingTriggerManager *)self->_sleepingTriggerManager refresh];
  [(DNDSSmartTriggerManager *)self->_smartTriggerManager refresh];
  [(DNDSWorkoutTriggerManager *)self->_workoutTriggerManager refresh];
  v9 = [(DNDSServer *)self _allModes];
  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedModes:v9 availableModes:v7];
  [(DNDSAppConfigurationManager *)self->_appConfigurationManager refreshWithAvailableModes:v7];
  v10 = [v6 relevantApplicationIdentifiers];
  [(DNDSAppInfoCache *)self->_appInfoCache monitorApplicationIdentifiers:v10];
  v11 = MEMORY[0x277D05938];
  v12 = [v7 bs_map:&__block_literal_global_168];
  v13 = [v11 predicateForModeAssertionsWithModeIdentifiersNotContainedIn:v12];

  v14 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v13];
  v15 = [v14 bs_compactMap:&__block_literal_global_171];

  if ([v15 count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__DNDSServer_modeConfigurationManager_didUpdateAvailableModes___block_invoke_3;
    v28[3] = &unk_278F8AD18;
    v29 = v15;
    v16 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v28 error:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 assertions];
  if ([v17 count])
  {
  }

  else
  {
    [v16 invalidations];
    v26 = v7;
    v18 = v13;
    v19 = v10;
    v20 = v9;
    v22 = v21 = v6;
    v23 = [v22 count];

    v6 = v21;
    v9 = v20;
    v10 = v19;
    v13 = v18;
    v7 = v26;

    if (!v23)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__DNDSServer_modeConfigurationManager_didUpdateAvailableModes___block_invoke_4;
      block[3] = &unk_278F89ED0;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

id __63__DNDSServer_modeConfigurationManager_didUpdateAvailableModes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 source];
  v4 = [v3 deviceIdentifier];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 UUID];
  }

  return v5;
}

uint64_t __63__DNDSServer_modeConfigurationManager_didUpdateAvailableModes___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionUUIDs:*(a1 + 32)];
  v6 = objc_alloc(MEMORY[0x277D05988]);
  v7 = [v6 initWithClientIdentifier:*MEMORY[0x277D05870] deviceIdentifier:0];
  v8 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v5 requestDate:v4 details:0 source:v7 reason:2 reasonOverride:0];
  v9 = [v3 invalidateAssertionsForRequest:v8];

  return 1;
}

- (void)modeConfigurationManager:(id)a3 didModifyAvailableMode:(id)a4
{
  v5 = a4;
  v6 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D05AA0] fallbackState];
  }

  v9 = v8;

  if ([v9 isActive])
  {
    v10 = [v5 modeIdentifier];
    v11 = [v9 activeModeIdentifier];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v13 = [(DNDSSyncEngine *)self->_syncEngine hasLocalChanges];
      v14 = DNDSLogGeneral;
      v15 = os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Settings for this mode changed. Forcing a sync to all devices.", buf, 2u);
        }

        [(DNDSAssertionSyncManager *)self->_assertionSyncManager forceUpdateAllDevices];
      }

      else if (v15)
      {
        *v16 = 0;
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Skipping forced update for settings change because they were not local changes.", v16, 2u);
      }
    }
  }
}

- (void)modeConfigurationManager:(id)a3 didModifyExceptionsForContacts:(id)a4 forModeConfiguration:(id)a5
{
  userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
  v6 = [a4 allKeys];
  [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator sendStatusKitInvitationsForContacts:v6 completionHandler:0];
}

- (void)pairedDeviceStateMonitor:(id)a3 pairingChangedFromDevice:(id)a4 toDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DNDSServer_pairedDeviceStateMonitor_pairingChangedFromDevice_toDevice___block_invoke;
  v15[3] = &unk_278F8AB30;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __73__DNDSServer_pairedDeviceStateMonitor_pairingChangedFromDevice_toDevice___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Paired devices updated; monitor=%{public}@, previousDevice=%{public}@, device=%{public}@", &v8, 0x20u);
  }

  [*(*(a1 + 56) + 152) pairedDeviceDidChange];
  [*(*(a1 + 56) + 232) pairedDeviceDidChange];
  [*(a1 + 56) _queue_handlePairedDeviceAndSyncSettingsChange];
  result = [*(a1 + 56) _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:1 source:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)pairedDeviceStateMonitor:(id)a3 cloudPairingChangedFromDevices:(id)a4 toDevices:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Cloud devices changed; monitor=%{public}@, previousDevices=%{public}@, devices=%{public}@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__DNDSServer_pairedDeviceStateMonitor_cloudPairingChangedFromDevices_toDevices___block_invoke;
  aBlock[3] = &unk_278F8C118;
  aBlock[4] = self;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = _Block_copy(aBlock);
  v14[2](v14, self->_assertionSyncManager);
  v14[2](v14, self->_legacyAssertionSyncManager);

  v15 = *MEMORY[0x277D85DE8];
}

void __80__DNDSServer_pairedDeviceStateMonitor_cloudPairingChangedFromDevices_toDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__DNDSServer_pairedDeviceStateMonitor_cloudPairingChangedFromDevices_toDevices___block_invoke_2;
    block[3] = &unk_278F89E30;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v3;
    dispatch_async(v4, block);
  }
}

void __80__DNDSServer_pairedDeviceStateMonitor_cloudPairingChangedFromDevices_toDevices___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 minusSet:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v4 allObjects];
  [v2 updateDevices:v3];
}

- (BOOL)remoteServiceProvider:(id)a3 setCloudSyncPreferenceEnabled:(BOOL)a4 withError:(id *)a5
{
  v6 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setBool:!v6 forKey:@"disableCloudSync"];

  if (!v6)
  {
    modeConfigurationManager = self->_modeConfigurationManager;
    v37 = 0;
    v10 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationsWithError:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSServer remoteServiceProvider:setCloudSyncPreferenceEnabled:withError:];
      }
    }

    else
    {
      v30 = v10;
      v31 = a5;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = [v10 allValues];
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        v17 = *MEMORY[0x277D05820];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            if (([v19 isSupportedConfiguration] & 1) == 0)
            {
              v20 = [v19 mutableCopy];
              [v20 setCompatibilityVersion:v17];
              if (([v20 isSupportedConfiguration] & 1) == 0)
              {
                v21 = [v20 triggers];
                v22 = [v21 bs_filter:&__block_literal_global_178];
                [v20 setTriggers:v22];
              }

              v23 = self->_modeConfigurationManager;
              v32 = 0;
              [(DNDSModeConfigurationManager *)v23 setModeConfiguration:v20 withError:&v32];
              v24 = v32;
              if (v24)
              {
                v25 = v24;
                v26 = DNDSLogGeneral;
                if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v39 = v25;
                  _os_log_error_impl(&dword_24912E000, v26, OS_LOG_TYPE_ERROR, "Unable to reset incompatible mode configuration: error=%{public}@", buf, 0xCu);
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v15);
      }

      v12 = 0;
      v10 = v30;
      a5 = v31;
    }

    if (a5)
    {
      v27 = v12;
      *a5 = v12;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)remoteServiceProvider:(id)a3 didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)a4
{
  userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
  v6 = MEMORY[0x277D058C8];
  v7 = a4;
  v8 = [[v6 alloc] initWithBundleID:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__DNDSServer_remoteServiceProvider_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke;
  v9[3] = &unk_278F8C058;
  v9[4] = self;
  [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator coordinateUserAvailabilityUpdateForApplicationIdentifier:v8 forced:1 completionHandler:v9];
}

void __95__DNDSServer_remoteServiceProvider_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 availability];
  v6 = [v5 isAvailable];

  v7 = [*(*(a1 + 32) + 168) lastCalculatedState];
  v11 = [v7 activeModeConfiguration];

  if (v11)
  {
    v8 = [v11 mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  DNDSPowerLogFocusStatusChangeEvent(v10, v6, 0, 0, v9, a3);
}

- (id)remoteServiceProvider:(id)a3 allModesReturningError:(id *)a4
{
  v5 = [(DNDSServer *)self _allModes:a3];
  [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
  [(DNDSSyncEngine *)self->_syncEngine fetchChanges:0 withCompletionHandler:&__block_literal_global_181];

  return v5;
}

void __59__DNDSServer_remoteServiceProvider_allModesReturningError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DNDSLogCloudSync;
  if (v2)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __59__DNDSServer_remoteServiceProvider_allModesReturningError___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Fetched changes", v4, 2u);
  }
}

- (id)remoteServiceProvider:(id)a3 availableModesReturningError:(id *)a4
{
  [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
  [(DNDSSyncEngine *)self->_syncEngine fetchChanges:0 withCompletionHandler:&__block_literal_global_183];
  modeConfigurationManager = self->_modeConfigurationManager;

  return [(DNDSModeConfigurationManager *)modeConfigurationManager availableModesFilteringPlaceholders:1 returningError:a4];
}

void __65__DNDSServer_remoteServiceProvider_availableModesReturningError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DNDSLogCloudSync;
  if (v2)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __59__DNDSServer_remoteServiceProvider_allModesReturningError___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Fetched changes", v4, 2u);
  }
}

- (BOOL)remoteServiceProvider:(id)a3 syncModeConfigurationsReturningError:(id *)a4
{
  v5 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forcing cloud sync", v7, 2u);
  }

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
  [(DNDSSyncEngine *)self->_syncEngine sync:1 withCompletionHandler:&__block_literal_global_185];
  return 1;
}

void __73__DNDSServer_remoteServiceProvider_syncModeConfigurationsReturningError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DNDSLogCloudSync;
  if (v2)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __73__DNDSServer_remoteServiceProvider_syncModeConfigurationsReturningError___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Sent changes", v4, 2u);
  }
}

- (id)remoteServiceProvider:(id)a3 publishStatusKitAvailabilityReturningError:(id *)a4
{
  v4 = [(DNDSUserAvailabilityCoordinator *)self->_userAvailabilityCoordinator publishStatusKitAvailabilityReturningError:a4];
  v5 = [v4 identifier];

  return v5;
}

- (id)remoteAppConfigurationServiceProvider:(id)a3 getCurrentAppConfigurationForActionIdentifier:(id)a4 bundleIdentifier:(id)a5 withError:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v12 = [v11 activeModeIdentifier];

  if (!v12)
  {
    v16 = 0;
LABEL_11:
    v20 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v10;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "No enabled action for %@ in active mode %@", buf, 0x16u);
    }

    if (a6 && v16)
    {
      v21 = v16;
      v17 = 0;
      *a6 = v16;
    }

    else
    {
      if (a6)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277D05840];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"No current action is available. Supply the caller with the default.";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *a6 = [v22 errorWithDomain:v23 code:1007 userInfo:v24];
      }

      v17 = 0;
    }

    goto LABEL_19;
  }

  v13 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v10];
  appConfigurationManager = self->_appConfigurationManager;
  v27 = 0;
  v15 = [(DNDSAppConfigurationManager *)appConfigurationManager appActionForActionIdentifier:v9 applicationIdentifier:v13 modeIdentifier:v12 error:&v27];
  v16 = v27;
  v17 = 0;
  if ([v15 isEnabled])
  {
    v17 = [v15 action];
  }

  v18 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"Found";
    *buf = 138412802;
    if (!v17)
    {
      v19 = @"No";
    }

    v31 = v19;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "%@ action for '%@' in active mode %@", buf, 0x20u);
  }

  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)remoteAppConfigurationServiceProvider:(id)a3 invalidateAppContextForActionIdentifier:(id)a4 bundleIdentifier:(id)a5 withError:(id *)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v11 = [v10 activeModeIdentifier];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v9];
    [(DNDSAppConfigurationManager *)self->_appConfigurationManager invalidateAppContextForActionIdentifier:v8 applicationIdentifier:v12 modeIdentifier:v11];
  }

  return 1;
}

- (id)remoteServiceProvider:(id)a3 getAppInfoForBundleIdentifiers:(id)a4 withError:(id *)a5
{
  appInfoCache = self->_appInfoCache;
  v6 = [MEMORY[0x277CBEB98] setWithArray:a4];
  v7 = [(DNDSAppInfoCache *)appInfoCache appInfoForBundleIdentifiers:v6];
  v8 = [v7 allValues];

  return v8;
}

- (BOOL)remoteServiceProvider:(id)a3 setAppConfigurationPredicate:(id)a4 forActionIdentifier:(id)a5 forApplicationIdentifier:(id)a6 modeIdentifier:(id)a7 withError:(id *)a8
{
  v9 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setPredicate:a4 forActionIdentifier:a5 forApplicationIdentifier:a6 modeIdentifier:a7];
  if (a8)
  {
    v9 = v9;
    *a8 = v9;
  }

  v10 = v9 == 0;

  return v10;
}

- (BOOL)remoteServiceProvider:(id)a3 setAppConfigurationTargetContentIdentifierPrefix:(id)a4 forActionIdentifier:(id)a5 forApplicationIdentifier:(id)a6 modeIdentifier:(id)a7 withError:(id *)a8
{
  v9 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setTargetContentIdentifierPrefix:a4 forActionIdentifier:a5 forApplicationIdentifier:a6 modeIdentifier:a7];
  if (a8)
  {
    v9 = v9;
    *a8 = v9;
  }

  v10 = v9 == 0;

  return v10;
}

- (BOOL)remoteServiceProvider:(id)a3 clearSystemConfigurationActionWithIdentifier:(id)a4 modeIdentifier:(id)a5 withError:(id *)a6
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearSystemActionWithIdentifier:a4 modeIdentifier:a5];
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)remoteServiceProvider:(id)a3 setAppAction:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withError:(id *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [v13 action];

  appConfigurationManager = self->_appConfigurationManager;
  if (v14)
  {
    v16 = [(DNDSAppConfigurationManager *)appConfigurationManager setAppAction:v13 forApplicationIdentifier:v11 modeIdentifier:v12];
  }

  else
  {
    v17 = [v13 identifier];

    v16 = [(DNDSAppConfigurationManager *)appConfigurationManager clearAppActionWithIdentifier:v17 forApplicationIdentifier:v11 modeIdentifier:v12];
    v13 = v17;
  }

  if (a7)
  {
    v18 = v16;
    *a7 = v16;
  }

  return v16 == 0;
}

- (BOOL)remoteServiceProvider:(id)a3 clearAppActionWithIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6 withError:(id *)a7
{
  v8 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearAppActionWithIdentifier:a4 forApplicationIdentifier:a5 modeIdentifier:a6];
  if (a7)
  {
    v8 = v8;
    *a7 = v8;
  }

  v9 = v8 == 0;

  return v9;
}

- (BOOL)remoteServiceProvider:(id)a3 setSystemAction:(id)a4 forModeIdentifier:(id)a5 withError:(id *)a6
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setSystemAction:a4 modeIdentifier:a5];
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)remoteServiceProvider:(id)a3 clearSystemActionWithIdentifier:(id)a4 forModeIdentifier:(id)a5 withError:(id *)a6
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearSystemActionWithIdentifier:a4 modeIdentifier:a5];
  if (a6)
  {
    v7 = v7;
    *a6 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (void)reachabilityChangedTo:(BOOL)a3
{
  v3 = a3;
  v5 = DNDSLogGeneral;
  v6 = os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Device regained internet connectivity. Queueing a current activity sync.", buf, 2u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__DNDSServer_reachabilityChangedTo___block_invoke;
    aBlock[3] = &unk_278F8C140;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v7[2](v7, self->_assertionSyncManager);
    v7[2](v7, self->_legacyAssertionSyncManager);
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Device lost internet connectivity.", buf, 2u);
  }
}

void __36__DNDSServer_reachabilityChangedTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__DNDSServer_reachabilityChangedTo___block_invoke_2;
    v6[3] = &unk_278F89F48;
    v6[4] = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __36__DNDSServer_reachabilityChangedTo___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) pairedCloudDevicesForSyncManager:*(a1 + 40)];
  if ([v4 count])
  {
    v2 = *(a1 + 40);
    v3 = [v4 allObjects];
    [v2 updateDevices:v3];
  }
}

- (void)_queue_resume
{
  dispatch_assert_queue_V2(self->_queue);
  [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor resume];
  [(DNDSServer *)self _queue_handlePairedDeviceAndSyncSettingsChange];
  [(DNDSServer *)self _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:4 source:1];
  [(DNDSRemoteServiceProvider *)self->_serviceProvider resume];
  [(DNDSRemoteAvailabilityServiceProvider *)self->_availabilityServiceProvider resume];
  appConfigurationServiceProvider = self->_appConfigurationServiceProvider;

  [(DNDSRemoteAppConfigurationServiceProvider *)appConfigurationServiceProvider resume];
}

- (void)_queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:(unint64_t)a3 source:(int64_t)a4 options:(int64_t)a5
{
  v70 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(DNDSScheduleManager *)self->_scheduleManager refresh];
  v7 = [MEMORY[0x277CBEAA8] date];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = self->_lifetimeMonitors;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      v12 = 0;
      do
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v59 + 1) + 8 * v12++) refreshMonitorForDate:v7];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v10);
  }

  v13 = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v14 = [(DNDSServer *)self _stateSystemSnapshot];
  v15 = [(DNDSStateProvider *)self->_stateProvider recalculateStateForSnapshot:v14];
  v16 = [v13 activeModeIdentifier];

  if (v16)
  {
    v17 = [v13 activeModeConfiguration];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v15 activeModeIdentifier];

  if (v18)
  {
    v19 = [v15 activeModeConfiguration];
  }

  else
  {
    v19 = 0;
  }

  v52 = v19;
  v20 = [v19 mode];
  v21 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [v20 modeIdentifier];
    [v20 name];
    v47 = v13;
    v49 = v15;
    v25 = v24 = a3;
    [v20 symbolImageName];
    v27 = v26 = v17;
    *buf = 138412802;
    v64 = v23;
    v65 = 2112;
    v66 = v25;
    v67 = 2112;
    v68 = v27;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Sending modeIdentifier: %@, modeName:%@, symbolImageName: %@ to focusStatusDomainPublisher", buf, 0x20u);

    v17 = v26;
    a3 = v24;
    v13 = v47;
    v15 = v49;
  }

  focusStatusDomainPublisher = self->_focusStatusDomainPublisher;
  if (v20)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke;
    v57[3] = &unk_278F8C168;
    v58 = v20;
    [(STFocusStatusDomainPublisher *)focusStatusDomainPublisher updateDataWithBlock:v57];
  }

  else
  {
    v29 = objc_alloc_init(MEMORY[0x277D6B990]);
    [(STFocusStatusDomainPublisher *)focusStatusDomainPublisher setData:v29];

    v20 = 0;
    v30 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "currentData has been set to nil", buf, 2u);
    }
  }

  if (v13 && ([v13 isEqual:v15] & 1) == 0)
  {
    v31 = v20;
    v48 = v17;
    v32 = [objc_alloc(MEMORY[0x277D05AB8]) initWithPreviousState:v13 state:v15 reason:a3 source:a4 options:a5];
    v33 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [v32 previousState];
      *buf = 138477827;
      v64 = v35;
      _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "State was updated: previousState=%{private}@", buf, 0xCu);
    }

    v36 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [v32 state];
      *buf = 138477827;
      v64 = v38;
      _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "State was updated: currentState=%{private}@", buf, 0xCu);
    }

    v39 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
      [v32 reason];
      v41 = DNDStateUpdateReasonToString();
      [v32 source];
      v42 = DNDStateUpdateSourceToString();
      *buf = 138543618;
      v64 = v41;
      v65 = 2114;
      v66 = v42;
      _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "State was updated: reason=%{public}@ source=%{public}@", buf, 0x16u);
    }

    [(DNDSRemoteServiceProvider *)self->_serviceProvider handleStateUpdate:v32];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke_198;
    aBlock[3] = &unk_278F8C140;
    v56 = v32;
    v43 = v32;
    v44 = _Block_copy(aBlock);
    v44[2](v44, self->_assertionSyncManager);
    v44[2](v44, self->_legacyAssertionSyncManager);
    [(DNDSBiomeDonationManager *)self->_biomeDonationManager handleStateUpdate:v43];
    [(DNDSAppFocusConfigurationCoordinator *)self->_appFocusConfigurationCoordinator handleStateUpdate:v43];
    [(DNDSSystemFocusConfigurationCoordinator *)self->_systemFocusConfigurationCoordinator handleStateUpdate:v43];
    userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
    v53 = v52;
    v54 = v7;
    v17 = v48;
    [DNDSUserAvailabilityCoordinator coordinateUserAvailability:"coordinateUserAvailability:fromConfiguration:toConfiguration:completionHandler:" fromConfiguration:v43 toConfiguration:? completionHandler:?];

    v20 = v31;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) modeIdentifier];
  [v3 setModeIdentifier:v4];

  v5 = [*(a1 + 32) name];
  [v3 setModeName:v5];

  v6 = [*(a1 + 32) symbolImageName];
  [v3 setModeSymbol:v6];

  v7 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v3 modeIdentifier];
    v10 = [v3 modeName];
    v11 = [v3 modeSymbol];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "currentData has been set to modeIdentifer: %@, modeName: %@, symbolImageName: %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke_198(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateForStateUpdate:*(a1 + 32)];
  }
}

void __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 impactsAvailability];
    v7 = DNDResolvedImpactsAvailabilitySetting() != 2;
    v8 = [*(a1 + 32) mode];
    v9 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([v8 semanticType]);
  }

  else
  {
    v9 = -2;
    v7 = 1;
  }

  updated = DNDSPowerLogFocusUpdateSourceForDNDStateUpdateSource(*(a1 + 48));
  v11 = DNDSPowerLogFocusUpdateReasonForDNDStateUpdateReason(*(a1 + 56));
  v12 = DNDSLogMetrics;
  if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_INFO))
  {
    v14 = 134219008;
    v15 = v7;
    v16 = 2048;
    v17 = updated;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_INFO, "Notifying PowerLog of Focus status change event: availability=%ld source=%ld reason=%ld semanticType=%ld extensionsLaunched=%ld", &v14, 0x34u);
  }

  DNDSPowerLogFocusStatusChangeEvent(*(a1 + 40), v7, updated, v11, v9, a3);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_migrateBypassSettingsIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_24912E000, a1, a3, "Unable to fetch global configuration to migrate bypass settings: error=%{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_migrateDefaultDoNotDisturbModeIfNeeded
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "Unable to save migrated default mode: mode=%{public}@ error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_migrateReduceInterruptionsIfNeeded
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "Unable to save migrated Reduce Interruptions: mode=%{public}@ error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_createDefaultModeForWorkoutTriggerIfNecessary
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:@"com.apple.donotdisturb.mode.workout" withError:0];
  if (!v3)
  {
    v4 = [(DNDSPlaceholderModeManager *)self->_placeholderModeManager placeholderModesWithError:0];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__15;
    v28 = __Block_byref_object_dispose__15;
    v29 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__DNDSServer__createDefaultModeForWorkoutTriggerIfNecessary__block_invoke;
    v21[3] = &unk_278F8C1D8;
    v22 = @"com.apple.donotdisturb.mode.workout";
    v23 = &v24;
    [v4 enumerateObjectsUsingBlock:v21];
    v5 = objc_alloc(MEMORY[0x277D05930]);
    v6 = [v25[5] name];
    v7 = [v25[5] modeIdentifier];
    v8 = [v25[5] symbolImageName];
    v9 = [v25[5] tintColorName];
    v10 = [v5 initWithName:v6 modeIdentifier:v7 symbolImageName:v8 tintColorName:v9 semanticType:{objc_msgSend(v25[5], "semanticType")}];

    v11 = [MEMORY[0x277D05A20] defaultConfiguration];
    v12 = objc_alloc_init(MEMORY[0x277D059E8]);
    v34[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];

    v14 = [objc_alloc(MEMORY[0x277D05A50]) initWithMode:v10 configuration:v11 triggers:v13];
    [v14 setImpactsAvailability:0];
    [v14 setDimsLockScreen:1];
    [v14 setAutomaticallyGenerated:1];
    modeConfigurationManager = self->_modeConfigurationManager;
    v20 = 0;
    LOBYTE(v9) = [(DNDSModeConfigurationManager *)modeConfigurationManager setModeConfiguration:v14 withError:&v20];
    v16 = v20;
    if (v9)
    {
      v3 = [v14 copy];
    }

    else
    {
      v17 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v14;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Unable to save migrated default mode: mode=%{public}@ error=%{public}@", buf, 0x16u);
      }

      v3 = 0;
    }

    _Block_object_dispose(&v24, 8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

void __60__DNDSServer__createDefaultModeForWorkoutTriggerIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 modeIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_setDimsLockScreenSetting:(unint64_t)a3 forModeConfigurationWithIdentifier:(id)a4
{
  v6 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:a4 withError:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 setDimsLockScreen:a3];
    v9 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager setModeConfiguration:v8 withError:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_setScheduleTrigger:(id)a3 forModeConfigurationWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:a4 withError:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 triggers];
    v10 = [v9 bs_filter:&__block_literal_global_221];

    v11 = [v8 mutableCopy];
    v12 = [v11 triggers];
    v13 = [v12 arrayByExcludingObjectsInArray:v10];

    v14 = [v13 arrayByAddingObject:v6];

    [v11 setTriggers:v14];
    v15 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager setModeConfiguration:v11 withError:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __69__DNDSServer__setScheduleTrigger_forModeConfigurationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_setDefaultScheduleTriggerWithScheduleSettings:(id)a3
{
  v4 = a3;
  v5 = [(DNDSServer *)self _scheduleTriggerMatchingSettings:v4];
  v6 = *MEMORY[0x277D05830];
  if ([(DNDSServer *)self _setScheduleTrigger:v5 forModeConfigurationWithIdentifier:*MEMORY[0x277D05830]])
  {
    v7 = -[DNDSServer _setDimsLockScreenSetting:forModeConfigurationWithIdentifier:](self, "_setDimsLockScreenSetting:forModeConfigurationWithIdentifier:", [v4 bedtimeBehaviorEnabledSetting], v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_scheduleSettingsForModeConfigurations
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  if (v4)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __52__DNDSServer__scheduleSettingsForModeConfigurations__block_invoke;
    v10 = &unk_278F8C228;
    v11 = self;
    v12 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  }

  v5 = [v3 copy];

  return v5;
}

void __52__DNDSServer__scheduleSettingsForModeConfigurations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 triggers];
  v7 = [v6 bs_filter:&__block_literal_global_224];

  if ([v7 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__DNDSServer__scheduleSettingsForModeConfigurations__block_invoke_3;
    v9[3] = &unk_278F8C200;
    v9[4] = *(a1 + 32);
    v8 = [v7 bs_map:v9];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

uint64_t __52__DNDSServer__scheduleSettingsForModeConfigurations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_scheduleSettingsFromDefaultScheduleTrigger
{
  v2 = [(DNDSServer *)self _scheduleSettingsForModeConfigurations];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D05830]];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_scheduleSettingsMatchingTrigger:(id)a3
{
  v3 = a3;
  v4 = [DNDSScheduleSettings alloc];
  v5 = [v3 enabledSetting];
  v6 = [v3 timePeriod];
  v7 = [v3 creationDate];

  v8 = [(DNDSScheduleSettings *)v4 initWithScheduleEnabledSetting:v5 timePeriod:v6 bedtimeBehaviorEnabledSetting:0 creationDate:v7];

  return v8;
}

- (id)_scheduleTriggerMatchingSettings:(id)a3
{
  v3 = MEMORY[0x277D059C0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 timePeriod];
  v7 = [v4 creationDate];
  v8 = [v4 scheduleEnabledSetting];

  v9 = [v5 initWithTimePeriod:v6 creationDate:v7 enabledSetting:v8];

  return v9;
}

- (id)_stateSystemSnapshot
{
  v88 = *MEMORY[0x277D85DE8];
  modeAssertionManager = self->_modeAssertionManager;
  v4 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v5 = [(DNDSModeAssertionManager *)modeAssertionManager modeAssertionsMatchingPredicate:v4];

  v6 = self->_modeAssertionManager;
  v7 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v8 = [(DNDSModeAssertionManager *)v6 modeAssertionInvalidationsMatchingPredicate:v7];

  v9 = [MEMORY[0x277CBEAA8] distantPast];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v82;
    do
    {
      v14 = 0;
      v15 = v9;
      do
      {
        if (*v82 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v81 + 1) + 8 * v14) invalidationDate];
        v9 = [v15 laterDate:v16];

        ++v14;
        v15 = v9;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v12);
  }

  v61 = v10;

  v17 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager availableModesFilteringPlaceholders:1 returningError:0];
  v18 = [v17 bs_map:&__block_literal_global_228];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __34__DNDSServer__stateSystemSnapshot__block_invoke_2;
  v79[3] = &unk_278F8C250;
  v60 = v18;
  v80 = v60;
  v66 = [v5 bs_compactMap:v79];
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v62 = self;
  v19 = self->_lifetimeMonitors;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v76;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v76 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v75 + 1) + 8 * i) activeLifetimeAssertionUUIDs];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __34__DNDSServer__stateSystemSnapshot__block_invoke_3;
        v73[3] = &unk_278F8C278;
        v74 = v66;
        v25 = [v24 bs_filter:v73];

        [v68 addObjectsFromArray:v25];
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v21);
  }

  v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v5;
  v67 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (!v67)
  {
    p_isa = &v62->super.isa;
    goto LABEL_35;
  }

  v64 = *v70;
  p_isa = &v62->super.isa;
  do
  {
    v27 = 0;
    do
    {
      if (*v70 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v69 + 1) + 8 * v27);
      v29 = [v28 UUID];
      v30 = [v68 containsObject:v29];

      v31 = [p_isa _activeDateIntervalForModeAssertion:v28 currentlyActive:v30];
      v32 = [v28 UUID];
      [v65 setObject:v31 forKey:v32];

      if (v30)
      {
        v33 = [v31 startDate];
        v34 = [v9 laterDate:v33];
LABEL_28:

        v9 = v34;
        goto LABEL_29;
      }

      v35 = [v28 details];
      v36 = [v35 reason];

      v37 = [v28 details];
      v38 = [v37 identifier];
      v39 = [v38 isEqualToString:@"schedule"];

      v40 = [p_isa[21] lastSystemSnapshot];
      v41 = [v40 activeAssertionUUIDs];
      v42 = [v28 UUID];
      v43 = [v41 containsObject:v42];

      if (v36 == 2 && v39)
      {
        p_isa = &v62->super.isa;
        if (!v43)
        {
          goto LABEL_29;
        }

        v33 = [MEMORY[0x277CBEAA8] date];
        [v31 duration];
        v45 = [v33 dateByAddingTimeInterval:-v44];
        scheduleLifetimeMonitor = v62->_scheduleLifetimeMonitor;
        v47 = [v28 details];
        v48 = [v47 lifetime];
        v49 = [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor activeDateIntervalForScheduleLifetime:v48 assertion:v28 date:v45];

        v50 = [v49 endDate];
        [v50 timeIntervalSinceDate:v33];
        v52 = v51;

        if (v52 < 0.0)
        {
          v53 = [v49 endDate];
          v54 = [v9 laterDate:v53];

          v9 = v54;
        }

        v34 = v9;

        v9 = v45;
        goto LABEL_28;
      }

      p_isa = &v62->super.isa;
LABEL_29:

      ++v27;
    }

    while (v67 != v27);
    v55 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
    v67 = v55;
  }

  while (v55);
LABEL_35:

  v56 = objc_alloc_init(DNDSMutableStateProviderSystemSnapshot);
  [(DNDSMutableStateProviderSystemSnapshot *)v56 setAssertions:obj];
  [(DNDSMutableStateProviderSystemSnapshot *)v56 setActiveAssertionUUIDs:v68];
  [(DNDSMutableStateProviderSystemSnapshot *)v56 setActiveDateIntervalByAssertionUUID:v65];
  -[DNDSMutableStateProviderSystemSnapshot setLostModeState:](v56, "setLostModeState:", [p_isa lostModeState]);
  [(DNDSMutableStateProviderSystemSnapshot *)v56 setLastUpdate:v9];
  v57 = [p_isa[29] behaviorSettingsWithError:0];
  -[DNDSMutableStateProviderSystemSnapshot setInterruptionBehaviorSetting:](v56, "setInterruptionBehaviorSetting:", [v57 interruptionBehaviorSetting]);

  v58 = *MEMORY[0x277D85DE8];

  return v56;
}

id __34__DNDSServer__stateSystemSnapshot__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = *(a1 + 32);
  v6 = [v3 details];

  v7 = [v6 modeIdentifier];
  LODWORD(v5) = [v5 containsObject:v7];

  if (v5)
  {

    v4 = 0;
  }

  return v4;
}

- (id)_activeDateIntervalForModeAssertion:(id)a3 currentlyActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 details];
  v8 = [v7 lifetime];

  v9 = [v8 lifetimeType];
  v10 = 0;
  if (v9 > 2)
  {
    if (v9 != 5)
    {
      if (v9 == 4)
      {
        v12 = v8;
        scheduleLifetimeMonitor = self->_scheduleLifetimeMonitor;
        v22 = [MEMORY[0x277CBEAA8] date];
        if (v4)
        {
          [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor activeDateIntervalForScheduleLifetime:v12 assertion:v6 date:v22];
        }

        else
        {
          [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor nextActiveDateIntervalForScheduleLifetime:v12 assertion:v6 date:v22];
        }
        v13 = ;

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = objc_alloc_init(MEMORY[0x277CCA970]);
        }

        goto LABEL_10;
      }

      if (v9 != 3)
      {
        goto LABEL_13;
      }
    }

LABEL_9:
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [v6 startDate];
    v13 = [MEMORY[0x277CBEAA8] distantFuture];
    v14 = [v11 initWithStartDate:v12 endDate:v13];
LABEL_10:
    v10 = v14;
    goto LABEL_11;
  }

  switch(v9)
  {
    case 0:
      goto LABEL_9;
    case 1:
      v12 = v8;
      calendarEventLifetimeMonitor = self->_calendarEventLifetimeMonitor;
      v17 = [v6 startDate];
      v10 = [(DNDSCalendarEventLifetimeMonitor *)calendarEventLifetimeMonitor activeDateIntervalForCalendarEventLifetime:v12 assertionStartDate:v17];

      if (v10)
      {
        goto LABEL_12;
      }

      v18 = objc_alloc(MEMORY[0x277CCA970]);
      v13 = [v6 startDate];
      v19 = v13;
      if (!v13)
      {
        v19 = [MEMORY[0x277CBEAA8] date];
      }

      v20 = [MEMORY[0x277CBEAA8] distantFuture];
      v10 = [v18 initWithStartDate:v19 endDate:v20];

      if (!v13)
      {
      }

LABEL_11:

LABEL_12:
      break;
    case 2:
      v10 = [v8 dateInterval];
      break;
  }

LABEL_13:

  return v10;
}

- (void)_forceConfigurationSyncIfNeededWithUpdateResult:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [a3 assertions];
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v5)
  {

    goto LABEL_26;
  }

  v7 = v5;
  v8 = *v41;
  *&v6 = 138412546;
  v37 = v6;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v11 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEBUG))
      {
        v23 = v11;
        v24 = [v10 source];
        v25 = [v24 deviceIdentifier];
        *buf = v37;
        v45 = v25;
        v46 = 2112;
        v47 = v10;
        _os_log_debug_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEBUG, "Checking configuration from %@ for %@", buf, 0x16u);
      }

      v12 = [v10 source];
      v13 = [v12 deviceIdentifier];

      if (v13)
      {
        v14 = [v10 details];
        v15 = [v14 modeIdentifier];

        v16 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:v15 withError:0];
        if (v16)
        {
          v17 = v16;
          v18 = [v10 details];
          v19 = [v18 modeConfigurationModifiedDate];

          v20 = [v17 lastModified];
          [v19 timeIntervalSinceDate:v20];
          v22 = v21;

          if (v22 <= 1.0)
          {

            continue;
          }

          v28 = v15;
          v29 = DNDSLogGeneral;
          if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = [v17 lastModified];
            *buf = 138412802;
            v45 = v28;
            v46 = 2112;
            v47 = v19;
            v48 = 2112;
            v49 = v31;
            _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Configuration for %@ is out of date. %@ < %@", buf, 0x20u);
          }
        }

        else
        {
          v26 = v15;
          v27 = DNDSLogGeneral;
          if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v26;
            _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Unable to find configuration for %@. It may not yet exist on this device.", buf, 0xCu);
          }
        }

        goto LABEL_22;
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v15 = 0;
LABEL_22:

  if (v15)
  {
    v32 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v15;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Requesting configuration sync for stale mode %@.", buf, 0xCu);
    }

    [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
    syncEngine = self->_syncEngine;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __62__DNDSServer__forceConfigurationSyncIfNeededWithUpdateResult___block_invoke;
    v38[3] = &unk_278F8C2A0;
    v39 = v15;
    v34 = v15;
    [(DNDSSyncEngine *)syncEngine fetchChanges:1 withCompletionHandler:v38];

    goto LABEL_28;
  }

LABEL_26:
  v35 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_INFO, "Mode configuration is up to date.", buf, 2u);
  }

LABEL_28:
  v36 = *MEMORY[0x277D85DE8];
}

void __62__DNDSServer__forceConfigurationSyncIfNeededWithUpdateResult___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogGeneral;
  if (v3)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      __62__DNDSServer__forceConfigurationSyncIfNeededWithUpdateResult___block_invoke_cold_1(a1, v3, v4);
    }
  }

  else if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Updated configurations succesfully synced for %@.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:(id)a3 error:(id *)a4
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = [(DNDSModeAssertionManager *)self->_modeAssertionManager updateModeAssertionsWithContextHandler:a3 error:a4];
  v5 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 assertions];
    *buf = 138543362;
    v98 = v7;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Mode assertion update result:\n assertions=%{public}@", buf, 0xCu);
  }

  v8 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v4 invalidations];
    *buf = 138543362;
    v98 = v10;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Mode assertion update result:\n invalidations=%{public}@", buf, 0xCu);
  }

  v11 = [v4 assertions];
  if ([v11 count])
  {

    goto LABEL_8;
  }

  v12 = [v4 invalidations];
  v13 = [v12 count];

  if (v13)
  {
LABEL_8:
    v14 = self;
    [(DNDSRemoteServiceProvider *)self->_serviceProvider handleModeAssertionUpdateResult:v4];
    [(DNDSServer *)self _forceConfigurationSyncIfNeededWithUpdateResult:v4];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = [v4 invalidations];
    v15 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
    v69 = v4;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v71 = 0;
      v77 = 0;
      v19 = 0;
      v73 = 0;
      v80 = *v92;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v92 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v91 + 1) + 8 * i);
          clientDetailsProvider = v14->_clientDetailsProvider;
          v23 = [v21 source];
          v24 = [v23 clientIdentifier];
          v25 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:v24];

          if ([v25 isUserInteractionClient])
          {
            v71 = 1;
          }

          else
          {
            [v21 reason];
            [v21 reasonOverride];
            v26 = DNDResolvedModeAssertionInvalidationReason();
            if (v26 > 8 || ((1 << v26) & 0x182) == 0)
            {
              v19 = 1;
            }

            else
            {
              v28 = [v21 assertion];
              v29 = [v28 source];
              v30 = [v29 clientIdentifier];
              v78 = v30 != @"com.apple.donotdisturb.private.schedule";
              v31 = v18;
              v32 = v16;
              v33 = v19;
              v34 = v30 == @"com.apple.donotdisturb.private.schedule";

              v35 = v73 | v34;
              v36 = v33;
              v16 = v32;
              v18 = v31;
              v73 = v35;
              v19 = v36 | v78;
              v14 = self;
              v77 = 1;
            }
          }

          v37 = [v21 source];
          v38 = [v37 deviceIdentifier];
          v18 |= v38 != 0;

          v17 |= [v25 forcesAssertionStatusUpdate];
        }

        v16 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
      }

      while (v16);
      if (v77)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v4 = v69;
    }

    else
    {
      v17 = 0;
      LOBYTE(v18) = 0;
      v71 = 0;
      LOBYTE(v19) = 0;
      LOBYTE(v73) = 0;
      v39 = 2;
    }

    v68 = v19;

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v40 = [v4 assertions];
    v41 = [v40 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v41)
    {
      v42 = v41;
      v72 = v40;
      v67 = v39;
      v79 = 0;
      v81 = 0;
      v70 = 0;
      v43 = 0;
      obja = *v88;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v88 != obja)
          {
            objc_enumerationMutation(v72);
          }

          v45 = *(*(&v87 + 1) + 8 * j);
          v46 = v14->_clientDetailsProvider;
          v47 = [v45 source];
          v48 = [v47 clientIdentifier];
          v49 = [(DNDSClientDetailsProvider *)v46 clientDetailsForIdentifier:v48];

          if ([v49 isUserInteractionClient])
          {
            v70 = 1;
          }

          else
          {
            v50 = [v45 source];
            v51 = [v50 clientIdentifier];
            v52 = v51 != @"com.apple.donotdisturb.private.schedule";
            v53 = v51 == @"com.apple.donotdisturb.private.schedule";

            v81 |= v53;
            v14 = self;
            v79 |= v52;
          }

          v54 = [v45 source];
          v55 = [v54 deviceIdentifier];
          v43 |= v55 != 0;

          v17 |= [v49 forcesAssertionStatusUpdate];
        }

        v42 = [v72 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v42);

      if ((v70 | v71))
      {
        v56 = 1;
        v4 = v69;
LABEL_49:
        v60 = 1;
        if ((v43 | v18))
        {
          v60 = 2;
        }

        v61 = v14;
        queue = v14->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __86__DNDSServer__updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler_error___block_invoke;
        block[3] = &unk_278F8C2C8;
        block[4] = v61;
        v84 = v56;
        v85 = v60;
        if (v17)
        {
          v63 = 3;
        }

        else
        {
          v63 = 1;
        }

        v86 = v63;
        v83 = v4;
        dispatch_async(queue, block);

        goto LABEL_55;
      }

      v4 = v69;
      v39 = v67;
      v57 = v79;
      v58 = v81;
    }

    else
    {

      v43 = 0;
      if (v71)
      {
        v56 = 1;
        goto LABEL_49;
      }

      v57 = 0;
      v58 = 0;
    }

    v59 = 5;
    if (((v58 | v73) & 1) == 0)
    {
      v59 = v39;
    }

    if ((v57 | v68))
    {
      v56 = 6;
    }

    else
    {
      v56 = v59;
    }

    goto LABEL_49;
  }

  v66 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v66, OS_LOG_TYPE_DEFAULT, "Ignored update as it changed nothing", buf, 2u);
  }

LABEL_55:
  v64 = *MEMORY[0x277D85DE8];

  return v4;
}

void __86__DNDSServer__updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:*(a1 + 48) source:*(a1 + 56) options:*(a1 + 64)];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__DNDSServer__updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler_error___block_invoke_2;
  aBlock[3] = &unk_278F8C140;
  v4 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v2[2](v2, *(*(a1 + 32) + 208));
  v2[2](v2, *(*(a1 + 32) + 216));
}

void __86__DNDSServer__updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 updateForModeAssertionUpdateResult:*(a1 + 32)];
  }
}

- (id)_allModes
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager availableModesFilteringPlaceholders:0 returningError:0];
  v5 = [(DNDSPlaceholderModeManager *)self->_placeholderModeManager placeholderModesWithError:0];
  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isPlaceholder == NO"];
  v21 = [v4 filteredArrayUsingPredicate:?];
  [v3 addObjectsFromArray:?];
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NONE %@.modeIdentifier == modeIdentifier", v4];
  v19 = [v5 filteredArrayUsingPredicate:?];
  [v3 addObjectsFromArray:?];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isPlaceholder == YES"];
  v7 = [v4 filteredArrayUsingPredicate:v6];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %@.modeIdentifier == modeIdentifier", v7];
  v23 = v5;
  v9 = [v5 filteredArrayUsingPredicate:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277D05930] placeholderModeFromMode:*(*(&v24 + 1) + 8 * i)];
        [v3 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_queue_handlePairedDeviceAndSyncSettingsChange
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor cloudDevices];
  v4 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  v5 = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDevice];
  v6 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543874;
    v28 = v5;
    v29 = 2114;
    v30 = v3;
    v31 = 2114;
    v32 = v4;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Current DND sync status: local device=%{public}@, cloud devices=%{public}@, settings=%{public}@", &v27, 0x20u);
  }

  assertionSyncManager = self->_assertionSyncManager;
  self->_assertionSyncManager = 0;

  legacyAssertionSyncManager = self->_legacyAssertionSyncManager;
  self->_legacyAssertionSyncManager = 0;

  settingsSyncManager = self->_settingsSyncManager;
  self->_settingsSyncManager = 0;

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine setPairedDevice:0 syncEnabled:0];
  v10 = [[DNDSIDSSyncService alloc] initWithIDSService:self->_idsCloudService];
  v11 = [MEMORY[0x277D058F8] currentDevice];
  if ([v11 deviceClass] == 1)
  {

LABEL_6:
    if ([v5 deviceClass] == 3 && objc_msgSend(v5, "assertionSyncProtocolVersion") == 1)
    {
      v14 = [[DNDSLegacyAssertionSyncManager alloc] initWithClientDetailsProvider:self->_clientDetailsProvider pairedDevice:v5];
      v15 = self->_legacyAssertionSyncManager;
      self->_legacyAssertionSyncManager = v14;

      v16 = [DNDSLegacySettingsSyncManager sendManagerForPairedDevice:v5];
      v17 = self->_settingsSyncManager;
      self->_settingsSyncManager = v16;
    }

    else
    {
      if ([v5 deviceClass])
      {
        v18 = [[DNDSIDSSyncService alloc] initWithIDSService:self->_idsLocalService];
        v19 = [MEMORY[0x277D058F8] currentDevice];
        if ([v19 deviceClass] == 1)
        {
          v20 = [v5 deviceClass];

          if (v20 == 3)
          {
            if ([v5 configurationSyncProtocolVersion] > 8)
            {
              +[DNDSLegacyAssertionSyncManager cleanupState];
              +[DNDSLegacySettingsSyncManager cleanupState];
            }

            else
            {
              v21 = [DNDSLegacySettingsSyncManager sendManagerForPairedDevice:v5];
              v22 = self->_settingsSyncManager;
              self->_settingsSyncManager = v21;
            }
          }
        }

        else
        {
        }

        goto LABEL_18;
      }

      +[DNDSLegacyAssertionSyncManager cleanupState];
      +[DNDSLegacySettingsSyncManager cleanupState];
    }

    v18 = 0;
LABEL_18:
    v24 = [[DNDSModernAssertionSyncManager alloc] initWithClientDetailsProvider:self->_clientDetailsProvider localSyncService:v18 cloudSyncService:v10 keybag:self->_keybag];
    v25 = self->_assertionSyncManager;
    self->_assertionSyncManager = v24;

    -[DNDSIDSSyncEngine setPairedDevice:syncEnabled:](self->_idsSyncEngine, "setPairedDevice:syncEnabled:", v5, [v4 isPairSyncEnabled]);
    [(DNDSSyncEngine *)self->_syncEngine pairedDeviceDidChange];
    goto LABEL_19;
  }

  v12 = [MEMORY[0x277D058F8] currentDevice];
  v13 = [v12 deviceClass];

  if (v13 == 5)
  {
    goto LABEL_6;
  }

  v23 = [[DNDSModernAssertionSyncManager alloc] initWithClientDetailsProvider:self->_clientDetailsProvider localSyncService:0 cloudSyncService:v10 keybag:self->_keybag];
  v18 = self->_assertionSyncManager;
  self->_assertionSyncManager = v23;
LABEL_19:

  [(DNDSAssertionSyncManager *)self->_assertionSyncManager setDataSource:self];
  [(DNDSAssertionSyncManager *)self->_assertionSyncManager setDelegate:self];
  [(DNDSAssertionSyncManager *)self->_assertionSyncManager resume];
  [(DNDSAssertionSyncManager *)self->_legacyAssertionSyncManager setDataSource:self];
  [(DNDSAssertionSyncManager *)self->_legacyAssertionSyncManager setDelegate:self];
  [(DNDSAssertionSyncManager *)self->_legacyAssertionSyncManager resume];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager setDataSource:self];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager setDelegate:self];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager resume];
  -[DNDSRemoteServiceProvider handleUpdatedPairSyncState:](self->_serviceProvider, "handleUpdatedPairSyncState:", [v4 isPairSyncEnabled]);

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)layoutIsLocked:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 elements];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x277D0ABA0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) identifier];
        v10 = [v9 isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)pairedCloudDevicesForSyncManager:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_24912E000, v0, OS_LOG_TYPE_DEBUG, "Paired cloud devices: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)pairedDevicesForSyncManager:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_24912E000, v0, OS_LOG_TYPE_DEBUG, "Paired devices: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:(void *)a1 updateOutboundModeAssertion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 modeIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_24912E000, v3, OS_LOG_TYPE_FAULT, "Unable to find mode configuration for mode %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:performModeAssertionUpdatesWithHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "Error when performing update for sync manager; manager=%{public}@, error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __50__DNDSServer_syncManager_prepareForSyncToDevices___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error while requesting settings sync for Focus sync. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:didReceiveUpdatedPhoneCallBypassSettings:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error fetching default mode: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncManager:didReceiveUpdatedPhoneCallBypassSettings:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error replacing bypass settings in default mode: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteServiceProvider:setCloudSyncPreferenceEnabled:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Unable to fetch incompatible mode configurations for reset: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__DNDSServer_remoteServiceProvider_allModesReturningError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error fetching changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__DNDSServer_remoteServiceProvider_syncModeConfigurationsReturningError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error sending changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__DNDSServer__forceConfigurationSyncIfNeededWithUpdateResult___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Failed to sync updated configurations for synced %@ assertion. Error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end