@interface HDHeartProfileExtension
- (HDHeartProfileExtension)initWithProfile:(id)profile;
- (HDHeartProfileExtension)initWithProfile:(id)profile heartNotificationsUserDefaults:(id)defaults;
- (HDPrimaryProfile)profile;
- (HKFeatureStatusManager)irregularRhythmNotificationsFeatureStatusManager;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_setupBloodPressureDailyAnalyticsManagerWithProfile:(id)profile;
- (void)_setupBloodPressureJournalManagerWithProfile:(id)profile;
- (void)_setupBloodPressureJournalNotificationManagerWithProfile:(id)profile;
- (void)_setupBloodPressureJournalNotificationSyncManagerWithProfile:(id)profile;
- (void)_setupBloodPressureJournalSyncRequesterWithProfile:(id)profile;
- (void)_setupBloodPressureJournalTimeZoneObserverWithProfile:(id)profile;
- (void)_setupBloodPressureSampleObserverWithProfile:(id)profile;
- (void)_setupElectrocardiogramRecordingWithProfile:(id)profile;
- (void)_setupHypertensionNotificationsWithProfile:(id)profile;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)profileDidBecomeReady:(id)ready;
- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps;
- (void)watchSettingsReconciliationManager:(id)manager didReconcileValuesForKeys:(id)keys didUpdateFeatureSetting:(BOOL)setting didUpdateUserDefault:(BOOL)default;
@end

@implementation HDHeartProfileExtension

