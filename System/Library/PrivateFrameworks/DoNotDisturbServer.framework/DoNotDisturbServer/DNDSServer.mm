@interface DNDSServer
- (BOOL)_setDefaultScheduleTriggerWithScheduleSettings:(id)settings;
- (BOOL)_setDimsLockScreenSetting:(unint64_t)setting forModeConfigurationWithIdentifier:(id)identifier;
- (BOOL)_setLostModeState:(unint64_t)state error:(id *)error;
- (BOOL)_setScheduleTrigger:(id)trigger forModeConfigurationWithIdentifier:(id)identifier;
- (BOOL)eventBehaviorResolver:(id)resolver isAvailabilityActiveForBundleIdentifier:(id)identifier;
- (BOOL)isCloudSyncDisabledForSyncManager:(id)manager;
- (BOOL)layoutIsLocked:(id)locked;
- (BOOL)remoteAppConfigurationServiceProvider:(id)provider invalidateAppContextForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider clearSystemConfigurationActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setCloudSyncPreferenceEnabled:(BOOL)enabled withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setScheduleSettings:(id)settings withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider setSystemAction:(id)action forModeIdentifier:(id)identifier withError:(id *)error;
- (BOOL)remoteServiceProvider:(id)provider syncModeConfigurationsReturningError:(id *)error;
- (DNDSServer)init;
- (id)_activeDateIntervalForModeAssertion:(id)assertion currentlyActive:(BOOL)active;
- (id)_allModes;
- (id)_createDefaultModeForWorkoutTriggerIfNecessary;
- (id)_invalidateModeAssertionForClientIdentifier:(id)identifier reason:(unint64_t)reason reasonOverride:(unint64_t)override details:(id)details error:(id *)error;
- (id)_scheduleSettingsForModeConfigurations;
- (id)_scheduleSettingsFromDefaultScheduleTrigger;
- (id)_scheduleSettingsMatchingTrigger:(id)trigger;
- (id)_scheduleTriggerMatchingSettings:(id)settings;
- (id)_stateSystemSnapshot;
- (id)_updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:(id)handler error:(id *)error;
- (id)appForegroundTriggerConfigurationForAppForegroundTriggerManager:(id)manager;
- (id)currentStateForAppFocusConfigurationCoordinator:(id)coordinator;
- (id)currentStateForEventBehaviorResolver:(id)resolver;
- (id)currentStateForLegacyAssertionSyncManager:(id)manager;
- (id)currentStateForSystemFocusConfigurationCoordinator:(id)coordinator;
- (id)drivingModeForDrivingTriggerManager:(id)manager;
- (id)eventBehaviorResolver:(id)resolver bypassSettingsForClientIdentifier:(id)identifier;
- (id)eventBehaviorResolver:(id)resolver configurationForModeIdentifier:(id)identifier;
- (id)gamingModeForGamingTriggerManager:(id)manager;
- (id)hearingTestModeForHearingTestTriggerManager:(id)manager;
- (id)lifetimeMonitor:(id)monitor modeAssertionsWithLifetimeClass:(Class)class;
- (id)lifetimeMonitor:(id)monitor takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error;
- (id)locationTriggerConfigurationForLifetimeMonitor:(id)monitor;
- (id)mindfulnessModeForMindfulnessTriggerManager:(id)manager;
- (id)modesSupportingSmartEntryForSmartTriggerManager:(id)manager;
- (id)pairedCloudDevicesForSyncManager:(id)manager;
- (id)pairedDevicesForSyncManager:(id)manager;
- (id)phoneCallBypassSettingsForSyncManager:(id)manager;
- (id)remoteAppConfigurationServiceProvider:(id)provider getCurrentAppConfigurationForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier withError:(id *)error;
- (id)remoteServiceProvider:(id)provider activeAssertionWithClientIdentifer:(id)identifer error:(id *)error;
- (id)remoteServiceProvider:(id)provider allActiveModeAssertionsWithError:(id *)error;
- (id)remoteServiceProvider:(id)provider allModesReturningError:(id *)error;
- (id)remoteServiceProvider:(id)provider assertionWithClientIdentifer:(id)identifer error:(id *)error;
- (id)remoteServiceProvider:(id)provider availableModesReturningError:(id *)error;
- (id)remoteServiceProvider:(id)provider behaviorSettingsWithError:(id *)error;
- (id)remoteServiceProvider:(id)provider currentStateWithError:(id *)error;
- (id)remoteServiceProvider:(id)provider getAppInfoForBundleIdentifiers:(id)identifiers withError:(id *)error;
- (id)remoteServiceProvider:(id)provider invalidateAllModeAssertionsTakenBeforeDate:(id)date forReason:(unint64_t)reason clientIdentifier:(id)identifier error:(id *)error;
- (id)remoteServiceProvider:(id)provider invalidateModeAssertionWithUUID:(id)d reason:(unint64_t)reason reasonOverride:(unint64_t)override clientIdentifier:(id)identifier error:(id *)error;
- (id)remoteServiceProvider:(id)provider latestInvalidationWithClientIdentifer:(id)identifer error:(id *)error;
- (id)remoteServiceProvider:(id)provider publishStatusKitAvailabilityReturningError:(id *)error;
- (id)remoteServiceProvider:(id)provider resolveBehaviorForEventDetails:(id)details clientDetails:(id)clientDetails date:(id)date error:(id *)error;
- (id)remoteServiceProvider:(id)provider scheduleSettingsWithError:(id *)error;
- (id)remoteServiceProvider:(id)provider takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error;
- (id)scheduleSettingsForSyncManager:(id)manager;
- (id)sleepingModeForSleepingTriggerManager:(id)manager;
- (id)syncManager:(id)manager deviceForDeviceIdentifier:(id)identifier;
- (id)syncManager:(id)manager scheduleSettingsForModeIdentifier:(id)identifier;
- (id)syncManager:(id)manager updateOutboundModeAssertion:(id)assertion;
- (id)triggerManager:(id)manager assertionsWithClientIdentifer:(id)identifer error:(id *)error;
- (id)triggerManager:(id)manager invalidateModeAssertionWithUUID:(id)d reason:(unint64_t)reason reasonOverride:(unint64_t)override clientIdentifier:(id)identifier error:(id *)error;
- (id)triggerManager:(id)manager latestInvalidationWithClientIdentifer:(id)identifer error:(id *)error;
- (id)triggerManager:(id)manager takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error;
- (id)workoutModeForWorkoutTriggerManager:(id)manager;
- (void)_forceConfigurationSyncIfNeededWithUpdateResult:(id)result;
- (void)_handleSignificantTimeChange;
- (void)_migrateBypassSettingsIfNeeded;
- (void)_migrateDefaultDoNotDisturbModeIfNeeded;
- (void)_migrateReduceInterruptionsIfNeeded;
- (void)_queue_handlePairedDeviceAndSyncSettingsChange;
- (void)_queue_resume;
- (void)_queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:(unint64_t)reason source:(int64_t)source options:(int64_t)options;
- (void)activeAssertionsDidChangeForLifetimeMonitor:(id)monitor;
- (void)appFocusConfigurationCoordinator:(id)coordinator didUpdateAppConfigurationContextForModeIdentifier:(id)identifier;
- (void)globalConfigurationManager:(id)manager didUpdateModesCanImpactAvailabilitySetting:(BOOL)setting;
- (void)globalConfigurationManager:(id)manager didUpdatePhoneCallBypassSettings:(id)settings;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)lifetimeMonitor:(id)monitor lifetimeDidExpireForAssertionUUIDs:(id)ds expirationDate:(id)date;
- (void)modeConfigurationManager:(id)manager didModifyAvailableMode:(id)mode;
- (void)modeConfigurationManager:(id)manager didModifyExceptionsForContacts:(id)contacts forModeConfiguration:(id)configuration;
- (void)modeConfigurationManager:(id)manager didUpdateAvailableModes:(id)modes;
- (void)pairedDeviceStateMonitor:(id)monitor cloudPairingChangedFromDevices:(id)devices toDevices:(id)toDevices;
- (void)pairedDeviceStateMonitor:(id)monitor pairingChangedFromDevice:(id)device toDevice:(id)toDevice;
- (void)reachabilityChangedTo:(BOOL)to;
- (void)remoteServiceProvider:(id)provider didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier;
- (void)resume;
- (void)setWorkoutTriggerEnabled:(BOOL)enabled forWorkoutTriggerManager:(id)manager;
- (void)settingsManager:(id)manager didReceiveUpdatedBehaviorSettings:(id)settings;
- (void)settingsManager:(id)manager didReceiveUpdatedPhoneCallBypassSettings:(id)settings;
- (void)settingsManager:(id)manager didReceiveUpdatedScheduleSettings:(id)settings;
- (void)settingsManager:(id)manager didReceiveUpdatedSyncSettings:(id)settings;
- (void)syncManager:(id)manager didReceiveUpdatedPhoneCallBypassSettings:(id)settings;
- (void)syncManager:(id)manager didReceiveUpdatedScheduleSettings:(id)settings;
- (void)syncManager:(id)manager performModeAssertionUpdatesWithHandler:(id)handler;
- (void)syncManager:(id)manager prepareForSyncToDevices:(id)devices;
@end

