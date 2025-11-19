@interface HDMCProfileExtension
- (HDMCProfileExtension)initWithProfile:(id)a3 settingsManager:(id)a4;
- (HDPrimaryProfile)profile;
- (id)evaluatorForRequirement:(id)a3;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (void)_triggerImmediateSyncWithReason:(id)a3;
- (void)invalidateAndWait;
- (void)settingsMigrationManagerDidCompleteMigration:(id)a3 didRunMigrationSteps:(BOOL)a4;
- (void)watchSettingsCompatibilityManager:(id)a3 didChangeUserDefaultsKeys:(id)a4;
- (void)watchSettingsReconciliationManager:(id)a3 didReconcileValuesForKeys:(id)a4 didUpdateFeatureSetting:(BOOL)a5 didUpdateUserDefault:(BOOL)a6;
@end

@implementation HDMCProfileExtension

- (HDMCProfileExtension)initWithProfile:(id)a3 settingsManager:(id)a4
{
  v111 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v108.receiver = self;
  v108.super_class = HDMCProfileExtension;
  v8 = [(HDMCProfileExtension *)&v108 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  objc_storeWeak(&v8->_profile, v6);
  v10 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  calendarCache = v9->_calendarCache;
  v9->_calendarCache = v10;

  objc_storeStrong(&v9->_settingsManager, a4);
  v12 = [HDMCDeviceScopedStorageManager alloc];
  WeakRetained = objc_loadWeakRetained(&v9->_profile);
  v14 = [(HDMCDeviceScopedStorageManager *)v12 initWithProfile:WeakRetained settingsManager:v7];
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
  v25 = [v24 daemon];
  v26 = [v25 behavior];
  v27 = [v26 isCompanionCapable];

  v28 = MEMORY[0x277CCC2E8];
  if (v27)
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
  v38 = [v37 daemon];
  v39 = [v38 behavior];
  v40 = [v39 isCompanionCapable];

  if (v40)
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
  v54 = [MEMORY[0x277CCAB98] defaultCenter];
  v55 = [(HDMCExperienceModelManager *)v53 initWithNotificationProvider:v54];
  experienceModelManager = v9->_experienceModelManager;
  v9->_experienceModelManager = v55;

  v57 = [_TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager alloc];
  v58 = v9->_experienceModelManager;
  v59 = [MEMORY[0x277CCAB98] defaultCenter];
  v60 = [(HDMCPregnancyManager *)v57 initWithProfile:v6 operation:0 experienceModelProvider:v58 notificationProvider:v59 calendarCache:v9->_calendarCache];
  pregnancyManager = v9->_pregnancyManager;
  v9->_pregnancyManager = v60;

  v62 = [[_TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator alloc] initWithPregnancyManager:v9->_pregnancyManager];
  pregnancyRequirementEvaluator = v9->_pregnancyRequirementEvaluator;
  v9->_pregnancyRequirementEvaluator = v62;

  v64 = [[_TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager alloc] initWithPregnancyManager:v9->_pregnancyManager profile:v6 experienceModelProvider:v9->_experienceModelManager];
  pregnancyFeatureAdjustmentManager = v9->_pregnancyFeatureAdjustmentManager;
  v9->_pregnancyFeatureAdjustmentManager = v64;

  v66 = [HDMCAnalysisManager alloc];
  v67 = v9->_deviceScopedStorageManager;
  v68 = [(HDMCAnalysisManager *)v66 initWithProfile:v6 settingsManager:v9->_settingsManager featureAvailabilityManager:v9->_featureAvailabilityManager heartRateAvailabilityManager:v9->_heartRateFeatureAvailabilityManager wristTemperatureAvailabilityManager:v9->_wristTemperatureInputAvailabilityManager deviationsAvailabilityManager:v9->_deviationsFeatureAvailabilityManager deviceScopedStorageManager:v67 calendarCache:v9->_calendarCache];
  analysisManager = v9->_analysisManager;
  v9->_analysisManager = v68;

  v70 = [[HDMCNotificationSyncManager alloc] initWithProfile:v6];
  notificationSyncManager = v9->_notificationSyncManager;
  v9->_notificationSyncManager = v70;

  v72 = [[HDMCNotificationManager alloc] initWithProfile:v6 analysisManager:v9->_analysisManager settingsManager:v9->_settingsManager deviceScopedStorageManager:v9->_deviceScopedStorageManager notificationSyncManager:v9->_notificationSyncManager];
  notificationManager = v9->_notificationManager;
  v9->_notificationManager = v72;

  if ((HDIsUnitTesting() & 1) == 0)
  {
    [(HDMCNotificationManager *)v9->_notificationManager start];
  }

  v74 = [HDMCAnalysisScheduler alloc];
  v75 = [v6 daemon];
  v76 = [(HDMCAnalysisScheduler *)v74 initWithDaemon:v75 analysisManager:v9->_analysisManager settingsManager:v9->_settingsManager];
  analysisScheduler = v9->_analysisScheduler;
  v9->_analysisScheduler = v76;

  v78 = [[_TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager alloc] initWithProfile:v6];
  widgetSchedulingManager = v9->_widgetSchedulingManager;
  v9->_widgetSchedulingManager = v78;

  v80 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v80 isAppleWatch])
  {
    goto LABEL_11;
  }

  v81 = objc_loadWeakRetained(&v9->_profile);
  v82 = [v81 profileType];

  if (v82 == 1)
  {
    v83 = [[HDMCAnalyticsManager alloc] initWithProfile:v6 analysisManager:v9->_analysisManager heartRateFeatureAvailabilityManager:v9->_heartRateFeatureAvailabilityManager deviationDetectionFeatureAvailabilityManager:v9->_deviationsFeatureAvailabilityManager wristTemperatureInputFeatureAvailabilityManager:v9->_wristTemperatureInputAvailabilityManager pregnancyManager:v9->_pregnancyManager];
    analyticsManager = v9->_analyticsManager;
    v9->_analyticsManager = v83;

    v80 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v28 healthDataSource:v6];
    v85 = v9->_analysisManager;
    v86 = objc_alloc(MEMORY[0x277D105B0]);
    v87 = *v28;
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __56__HDMCProfileExtension_initWithProfile_settingsManager___block_invoke;
    v106[3] = &unk_27865B418;
    v107 = v85;
    v88 = v85;
    v89 = [v86 initWithProfile:v6 eventSubmissionManager:v80 logCategory:v87 eventConstructor:v106];
    wristTemperatureDailyEventManager = v9->_wristTemperatureDailyEventManager;
    v9->_wristTemperatureDailyEventManager = v89;