- (HDHeartProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHeartProfileExtension;
  v5 = [(HDHeartProfileExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (HDHeartProfileExtension)initWithProfile:(id)profile heartNotificationsUserDefaults:(id)defaults
{
  v125 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  defaultsCopy = defaults;
  v122.receiver = self;
  v122.super_class = HDHeartProfileExtension;
  v8 = [(HDHeartProfileExtension *)&v122 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_22;
  }

  objc_storeWeak(&v8->_profile, profileCopy);
  objc_storeStrong(&v9->_heartNotificationsUserDefaults, defaults);
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    v12 = [HDHeartRateWidgetDataManager alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v14 = [(HDHeartRateWidgetDataManager *)v12 initWithProfile:WeakRetained];
    heartRateDataManager = v9->_heartRateDataManager;
    v9->_heartRateDataManager = v14;

    v16 = [HDHRHealthLiteDataCollector alloc];
    v17 = objc_loadWeakRetained(&v9->_profile);
    v18 = [(HDHRHealthLiteDataCollector *)v16 initWithProfile:v17];
    healthLiteDataCollector = v9->_healthLiteDataCollector;
    v9->_healthLiteDataCollector = v18;

    v20 = [HDHRDailyHeartRateManager alloc];
    v21 = objc_loadWeakRetained(&v9->_profile);
    v22 = [(HDHRDailyHeartRateManager *)v20 initWithProfile:v21];
    dailyHeartRateManager = v9->_dailyHeartRateManager;
    v9->_dailyHeartRateManager = v22;

    v24 = [HDHRNotificationManager alloc];
    dailyAnalyticsActivity = objc_loadWeakRetained(&v9->_profile);
    v26 = [(HDHRNotificationManager *)v24 initWithProfile:dailyAnalyticsActivity];
    heartRateNotificationManager = v9->_heartRateNotificationManager;
    v9->_heartRateNotificationManager = v26;
  }

  else
  {
    if ([profileCopy profileType] != 1)
    {
      goto LABEL_7;
    }

    v28 = [[HDHRCardioFitnessAnalyticsDailyEventActivity alloc] initWithProfile:profileCopy];
    dailyAnalyticsActivity = v9->_dailyAnalyticsActivity;
    v9->_dailyAnalyticsActivity = v28;
  }

LABEL_7:
  if ([profileCopy profileType] == 1)
  {
    v29 = [MEMORY[0x277D106D8] hdhr_makeCardioFitnessFeatureAvailabilityManagerWithProfile:profileCopy];
    cardioFitnessFeatureAvailabilityManager = v9->_cardioFitnessFeatureAvailabilityManager;
    v9->_cardioFitnessFeatureAvailabilityManager = v29;

    v31 = objc_loadWeakRetained(&v9->_profile);
    daemon = [v31 daemon];
    behavior = [daemon behavior];
    isCompanionCapable = [behavior isCompanionCapable];

    if (isCompanionCapable)
    {
      v35 = [[HDHRCardioFitnessBackgroundFeatureDeliverySettingsProvider alloc] initWithHeartRateSettingsDefaults:v9->_heartNotificationsUserDefaults];
      v36 = objc_alloc(MEMORY[0x277D105D8]);
      v37 = [v36 initWithProfile:profileCopy featureAvailabilityExtension:v9->_cardioFitnessFeatureAvailabilityManager deliveryCriteria:0 settingsProvider:v35 loggingCategory:*MEMORY[0x277CCC2D0]];
      cardioFitnessBackgroundFeatureDeliveryManager = v9->_cardioFitnessBackgroundFeatureDeliveryManager;
      v9->_cardioFitnessBackgroundFeatureDeliveryManager = v37;

      v39 = [objc_alloc(MEMORY[0x277D10858]) initWithProfile:profileCopy heartNotificationsUserDefaults:v9->_heartNotificationsUserDefaults delegate:v9];
      settingsMigrationManager = v9->_settingsMigrationManager;
      v9->_settingsMigrationManager = v39;
    }
  }

  v41 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [profileCopy daemon];
  v43 = *MEMORY[0x277CCC088];
  v44 = [v41 initWithDaemon:daemon2 featureIdentifier:*MEMORY[0x277CCC088]];

  v45 = [HDHRHeartRateNotificationsFeatureAvailabilityManager alloc];
  daemon3 = [profileCopy daemon];
  nanoRegistryDeviceCapabilityProvider = [daemon3 nanoRegistryDeviceCapabilityProvider];
  v121 = v44;
  v48 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)v45 initWithFeatureIdentifier:v43 notificationSettingsDefaults:defaultsCopy pairedDeviceCapabilityProvider:nanoRegistryDeviceCapabilityProvider disableAndExpiryProvider:v44];
  lowHeartRateNotificationsFeatureAvailabilityManager = v9->_lowHeartRateNotificationsFeatureAvailabilityManager;
  v9->_lowHeartRateNotificationsFeatureAvailabilityManager = v48;

  v50 = objc_alloc(MEMORY[0x277D107C0]);
  daemon4 = [profileCopy daemon];
  v52 = *MEMORY[0x277CCC060];
  v53 = [v50 initWithDaemon:daemon4 featureIdentifier:*MEMORY[0x277CCC060]];

  v54 = [HDHRHeartRateNotificationsFeatureAvailabilityManager alloc];
  daemon5 = [profileCopy daemon];
  nanoRegistryDeviceCapabilityProvider2 = [daemon5 nanoRegistryDeviceCapabilityProvider];
  v57 = [(HDHRHeartRateNotificationsFeatureAvailabilityManager *)v54 initWithFeatureIdentifier:v52 notificationSettingsDefaults:defaultsCopy pairedDeviceCapabilityProvider:nanoRegistryDeviceCapabilityProvider2 disableAndExpiryProvider:v53];
  highHeartRateNotificationsFeatureAvailabilityManager = v9->_highHeartRateNotificationsFeatureAvailabilityManager;
  v9->_highHeartRateNotificationsFeatureAvailabilityManager = v57;

  v59 = [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager alloc];
  daemon6 = [profileCopy daemon];
  v61 = HDHRIrregularRhythmNotificationsV2PairedFeaturePropertiesSyncManager(daemon6);
  v62 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v59 initWithProfile:profileCopy v2PairedFeaturePropertiesSyncManager:v61 notificationSettingDefaults:v9->_heartNotificationsUserDefaults];
  irregularRhythmNotificationsAvailabilityManager = v9->_irregularRhythmNotificationsAvailabilityManager;
  v9->_irregularRhythmNotificationsAvailabilityManager = v62;

  if ([profileCopy profileType] == 1)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch2 = [mEMORY[0x277CCDD30]2 isAppleWatch];

    if ((isAppleWatch2 & 1) == 0)
    {
      v66 = [HDHRIrregularRhythmNotificationsSettingMigrator alloc];
      v1FeatureAvailabilityManager = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
      v2FeatureAvailabilityManager = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
      v69 = [(HDHRIrregularRhythmNotificationsSettingMigrator *)v66 initWithV1FeatureAvailabilityManager:v1FeatureAvailabilityManager v2FeatureAvailabilityManager:v2FeatureAvailabilityManager];
      irregularRhythmNotificationsSettingMigrator = v9->_irregularRhythmNotificationsSettingMigrator;
      v9->_irregularRhythmNotificationsSettingMigrator = v69;
    }
  }

  v71 = [HDHRAFibBurdenProfileExtensionComponents makeComponentsForProfile:profileCopy];
  aFibBurdenComponents = v9->_aFibBurdenComponents;
  v9->_aFibBurdenComponents = v71;

  daemon7 = [profileCopy daemon];
  behavior2 = [daemon7 behavior];
  features = [behavior2 features];
  chutney = [features chutney];

  v77 = [MEMORY[0x277D106D8] bloodPressureJournalFeatureAvailabilityManagerWithProfile:profileCopy];
  bloodPressureJournalFeatureAvailabilityManager = v9->_bloodPressureJournalFeatureAvailabilityManager;
  v9->_bloodPressureJournalFeatureAvailabilityManager = v77;

  if (chutney)
  {
    v79 = objc_alloc(MEMORY[0x277D105D8]);
    v80 = v9->_bloodPressureJournalFeatureAvailabilityManager;
    v81 = HKLogBloodPressureJournal();
    v82 = [v79 initWithProfile:profileCopy featureAvailabilityExtension:v80 loggingCategory:v81];
    bloodPressureJournalBackgroundFeatureDeliveryManager = v9->_bloodPressureJournalBackgroundFeatureDeliveryManager;
    v9->_bloodPressureJournalBackgroundFeatureDeliveryManager = v82;
  }

  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalManagerWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalNotificationManagerWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalSyncRequesterWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureSampleObserverWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalTimeZoneObserverWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureJournalNotificationSyncManagerWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupBloodPressureDailyAnalyticsManagerWithProfile:profileCopy];
  [(HDHeartProfileExtension *)v9 _setupHypertensionNotificationsWithProfile:profileCopy];
  v84 = objc_loadWeakRetained(&v9->_profile);
  daemon8 = [v84 daemon];
  behavior3 = [daemon8 behavior];
  isCompanionCapable2 = [behavior3 isCompanionCapable];

  if (isCompanionCapable2)
  {
    v88 = [HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria alloc];
    v1FeatureAvailabilityManager2 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    v90 = [(HDHRIrregularRhythmNotificationsAutomaticUpgradeCriteria *)v88 initWithV1FeatureAvailabilityManager:v1FeatureAvailabilityManager2];

    v91 = objc_alloc(MEMORY[0x277D105D8]);
    v2FeatureAvailabilityManager2 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
    v93 = objc_alloc_init(HDHRIrregularRhythmNotificationsV1SettingsProvider);
    v94 = MEMORY[0x277CCC2D8];
    v95 = [v91 initWithProfile:profileCopy featureAvailabilityExtension:v2FeatureAvailabilityManager2 deliveryCriteria:v90 settingsProvider:v93 loggingCategory:*MEMORY[0x277CCC2D8]];
    irregularRhythmNotificationsV2DeliveryManager = v9->_irregularRhythmNotificationsV2DeliveryManager;
    v9->_irregularRhythmNotificationsV2DeliveryManager = v95;

    v97 = [HDHRIrregularRhythmNotificationsV2UpgradeManager alloc];
    v1FeatureAvailabilityManager3 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    v2FeatureAvailabilityManager3 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)v9->_irregularRhythmNotificationsAvailabilityManager v2FeatureAvailabilityManager];
    hypertensionNotificationsAvailabilityManager = v9->_hypertensionNotificationsAvailabilityManager;
    v101 = [objc_alloc(MEMORY[0x277CCCFE8]) initWithLoggingCategory:*v94 healthDataSource:profileCopy];
    v102 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)v97 initWithProfile:profileCopy v1FeatureAvailabilityManager:v1FeatureAvailabilityManager3 v2FeatureAvailabilityManager:v2FeatureAvailabilityManager3 hypertensionNotificationsFeatureAvailabilityManager:hypertensionNotificationsAvailabilityManager analyticsSubmissionManager:v101];
    irregularRhythmNotificationsV2UpgradeManager = v9->_irregularRhythmNotificationsV2UpgradeManager;
    v9->_irregularRhythmNotificationsV2UpgradeManager = v102;
  }

  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch3 = [mEMORY[0x277CCDD30]3 isAppleWatch];

  if (isAppleWatch3)
  {
    v106 = [HRAtrialFibrillationNotificationManager alloc];
    irregularRhythmNotificationsFeatureStatusManager = [(HDHeartProfileExtension *)v9 irregularRhythmNotificationsFeatureStatusManager];
    v108 = [(HRAtrialFibrillationNotificationManager *)v106 initWithProfile:profileCopy featureStatusManager:irregularRhythmNotificationsFeatureStatusManager];
    atrialFibrillationNotificationManager = v9->_atrialFibrillationNotificationManager;
    v9->_atrialFibrillationNotificationManager = v108;

    v110 = [HRAtrialFibrillationEventDetector alloc];
    v111 = v9->_irregularRhythmNotificationsAvailabilityManager;
    irregularRhythmNotificationsFeatureStatusManager2 = [(HDHeartProfileExtension *)v9 irregularRhythmNotificationsFeatureStatusManager];
    v113 = [(HRAtrialFibrillationEventDetector *)v110 initWithProfile:profileCopy availabilityManager:v111 featureStatusManager:irregularRhythmNotificationsFeatureStatusManager2 notificationManager:v9->_atrialFibrillationNotificationManager];
    atrialFibrillationEventDetector = v9->_atrialFibrillationEventDetector;
    v9->_atrialFibrillationEventDetector = v113;
  }

  [(HDHeartProfileExtension *)v9 _setupElectrocardiogramRecordingWithProfile:profileCopy];
  v115 = HKCreateSerialDispatchQueue();
  [profileCopy registerProfileReadyObserver:v9 queue:v115];

  _HKInitializeLogging();
  v116 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = objc_opt_class();
    *buf = 138543362;
    v124 = v117;
    v118 = v117;
    _os_log_impl(&dword_229486000, v116, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
  }