@implementation DNDSServer

uint64_t __18__DNDSServer_init__block_invoke_128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 layoutIsLocked:?] ^ 1;

  return [v1 setUILockState:v2 error:0];
}

- (id)triggerManager:(id)manager assertionsWithClientIdentifer:(id)identifer error:(id *)error
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:identifer];
  v7 = MEMORY[0x277D05938];
  identifiers = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionsWithClientIdentifiers:identifiers];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v9];

  return v10;
}

- (id)triggerManager:(id)manager takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error
{
  detailsCopy = details;
  identifierCopy = identifier;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __114__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A128;
  v25 = identifierCopy;
  v26 = detailsCopy;
  v11 = detailsCopy;
  v12 = identifierCopy;
  v13 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:error];
  assertions = [v13 assertions];
  firstObject = [assertions firstObject];

  clientDetailsProvider = self->_clientDetailsProvider;
  source = [firstObject source];
  clientIdentifier = [source clientIdentifier];
  v19 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];

  [(DNDSMetricsManager *)self->_metricsManager assertionTaken:firstObject withClientDetails:v19 lockState:[(DNDSServer *)self lockState]];

  return firstObject;
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

- (id)triggerManager:(id)manager invalidateModeAssertionWithUUID:(id)d reason:(unint64_t)reason reasonOverride:(unint64_t)override clientIdentifier:(id)identifier error:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __139__DNDSServer_DNDSAutomationManagerDataSource__triggerManager_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A150;
  v25 = dCopy;
  v26 = identifierCopy;
  reasonCopy = reason;
  overrideCopy = override;
  v15 = identifierCopy;
  v16 = dCopy;
  v17 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:error];
  invalidations = [v17 invalidations];
  firstObject = [invalidations firstObject];

  return firstObject;
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

- (id)triggerManager:(id)manager latestInvalidationWithClientIdentifer:(id)identifer error:(id *)error
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:identifer];
  v7 = MEMORY[0x277D05968];
  identifiers = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:identifiers];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionInvalidationsMatchingPredicate:v9];
  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)appForegroundTriggerConfigurationForAppForegroundTriggerManager:(id)manager
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

- (id)drivingModeForDrivingTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)gamingModeForGamingTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)hearingTestModeForHearingTestTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)mindfulnessModeForMindfulnessTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)sleepingModeForSleepingTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)modesSupportingSmartEntryForSmartTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (id)workoutModeForWorkoutTriggerManager:(id)manager
{
  managerCopy = manager;
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

- (void)setWorkoutTriggerEnabled:(BOOL)enabled forWorkoutTriggerManager:(id)manager
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  v6 = [(DNDSServer *)self workoutModeForWorkoutTriggerManager:manager];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D059E8]);
    if (enabledCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v8 initWithEnabledSetting:v9];
    triggers = [v7 triggers];
    v12 = [triggers bs_filter:&__block_literal_global_31];
    v13 = [v12 mutableCopy];

    [v13 addObject:v10];
    [v7 setTriggers:v13];
    modeConfigurationManager = self->_modeConfigurationManager;
    v19 = 0;
    LOBYTE(triggers) = [(DNDSModeConfigurationManager *)modeConfigurationManager setModeConfiguration:v7 withError:&v19];
    v15 = v19;
    if ((triggers & 1) == 0)
    {
      v16 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"N";
        *buf = 138543874;
        if (enabledCopy)
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

- (void)globalConfigurationManager:(id)manager didUpdatePhoneCallBypassSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = managerCopy;
    v12 = 2114;
    v13 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND phone call bypass settings changed, will refresh state; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedPhoneCallBypassSettings:settingsCopy];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)globalConfigurationManager:(id)manager didUpdateModesCanImpactAvailabilitySetting:(BOOL)setting
{
  settingCopy = setting;
  v6 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  isCloudSyncEnabled = [v6 isCloudSyncEnabled];

  if (settingCopy)
  {
    if (isCloudSyncEnabled)
    {
      userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
      relevantContacts = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager relevantContacts];
      allObjects = [relevantContacts allObjects];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __124__DNDSServer_DNDSGlobalConfigurationManagerDelegate__globalConfigurationManager_didUpdateModesCanImpactAvailabilitySetting___block_invoke;
      v13[3] = &unk_278F8C058;
      v13[4] = self;
      [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator resumeUpdatingInvitationsForContacts:allObjects completionHandler:v13];
    }
  }

  else if (isCloudSyncEnabled)
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
    mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
    v2->_lostModeState = [mEMORY[0x277D08F78] lostModeIsActive];

    v17 = objc_alloc_init(DNDSIntelligentBehaviorResolver);
    intelligentBehaviorResolver = v2->_intelligentBehaviorResolver;
    v2->_intelligentBehaviorResolver = v17;

    v19 = objc_alloc_init(DNDSAuxiliaryStateMonitor);
    auxiliaryStateMonitor = v2->_auxiliaryStateMonitor;
    v2->_auxiliaryStateMonitor = v19;

    v21 = [DNDSModeAssertionManager alloc];
    dnds_localAssertionBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_localAssertionBackingStoreFileURL];
    v23 = [(DNDSModeAssertionManager *)v21 initWithBackingStoreURL:dnds_localAssertionBackingStoreFileURL clientDetailsProvider:v2->_clientDetailsProvider];
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
    currentDevice = [MEMORY[0x277D058F8] currentDevice];
    if ([currentDevice deviceClass] == 5 || objc_msgSend(currentDevice, "deviceClass") == 1)
    {
      v46 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.donotdisturb"];
      idsLocalService = v2->_idsLocalService;
      v2->_idsLocalService = v46;
    }

    v145 = currentDevice;
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
    dnds_idsSyncEngineMetadataFileURL = [MEMORY[0x277CBEBC0] dnds_idsSyncEngineMetadataFileURL];
    v57 = [(DNDSIDSSyncEngineMetadataStore *)v55 initWithURL:dnds_idsSyncEngineMetadataFileURL];

    v142 = v57;
    v143 = v54;
    v58 = [[DNDSIDSSyncEngine alloc] initWithMetadataStore:v57 syncService:v54 keybag:v2->_keybag];
    idsSyncEngine = v2->_idsSyncEngine;
    v2->_idsSyncEngine = v58;

    dnds_globalConfigurationBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_globalConfigurationBackingStoreFileURL];
    v61 = [DNDSGlobalConfiguration backingStoreWithFileURL:dnds_globalConfigurationBackingStoreFileURL];

    v141 = v61;
    v140 = [[DNDSMemoryCachedBackingStore alloc] initWithUnderlyingBackingStore:v61];
    v62 = [[DNDSGlobalConfigurationStore alloc] initWithBackingStore:v140 syncEngine:v2->_syncEngine idsSyncEngine:v2->_idsSyncEngine];
    globalConfigurationStore = v2->_globalConfigurationStore;
    v2->_globalConfigurationStore = v62;

    v64 = [[DNDSGlobalConfigurationManager alloc] initWithBackingStore:v2->_globalConfigurationStore];
    globalConfigurationManager = v2->_globalConfigurationManager;
    v2->_globalConfigurationManager = v64;

    [(DNDSGlobalConfigurationManager *)v2->_globalConfigurationManager setDelegate:v2];
    dnds_modeConfigurationsBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsBackingStoreFileURL];
    dnds_modeConfigurationsSecureBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsSecureBackingStoreFileURL];
    v68 = [DNDSModeConfigurationsRecord backingStoreWithFileURL:dnds_modeConfigurationsBackingStoreFileURL secureFileURL:dnds_modeConfigurationsSecureBackingStoreFileURL];

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
    dnds_placeholderModesLocalBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_placeholderModesLocalBackingStoreFileURL];
    v74 = [DNDSPlaceholderModesRecord backingStoreWithFileURL:dnds_placeholderModesLocalBackingStoreFileURL];

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
    dnds_settingsBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_settingsBackingStoreFileURL];
    v101 = [DNDSSettingsRecord backingStoreWithFileURL:dnds_settingsBackingStoreFileURL];

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

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = __18__DNDSServer_init__block_invoke_128;
    v148[3] = &unk_278F8C080;
    v132 = v2;
    v149 = v132;
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v148];
    v133 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
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

