@interface HDMCProfileExtension
- (HDMCProfileExtension)initWithProfile:(id)profile settingsManager:(id)manager;
- (HDPrimaryProfile)profile;
- (id)evaluatorForRequirement:(id)requirement;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)invalidateAndWait;
- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps;
- (void)watchSettingsCompatibilityManager:(id)manager didChangeUserDefaultsKeys:(id)keys;
- (void)watchSettingsReconciliationManager:(id)manager didReconcileValuesForKeys:(id)keys didUpdateFeatureSetting:(BOOL)setting didUpdateUserDefault:(BOOL)default;
@end

@implementation HDMCProfileExtension

- (HDMCProfileExtension)initWithProfile:(id)profile settingsManager:(id)manager
{
  v111 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  managerCopy = manager;
  v108.receiver = self;
  v108.super_class = HDMCProfileExtension;
  v8 = [(HDMCProfileExtension *)&v108 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  objc_storeWeak(&v8->_profile, profileCopy);
  v10 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  calendarCache = v9->_calendarCache;
  v9->_calendarCache = v10;

  objc_storeStrong(&v9->_settingsManager, manager);
  v12 = [HDMCDeviceScopedStorageManager alloc];
  WeakRetained = objc_loadWeakRetained(&v9->_profile);
  v14 = [(HDMCDeviceScopedStorageManager *)v12 initWithProfile:WeakRetained settingsManager:managerCopy];
  deviceScopedStorageManager = v9->_deviceScopedStorageManager;
  v9->_deviceScopedStorageManager = v14;

  v16 = MEMORY[0x277D106D8];
  v17 = objc_loadWeakRetained(&v9->_profile);
  v18 = [v16 hdmc_menstrualCyclesAvailabilityManagerWithProfile:v17];
  featureAvailabilityManager = v9->_featureAvailabilityManager;
  v9->_featureAvailabilityManager = v18;

  v20 = MEMORY[0x277D106D8];
  v21 = objc_loadWeakRetained(&v9->_profile);
  v22 = [v20 hdmc_heartRateInputAvailabilityManagerWithProfile:v21];
  heartRateFeatureAvailabilityManager = v9->_heartRateFeatureAvailabilityManager;
  v9->_heartRateFeatureAvailabilityManager = v22;

  v24 = objc_loadWeakRetained(&v9->_profile);
  daemon = [v24 daemon];
  behavior = [daemon behavior];
  isCompanionCapable = [behavior isCompanionCapable];

  v28 = MEMORY[0x277CCC2E8];
  if (isCompanionCapable)
  {
    v29 = objc_alloc(MEMORY[0x277D105D8]);
    v30 = objc_loadWeakRetained(&v9->_profile);
    v31 = [v29 initWithProfile:v30 featureAvailabilityExtension:v9->_heartRateFeatureAvailabilityManager loggingCategory:*v28];
    heartRateBackgroundFeatureDeliveryManager = v9->_heartRateBackgroundFeatureDeliveryManager;
    v9->_heartRateBackgroundFeatureDeliveryManager = v31;
  }

  v33 = MEMORY[0x277D106D8];
  v34 = objc_loadWeakRetained(&v9->_profile);
  v35 = [v33 hdmc_wristTemperatureInputAvailabilityManagerWithProfile:v34];
  wristTemperatureInputAvailabilityManager = v9->_wristTemperatureInputAvailabilityManager;
  v9->_wristTemperatureInputAvailabilityManager = v35;

  v37 = objc_loadWeakRetained(&v9->_profile);
  daemon2 = [v37 daemon];
  behavior2 = [daemon2 behavior];
  isCompanionCapable2 = [behavior2 isCompanionCapable];

  if (isCompanionCapable2)
  {
    v41 = objc_alloc(MEMORY[0x277D105D8]);
    v42 = objc_loadWeakRetained(&v9->_profile);
    v43 = [v41 initWithProfile:v42 featureAvailabilityExtension:v9->_wristTemperatureInputAvailabilityManager loggingCategory:*v28];
    wristTemperatureInputBackgroundFeatureDeliveryManager = v9->_wristTemperatureInputBackgroundFeatureDeliveryManager;
    v9->_wristTemperatureInputBackgroundFeatureDeliveryManager = v43;
  }

  v45 = MEMORY[0x277D106D8];
  v46 = objc_loadWeakRetained(&v9->_profile);
  v47 = [v45 hdmc_deviationsAvailabilityManagerWithProfile:v46];
  deviationsFeatureAvailabilityManager = v9->_deviationsFeatureAvailabilityManager;
  v9->_deviationsFeatureAvailabilityManager = v47;

  v49 = objc_alloc(MEMORY[0x277D105D8]);
  v50 = objc_loadWeakRetained(&v9->_profile);
  v51 = [v49 initWithProfile:v50 featureAvailabilityExtension:v9->_deviationsFeatureAvailabilityManager loggingCategory:*v28];
  deviationsBackgroundFeatureDeliveryManager = v9->_deviationsBackgroundFeatureDeliveryManager;
  v9->_deviationsBackgroundFeatureDeliveryManager = v51;

  v53 = [_TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager alloc];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v55 = [(HDMCExperienceModelManager *)v53 initWithNotificationProvider:defaultCenter];
  experienceModelManager = v9->_experienceModelManager;
  v9->_experienceModelManager = v55;

  v57 = [_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager alloc];
  v58 = v9->_experienceModelManager;
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v60 = [(HDMCPregnancyManager *)v57 initWithProfile:profileCopy operation:0 experienceModelProvider:v58 notificationProvider:defaultCenter2 calendarCache:v9->_calendarCache];
  pregnancyManager = v9->_pregnancyManager;
  v9->_pregnancyManager = v60;

  v62 = [[_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator alloc] initWithPregnancyManager:v9->_pregnancyManager];
  pregnancyRequirementEvaluator = v9->_pregnancyRequirementEvaluator;
  v9->_pregnancyRequirementEvaluator = v62;

  v64 = [[_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager alloc] initWithPregnancyManager:v9->_pregnancyManager profile:profileCopy experienceModelProvider:v9->_experienceModelManager];
  pregnancyFeatureAdjustmentManager = v9->_pregnancyFeatureAdjustmentManager;
  v9->_pregnancyFeatureAdjustmentManager = v64;

  v66 = [HDMCAnalysisManager alloc];
  v67 = v9->_deviceScopedStorageManager;
  v68 = [(HDMCAnalysisManager *)v66 initWithProfile:profileCopy settingsManager:v9->_settingsManager featureAvailabilityManager:v9->_featureAvailabilityManager heartRateAvailabilityManager:v9->_heartRateFeatureAvailabilityManager wristTemperatureAvailabilityManager:v9->_wristTemperatureInputAvailabilityManager deviationsAvailabilityManager:v9->_deviationsFeatureAvailabilityManager deviceScopedStorageManager:v67 calendarCache:v9->_calendarCache];
  analysisManager = v9->_analysisManager;
  v9->_analysisManager = v68;

  v70 = [[HDMCNotificationSyncManager alloc] initWithProfile:profileCopy];
  notificationSyncManager = v9->_notificationSyncManager;
  v9->_notificationSyncManager = v70;

  v72 = [[HDMCNotificationManager alloc] initWithProfile:profileCopy analysisManager:v9->_analysisManager settingsManager:v9->_settingsManager deviceScopedStorageManager:v9->_deviceScopedStorageManager notificationSyncManager:v9->_notificationSyncManager];
  notificationManager = v9->_notificationManager;
  v9->_notificationManager = v72;

  if ((HDIsUnitTesting() & 1) == 0)
  {
    [(HDMCNotificationManager *)v9->_notificationManager start];
  }

  v74 = [HDMCAnalysisScheduler alloc];
  daemon3 = [profileCopy daemon];
  v76 = [(HDMCAnalysisScheduler *)v74 initWithDaemon:daemon3 analysisManager:v9->_analysisManager settingsManager:v9->_settingsManager];
  analysisScheduler = v9->_analysisScheduler;
  v9->_analysisScheduler = v76;

  v78 = [[_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager alloc] initWithProfile:profileCopy];
  widgetSchedulingManager = v9->_widgetSchedulingManager;
  v9->_widgetSchedulingManager = v78;

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleWatch])
  {
    goto LABEL_11;
  }

  v81 = objc_loadWeakRetained(&v9->_profile);
  profileType = [v81 profileType];

  if (profileType == 1)
  {
    v83 = [[HDMCAnalyticsManager alloc] initWithProfile:profileCopy analysisManager:v9->_analysisManager heartRateFeatureAvailabilityManager:v9->_heartRateFeatureAvailabilityManager deviationDetectionFeatureAvailabilityManager:v9->_deviationsFeatureAvailabilityManager wristTemperatureInputFeatureAvailabilityManager:v9->_wristTemperatureInputAvailabilityManager pregnancyManager:v9->_pregnancyManager];
    analyticsManager = v9->_analyticsManager;
    v9->_analyticsManager = v83;

    mEMORY[0x277CCDD30] = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v28 healthDataSource:profileCopy];
    v85 = v9->_analysisManager;
    v86 = objc_alloc(MEMORY[0x277D105B0]);
    v87 = *v28;
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __56__HDMCProfileExtension_initWithProfile_settingsManager___block_invoke;
    v106[3] = &unk_27865B418;
    v107 = v85;
    v88 = v85;
    v89 = [v86 initWithProfile:profileCopy eventSubmissionManager:mEMORY[0x277CCDD30] logCategory:v87 eventConstructor:v106];
    wristTemperatureDailyEventManager = v9->_wristTemperatureDailyEventManager;
    v9->_wristTemperatureDailyEventManager = v89;