LABEL_22:
  v119 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HKFeatureStatusManager)irregularRhythmNotificationsFeatureStatusManager
{
  irregularRhythmNotificationsFeatureStatusManager = self->_irregularRhythmNotificationsFeatureStatusManager;
  if (!irregularRhythmNotificationsFeatureStatusManager)
  {
    v4 = objc_alloc(MEMORY[0x277CCD460]);
    irregularRhythmNotificationsAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [v4 initWithFeatureAvailabilityProviding:irregularRhythmNotificationsAvailabilityManager healthDataSource:WeakRetained];
    v8 = self->_irregularRhythmNotificationsFeatureStatusManager;
    self->_irregularRhythmNotificationsFeatureStatusManager = v7;

    irregularRhythmNotificationsFeatureStatusManager = self->_irregularRhythmNotificationsFeatureStatusManager;
  }

  return irregularRhythmNotificationsFeatureStatusManager;
}

- (void)_setupBloodPressureJournalManagerWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalManager alloc] initWithProfile:profileCopy];

  bloodPressureJournalManager = self->_bloodPressureJournalManager;
  self->_bloodPressureJournalManager = v5;
}

- (void)_setupBloodPressureJournalNotificationManagerWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalNotificationManager alloc] initWithProfile:profileCopy];

  bloodPressureJournalNotificationManager = self->_bloodPressureJournalNotificationManager;
  self->_bloodPressureJournalNotificationManager = v5;
}