- (BOOL)_setLostModeState:(unint64_t)state error:(id *)error
{
  [(DNDSServer *)self setLostModeState:state, error];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DNDSServer__setLostModeState_error___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (id)currentStateForEventBehaviorResolver:(id)resolver
{
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = fallbackState;

  return v6;
}

- (id)eventBehaviorResolver:(id)resolver bypassSettingsForClientIdentifier:(id)identifier
{
  identifier = [(DNDSServer *)self currentStateForEventBehaviorResolver:resolver, identifier];
  activeModeConfiguration = [identifier activeModeConfiguration];

  configuration = [activeModeConfiguration configuration];
  phoneCallBypassSettings = [configuration phoneCallBypassSettings];

  return phoneCallBypassSettings;
}

- (id)eventBehaviorResolver:(id)resolver configurationForModeIdentifier:(id)identifier
{
  modeConfigurationManager = self->_modeConfigurationManager;
  v13 = 0;
  v6 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:identifier withError:&v13];
  v7 = v13;
  configuration = [v6 configuration];
  v9 = configuration;
  if (configuration)
  {
    fallbackConfiguration = configuration;
  }

  else
  {
    fallbackConfiguration = [(DNDSGlobalConfigurationManager *)self->_globalConfigurationManager fallbackConfiguration];
  }

  v11 = fallbackConfiguration;

  return v11;
}

- (BOOL)eventBehaviorResolver:(id)resolver isAvailabilityActiveForBundleIdentifier:(id)identifier
{
  identifier = [(DNDSServer *)self currentStateForEventBehaviorResolver:resolver, identifier];
  activeModeConfiguration = [identifier activeModeConfiguration];
  impactsAvailability = [activeModeConfiguration impactsAvailability];

  return impactsAvailability != 1;
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  [(DNDSServer *)self _migrateDefaultDoNotDisturbModeIfNeeded];
  if (+[DNDSPlatformEligibility isIntelligenceAvailable])
  {

    [(DNDSServer *)self _migrateReduceInterruptionsIfNeeded];
  }
}

- (id)lifetimeMonitor:(id)monitor modeAssertionsWithLifetimeClass:(Class)class
{
  v5 = [MEMORY[0x277D05938] predicateForModeAssertionsWithLifetimeClass:class];
  v6 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v5];

  return v6;
}

- (id)locationTriggerConfigurationForLifetimeMonitor:(id)monitor
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
  regions = [(DNDSLocationTriggerConfiguration *)v6 regions];
  if ([regions count])
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

- (void)activeAssertionsDidChangeForLifetimeMonitor:(id)monitor
{
  v14 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  v5 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = monitorCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Lifetime monitor says active assertions changed; monitor=%p", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DNDSServer_activeAssertionsDidChangeForLifetimeMonitor___block_invoke;
  v9[3] = &unk_278F89F48;
  v10 = monitorCopy;
  selfCopy = self;
  v7 = monitorCopy;
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

- (id)lifetimeMonitor:(id)monitor takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error
{
  detailsCopy = details;
  identifierCopy = identifier;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __82__DNDSServer_lifetimeMonitor_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
  v24 = &unk_278F8A128;
  v25 = identifierCopy;
  v26 = detailsCopy;
  v11 = detailsCopy;
  v12 = identifierCopy;
  v13 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v21 error:error];
  assertions = [v13 assertions];
  firstObject = [assertions firstObject];

  clientDetailsProvider = self->_clientDetailsProvider;
  source = [firstObject source];
  clientIdentifier = [source clientIdentifier];
  v19 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];

  [(DNDSMetricsManager *)self->_metricsManager assertionTaken:firstObject withClientDetails:v19 lockState:[(DNDSServer *)self lockState]];

  return firstObject;
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

- (void)lifetimeMonitor:(id)monitor lifetimeDidExpireForAssertionUUIDs:(id)ds expirationDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  dsCopy = ds;
  dateCopy = date;
  if ([dsCopy count])
  {
    v11 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = monitorCopy;
      v23 = 2114;
      v24 = dsCopy;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Lifetime monitor says UUIDs should expire; monitor=%{public}@, UUIDs=%{public}@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DNDSServer_lifetimeMonitor_lifetimeDidExpireForAssertionUUIDs_expirationDate___block_invoke;
    v16[3] = &unk_278F8C0A8;
    v17 = dsCopy;
    v18 = monitorCopy;
    selfCopy = self;
    v20 = dateCopy;
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

- (id)remoteServiceProvider:(id)provider resolveBehaviorForEventDetails:(id)details clientDetails:(id)clientDetails date:(id)date error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  metricsManager = self->_metricsManager;
  dateCopy = date;
  clientDetailsCopy = clientDetails;
  detailsCopy = details;
  [(DNDSMetricsManager *)metricsManager sendMetricsHeartbeatsIfNeeded];
  v15 = [(DNDSEventBehaviorResolver *)self->_eventBehaviorResolver resolveBehaviorForEventDetails:detailsCopy clientDetails:clientDetailsCopy date:dateCopy error:error];

  eventDetails = [v15 eventDetails];
  bundleIdentifier = [eventDetails bundleIdentifier];

  if (bundleIdentifier)
  {
    v18 = DNDSPowerLogInterruptionSuppressionForDNDInterruptionSuppression([v15 interruptionSuppression]);
    v19 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_INFO))
    {
      v22 = 138543618;
      v23 = bundleIdentifier;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_INFO, "Notifying PowerLog of Focus interruption suppression event: bundleIdentifier=%{public}@ suppression=%ld", &v22, 0x16u);
    }

    DNDSPowerLogFocusInterruptionSuppresionEvent(bundleIdentifier, v18);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)remoteServiceProvider:(id)provider activeAssertionWithClientIdentifer:(id)identifer error:(id *)error
{
  identiferCopy = identifer;
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  lastSystemSnapshot = [(DNDSStateProvider *)self->_stateProvider lastSystemSnapshot];
  activeModeIdentifier = [lastCalculatedState activeModeIdentifier];
  assertions = [lastSystemSnapshot assertions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke;
  v20[3] = &unk_278F8AEF8;
  v11 = lastSystemSnapshot;
  v21 = v11;
  v12 = activeModeIdentifier;
  v22 = v12;
  v13 = [assertions bs_filter:v20];

  if ([v13 count] < 2)
  {
    firstObject = [v13 firstObject];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__DNDSServer_remoteServiceProvider_activeAssertionWithClientIdentifer_error___block_invoke_2;
    v18[3] = &unk_278F8A0B0;
    v19 = identiferCopy;
    v14 = [v13 bs_filter:v18];
    if ([v14 count] == 1)
    {
      firstObject = [v14 firstObject];
    }

    else
    {
      v16 = [v13 sortedArrayUsingComparator:&__block_literal_global_145];
      firstObject = [v16 lastObject];
    }
  }

  return firstObject;
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

- (id)remoteServiceProvider:(id)provider assertionWithClientIdentifer:(id)identifer error:(id *)error
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:identifer];
  v7 = MEMORY[0x277D05938];
  identifiers = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionsWithClientIdentifiers:identifiers];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionsMatchingPredicate:v9];
  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)remoteServiceProvider:(id)provider takeModeAssertionWithDetails:(id)details clientIdentifier:(id)identifier error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  identifierCopy = identifier;
  modeConfigurationManager = self->_modeConfigurationManager;
  modeIdentifier = [detailsCopy modeIdentifier];
  v13 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:modeIdentifier withError:error];

  if (v13)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __88__DNDSServer_remoteServiceProvider_takeModeAssertionWithDetails_clientIdentifier_error___block_invoke;
    v32 = &unk_278F8A128;
    v33 = identifierCopy;
    v34 = detailsCopy;
    v14 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v29 error:error];
    assertions = [v14 assertions];
    firstObject = [assertions firstObject];

    clientDetailsProvider = self->_clientDetailsProvider;
    source = [firstObject source];
    clientIdentifier = [source clientIdentifier];
    v20 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];

    [(DNDSMetricsManager *)self->_metricsManager assertionTaken:firstObject withClientDetails:v20 lockState:[(DNDSServer *)self lockState]];
  }

  else
  {
    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D05840];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"No mode configuration found for mode identifier.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v21 errorWithDomain:v22 code:1003 userInfo:v23];
    }

    v24 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      modeIdentifier2 = [detailsCopy modeIdentifier];
      *buf = 138543362;
      v36 = modeIdentifier2;
      _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "No mode configuration found for mode identifier: modeIdentifier=%{public}@", buf, 0xCu);
    }

    firstObject = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return firstObject;
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

- (id)remoteServiceProvider:(id)provider invalidateModeAssertionWithUUID:(id)d reason:(unint64_t)reason reasonOverride:(unint64_t)override clientIdentifier:(id)identifier error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = *MEMORY[0x277D05870];
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v15 = identifierCopy;
  modeAssertionManager = self->_modeAssertionManager;
  v17 = MEMORY[0x277D05938];
  v42[0] = dCopy;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v19 = [v17 predicateForModeAssertionsWithUUIDs:v18];
  v20 = [(DNDSModeAssertionManager *)modeAssertionManager modeAssertionsMatchingPredicate:v19];
  firstObject = [v20 firstObject];

  source = [firstObject source];
  clientIdentifier = [source clientIdentifier];

  if ([clientIdentifier hasSuffix:@".private.schedule"])
  {
    v24 = DNDSLogServiceProvider;
    if (os_log_type_enabled(DNDSLogServiceProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = v15;
      v40 = 2114;
      v41 = clientIdentifier;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Overriding invalidation client (%{public}@) with assertion client (%{public}@)", buf, 0x16u);
    }

    firstObject2 = [(DNDSServer *)self _invalidateModeAssertionForClientIdentifier:clientIdentifier reason:reason reasonOverride:override details:0 error:error];
  }

  else
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __113__DNDSServer_remoteServiceProvider_invalidateModeAssertionWithUUID_reason_reasonOverride_clientIdentifier_error___block_invoke;
    v33 = &unk_278F8A150;
    v34 = dCopy;
    v35 = v15;
    reasonCopy = reason;
    overrideCopy = override;
    v26 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:&v30 error:error];
    invalidations = [v26 invalidations];
    firstObject2 = [invalidations firstObject];
  }

  v28 = *MEMORY[0x277D85DE8];

  return firstObject2;
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