LABEL_11:
  }

  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable3 = [mEMORY[0x277CCDD30]2 isCompanionCapable];

  if (isCompanionCapable3)
  {
    v93 = objc_alloc(MEMORY[0x277D10858]);
    v94 = objc_loadWeakRetained(&v9->_profile);
    userDefaults = [managerCopy userDefaults];
    v96 = [v93 initWithProfile:v94 userDefaults:userDefaults delegate:v9];
    settingsMigrationManager = v9->_settingsMigrationManager;
    v9->_settingsMigrationManager = v96;
  }

  v98 = [[HDMCPostInstallUpdateManager alloc] initWithProfileExtension:v9];
  postInstallUpdateManager = v9->_postInstallUpdateManager;
  v9->_postInstallUpdateManager = v98;

  _HKInitializeLogging();
  v100 = *v28;
  if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
  {
    v101 = v100;
    v102 = objc_opt_class();
    *buf = 138543362;
    v110 = v102;
    v103 = v102;
    _os_log_impl(&dword_2293D1000, v101, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
  }

LABEL_16:

  v104 = *MEMORY[0x277D85DE8];
  return v9;
}

HDMCWristTemperatureDailyAnalyticsEvent *__56__HDMCProfileExtension_initWithProfile_settingsManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDMCWristTemperatureDailyAnalyticsEvent alloc];
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x277D62528]) initWithIdentifier:@"HDMCProfileExtension" healthStore:0 options:2];
  v7 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v4 initWithProfile:v3 analysisManager:v5 sleepStore:v6];

  return v7;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC090]])
  {
    v5 = 16;
LABEL_9:
    v6 = *(&self->super.isa + v5);
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC0A0]])
  {
    v5 = 24;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC098]])
  {
    v5 = 64;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC0A8]])
  {
    v5 = 40;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)invalidateAndWait
{
  widgetSchedulingManager = self->_widgetSchedulingManager;
  self->_widgetSchedulingManager = 0;

  pregnancyFeatureAdjustmentManager = self->_pregnancyFeatureAdjustmentManager;
  self->_pregnancyFeatureAdjustmentManager = 0;
}

- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps
{
  stepsCopy = steps;
  v23 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v21 = 138543362;
    v22 = objc_opt_class();
    v8 = v22;
    _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings migration finished, initiating watch settings managers", &v21, 0xCu);
  }

  settingsMigrationManager = self->_settingsMigrationManager;
  self->_settingsMigrationManager = 0;

  v10 = [HDMCWatchSettingsCompatibilityManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userDefaults = [(HKMCSettingsManager *)self->_settingsManager userDefaults];
  v13 = [(HDMCWatchSettingsCompatibilityManager *)v10 initWithProfile:WeakRetained userDefaults:userDefaults];
  watchSettingsCompatibilityManager = self->_watchSettingsCompatibilityManager;
  self->_watchSettingsCompatibilityManager = v13;

  [(HDMCWatchSettingsCompatibilityManager *)self->_watchSettingsCompatibilityManager setDelegate:self];
  v15 = objc_alloc(MEMORY[0x277D10978]);
  v16 = objc_loadWeakRetained(&self->_profile);
  userDefaults2 = [(HKMCSettingsManager *)self->_settingsManager userDefaults];
  v18 = [v15 initWithProfile:v16 userDefaults:userDefaults2];
  watchSettingsReconciliationManager = self->_watchSettingsReconciliationManager;
  self->_watchSettingsReconciliationManager = v18;

  [(HDWatchSettingsReconciliationManager *)self->_watchSettingsReconciliationManager setDelegate:self];
  if (stepsCopy)
  {
    [(HDMCProfileExtension *)self _triggerImmediateSyncWithReason:@"settingsMigrationManagerDidRunMigrationSteps"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)watchSettingsCompatibilityManager:(id)manager didChangeUserDefaultsKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v4 = *MEMORY[0x277D11898];
    HKSynchronizeNanoPreferencesUserDefaults();
  }
}

- (void)watchSettingsReconciliationManager:(id)manager didReconcileValuesForKeys:(id)keys didUpdateFeatureSetting:(BOOL)setting didUpdateUserDefault:(BOOL)default
{
  defaultCopy = default;
  settingCopy = setting;
  managerCopy = manager;
  keysCopy = keys;
  v11 = keysCopy;
  if (defaultCopy)
  {
    v12 = *MEMORY[0x277D11898];
    v13 = MEMORY[0x277CBEB98];
    defaultsEnabledKey = [keysCopy defaultsEnabledKey];
    v15 = [v13 setWithObject:defaultsEnabledKey];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  if (settingCopy)
  {
    [(HDMCProfileExtension *)self _triggerImmediateSyncWithReason:@"watchSettingsReconciliationManagerDidUpdateFeatureSetting"];
  }
}

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HDMCProfileExtension__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_27865AAA8;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __56__HDMCProfileExtension__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v12 = v10;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)evaluatorForRequirement:(id)requirement
{
  requirementCopy = requirement;
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  if ([requirementIdentifier isEqual:*MEMORY[0x277CCBF68]])
  {

LABEL_4:
    v8 = self->_pregnancyRequirementEvaluator;
    goto LABEL_6;
  }

  requirementIdentifier2 = [objc_opt_class() requirementIdentifier];
  v7 = [requirementIdentifier2 isEqual:*MEMORY[0x277CCBF78]];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end