LABEL_11:
  }

  v91 = [MEMORY[0x277CCDD30] sharedBehavior];
  v92 = [v91 isCompanionCapable];

  if (v92)
  {
    v93 = objc_alloc(MEMORY[0x277D10858]);
    v94 = objc_loadWeakRetained(&v9->_profile);
    v95 = [v7 userDefaults];
    v96 = [v93 initWithProfile:v94 userDefaults:v95 delegate:v9];
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

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CCC090]])
  {
    v5 = 16;
LABEL_9:
    v6 = *(&self->super.isa + v5);
    goto LABEL_10;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC0A0]])
  {
    v5 = 24;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC098]])
  {
    v5 = 64;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC0A8]])
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

- (void)settingsMigrationManagerDidCompleteMigration:(id)a3 didRunMigrationSteps:(BOOL)a4
{
  v4 = a4;
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
  v12 = [(HKMCSettingsManager *)self->_settingsManager userDefaults];
  v13 = [(HDMCWatchSettingsCompatibilityManager *)v10 initWithProfile:WeakRetained userDefaults:v12];
  watchSettingsCompatibilityManager = self->_watchSettingsCompatibilityManager;
  self->_watchSettingsCompatibilityManager = v13;

  [(HDMCWatchSettingsCompatibilityManager *)self->_watchSettingsCompatibilityManager setDelegate:self];
  v15 = objc_alloc(MEMORY[0x277D10978]);
  v16 = objc_loadWeakRetained(&self->_profile);
  v17 = [(HKMCSettingsManager *)self->_settingsManager userDefaults];
  v18 = [v15 initWithProfile:v16 userDefaults:v17];
  watchSettingsReconciliationManager = self->_watchSettingsReconciliationManager;
  self->_watchSettingsReconciliationManager = v18;

  [(HDWatchSettingsReconciliationManager *)self->_watchSettingsReconciliationManager setDelegate:self];
  if (v4)
  {
    [(HDMCProfileExtension *)self _triggerImmediateSyncWithReason:@"settingsMigrationManagerDidRunMigrationSteps"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)watchSettingsCompatibilityManager:(id)a3 didChangeUserDefaultsKeys:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v4 = *MEMORY[0x277D11898];
    HKSynchronizeNanoPreferencesUserDefaults();
  }
}

- (void)watchSettingsReconciliationManager:(id)a3 didReconcileValuesForKeys:(id)a4 didUpdateFeatureSetting:(BOOL)a5 didUpdateUserDefault:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v16 = a3;
  v10 = a4;
  v11 = v10;
  if (v6)
  {
    v12 = *MEMORY[0x277D11898];
    v13 = MEMORY[0x277CBEB98];
    v14 = [v10 defaultsEnabledKey];
    v15 = [v13 setWithObject:v14];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  if (v7)
  {
    [(HDMCProfileExtension *)self _triggerImmediateSyncWithReason:@"watchSettingsReconciliationManagerDidUpdateFeatureSetting"];
  }
}

- (void)_triggerImmediateSyncWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HDMCProfileExtension__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_27865AAA8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v6 syncWithRequest:v9 reason:v10 completion:v11];
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

- (id)evaluatorForRequirement:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() requirementIdentifier];
  if ([v5 isEqual:*MEMORY[0x277CCBF68]])
  {

LABEL_4:
    v8 = self->_pregnancyRequirementEvaluator;
    goto LABEL_6;
  }

  v6 = [objc_opt_class() requirementIdentifier];
  v7 = [v6 isEqual:*MEMORY[0x277CCBF78]];

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