- (id)_invalidateModeAssertionForClientIdentifier:(id)identifier reason:(unint64_t)reason reasonOverride:(unint64_t)override details:(id)details error:(id *)error
{
  identifierCopy = identifier;
  detailsCopy = details;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__DNDSServer__invalidateModeAssertionForClientIdentifier_reason_reasonOverride_details_error___block_invoke;
  v20[3] = &unk_278F8C0D0;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = detailsCopy;
  reasonCopy = reason;
  overrideCopy = override;
  v14 = detailsCopy;
  v15 = identifierCopy;
  v16 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v20 error:error];
  invalidations = [v16 invalidations];
  firstObject = [invalidations firstObject];

  return firstObject;
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

- (id)remoteServiceProvider:(id)provider latestInvalidationWithClientIdentifer:(id)identifer error:(id *)error
{
  v6 = [(DNDSClientDetailsProvider *)self->_clientDetailsProvider clientDetailsForIdentifier:identifer];
  v7 = MEMORY[0x277D05968];
  identifiers = [v6 identifiers];
  v9 = [v7 predicateForModeAssertionInvalidationsWithAssertionClientIdentifiers:identifiers];

  v10 = [(DNDSModeAssertionManager *)self->_modeAssertionManager modeAssertionInvalidationsMatchingPredicate:v9];
  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)remoteServiceProvider:(id)provider invalidateAllModeAssertionsTakenBeforeDate:(id)date forReason:(unint64_t)reason clientIdentifier:(id)identifier error:(id *)error
{
  dateCopy = date;
  identifierCopy = identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __112__DNDSServer_remoteServiceProvider_invalidateAllModeAssertionsTakenBeforeDate_forReason_clientIdentifier_error___block_invoke;
  v18[3] = &unk_278F8B298;
  v19 = identifierCopy;
  v20 = dateCopy;
  reasonCopy = reason;
  v13 = dateCopy;
  v14 = identifierCopy;
  v15 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:v18 error:error];
  invalidations = [v15 invalidations];

  return invalidations;
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