- (void)_setupBloodPressureJournalNotificationSyncManagerWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalNotificationSyncManager alloc] initWithProfile:profileCopy];

  bloodPressureJournalNotificationSyncManager = self->_bloodPressureJournalNotificationSyncManager;
  self->_bloodPressureJournalNotificationSyncManager = v5;
}

- (void)_setupBloodPressureJournalSyncRequesterWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalSyncRequester alloc] initWithProfile:profileCopy];

  bloodPressureJournalSyncRequester = self->_bloodPressureJournalSyncRequester;
  self->_bloodPressureJournalSyncRequester = v5;
}

- (void)_setupBloodPressureSampleObserverWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalBPSampleObserver alloc] initWithProfile:profileCopy];

  bloodPressureSampleObserver = self->_bloodPressureSampleObserver;
  self->_bloodPressureSampleObserver = v5;
}

- (void)_setupBloodPressureJournalTimeZoneObserverWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [[HDHRBloodPressureJournalTimeZoneObserver alloc] initWithProfile:profileCopy];

  bloodPressureJournalTimeZoneObserver = self->_bloodPressureJournalTimeZoneObserver;
  self->_bloodPressureJournalTimeZoneObserver = v5;
}

- (void)_setupBloodPressureDailyAnalyticsManagerWithProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CCCFE8]);
    v5 = MEMORY[0x277CCC2D0];
    v6 = [v4 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:profileCopy];
    v7 = [objc_alloc(MEMORY[0x277D105B0]) initWithProfile:profileCopy eventSubmissionManager:v6 logCategory:*v5 eventConstructor:&__block_literal_global_3];
    bloodPressureDailyEventManager = self->_bloodPressureDailyEventManager;
    self->_bloodPressureDailyEventManager = v7;
  }
}