- (id)remoteServiceProvider:(id)provider allActiveModeAssertionsWithError:(id *)error
{
  v4 = [(DNDSServer *)self _stateSystemSnapshot:provider];
  assertions = [v4 assertions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__DNDSServer_remoteServiceProvider_allActiveModeAssertionsWithError___block_invoke;
  v9[3] = &unk_278F8A0B0;
  v10 = v4;
  v6 = v4;
  v7 = [assertions bs_filter:v9];

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

- (id)remoteServiceProvider:(id)provider currentStateWithError:(id *)error
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

- (void)appFocusConfigurationCoordinator:(id)coordinator didUpdateAppConfigurationContextForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v6 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v8 = fallbackState;

  activeModeIdentifier = [v8 activeModeIdentifier];
  if (!(identifierCopy | activeModeIdentifier) || activeModeIdentifier && [activeModeIdentifier isEqualToString:identifierCopy])
  {
    [(DNDSRemoteServiceProvider *)self->_serviceProvider handleAppConfigurationContextUpdateForModeIdentifier:identifierCopy];
  }
}

- (id)currentStateForAppFocusConfigurationCoordinator:(id)coordinator
{
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = fallbackState;

  return v6;
}

- (id)currentStateForSystemFocusConfigurationCoordinator:(id)coordinator
{
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = fallbackState;

  return v6;
}

- (id)remoteServiceProvider:(id)provider behaviorSettingsWithError:(id *)error
{
  settingsManager = self->_settingsManager;
  v13 = 0;
  v6 = [(DNDSSettingsManager *)settingsManager behaviorSettingsWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (v6 | v7)
  {
    if (error && v7)
    {
      v10 = v7;
      *error = v8;
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

- (id)remoteServiceProvider:(id)provider scheduleSettingsWithError:(id *)error
{
  v4 = [(DNDSServer *)self _scheduleSettingsFromDefaultScheduleTrigger:provider];
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

- (BOOL)remoteServiceProvider:(id)provider setScheduleSettings:(id)settings withError:(id *)error
{
  v6 = MEMORY[0x277CBEAA8];
  settingsCopy = settings;
  date = [v6 date];
  v9 = [DNDSScheduleSettings settingsWithClientSettings:settingsCopy creationDate:date];

  LOBYTE(self) = [(DNDSServer *)self _setDefaultScheduleTriggerWithScheduleSettings:v9];
  return self;
}

- (id)pairedCloudDevicesForSyncManager:(id)manager
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

- (id)pairedDevicesForSyncManager:(id)manager
{
  v4 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  if (![v4 isCloudSyncEnabled] || (-[DNDSPairedDeviceStateMonitor cloudDevices](self->_pairedDeviceStateMonitor, "cloudDevices"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  if ([v4 isPairSyncEnabled])
  {
    pairedDevice = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDevice];
    if (pairedDevice)
    {
      v7 = [v5 setByAddingObject:pairedDevice];

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

- (id)syncManager:(id)manager deviceForDeviceIdentifier:(id)identifier
{
  v5 = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDeviceForDeviceIdentifier:identifier];
  v6 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  if ([v5 syncServiceType] == 2 && !objc_msgSend(v6, "isCloudSyncEnabled") || objc_msgSend(v5, "syncServiceType") == 1 && (objc_msgSend(v6, "isPairSyncEnabled") & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

- (id)syncManager:(id)manager updateOutboundModeAssertion:(id)assertion
{
  v31 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  details = [assertionCopy details];
  v7 = [details mutableCopy];

  modeConfigurationManager = self->_modeConfigurationManager;
  modeIdentifier = [v7 modeIdentifier];
  v10 = [(DNDSModeConfigurationManager *)modeConfigurationManager modeConfigurationForModeIdentifier:modeIdentifier withError:0];

  if (v10)
  {
    lastModified = [v10 lastModified];
    if (lastModified && ([MEMORY[0x277CBEAA8] distantPast], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(lastModified, "isEqualToDate:", v12), v12, (v13 & 1) == 0))
    {
      lastModified2 = [v10 lastModified];
      [v7 setModeConfigurationModifiedDate:lastModified2];

      v22 = objc_alloc(MEMORY[0x277D05938]);
      uUID = [assertionCopy UUID];
      startDate = [assertionCopy startDate];
      source = [assertionCopy source];
      v17 = [v22 initWithUUID:uUID startDate:startDate details:v7 source:source];

      v26 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_INFO))
      {
        v27 = 138412546;
        v28 = lastModified;
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
        modeIdentifier2 = [v7 modeIdentifier];
        v27 = 138412546;
        v28 = modeIdentifier2;
        v29 = 2112;
        v30 = lastModified;
        _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "%@ configuration doesn't have a useful modification date: %@", &v27, 0x16u);
      }

      v17 = assertionCopy;
    }

    assertionCopy = v17;
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

  return assertionCopy;
}

- (id)syncManager:(id)manager scheduleSettingsForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scheduleSettingsForModeConfigurations = [(DNDSServer *)self _scheduleSettingsForModeConfigurations];
  v7 = [_scheduleSettingsForModeConfigurations objectForKeyedSubscript:identifierCopy];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (BOOL)isCloudSyncDisabledForSyncManager:(id)manager
{
  v3 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  isCloudSyncEnabled = [v3 isCloudSyncEnabled];

  return isCloudSyncEnabled ^ 1;
}

- (void)syncManager:(id)manager performModeAssertionUpdatesWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v13 = 0;
  v7 = [(DNDSServer *)self _updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:handler error:&v13];
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
        v15 = managerCopy;
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

- (void)syncManager:(id)manager prepareForSyncToDevices:(id)devices
{
  if ([devices bs_containsObjectPassingTest:&__block_literal_global_162])
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

- (id)currentStateForLegacyAssertionSyncManager:(id)manager
{
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v4 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v6 = fallbackState;

  return v6;
}

- (id)phoneCallBypassSettingsForSyncManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:*MEMORY[0x277D05830] withError:0];
  configuration = [v5 configuration];
  phoneCallBypassSettings = [configuration phoneCallBypassSettings];

  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = managerCopy;
    v13 = 2114;
    v14 = phoneCallBypassSettings;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sync manager gets bypass settings; manager=%{public}@, settings=%{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return phoneCallBypassSettings;
}

- (id)scheduleSettingsForSyncManager:(id)manager
{
  _scheduleSettingsFromDefaultScheduleTrigger = [(DNDSServer *)self _scheduleSettingsFromDefaultScheduleTrigger];
  v4 = _scheduleSettingsFromDefaultScheduleTrigger;
  if (_scheduleSettingsFromDefaultScheduleTrigger)
  {
    v5 = _scheduleSettingsFromDefaultScheduleTrigger;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D05A80]);
    date = [MEMORY[0x277CBEAA8] date];
    v5 = [DNDSScheduleSettings settingsWithClientSettings:v6 creationDate:date];
  }

  return v5;
}

- (void)syncManager:(id)manager didReceiveUpdatedPhoneCallBypassSettings:(id)settings
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = managerCopy;
    v23 = 2114;
    v24 = settingsCopy;
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
    configuration = [v14 configuration];
    v16 = [configuration mutableCopy];

    [v16 setPhoneCallBypassSettings:settingsCopy];
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

- (void)syncManager:(id)manager didReceiveUpdatedScheduleSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = managerCopy;
    v12 = 2114;
    v13 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received updated schedule settings via sync; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSServer *)self _setDefaultScheduleTriggerWithScheduleSettings:settingsCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)manager didReceiveUpdatedBehaviorSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = managerCopy;
    v14 = 2114;
    v15 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND behavior settings changed, will refresh state; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDSServer_settingsManager_didReceiveUpdatedBehaviorSettings___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedBehaviorSettings:settingsCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)manager didReceiveUpdatedPhoneCallBypassSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = managerCopy;
    v12 = 2114;
    v13 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND phone call bypass settings changed, will refresh state; manager=%{public}@, settings=%{public}@", &v10, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedPhoneCallBypassSettings:settingsCopy];
  [(DNDSSettingsSyncManager *)self->_settingsSyncManager update];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)settingsManager:(id)manager didReceiveUpdatedScheduleSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = managerCopy;
    v14 = 2114;
    v15 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "DND schedule settings changed, will refresh state; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedScheduleSettings:settingsCopy];
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

- (void)settingsManager:(id)manager didReceiveUpdatedSyncSettings:(id)settings
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  settingsCopy = settings;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = managerCopy;
    v22 = 2114;
    v23 = settingsCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sync settings updated; manager=%{public}@, settings=%{public}@", buf, 0x16u);
  }

  -[DNDSSyncEngine setSyncPreferenceEnabled:](self->_syncEngine, "setSyncPreferenceEnabled:", [settingsCopy isCloudSyncEnabled]);
  isCloudSyncEnabled = [settingsCopy isCloudSyncEnabled];
  v10 = [(DNDSGlobalConfigurationManager *)self->_globalConfigurationManager getModesCanImpactAvailabilityReturningError:0];
  if (isCloudSyncEnabled)
  {
    if (v10)
    {
      userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
      relevantContacts = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager relevantContacts];
      allObjects = [relevantContacts allObjects];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60__DNDSServer_settingsManager_didReceiveUpdatedSyncSettings___block_invoke;
      v19[3] = &unk_278F8C058;
      v19[4] = self;
      [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator resumeUpdatingInvitationsForContacts:allObjects completionHandler:v19];
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

- (void)modeConfigurationManager:(id)manager didUpdateAvailableModes:(id)modes
{
  v34 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  modesCopy = modes;
  v8 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = managerCopy;
    v32 = 2114;
    v33 = modesCopy;
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
  _allModes = [(DNDSServer *)self _allModes];
  [(DNDSRemoteServiceProvider *)self->_serviceProvider handleUpdatedModes:_allModes availableModes:modesCopy];
  [(DNDSAppConfigurationManager *)self->_appConfigurationManager refreshWithAvailableModes:modesCopy];
  relevantApplicationIdentifiers = [managerCopy relevantApplicationIdentifiers];
  [(DNDSAppInfoCache *)self->_appInfoCache monitorApplicationIdentifiers:relevantApplicationIdentifiers];
  v11 = MEMORY[0x277D05938];
  v12 = [modesCopy bs_map:&__block_literal_global_168];
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

  assertions = [v16 assertions];
  if ([assertions count])
  {
  }

  else
  {
    [v16 invalidations];
    v26 = modesCopy;
    v18 = v13;
    v19 = relevantApplicationIdentifiers;
    v20 = _allModes;
    v22 = v21 = managerCopy;
    v23 = [v22 count];

    managerCopy = v21;
    _allModes = v20;
    relevantApplicationIdentifiers = v19;
    v13 = v18;
    modesCopy = v26;

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

- (void)modeConfigurationManager:(id)manager didModifyAvailableMode:(id)mode
{
  modeCopy = mode;
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  v7 = lastCalculatedState;
  if (lastCalculatedState)
  {
    fallbackState = lastCalculatedState;
  }

  else
  {
    fallbackState = [MEMORY[0x277D05AA0] fallbackState];
  }

  v9 = fallbackState;

  if ([v9 isActive])
  {
    modeIdentifier = [modeCopy modeIdentifier];
    activeModeIdentifier = [v9 activeModeIdentifier];
    v12 = [modeIdentifier isEqual:activeModeIdentifier];

    if (v12)
    {
      hasLocalChanges = [(DNDSSyncEngine *)self->_syncEngine hasLocalChanges];
      v14 = DNDSLogGeneral;
      v15 = os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT);
      if (hasLocalChanges)
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

- (void)modeConfigurationManager:(id)manager didModifyExceptionsForContacts:(id)contacts forModeConfiguration:(id)configuration
{
  userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
  allKeys = [contacts allKeys];
  [(DNDSUserAvailabilityCoordinator *)userAvailabilityCoordinator sendStatusKitInvitationsForContacts:allKeys completionHandler:0];
}

- (void)pairedDeviceStateMonitor:(id)monitor pairingChangedFromDevice:(id)device toDevice:(id)toDevice
{
  monitorCopy = monitor;
  deviceCopy = device;
  toDeviceCopy = toDevice;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DNDSServer_pairedDeviceStateMonitor_pairingChangedFromDevice_toDevice___block_invoke;
  v15[3] = &unk_278F8AB30;
  v16 = monitorCopy;
  v17 = deviceCopy;
  v18 = toDeviceCopy;
  selfCopy = self;
  v12 = toDeviceCopy;
  v13 = deviceCopy;
  v14 = monitorCopy;
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

- (void)pairedDeviceStateMonitor:(id)monitor cloudPairingChangedFromDevices:(id)devices toDevices:(id)toDevices
{
  v25 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  devicesCopy = devices;
  toDevicesCopy = toDevices;
  v11 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v20 = monitorCopy;
    v21 = 2114;
    v22 = devicesCopy;
    v23 = 2114;
    v24 = toDevicesCopy;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Cloud devices changed; monitor=%{public}@, previousDevices=%{public}@, devices=%{public}@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__DNDSServer_pairedDeviceStateMonitor_cloudPairingChangedFromDevices_toDevices___block_invoke;
  aBlock[3] = &unk_278F8C118;
  aBlock[4] = self;
  v17 = toDevicesCopy;
  v18 = devicesCopy;
  v12 = devicesCopy;
  v13 = toDevicesCopy;
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

- (BOOL)remoteServiceProvider:(id)provider setCloudSyncPreferenceEnabled:(BOOL)enabled withError:(id *)error
{
  enabledCopy = enabled;
  v41 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:!enabledCopy forKey:@"disableCloudSync"];

  if (!enabledCopy)
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
      errorCopy = error;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      allValues = [v10 allValues];
      v14 = [allValues countByEnumeratingWithState:&v33 objects:v40 count:16];
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
              objc_enumerationMutation(allValues);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            if (([v19 isSupportedConfiguration] & 1) == 0)
            {
              v20 = [v19 mutableCopy];
              [v20 setCompatibilityVersion:v17];
              if (([v20 isSupportedConfiguration] & 1) == 0)
              {
                triggers = [v20 triggers];
                v22 = [triggers bs_filter:&__block_literal_global_178];
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

          v15 = [allValues countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v15);
      }

      v12 = 0;
      v10 = v30;
      error = errorCopy;
    }

    if (error)
    {
      v27 = v12;
      *error = v12;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)remoteServiceProvider:(id)provider didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier
{
  userAvailabilityCoordinator = self->_userAvailabilityCoordinator;
  v6 = MEMORY[0x277D058C8];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithBundleID:identifierCopy];

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

- (id)remoteServiceProvider:(id)provider allModesReturningError:(id *)error
{
  v5 = [(DNDSServer *)self _allModes:provider];
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

- (id)remoteServiceProvider:(id)provider availableModesReturningError:(id *)error
{
  [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
  [(DNDSSyncEngine *)self->_syncEngine fetchChanges:0 withCompletionHandler:&__block_literal_global_183];
  modeConfigurationManager = self->_modeConfigurationManager;

  return [(DNDSModeConfigurationManager *)modeConfigurationManager availableModesFilteringPlaceholders:1 returningError:error];
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

- (BOOL)remoteServiceProvider:(id)provider syncModeConfigurationsReturningError:(id *)error
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

- (id)remoteServiceProvider:(id)provider publishStatusKitAvailabilityReturningError:(id *)error
{
  v4 = [(DNDSUserAvailabilityCoordinator *)self->_userAvailabilityCoordinator publishStatusKitAvailabilityReturningError:error];
  identifier = [v4 identifier];

  return identifier;
}

- (id)remoteAppConfigurationServiceProvider:(id)provider getCurrentAppConfigurationForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  activeModeIdentifier = [lastCalculatedState activeModeIdentifier];

  if (!activeModeIdentifier)
  {
    v16 = 0;
LABEL_11:
    v20 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = bundleIdentifierCopy;
      v32 = 2112;
      v33 = activeModeIdentifier;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "No enabled action for %@ in active mode %@", buf, 0x16u);
    }

    if (error && v16)
    {
      v21 = v16;
      action = 0;
      *error = v16;
    }

    else
    {
      if (error)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277D05840];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"No current action is available. Supply the caller with the default.";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *error = [v22 errorWithDomain:v23 code:1007 userInfo:v24];
      }

      action = 0;
    }

    goto LABEL_19;
  }

  v13 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifierCopy];
  appConfigurationManager = self->_appConfigurationManager;
  v27 = 0;
  v15 = [(DNDSAppConfigurationManager *)appConfigurationManager appActionForActionIdentifier:identifierCopy applicationIdentifier:v13 modeIdentifier:activeModeIdentifier error:&v27];
  v16 = v27;
  action = 0;
  if ([v15 isEnabled])
  {
    action = [v15 action];
  }

  v18 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"Found";
    *buf = 138412802;
    if (!action)
    {
      v19 = @"No";
    }

    v31 = v19;
    v32 = 2112;
    v33 = bundleIdentifierCopy;
    v34 = 2112;
    v35 = activeModeIdentifier;
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "%@ action for '%@' in active mode %@", buf, 0x20u);
  }

  if (!action)
  {
    goto LABEL_11;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return action;
}

- (BOOL)remoteAppConfigurationServiceProvider:(id)provider invalidateAppContextForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier withError:(id *)error
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  activeModeIdentifier = [lastCalculatedState activeModeIdentifier];

  if (activeModeIdentifier)
  {
    v12 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifierCopy];
    [(DNDSAppConfigurationManager *)self->_appConfigurationManager invalidateAppContextForActionIdentifier:identifierCopy applicationIdentifier:v12 modeIdentifier:activeModeIdentifier];
  }

  return 1;
}

- (id)remoteServiceProvider:(id)provider getAppInfoForBundleIdentifiers:(id)identifiers withError:(id *)error
{
  appInfoCache = self->_appInfoCache;
  v6 = [MEMORY[0x277CBEB98] setWithArray:identifiers];
  v7 = [(DNDSAppInfoCache *)appInfoCache appInfoForBundleIdentifiers:v6];
  allValues = [v7 allValues];

  return allValues;
}

- (BOOL)remoteServiceProvider:(id)provider setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error
{
  v9 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setPredicate:predicate forActionIdentifier:identifier forApplicationIdentifier:applicationIdentifier modeIdentifier:modeIdentifier];
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  return v10;
}

- (BOOL)remoteServiceProvider:(id)provider setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error
{
  v9 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setTargetContentIdentifierPrefix:prefix forActionIdentifier:identifier forApplicationIdentifier:applicationIdentifier modeIdentifier:modeIdentifier];
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  return v10;
}

- (BOOL)remoteServiceProvider:(id)provider clearSystemConfigurationActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withError:(id *)error
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearSystemActionWithIdentifier:identifier modeIdentifier:modeIdentifier];
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)remoteServiceProvider:(id)provider setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier withError:(id *)error
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  actionCopy = action;
  action = [actionCopy action];

  appConfigurationManager = self->_appConfigurationManager;
  if (action)
  {
    v16 = [(DNDSAppConfigurationManager *)appConfigurationManager setAppAction:actionCopy forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy];
  }

  else
  {
    identifier = [actionCopy identifier];

    v16 = [(DNDSAppConfigurationManager *)appConfigurationManager clearAppActionWithIdentifier:identifier forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy];
    actionCopy = identifier;
  }

  if (error)
  {
    v18 = v16;
    *error = v16;
  }

  return v16 == 0;
}