HDHRBloodPressureDailyAnalyticsEvent *__79__HDHeartProfileExtension__setupBloodPressureDailyAnalyticsManagerWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDHRBloodPressureDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

- (void)_setupElectrocardiogramRecordingWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = [HDHRElectrocardiogramRecordingFeatureAvailabilityManager alloc];
  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v6 = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)v4 initWithProfile:profileCopy cacheDefaults:hk_heartRhythmDefaults];
  electrocardiogramRecordingAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
  self->_electrocardiogramRecordingAvailabilityManager = v6;

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(hk_heartRhythmDefaults) = [mEMORY[0x277CCDD30] isCompanionCapable];

  if (hk_heartRhythmDefaults)
  {
    v9 = [HDHRElectrocardiogramRecordingV2UpgradeManager alloc];
    v1FeatureAvailabilityManager = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self->_electrocardiogramRecordingAvailabilityManager v1FeatureAvailabilityManager];
    v2FeatureAvailabilityManager = [(HDHRElectrocardiogramRecordingFeatureAvailabilityManager *)self->_electrocardiogramRecordingAvailabilityManager v2FeatureAvailabilityManager];
    v12 = objc_alloc(MEMORY[0x277CCCFE8]);
    v13 = [v12 initWithLoggingCategory:*MEMORY[0x277CCC2D8] healthDataSource:profileCopy];
    v14 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v9 initWithProfile:profileCopy v1FeatureAvailabilityManager:v1FeatureAvailabilityManager v2FeatureAvailabilityManager:v2FeatureAvailabilityManager analyticsSubmissionManager:v13];
    electrocardiogramRecordingV2DeliveryManager = self->_electrocardiogramRecordingV2DeliveryManager;
    self->_electrocardiogramRecordingV2DeliveryManager = v14;
  }
}

- (void)_setupHypertensionNotificationsWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = *MEMORY[0x277CCC068];
  requirementSet = [MEMORY[0x277D12FD8] requirementSet];
  v6 = objc_alloc(MEMORY[0x277D10728]);
  localAvailabilityForHypertensionNotifications = [MEMORY[0x277CCD260] localAvailabilityForHypertensionNotifications];
  daemon = [profileCopy daemon];
  v9 = [v6 initWithFeatureIdentifier:v4 defaultCountrySet:localAvailabilityForHypertensionNotifications healthDaemon:daemon];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HKHRHypertensionNotificationsLocalFeatureAttributes();
  v62 = v9;
  v12 = [v10 initWithFeatureIdentifier:v4 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  if ([profileCopy profileType] == 1)
  {
    [v12 synchronizeLocalProperties];
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  v15 = objc_alloc(MEMORY[0x277CCAD78]);
  if (isAppleWatch)
  {
    v16 = @"BADB0622-1CC0-4CE0-BF07-1B79D4FC28BB";
  }

  else
  {
    v16 = @"A0A8CBBD-8F56-46ED-A36B-446D452C0515";
  }

  v17 = [v15 initWithUUIDString:v16];
  v18 = objc_alloc(MEMORY[0x277D10968]);
  v19 = MEMORY[0x277CCC2D0];
  v20 = [v18 initWithAllowedCountriesDataSource:v12 profile:profileCopy featureCapability:v17 loggingCategory:*MEMORY[0x277CCC2D0]];
  v21 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [profileCopy daemon];
  v23 = [v21 initWithDaemon:daemon2 featureIdentifier:v4];

  v61 = v20;
  v63 = requirementSet;
  v24 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:profileCopy featureIdentifier:v4 availabilityRequirements:requirementSet currentOnboardingVersion:1 pairedDeviceCapability:v17 pairedFeatureAttributesProvider:v12 regionAvailabilityProvider:v20 disableAndExpiryProvider:v23 loggingCategory:*v19];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
  self->_hypertensionNotificationsAvailabilityManager = v24;

  daemon3 = [profileCopy daemon];
  behavior = [daemon3 behavior];
  features = [behavior features];
  hermit = [features hermit];

  if (hermit)
  {
    v30 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:profileCopy featureAvailabilityExtension:self->_hypertensionNotificationsAvailabilityManager loggingCategory:*v19];
    hypertensionNotificationsBackgroundFeatureDeliveryManager = self->_hypertensionNotificationsBackgroundFeatureDeliveryManager;
    self->_hypertensionNotificationsBackgroundFeatureDeliveryManager = v30;
  }

  v32 = objc_alloc(MEMORY[0x277CCD460]);
  v33 = self->_hypertensionNotificationsAvailabilityManager;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v35 = [v32 initWithFeatureAvailabilityProviding:v33 healthDataSource:WeakRetained];

  daemon4 = [profileCopy daemon];
  behavior2 = [daemon4 behavior];
  if ([behavior2 isCompanionCapable] && objc_msgSend(profileCopy, "profileType") == 1)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    features2 = [mEMORY[0x277CCDD30]2 features];
    hermit2 = [features2 hermit];

    if (hermit2)
    {
      v41 = [[HDHRHypertensionNotificationsRescindedAlertManager alloc] initWithProfile:profileCopy featureStatusProvider:v35];
      hypertensionNotificationsRescindedAlertManager = self->_hypertensionNotificationsRescindedAlertManager;
      self->_hypertensionNotificationsRescindedAlertManager = v41;

      v43 = [[HDHRHypertensionMeasurementAnalyzer alloc] initWithProfile:profileCopy];
      hypertensionMeasurementAnalyzer = self->_hypertensionMeasurementAnalyzer;
      self->_hypertensionMeasurementAnalyzer = v43;

      uiTriggerObserver = [[HDHRPregnancySampleProvider alloc] initWithProfile:profileCopy];
      v46 = [[HDHRPregnancyStateProvider alloc] initWithPregnancySampleProvider:uiTriggerObserver];
      v47 = [[HDHRHypertensionNotificationsAnalysisScheduler alloc] initWithProfile:profileCopy featureStatusProvider:v35 pregnancyStateProvider:v46 measurementAnalyzer:self->_hypertensionMeasurementAnalyzer];
      hypertensionNotificationsAnalysisScheduler = self->_hypertensionNotificationsAnalysisScheduler;
      self->_hypertensionNotificationsAnalysisScheduler = v47;

      v49 = [[HDHRHypertensionNotificationManager alloc] initWithProfile:profileCopy];
      hypertensionNotificationManager = self->_hypertensionNotificationManager;
      self->_hypertensionNotificationManager = v49;

      daemon5 = [profileCopy daemon];
      behavior3 = [daemon5 behavior];
      isAppleInternalInstall = [behavior3 isAppleInternalInstall];

      if (isAppleInternalInstall)
      {
        v54 = [HDHRHypertensionNotificationsSettingsResetter alloc];
        v55 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsSyncedDomainForProfile:profileCopy];
        v56 = [(HDHRHypertensionNotificationsSettingsResetter *)v54 initWithKeyValueDomain:v55 featureAvailabilityProvider:self->_hypertensionNotificationsAvailabilityManager];
        hypertensionNotificationsSettingsResetter = self->_hypertensionNotificationsSettingsResetter;
        self->_hypertensionNotificationsSettingsResetter = v56;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  if ([profileCopy profileType] == 1)
  {
    mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch2 = [mEMORY[0x277CCDD30]3 isAppleWatch];

    if (isAppleWatch2)
    {
      v60 = [[HDHRCarouselUITriggerObserver alloc] initWithProfile:profileCopy];
      uiTriggerObserver = self->_uiTriggerObserver;
      self->_uiTriggerObserver = v60;
LABEL_18:
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  if ([readyCopy profileType] == 1)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      v6 = [HDHRHeartbeatSeriesFeatureExclusivityManager alloc];
      irregularRhythmNotificationsFeatureStatusManager = [(HDHeartProfileExtension *)self irregularRhythmNotificationsFeatureStatusManager];
      featureStatusManager = [(HDHRAFibBurdenProfileExtensionComponents *)self->_aFibBurdenComponents featureStatusManager];
      v9 = [(HDHRHeartbeatSeriesFeatureExclusivityManager *)v6 initWithIrregularRhythmNotificationsStatusManager:irregularRhythmNotificationsFeatureStatusManager aFibHistoryStatusManager:featureStatusManager profile:readyCopy];
      heartbeatSeriesFeatureExclusivityManager = self->_heartbeatSeriesFeatureExclusivityManager;
      self->_heartbeatSeriesFeatureExclusivityManager = v9;
    }
  }
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC000]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_cardioFitnessFeatureAvailabilityManager;
LABEL_3:
    featureAvailabilityManager = cardioFitnessFeatureAvailabilityManager;