- (BOOL)remoteServiceProvider:(id)provider clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier withError:(id *)error
{
  v8 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearAppActionWithIdentifier:identifier forApplicationIdentifier:applicationIdentifier modeIdentifier:modeIdentifier];
  if (error)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  return v9;
}

- (BOOL)remoteServiceProvider:(id)provider setSystemAction:(id)action forModeIdentifier:(id)identifier withError:(id *)error
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager setSystemAction:action modeIdentifier:identifier];
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)remoteServiceProvider:(id)provider clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier withError:(id *)error
{
  v7 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager clearSystemActionWithIdentifier:identifier modeIdentifier:modeIdentifier];
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (void)reachabilityChangedTo:(BOOL)to
{
  toCopy = to;
  v5 = DNDSLogGeneral;
  v6 = os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT);
  if (toCopy)
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

- (void)_queue_updateScheduleManagerLifetimeMonitorsAndStateForReason:(unint64_t)reason source:(int64_t)source options:(int64_t)options
{
  v70 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(DNDSScheduleManager *)self->_scheduleManager refresh];
  date = [MEMORY[0x277CBEAA8] date];
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

        [*(*(&v59 + 1) + 8 * v12++) refreshMonitorForDate:date];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v10);
  }

  lastCalculatedState = [(DNDSStateProvider *)self->_stateProvider lastCalculatedState];
  _stateSystemSnapshot = [(DNDSServer *)self _stateSystemSnapshot];
  v15 = [(DNDSStateProvider *)self->_stateProvider recalculateStateForSnapshot:_stateSystemSnapshot];
  activeModeIdentifier = [lastCalculatedState activeModeIdentifier];

  if (activeModeIdentifier)
  {
    activeModeConfiguration = [lastCalculatedState activeModeConfiguration];
  }

  else
  {
    activeModeConfiguration = 0;
  }

  activeModeIdentifier2 = [v15 activeModeIdentifier];

  if (activeModeIdentifier2)
  {
    activeModeConfiguration2 = [v15 activeModeConfiguration];
  }

  else
  {
    activeModeConfiguration2 = 0;
  }

  v52 = activeModeConfiguration2;
  mode = [activeModeConfiguration2 mode];
  v21 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    modeIdentifier = [mode modeIdentifier];
    [mode name];
    v47 = lastCalculatedState;
    v49 = v15;
    v25 = v24 = reason;
    [mode symbolImageName];
    v27 = v26 = activeModeConfiguration;
    *buf = 138412802;
    v64 = modeIdentifier;
    v65 = 2112;
    v66 = v25;
    v67 = 2112;
    v68 = v27;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Sending modeIdentifier: %@, modeName:%@, symbolImageName: %@ to focusStatusDomainPublisher", buf, 0x20u);

    activeModeConfiguration = v26;
    reason = v24;
    lastCalculatedState = v47;
    v15 = v49;
  }

  focusStatusDomainPublisher = self->_focusStatusDomainPublisher;
  if (mode)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __91__DNDSServer__queue_updateScheduleManagerLifetimeMonitorsAndStateForReason_source_options___block_invoke;
    v57[3] = &unk_278F8C168;
    v58 = mode;
    [(STFocusStatusDomainPublisher *)focusStatusDomainPublisher updateDataWithBlock:v57];
  }

  else
  {
    v29 = objc_alloc_init(MEMORY[0x277D6B990]);
    [(STFocusStatusDomainPublisher *)focusStatusDomainPublisher setData:v29];

    mode = 0;
    v30 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "currentData has been set to nil", buf, 2u);
    }
  }

  if (lastCalculatedState && ([lastCalculatedState isEqual:v15] & 1) == 0)
  {
    v31 = mode;
    v48 = activeModeConfiguration;
    v32 = [objc_alloc(MEMORY[0x277D05AB8]) initWithPreviousState:lastCalculatedState state:v15 reason:reason source:source options:options];
    v33 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      previousState = [v32 previousState];
      *buf = 138477827;
      v64 = previousState;
      _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "State was updated: previousState=%{private}@", buf, 0xCu);
    }

    v36 = DNDSLogStateProvider;
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      state = [v32 state];
      *buf = 138477827;
      v64 = state;
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
    v54 = date;
    activeModeConfiguration = v48;
    [DNDSUserAvailabilityCoordinator coordinateUserAvailability:"coordinateUserAvailability:fromConfiguration:toConfiguration:completionHandler:" fromConfiguration:v43 toConfiguration:? completionHandler:?];

    mode = v31;
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
  OUTLINED_FUNCTION_0(&dword_24912E000, self, a3, "Unable to fetch global configuration to migrate bypass settings: error=%{public}@", a5, a6, a7, a8, 2u);
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
    name = [v25[5] name];
    modeIdentifier = [v25[5] modeIdentifier];
    symbolImageName = [v25[5] symbolImageName];
    tintColorName = [v25[5] tintColorName];
    v10 = [v5 initWithName:name modeIdentifier:modeIdentifier symbolImageName:symbolImageName tintColorName:tintColorName semanticType:{objc_msgSend(v25[5], "semanticType")}];

    defaultConfiguration = [MEMORY[0x277D05A20] defaultConfiguration];
    v12 = objc_alloc_init(MEMORY[0x277D059E8]);
    v34[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];

    v14 = [objc_alloc(MEMORY[0x277D05A50]) initWithMode:v10 configuration:defaultConfiguration triggers:v13];
    [v14 setImpactsAvailability:0];
    [v14 setDimsLockScreen:1];
    [v14 setAutomaticallyGenerated:1];
    modeConfigurationManager = self->_modeConfigurationManager;
    v20 = 0;
    LOBYTE(tintColorName) = [(DNDSModeConfigurationManager *)modeConfigurationManager setModeConfiguration:v14 withError:&v20];
    v16 = v20;
    if (tintColorName)
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