LABEL_6:
    v7 = featureAvailabilityManager;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCBFF0]])
  {
    featureAvailabilityManager = [(HDHRAFibBurdenProfileExtensionComponents *)self->_aFibBurdenComponents featureAvailabilityManager];
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC088]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_lowHeartRateNotificationsFeatureAvailabilityManager;
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC060]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_highHeartRateNotificationsFeatureAvailabilityManager;
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC070]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC078]])
  {
    irregularRhythmNotificationsAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
LABEL_18:
    featureAvailabilityManager = [irregularRhythmNotificationsAvailabilityManager v1FeatureAvailabilityManager];
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC080]])
  {
    electrocardiogramRecordingAvailabilityManager = self->_irregularRhythmNotificationsAvailabilityManager;
LABEL_21:
    featureAvailabilityManager = [electrocardiogramRecordingAvailabilityManager v2FeatureAvailabilityManager];
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC068]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC010]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC018]])
  {
    irregularRhythmNotificationsAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_18;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCC020]])
  {
    electrocardiogramRecordingAvailabilityManager = self->_electrocardiogramRecordingAvailabilityManager;
    goto LABEL_21;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277CCBFF8]])
  {
    cardioFitnessFeatureAvailabilityManager = self->_bloodPressureJournalFeatureAvailabilityManager;
    goto LABEL_3;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)settingsMigrationManagerDidCompleteMigration:(id)migration didRunMigrationSteps:(BOOL)steps
{
  stepsCopy = steps;
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v7 = v20;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Settings migration finished, initiating watch settings manager", buf, 0xCu);
  }

  settingsMigrationManager = self->_settingsMigrationManager;
  self->_settingsMigrationManager = 0;

  v9 = objc_alloc(MEMORY[0x277D10978]);
  profile = [(HDHeartProfileExtension *)self profile];
  heartNotificationsUserDefaults = self->_heartNotificationsUserDefaults;
  v12 = objc_alloc(MEMORY[0x277D10970]);
  v13 = [v12 initWithFeatureIdentifier:*MEMORY[0x277CCC000] defaultsEnabledKey:*MEMORY[0x277CCE440]];
  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [v9 initWithProfile:profile userDefaults:heartNotificationsUserDefaults managedKeys:v14 debugIdentifier:@"CardioFitness" loggingCategory:*MEMORY[0x277CCC2D0]];
  settingsReconciliationManager = self->_settingsReconciliationManager;
  self->_settingsReconciliationManager = v15;

  [(HDWatchSettingsReconciliationManager *)self->_settingsReconciliationManager setDelegate:self];
  if (stepsCopy)
  {
    [(HDHeartProfileExtension *)self _triggerImmediateSyncWithReason:@"HDHeartProfileExtension.settingsMigrationManagerDidRunMigrationSteps"];
  }

  v17 = *MEMORY[0x277D85DE8];
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
    v12 = *MEMORY[0x277CCE458];
    v13 = MEMORY[0x277CBEB98];
    defaultsEnabledKey = [keysCopy defaultsEnabledKey];
    v15 = [v13 setWithObject:defaultsEnabledKey];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  if (settingCopy)
  {
    [(HDHeartProfileExtension *)self _triggerImmediateSyncWithReason:@"HDHeartProfileExtension.watchSettingsReconciliationManagerDidUpdateFeatureSetting"];
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
  v11[2] = __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_2786602E0;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v11 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v5, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

void __59__HDHeartProfileExtension__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v11 = 138543874;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v9 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end