- (BOOL)_setDimsLockScreenSetting:(unint64_t)setting forModeConfigurationWithIdentifier:(id)identifier
{
  v6 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:identifier withError:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 setDimsLockScreen:setting];
    v9 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager setModeConfiguration:v8 withError:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_setScheduleTrigger:(id)trigger forModeConfigurationWithIdentifier:(id)identifier
{
  triggerCopy = trigger;
  v7 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:identifier withError:0];
  v8 = v7;
  if (v7)
  {
    triggers = [v7 triggers];
    v10 = [triggers bs_filter:&__block_literal_global_221];

    v11 = [v8 mutableCopy];
    triggers2 = [v11 triggers];
    v13 = [triggers2 arrayByExcludingObjectsInArray:v10];

    v14 = [v13 arrayByAddingObject:triggerCopy];

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

- (BOOL)_setDefaultScheduleTriggerWithScheduleSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [(DNDSServer *)self _scheduleTriggerMatchingSettings:settingsCopy];
  v6 = *MEMORY[0x277D05830];
  if ([(DNDSServer *)self _setScheduleTrigger:v5 forModeConfigurationWithIdentifier:*MEMORY[0x277D05830]])
  {
    v7 = -[DNDSServer _setDimsLockScreenSetting:forModeConfigurationWithIdentifier:](self, "_setDimsLockScreenSetting:forModeConfigurationWithIdentifier:", [settingsCopy bedtimeBehaviorEnabledSetting], v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_scheduleSettingsForModeConfigurations
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationsWithError:0];
  if (v4)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __52__DNDSServer__scheduleSettingsForModeConfigurations__block_invoke;
    v10 = &unk_278F8C228;
    selfCopy = self;
    v12 = dictionary;
    [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  }

  v5 = [dictionary copy];

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
  _scheduleSettingsForModeConfigurations = [(DNDSServer *)self _scheduleSettingsForModeConfigurations];
  v3 = [_scheduleSettingsForModeConfigurations objectForKeyedSubscript:*MEMORY[0x277D05830]];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_scheduleSettingsMatchingTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = [DNDSScheduleSettings alloc];
  enabledSetting = [triggerCopy enabledSetting];
  timePeriod = [triggerCopy timePeriod];
  creationDate = [triggerCopy creationDate];

  v8 = [(DNDSScheduleSettings *)v4 initWithScheduleEnabledSetting:enabledSetting timePeriod:timePeriod bedtimeBehaviorEnabledSetting:0 creationDate:creationDate];

  return v8;
}

- (id)_scheduleTriggerMatchingSettings:(id)settings
{
  v3 = MEMORY[0x277D059C0];
  settingsCopy = settings;
  v5 = [v3 alloc];
  timePeriod = [settingsCopy timePeriod];
  creationDate = [settingsCopy creationDate];
  scheduleEnabledSetting = [settingsCopy scheduleEnabledSetting];

  v9 = [v5 initWithTimePeriod:timePeriod creationDate:creationDate enabledSetting:scheduleEnabledSetting];

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

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
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
      v15 = distantPast;
      do
      {
        if (*v82 != v13)
        {
          objc_enumerationMutation(v10);
        }

        invalidationDate = [*(*(&v81 + 1) + 8 * v14) invalidationDate];
        distantPast = [v15 laterDate:invalidationDate];

        ++v14;
        v15 = distantPast;
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
  selfCopy = self;
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

        activeLifetimeAssertionUUIDs = [*(*(&v75 + 1) + 8 * i) activeLifetimeAssertionUUIDs];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __34__DNDSServer__stateSystemSnapshot__block_invoke_3;
        v73[3] = &unk_278F8C278;
        v74 = v66;
        v25 = [activeLifetimeAssertionUUIDs bs_filter:v73];

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
    p_isa = &selfCopy->super.isa;
    goto LABEL_35;
  }

  v64 = *v70;
  p_isa = &selfCopy->super.isa;
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
      uUID = [v28 UUID];
      v30 = [v68 containsObject:uUID];

      v31 = [p_isa _activeDateIntervalForModeAssertion:v28 currentlyActive:v30];
      uUID2 = [v28 UUID];
      [v65 setObject:v31 forKey:uUID2];

      if (v30)
      {
        startDate = [v31 startDate];
        v34 = [distantPast laterDate:startDate];
LABEL_28:

        distantPast = v34;
        goto LABEL_29;
      }

      details = [v28 details];
      reason = [details reason];

      details2 = [v28 details];
      identifier = [details2 identifier];
      v39 = [identifier isEqualToString:@"schedule"];

      lastSystemSnapshot = [p_isa[21] lastSystemSnapshot];
      activeAssertionUUIDs = [lastSystemSnapshot activeAssertionUUIDs];
      uUID3 = [v28 UUID];
      v43 = [activeAssertionUUIDs containsObject:uUID3];

      if (reason == 2 && v39)
      {
        p_isa = &selfCopy->super.isa;
        if (!v43)
        {
          goto LABEL_29;
        }

        startDate = [MEMORY[0x277CBEAA8] date];
        [v31 duration];
        v45 = [startDate dateByAddingTimeInterval:-v44];
        scheduleLifetimeMonitor = selfCopy->_scheduleLifetimeMonitor;
        details3 = [v28 details];
        lifetime = [details3 lifetime];
        v49 = [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor activeDateIntervalForScheduleLifetime:lifetime assertion:v28 date:v45];

        endDate = [v49 endDate];
        [endDate timeIntervalSinceDate:startDate];
        v52 = v51;

        if (v52 < 0.0)
        {
          endDate2 = [v49 endDate];
          v54 = [distantPast laterDate:endDate2];

          distantPast = v54;
        }

        v34 = distantPast;

        distantPast = v45;
        goto LABEL_28;
      }

      p_isa = &selfCopy->super.isa;
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
  [(DNDSMutableStateProviderSystemSnapshot *)v56 setLastUpdate:distantPast];
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

- (id)_activeDateIntervalForModeAssertion:(id)assertion currentlyActive:(BOOL)active
{
  activeCopy = active;
  assertionCopy = assertion;
  details = [assertionCopy details];
  lifetime = [details lifetime];

  lifetimeType = [lifetime lifetimeType];
  dateInterval = 0;
  if (lifetimeType > 2)
  {
    if (lifetimeType != 5)
    {
      if (lifetimeType == 4)
      {
        startDate = lifetime;
        scheduleLifetimeMonitor = self->_scheduleLifetimeMonitor;
        date = [MEMORY[0x277CBEAA8] date];
        if (activeCopy)
        {
          [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor activeDateIntervalForScheduleLifetime:startDate assertion:assertionCopy date:date];
        }

        else
        {
          [(DNDSScheduleLifetimeMonitor *)scheduleLifetimeMonitor nextActiveDateIntervalForScheduleLifetime:startDate assertion:assertionCopy date:date];
        }
        distantFuture = ;

        if (distantFuture)
        {
          v14 = distantFuture;
        }

        else
        {
          v14 = objc_alloc_init(MEMORY[0x277CCA970]);
        }

        goto LABEL_10;
      }

      if (lifetimeType != 3)
      {
        goto LABEL_13;
      }
    }

LABEL_9:
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [assertionCopy startDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v14 = [v11 initWithStartDate:startDate endDate:distantFuture];
LABEL_10:
    dateInterval = v14;
    goto LABEL_11;
  }

  switch(lifetimeType)
  {
    case 0:
      goto LABEL_9;
    case 1:
      startDate = lifetime;
      calendarEventLifetimeMonitor = self->_calendarEventLifetimeMonitor;
      startDate2 = [assertionCopy startDate];
      dateInterval = [(DNDSCalendarEventLifetimeMonitor *)calendarEventLifetimeMonitor activeDateIntervalForCalendarEventLifetime:startDate assertionStartDate:startDate2];

      if (dateInterval)
      {
        goto LABEL_12;
      }

      v18 = objc_alloc(MEMORY[0x277CCA970]);
      distantFuture = [assertionCopy startDate];
      date2 = distantFuture;
      if (!distantFuture)
      {
        date2 = [MEMORY[0x277CBEAA8] date];
      }

      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
      dateInterval = [v18 initWithStartDate:date2 endDate:distantFuture2];

      if (!distantFuture)
      {
      }

LABEL_11:

LABEL_12:
      break;
    case 2:
      dateInterval = [lifetime dateInterval];
      break;
  }

LABEL_13:

  return dateInterval;
}

- (void)_forceConfigurationSyncIfNeededWithUpdateResult:(id)result
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  assertions = [result assertions];
  v5 = [assertions countByEnumeratingWithState:&v40 objects:v50 count:16];
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
        objc_enumerationMutation(assertions);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v11 = DNDSLogGeneral;
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEBUG))
      {
        v23 = v11;
        source = [v10 source];
        deviceIdentifier = [source deviceIdentifier];
        *buf = v37;
        v45 = deviceIdentifier;
        v46 = 2112;
        v47 = v10;
        _os_log_debug_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEBUG, "Checking configuration from %@ for %@", buf, 0x16u);
      }

      source2 = [v10 source];
      deviceIdentifier2 = [source2 deviceIdentifier];

      if (deviceIdentifier2)
      {
        details = [v10 details];
        modeIdentifier = [details modeIdentifier];

        v16 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager modeConfigurationForModeIdentifier:modeIdentifier withError:0];
        if (v16)
        {
          v17 = v16;
          details2 = [v10 details];
          modeConfigurationModifiedDate = [details2 modeConfigurationModifiedDate];

          lastModified = [v17 lastModified];
          [modeConfigurationModifiedDate timeIntervalSinceDate:lastModified];
          v22 = v21;

          if (v22 <= 1.0)
          {

            continue;
          }

          v28 = modeIdentifier;
          v29 = DNDSLogGeneral;
          if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            lastModified2 = [v17 lastModified];
            *buf = 138412802;
            v45 = v28;
            v46 = 2112;
            v47 = modeConfigurationModifiedDate;
            v48 = 2112;
            v49 = lastModified2;
            _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Configuration for %@ is out of date. %@ < %@", buf, 0x20u);
          }
        }

        else
        {
          v26 = modeIdentifier;
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

    v7 = [assertions countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  modeIdentifier = 0;
LABEL_22:

  if (modeIdentifier)
  {
    v32 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = modeIdentifier;
      _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Requesting configuration sync for stale mode %@.", buf, 0xCu);
    }

    [(DNDSIDSSyncEngine *)self->_idsSyncEngine sync];
    syncEngine = self->_syncEngine;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __62__DNDSServer__forceConfigurationSyncIfNeededWithUpdateResult___block_invoke;
    v38[3] = &unk_278F8C2A0;
    v39 = modeIdentifier;
    v34 = modeIdentifier;
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

- (id)_updateModeAssertionManagerAndRefreshLifetimesAndStateWithHandler:(id)handler error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = [(DNDSModeAssertionManager *)self->_modeAssertionManager updateModeAssertionsWithContextHandler:handler error:error];
  v5 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    assertions = [v4 assertions];
    *buf = 138543362;
    v98 = assertions;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Mode assertion update result:\n assertions=%{public}@", buf, 0xCu);
  }

  v8 = DNDSLogStateProvider;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    invalidations = [v4 invalidations];
    *buf = 138543362;
    v98 = invalidations;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Mode assertion update result:\n invalidations=%{public}@", buf, 0xCu);
  }

  assertions2 = [v4 assertions];
  if ([assertions2 count])
  {

    goto LABEL_8;
  }

  invalidations2 = [v4 invalidations];
  v13 = [invalidations2 count];

  if (v13)
  {
LABEL_8:
    selfCopy3 = self;
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
          clientDetailsProvider = selfCopy3->_clientDetailsProvider;
          source = [v21 source];
          clientIdentifier = [source clientIdentifier];
          v25 = [(DNDSClientDetailsProvider *)clientDetailsProvider clientDetailsForIdentifier:clientIdentifier];

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
              assertion = [v21 assertion];
              source2 = [assertion source];
              clientIdentifier2 = [source2 clientIdentifier];
              v78 = clientIdentifier2 != @"com.apple.donotdisturb.private.schedule";
              v31 = v18;
              v32 = v16;
              v33 = v19;
              v34 = clientIdentifier2 == @"com.apple.donotdisturb.private.schedule";

              v35 = v73 | v34;
              v36 = v33;
              v16 = v32;
              v18 = v31;
              v73 = v35;
              v19 = v36 | v78;
              selfCopy3 = self;
              v77 = 1;
            }
          }

          source3 = [v21 source];
          deviceIdentifier = [source3 deviceIdentifier];
          v18 |= deviceIdentifier != 0;

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
    assertions3 = [v4 assertions];
    v41 = [assertions3 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v41)
    {
      v42 = v41;
      v72 = assertions3;
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
          v46 = selfCopy3->_clientDetailsProvider;
          source4 = [v45 source];
          clientIdentifier3 = [source4 clientIdentifier];
          v49 = [(DNDSClientDetailsProvider *)v46 clientDetailsForIdentifier:clientIdentifier3];

          if ([v49 isUserInteractionClient])
          {
            v70 = 1;
          }

          else
          {
            source5 = [v45 source];
            clientIdentifier4 = [source5 clientIdentifier];
            v52 = clientIdentifier4 != @"com.apple.donotdisturb.private.schedule";
            v53 = clientIdentifier4 == @"com.apple.donotdisturb.private.schedule";

            v81 |= v53;
            selfCopy3 = self;
            v79 |= v52;
          }

          source6 = [v45 source];
          deviceIdentifier2 = [source6 deviceIdentifier];
          v43 |= deviceIdentifier2 != 0;

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

        v61 = selfCopy3;
        queue = selfCopy3->_queue;
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
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(DNDSModeConfigurationManager *)self->_modeConfigurationManager availableModesFilteringPlaceholders:0 returningError:0];
  v5 = [(DNDSPlaceholderModeManager *)self->_placeholderModeManager placeholderModesWithError:0];
  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isPlaceholder == NO"];
  v21 = [v4 filteredArrayUsingPredicate:?];
  [array addObjectsFromArray:?];
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NONE %@.modeIdentifier == modeIdentifier", v4];
  v19 = [v5 filteredArrayUsingPredicate:?];
  [array addObjectsFromArray:?];
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
        [array addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = [array copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_queue_handlePairedDeviceAndSyncSettingsChange
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  cloudDevices = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor cloudDevices];
  v4 = [(DNDSSettingsManager *)self->_settingsManager syncSettingsWithError:0];
  pairedDevice = [(DNDSPairedDeviceStateMonitor *)self->_pairedDeviceStateMonitor pairedDevice];
  v6 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543874;
    v28 = pairedDevice;
    v29 = 2114;
    v30 = cloudDevices;
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
  currentDevice = [MEMORY[0x277D058F8] currentDevice];
  if ([currentDevice deviceClass] == 1)
  {

LABEL_6:
    if ([pairedDevice deviceClass] == 3 && objc_msgSend(pairedDevice, "assertionSyncProtocolVersion") == 1)
    {
      v14 = [[DNDSLegacyAssertionSyncManager alloc] initWithClientDetailsProvider:self->_clientDetailsProvider pairedDevice:pairedDevice];
      v15 = self->_legacyAssertionSyncManager;
      self->_legacyAssertionSyncManager = v14;

      v16 = [DNDSLegacySettingsSyncManager sendManagerForPairedDevice:pairedDevice];
      v17 = self->_settingsSyncManager;
      self->_settingsSyncManager = v16;
    }

    else
    {
      if ([pairedDevice deviceClass])
      {
        v18 = [[DNDSIDSSyncService alloc] initWithIDSService:self->_idsLocalService];
        currentDevice2 = [MEMORY[0x277D058F8] currentDevice];
        if ([currentDevice2 deviceClass] == 1)
        {
          deviceClass = [pairedDevice deviceClass];

          if (deviceClass == 3)
          {
            if ([pairedDevice configurationSyncProtocolVersion] > 8)
            {
              +[DNDSLegacyAssertionSyncManager cleanupState];
              +[DNDSLegacySettingsSyncManager cleanupState];
            }

            else
            {
              v21 = [DNDSLegacySettingsSyncManager sendManagerForPairedDevice:pairedDevice];
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

    -[DNDSIDSSyncEngine setPairedDevice:syncEnabled:](self->_idsSyncEngine, "setPairedDevice:syncEnabled:", pairedDevice, [v4 isPairSyncEnabled]);
    [(DNDSSyncEngine *)self->_syncEngine pairedDeviceDidChange];
    goto LABEL_19;
  }

  currentDevice3 = [MEMORY[0x277D058F8] currentDevice];
  deviceClass2 = [currentDevice3 deviceClass];

  if (deviceClass2 == 5)
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

- (BOOL)layoutIsLocked:(id)locked
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [locked elements];
  v4 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v14 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
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