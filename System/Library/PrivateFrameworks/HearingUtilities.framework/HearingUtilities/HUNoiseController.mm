@interface HUNoiseController
+ (BOOL)deviceSupportsEnvironmentalDosimetry;
+ (id)sharedController;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_fetchDeviceState;
- (BOOL)shouldEnableNoiseMeasurements;
- (HUNoiseController)init;
- (float)calculateLeqForBuffer:(id)buffer;
- (id)registerForEnvironmentalDosimetryUpdates:(id)updates;
- (unint64_t)alertTypeFromLevel:(float)level;
- (void)_clearCachedValues;
- (void)_initializeInternalDataCollectionIfNeeded;
- (void)_internalDataCollectionLogSPLValue:(id)value metaData:(id)data;
- (void)_sendUpdateMessageForCurrentValues;
- (void)addNoiseSample:(id)sample toCircularBuffer:(id)buffer forMinTime:(float)time;
- (void)applyAnalyticsNotificationLogicForSPL:(float)l withDuration:(float)duration;
- (void)applyNotificationLogicForSPL:(float)l withDuration:(float)duration;
- (void)checkToResetAnalyticsNotificationsForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time andThreshold:(int64_t)threshold;
- (void)checkToResetNotificationsForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time;
- (void)checkToSurfaceAnalyticsNotificationForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time andThreshold:(int64_t)threshold;
- (void)checkToSurfaceNotificationForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time;
- (void)dealloc;
- (void)logNoiseBuffer:(id)buffer calculatedLeq:(float)leq;
- (void)logThresholdTransitionForSample:(id)sample;
- (void)lowPowerModeChanged:(id)changed;
- (void)maintainCircularBuffer:(id)buffer forTime:(float)time;
- (void)processMeasurement:(id)measurement withMetadata:(id)metadata;
- (void)readEnvironmentalDosimetryLevels;
- (void)restartADAMTimer;
- (void)sendNotificationRequestWithTitle:(id)title body:(id)body suggestANCMode:(BOOL)mode suggestHearingProtection:(BOOL)protection;
- (void)setInternalDataCollectionEnabled:(BOOL)enabled;
- (void)showNotificationForAlertType:(unint64_t)type;
- (void)stopReceivingAudioDosageSamples;
- (void)subscribeToSharedNotifications;
- (void)writeAttentuationSampleToHealth;
- (void)writeNotificationSampleToHKWithSPL:(float)l startDate:(id)date endDate:(id)endDate;
@end

@implementation HUNoiseController

+ (id)sharedController
{
  if (sharedController_onceToken_3 != -1)
  {
    +[HUNoiseController sharedController];
  }

  v3 = sharedController_Controller_2;

  return v3;
}

uint64_t __37__HUNoiseController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(HUNoiseController);
  v1 = sharedController_Controller_2;
  sharedController_Controller_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)deviceSupportsEnvironmentalDosimetry
{
  if (deviceSupportsEnvironmentalDosimetry_onceToken != -1)
  {
    +[HUNoiseController deviceSupportsEnvironmentalDosimetry];
  }

  return deviceSupportsEnvironmentalDosimetry_SupportsEnvironmentalDosimetry;
}

uint64_t __57__HUNoiseController_deviceSupportsEnvironmentalDosimetry__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceSupportsEnvironmentalDosimetry_SupportsEnvironmentalDosimetry = result;
  return result;
}

- (HUNoiseController)init
{
  v64.receiver = self;
  v64.super_class = HUNoiseController;
  v2 = [(HUNoiseController *)&v64 init];
  if (v2)
  {
    v3 = HCLogHearingProtection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Initializing HUNoiseController", buf, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E6988780]);
    adamSuspendedTimer = v2->_adamSuspendedTimer;
    v2->_adamSuspendedTimer = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.HearingUtilities.HUNoiseController.DataQueue", v6);
    [(HUNoiseController *)v2 setDataQueue:v7];

    [(HUNoiseController *)v2 _clearCachedValues];
    array = [MEMORY[0x1E695DF70] array];
    [(HUNoiseController *)v2 setAttenuationBuffer:array];

    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v9 = getHKHealthStoreClass_softClass;
    v73 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = __getHKHealthStoreClass_block_invoke;
      v68 = &unk_1E85C9FB0;
      v69 = &v70;
      __getHKHealthStoreClass_block_invoke(buf);
      v9 = v71[3];
    }

    v10 = v9;
    _Block_object_dispose(&v70, 8);
    v11 = objc_alloc_init(v9);
    healthStore = v2->_healthStore;
    v2->_healthStore = v11;

    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v13 = getHKQuantityTypeClass_softClass;
    v73 = getHKQuantityTypeClass_softClass;
    if (!getHKQuantityTypeClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = __getHKQuantityTypeClass_block_invoke;
      v68 = &unk_1E85C9FB0;
      v69 = &v70;
      __getHKQuantityTypeClass_block_invoke(buf);
      v13 = v71[3];
    }

    v14 = v13;
    _Block_object_dispose(&v70, 8);
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v15 = getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_ptr;
    v73 = getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_ptr;
    if (!getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = __getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_block_invoke;
      v68 = &unk_1E85C9FB0;
      v69 = &v70;
      v16 = HealthKitLibrary();
      v17 = dlsym(v16, "HKQuantityTypeIdentifierEnvironmentalSoundReduction");
      *(v69[1] + 24) = v17;
      getHKQuantityTypeIdentifierEnvironmentalSoundReductionSymbolLoc_ptr = *(v69[1] + 24);
      v15 = v71[3];
    }

    _Block_object_dispose(&v70, 8);
    if (!v15)
    {
      ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
      _Block_object_dispose(&v70, 8);
      objc_destroyWeak(0x20);
      objc_destroyWeak(&location);
      _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
    }

    v18 = [v13 quantityTypeForIdentifier:*v15];
    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v19 = getHKDataCollectorClass_softClass;
    v73 = getHKDataCollectorClass_softClass;
    if (!getHKDataCollectorClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = __getHKDataCollectorClass_block_invoke;
      v68 = &unk_1E85C9FB0;
      v69 = &v70;
      __getHKDataCollectorClass_block_invoke(buf);
      v19 = v71[3];
    }

    v20 = v19;
    _Block_object_dispose(&v70, 8);
    v21 = [v19 alloc];
    healthStore = [(HUNoiseController *)v2 healthStore];
    v23 = [v21 initWithHealthStore:healthStore bundleIdentifier:@"com.apple.Noise" quantityType:v18];
    attenuationDataCollector = v2->_attenuationDataCollector;
    v2->_attenuationDataCollector = v23;

    v25 = +[HUNoiseSettings sharedInstance];
    thresholdVersion = [v25 thresholdVersion];

    if (!thresholdVersion)
    {
      v27 = +[HUNoiseSettings sharedInstance];
      [v27 setThresholdVersion:1];

      v28 = +[HUNoiseSettings sharedInstance];
      [v28 setNotificationThreshold:90];
    }

    v29 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Noise"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v29;

    objc_initWeak(&location, v2);
    v31 = +[HUNoiseSettings sharedInstance];
    notificationMuteDate = [v31 notificationMuteDate];
    [notificationMuteDate timeIntervalSinceNow];
    [(HUNoiseController *)v2 setMuted:v33 > 0.0];

    v34 = +[HUNoiseSettings sharedInstance];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __25__HUNoiseController_init__block_invoke;
    v61[3] = &unk_1E85C9F10;
    objc_copyWeak(&v62, &location);
    [v34 registerUpdateBlock:v61 forRetrieveSelector:sel_notificationMuteDate withListener:v2];

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leqBuffer = v2->_leqBuffer;
    v2->_leqBuffer = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextualVolumeBuffer = v2->_contextualVolumeBuffer;
    v2->_contextualVolumeBuffer = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leqBuffer80Threshold = v2->_leqBuffer80Threshold;
    v2->_leqBuffer80Threshold = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leqBuffer85Threshold = v2->_leqBuffer85Threshold;
    v2->_leqBuffer85Threshold = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leqBuffer90Threshold = v2->_leqBuffer90Threshold;
    v2->_leqBuffer90Threshold = v43;

    v45 = HCLogHearingProtection();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v45, OS_LOG_TYPE_DEFAULT, "Initializing ADAM data receiver", buf, 2u);
    }

    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v46 = getADAMAudioDataReceiverClass_softClass_0;
    v73 = getADAMAudioDataReceiverClass_softClass_0;
    if (!getADAMAudioDataReceiverClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      v66 = 3221225472;
      v67 = __getADAMAudioDataReceiverClass_block_invoke_0;
      v68 = &unk_1E85C9FB0;
      v69 = &v70;
      __getADAMAudioDataReceiverClass_block_invoke_0(buf);
      v46 = v71[3];
    }

    v47 = v46;
    _Block_object_dispose(&v70, 8);
    v48 = [v46 alloc];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v51 = [v48 initWithIdentifier:bundleIdentifier];
    edDataReceiver = v2->_edDataReceiver;
    v2->_edDataReceiver = v51;

    [(ADAMAudioDataReceiver *)v2->_edDataReceiver stopMeasuringAudioSampleType:1702260324];
    shouldEnableNoiseMeasurements = [(HUNoiseController *)v2 shouldEnableNoiseMeasurements];
    [(HUNoiseController *)v2 _logNoiseEnabledStateToPowerlog:shouldEnableNoiseMeasurements];
    if (shouldEnableNoiseMeasurements)
    {
      v54 = dispatch_time(0, 100000000);
      v55 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __25__HUNoiseController_init__block_invoke_312;
      block[3] = &unk_1E85C9F10;
      objc_copyWeak(&v60, &location);
      dispatch_after(v54, v55, block);

      objc_destroyWeak(&v60);
    }

    else
    {
      v56 = HCLogHearingProtection();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v56, OS_LOG_TYPE_DEFAULT, "Noise not enabled", buf, 2u);
      }
    }

    [(HUNoiseController *)v2 subscribeToSharedNotifications];
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__HUNoiseController_init__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = HCLogHearingProtection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[HUNoiseSettings sharedInstance];
    v4 = [v3 notificationMuteDate];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Notification mute date changed: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = +[HUNoiseSettings sharedInstance];
  v7 = [v6 notificationMuteDate];
  [v7 timeIntervalSinceNow];
  [WeakRetained setMuted:v8 > 0.0];

  v9 = *MEMORY[0x1E69E9840];
}

void __25__HUNoiseController_init__block_invoke_312(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained readEnvironmentalDosimetryLevels];
}

- (void)dealloc
{
  notify_cancel(self->_measurementSuspensionNotifyToken);
  if (AXIsInternalInstall())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.accessibility.hearing.internal.data.collection.changed", 0);
  }

  v4.receiver = self;
  v4.super_class = HUNoiseController;
  [(HUNoiseController *)&v4 dealloc];
}

- (void)showNotificationForAlertType:(unint64_t)type
{
  v5 = hearingLocString(@"NoiseAlertTitle");
  v6 = hearingLocString(@"NoiseAlertLevelContent80");
  v7 = MEMORY[0x1E696AEC0];
  v8 = hearingLocString(@"NoiseAlertLevelDetailedContent80");
  v9 = &stru_1F5614A78;
  v10 = [v7 stringWithFormat:v8, v6, &stru_1F5614A78];

  if ([(HUNoiseController *)self isWearingAirPods])
  {
    v11 = accessibilityHearingAidSupportBundle();
    v9 = [v11 localizedStringForKey:@"NoiseAlertAirPodsDetail" value:@"NoiseAlertAirPodsDetail" table:@"HearingAidSupport-B698"];
  }

  if (type <= 3)
  {
    switch(type)
    {
      case 1uLL:
        v12 = @"NoiseAlertLevelDetailedContent80";
        v13 = @"NoiseAlertLevelContent80";
        goto LABEL_17;
      case 2uLL:
        v12 = @"NoiseAlertLevelDetailedContent85";
        v13 = @"NoiseAlertLevelContent85";
        goto LABEL_17;
      case 3uLL:
        v12 = @"NoiseAlertLevelDetailedContent90";
        v13 = @"NoiseAlertLevelContent90";
LABEL_17:
        v20 = hearingLocString(v13);

        v21 = MEMORY[0x1E696AEC0];
        v22 = hearingLocString(v12);
        v23 = [v21 stringWithFormat:v22, v20, v9];

        v10 = v23;
        v6 = v20;
        goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (type - 5 >= 2)
  {
    if (type == 4)
    {
      v12 = @"NoiseAlertLevelDetailedContent95";
      v13 = @"NoiseAlertLevelContent95";
      goto LABEL_17;
    }

LABEL_18:
    shouldSuggestANCMode = [(HUNoiseController *)self shouldSuggestANCMode];
    v14 = v6;
    v17 = v10;
    goto LABEL_19;
  }

  v14 = hearingLocString(@"NoiseAlertLevelContent100");

  v15 = MEMORY[0x1E696AEC0];
  v16 = hearingLocString(@"NoiseAlertLevelDetailedContent100");
  v17 = [v15 stringWithFormat:v16, v14, v9];

  shouldSuggestANCMode = [(HUNoiseController *)self shouldSuggestANCMode];
  if (type == 6)
  {
    v19 = HCLogHearingProtection();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Not showing hearing protection suggestion for > 110dB", buf, 2u);
    }

    _os_feature_enabled_impl();
    goto LABEL_23;
  }

LABEL_19:
  if (!_os_feature_enabled_impl())
  {
LABEL_23:
    [(HUNoiseController *)self sendNotificationRequestWithTitle:v5 body:v17 suggestANCMode:shouldSuggestANCMode suggestHearingProtection:0];
    goto LABEL_24;
  }

  v24 = HCLogHearingProtection();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v24, OS_LOG_TYPE_DEFAULT, "Checking paired devices for HP enabled", buf, 2u);
  }

  v25 = +[HUAccessoryManager sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__HUNoiseController_showNotificationForAlertType___block_invoke;
  v26[3] = &unk_1E85CCF88;
  v26[4] = self;
  v27 = v5;
  v17 = v17;
  v28 = v17;
  v29 = shouldSuggestANCMode;
  [v25 getPairedDeviceSupportsHearingProtection:v26];

LABEL_24:
}

uint64_t __50__HUNoiseController_showNotificationForAlertType___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Is showing hearing protection suggestion %d", v7, 8u);
  }

  result = [*(a1 + 32) sendNotificationRequestWithTitle:*(a1 + 40) body:*(a1 + 48) suggestANCMode:*(a1 + 56) suggestHearingProtection:a2];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)sendNotificationRequestWithTitle:(id)title body:(id)body suggestANCMode:(BOOL)mode suggestHearingProtection:(BOOL)protection
{
  modeCopy = mode;
  v29 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  bodyCopy = body;
  if (protection)
  {
    if (_os_feature_enabled_impl())
    {
      v12 = accessibilityHearingAidSupportBundle();
      v13 = [v12 localizedStringForKey:@"NoiseEverywhereProtectionSuggestion" value:@"NoiseEverywhereProtectionSuggestion" table:@"HearingProtection-Yodel"];

      goto LABEL_9;
    }

    v14 = @"NoiseAlertDamageWarning";
  }

  else if (modeCopy)
  {
    v14 = @"NoiseAlertDamageWarningConsiderSuggestionANC";
  }

  else
  {
    v14 = @"NoiseAlertDamageWarningConsiderSuggestion";
  }

  v13 = hearingLocString(v14);
LABEL_9:
  v15 = [bodyCopy stringByAppendingFormat:@"\n\n%@", v13];

  v16 = [MEMORY[0x1E6983278] categoryWithIdentifier:@"com.apple.noise.threshold" actions:MEMORY[0x1E695E0F0] intentIdentifiers:MEMORY[0x1E695E0F0] options:0];
  userNotificationCenter = self->_userNotificationCenter;
  v18 = [MEMORY[0x1E695DFD8] setWithObject:v16];
  [(UNUserNotificationCenter *)userNotificationCenter setNotificationCategories:v18];

  v19 = objc_opt_new();
  [v19 setCategoryIdentifier:@"com.apple.noise.threshold"];
  [v19 setThreadIdentifier:@"com.apple.noise.threshold"];
  [v19 setExpirationDate:0];
  [v19 setTitle:titleCopy];
  [v19 setBody:v15];
  defaultSound = [MEMORY[0x1E69832B8] defaultSound];
  [v19 setSound:defaultSound];

  [v19 setInterruptionLevel:2];
  v21 = MEMORY[0x1E6983298];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v24 = [v21 requestWithIdentifier:uUIDString content:v19 trigger:0 destinations:15];

  [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v24 withCompletionHandler:&__block_literal_global_391];
  v25 = HCLogHearingProtection();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "Notification request added to notification center: %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __99__HUNoiseController_sendNotificationRequestWithTitle_body_suggestANCMode_suggestHearingProtection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingProtection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __99__HUNoiseController_sendNotificationRequestWithTitle_body_suggestANCMode_suggestHearingProtection___block_invoke_cold_1();
    }
  }
}

- (unint64_t)alertTypeFromLevel:(float)level
{
  if (level >= 80.0 && level < 85.0)
  {
    return 1;
  }

  if (level >= 85.0 && level < 90.0)
  {
    return 2;
  }

  if (level >= 90.0 && level < 95.0)
  {
    return 3;
  }

  if (level >= 95.0 && level < 100.0)
  {
    return 4;
  }

  if (level >= 100.0 && level <= 110.0)
  {
    return 5;
  }

  if (level > 110.0)
  {
    return 6;
  }

  return 0;
}

- (void)restartADAMTimer
{
  if (!_AXSVoiceOverTouchEnabled())
  {
    [(AXDispatchTimer *)self->_adamSuspendedTimer cancel];
    objc_initWeak(&location, self);
    adamSuspendedTimer = self->_adamSuspendedTimer;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__HUNoiseController_restartADAMTimer__block_invoke;
    v4[3] = &unk_1E85C9F10;
    objc_copyWeak(&v5, &location);
    [(AXDispatchTimer *)adamSuspendedTimer afterDelay:v4 processBlock:1.0];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __37__HUNoiseController_restartADAMTimer__block_invoke(uint64_t a1)
{
  v2 = HCLogHearingProtection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Didn't receive measurements from ADAM.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMeasurementEnabled:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__HUNoiseController_restartADAMTimer__block_invoke_392;
  block[3] = &unk_1E85C9F10;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __37__HUNoiseController_restartADAMTimer__block_invoke_392(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendUpdateMessageForCurrentValues];
}

- (void)processMeasurement:(id)measurement withMetadata:(id)metadata
{
  measurementCopy = measurement;
  metadataCopy = metadata;
  [(HUNoiseController *)self setMeasurementEnabled:1];
  [(HUNoiseController *)self restartADAMTimer];
  dataQueue = [(HUNoiseController *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HUNoiseController_processMeasurement_withMetadata___block_invoke;
  block[3] = &unk_1E85CA468;
  v12 = measurementCopy;
  selfCopy = self;
  v14 = metadataCopy;
  v9 = metadataCopy;
  v10 = measurementCopy;
  dispatch_async(dataQueue, block);
}

uint64_t __53__HUNoiseController_processMeasurement_withMetadata___block_invoke(id *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  [a1[4] floatValue];
  v3 = v2;
  v4 = [a1[5] _fetchDeviceState];
  v6 = v5;
  v7 = v3;
  [HUNoiseUtilities attenuationForExposure:v4 deviceType:v5 andListeningState:v3];
  v9 = v8;
  v10 = [a1[6] objectForKey:@"FastData"];
  v11 = [v10 BOOLValue];

  v12 = +[HUNoiseSettings sharedInstance];
  v13 = [v12 noiseEnabled];

  if (v13)
  {
    v14 = [HUNoiseSample alloc];
    v15 = [MEMORY[0x1E695DF00] date];
    [a1[5] sampleDuration];
    LODWORD(v18) = v17;
    v16 = v9;
    *&v19 = v16;
    v20 = [(HUNoiseSample *)v14 initWithSampleDate:v15 splValue:v19 andDuration:v18];

    v21 = [a1[5] attenuationBuffer];
    [v21 addObject:v20];

    v22 = a1[5];
    *&v23 = v3;
    if (v11)
    {
      [v22 setFastLeq:v23];
    }

    else
    {
      [v22 setSlowLeq:v23];
      v24 = +[HUNoiseSettings sharedInstance];
      v25 = [v24 notificationsEnabled];

      if (v25)
      {
        v26 = a1[5];
        [v26 sampleDuration];
        LODWORD(v28) = v27;
        *&v29 = v7 - v9;
        [v26 applyNotificationLogicForSPL:v29 withDuration:v28];
        v30 = a1[5];
        [v30 sampleDuration];
        LODWORD(v32) = v31;
        *&v33 = v7 - v9;
        [v30 applyAnalyticsNotificationLogicForSPL:v33 withDuration:v32];
      }
    }

    v34 = [MEMORY[0x1E695DF00] date];
    v35 = [a1[5] attenuationBuffer];
    v36 = [v35 firstObject];
    v37 = [v36 sampleDate];
    [v34 timeIntervalSinceDate:v37];
    v39 = v38;

    if (v39 > 5.0)
    {
      [a1[5] writeAttentuationSampleToHealth];
    }

    v40 = +[HUNoiseSettings sharedInstance];
    v41 = [v40 internalLoggingEnabled];

    if (v41)
    {
      v42 = HCLogHearingProtection();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
        v44 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
        v58 = 134218754;
        v59 = v3;
        v60 = 2048;
        v61 = v9;
        v62 = 2112;
        v63 = v43;
        v64 = 2112;
        v65 = v44;
        _os_log_impl(&dword_1DA5E2000, v42, OS_LOG_TYPE_DEFAULT, "Measured %lf with attenuation %lf for listening mode %@ and device type %@", &v58, 0x2Au);
      }
    }

    [a1[5] _sendUpdateMessageForCurrentValues];
  }

  if ((v11 & 1) == 0)
  {
    v45 = +[HUNoiseSettings sharedInstance];
    v46 = [v45 contextualVolumeNeedsEnvironmentalMeasurements];

    if (v46)
    {
      v47 = [HUNoiseSample alloc];
      v48 = [MEMORY[0x1E695DF00] date];
      [a1[5] sampleDuration];
      LODWORD(v50) = v49;
      *&v51 = v3;
      v52 = [(HUNoiseSample *)v47 initWithSampleDate:v48 splValue:v51 andDuration:v50];

      v53 = a1[5];
      v54 = [v53 contextualVolumeBuffer];
      LODWORD(v55) = 1211090944;
      [v53 addNoiseSample:v52 toCircularBuffer:v54 forMinTime:v55];
    }
  }

  result = [a1[5] internalDataCollectionEnabled];
  if (result)
  {
    result = [a1[5] _internalDataCollectionLogSPLValue:a1[4] metaData:a1[6]];
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)readEnvironmentalDosimetryLevels
{
  objc_initWeak(&location, self);
  dataQueue = [(HUNoiseController *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HUNoiseController_readEnvironmentalDosimetryLevels__block_invoke;
  block[3] = &unk_1E85CAA40;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(dataQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__HUNoiseController_readEnvironmentalDosimetryLevels__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  v4 = +[AXHeardController sharedServer];
  v5 = [v4 countOfClientsListeningForIdentifier:0x40000];

  if (v5)
  {
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Configuring for foreground measurements.", buf, 2u);
    }

    LODWORD(v7) = 1148846080;
    [*(a1 + 32) setSampleDuration:v7];
    v8 = [*(a1 + 32) measurementConfigurationWithDuration:100 period:100 config:1];
LABEL_5:
    v9 = v8;
    [*(a1 + 32) stopReceivingAudioDosageSamples];
    v10 = [*(a1 + 32) edDataReceiver];
    [v10 configureAudioSampleType:1702260324 configuration:v9];

    v11 = [*(a1 + 32) edDataReceiver];
    v12 = [v11 isMeasurementOnForAudioSampleType:1702260324];

    if ((v12 & 1) == 0)
    {
      v13 = [*(a1 + 32) edDataReceiver];
      [v13 startMeasuringAudioSampleType:1702260324 withConfiguration:v9];
    }

    [*(a1 + 32) restartADAMTimer];
    v14 = [*(a1 + 32) edDataReceiver];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__HUNoiseController_readEnvironmentalDosimetryLevels__block_invoke_403;
    v25[3] = &unk_1E85CCFB0;
    objc_copyWeak(&v26, (a1 + 40));
    [v14 startReceivingAudioSampleType:1702260324 withCallback:v25];

    objc_destroyWeak(&v26);
    goto LABEL_17;
  }

  if (v3 & 1) == 0 && ([*(a1 + 32) shouldEnableNoiseMeasurements])
  {
    v15 = [MEMORY[0x1E69A4560] supportsAlwaysListening];
    v16 = HCLogHearingProtection();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring for background measurements with AOM.", buf, 2u);
      }

      LODWORD(v18) = 1148846080;
      [*(a1 + 32) setSampleDuration:v18];
      v8 = [*(a1 + 32) measurementConfigurationWithDuration:1000 period:1000 config:0];
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "Configuring for background measurements.", buf, 2u);
      }

      LODWORD(v24) = 1167867904;
      [*(a1 + 32) setSampleDuration:v24];
      v8 = [*(a1 + 32) measurementConfigurationWithDuration:1000 period:5000 config:0];
    }

    goto LABEL_5;
  }

  v19 = HCLogHearingProtection();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v3;
    _os_log_impl(&dword_1DA5E2000, v19, OS_LOG_TYPE_DEFAULT, "Skipping background measurements. Low power enabled %d", buf, 8u);
  }

  v21 = *(a1 + 32);
  v20 = (a1 + 32);
  [v21 setMeasurementEnabled:0];
  v22 = [*v20 edDataReceiver];
  [v22 stopReceivingAudioSampleType:1702260324];

  v9 = [*v20 edDataReceiver];
  [v9 stopMeasuringAudioSampleType:1702260324];
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
}

void __53__HUNoiseController_readEnvironmentalDosimetryLevels__block_invoke_403(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processMeasurement:v6 withMetadata:v5];
}

- (void)_sendUpdateMessageForCurrentValues
{
  dataQueue = [(HUNoiseController *)self dataQueue];
  dispatch_assert_queue_V2(dataQueue);

  [(HUNoiseController *)self slowLeq];
  if (v4 != 1.1755e-38 && ([(HUNoiseController *)self fastLeq], v5 != 1.1755e-38) || ![(HUNoiseController *)self isMeasurementEnabled])
  {
    _fetchDeviceState = [(HUNoiseController *)self _fetchDeviceState];
    v8 = v7;
    [(HUNoiseController *)self slowLeq];
    v10 = v9;
    [(HUNoiseController *)self fastLeq];
    v12 = v11;
    [HUNoiseUtilities attenuationForExposure:_fetchDeviceState deviceType:v8 andListeningState:v10];
    v14 = v13;
    [HUNoiseUtilities attenuationForExposure:_fetchDeviceState deviceType:v8 andListeningState:v12];
    v16 = v15;
    if ((v10 - v14) >= 80.0)
    {
      v17 = 80;
    }

    else
    {
      v17 = 0;
    }

    *&v15 = v10 - v14;
    [(HUNoiseController *)self setThresholdLevel:v17, v15];
    v33 = MEMORY[0x1E695DF20];
    *&v18 = v10;
    v32 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v19 = MEMORY[0x1E696AD98];
    [(HUNoiseController *)self fastLeq];
    v31 = [v19 numberWithFloat:?];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[HUNoiseController isMeasurementEnabled](self, "isMeasurementEnabled")}];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HUNoiseController thresholdLevel](self, "thresholdLevel")}];
    *&v21 = v14;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    *&v23 = v16;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[HUNoiseController isWearingAirPods](self, "isWearingAirPods")}];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:_fetchDeviceState];
    v27 = [v33 dictionaryWithObjectsAndKeys:{v32, @"HUEDSlowLeqIdentifier", v31, @"HUEDFastLeqIdentifier", v30, @"HUEDEnabledIdentifier", v20, @"HUEDThresholdCrossedIdentifier", v22, @"HUEDSlowAttenuationLevelIdentifier", v24, @"HUEDFastAttenuationLevelIdentifier", v25, @"HUEDWearingAirPodsIdentifier", v26, @"HUEDDeviceTypeIdentifier", 0}];

    v34 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v27 andIdentifier:0x40000];

    v28 = +[AXHeardController sharedServer];
    v29 = [MEMORY[0x1E69A4570] messageWithPayload:v34];
    [v28 sendUpdateMessage:v29 forIdentifier:0x40000];
  }
}

- (void)_clearCachedValues
{
  dataQueue = [(HUNoiseController *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__HUNoiseController__clearCachedValues__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

uint64_t __39__HUNoiseController__clearCachedValues__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = 0x800000;
  [*(a1 + 32) setSlowLeq:a2];
  LODWORD(v3) = 0x800000;
  [*(a1 + 32) setFastLeq:v3];
  v4 = *(a1 + 32);

  return [v4 setMeasurementEnabled:0];
}

- (void)stopReceivingAudioDosageSamples
{
  v3 = HCLogHearingProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "stop receiving audio dosage samples. clearing cached values", v4, 2u);
  }

  [(HUNoiseController *)self _clearCachedValues];
  [(AXDispatchTimer *)self->_adamSuspendedTimer cancel];
  [(ADAMAudioDataReceiver *)self->_edDataReceiver stopReceivingAudioSampleType:1702260324];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_fetchDeviceState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_1DA69C252;
  v2 = +[HUAccessoryManager sharedInstance];
  sharedQueue = [v2 sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__HUNoiseController__fetchDeviceState__block_invoke;
  block[3] = &unk_1E85C9FB0;
  block[4] = &v9;
  dispatch_sync(sharedQueue, block);

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

void __38__HUNoiseController__fetchDeviceState__block_invoke(uint64_t a1)
{
  v5 = +[HUAccessoryHearingSyncManager sharedInstance];
  v2 = [v5 deviceState];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
}

- (void)applyNotificationLogicForSPL:(float)l withDuration:(float)duration
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = +[HUNoiseSettings sharedInstance];
  notificationsEnabled = [v7 notificationsEnabled];

  if (!notificationsEnabled)
  {
LABEL_8:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([(HUNoiseController *)self isNotified])
  {
    if ([(HUNoiseController *)self isMuted])
    {
      date = [MEMORY[0x1E695DF00] date];
      v16 = +[HUNoiseSettings sharedInstance];
      notificationMuteDate = [v16 notificationMuteDate];
      [date timeIntervalSinceDate:notificationMuteDate];
      v19 = v18;

      if (v19 > 0.0)
      {
        v20 = HCLogHearingProtection();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = +[HUNoiseSettings sharedInstance];
          notificationMuteDate2 = [v21 notificationMuteDate];
          v28 = 138412290;
          v29 = notificationMuteDate2;
          _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "Resetting notifications since it has past the notification mute date of %@", &v28, 0xCu);
        }

        [(HUNoiseController *)self setNotified:0];
        [(HUNoiseController *)self setMuted:0];
      }

      goto LABEL_8;
    }

    leqBuffer = self->_leqBuffer;
    v27 = *MEMORY[0x1E69E9840];
    LODWORD(v14) = 1230748160;
    *&v12 = l;
    *&v13 = duration;

    [(HUNoiseController *)self checkToResetNotificationsForSPL:leqBuffer withDuration:v12 andBuffer:v13 forTime:v14];
  }

  else
  {
    v24 = self->_leqBuffer;
    v25 = *MEMORY[0x1E69E9840];
    LODWORD(v11) = 1211090944;
    *&v9 = l;
    *&v10 = duration;

    [(HUNoiseController *)self checkToSurfaceNotificationForSPL:v24 withDuration:v9 andBuffer:v10 forTime:v11];
  }
}

- (void)checkToResetNotificationsForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time
{
  v41 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v11 = [HUNoiseSample alloc];
  date = [MEMORY[0x1E695DF00] date];
  *&v13 = l;
  *&v14 = duration;
  v15 = [(HUNoiseSample *)v11 initWithSampleDate:date splValue:v13 andDuration:v14];

  *&v16 = time;
  [(HUNoiseController *)self addNoiseSample:v15 toCircularBuffer:bufferCopy forMinTime:v16];
  if ([bufferCopy count])
  {
    firstObject = [bufferCopy firstObject];
    sampleDate = [firstObject sampleDate];

    lastObject = [bufferCopy lastObject];
    sampleDate2 = [lastObject sampleDate];

    lastObject2 = [bufferCopy lastObject];
    [lastObject2 sampleDuration];
    v23 = v22;

    [sampleDate2 timeIntervalSinceDate:sampleDate];
    v25 = v24;
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:self->_timeNotified];
    v28 = (v27 * 1000.0);

    if (v28 >= time && (v29 = v23 + v25 * 1000.0, (time * 90.0) / 100.0 <= v29) && (-[HUNoiseController calculateLeqForBuffer:](self, "calculateLeqForBuffer:", bufferCopy), v31 = v30, +[HUNoiseSettings sharedInstance](HUNoiseSettings, "sharedInstance"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 notificationThreshold], v32, v31 < v33))
    {
      v34 = HCLogHearingProtection();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = +[HUNoiseSettings sharedInstance];
        v37 = 134218240;
        v38 = v31;
        v39 = 1024;
        notificationThreshold = [v35 notificationThreshold];
        _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "Resetting notifications for Leq %0.1f dB being under %i dB threshold for minimum reset time", &v37, 0x12u);
      }
    }

    else
    {
      if (v28 < 0x1B7740)
      {
LABEL_13:

        goto LABEL_14;
      }

      v34 = HCLogHearingProtection();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "Resetting notifications since it has been more than general reset time", &v37, 2u);
      }
    }

    [(HUNoiseController *)self setNotified:0];
    goto LABEL_13;
  }

  sampleDate = HCLogHearingProtection();
  if (os_log_type_enabled(sampleDate, OS_LOG_TYPE_ERROR))
  {
    [HUNoiseController checkToResetNotificationsForSPL:withDuration:andBuffer:forTime:];
  }

LABEL_14:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)checkToSurfaceNotificationForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time
{
  v71 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v11 = [HUNoiseSample alloc];
  date = [MEMORY[0x1E695DF00] date];
  *&v13 = l;
  *&v14 = duration;
  v15 = [(HUNoiseSample *)v11 initWithSampleDate:date splValue:v13 andDuration:v14];

  [(HUNoiseController *)self logThresholdTransitionForSample:v15];
  *&v16 = time;
  [(HUNoiseController *)self addNoiseSample:v15 toCircularBuffer:bufferCopy forMinTime:v16];
  if ([bufferCopy count])
  {
    firstObject = [bufferCopy firstObject];
    sampleDate = [firstObject sampleDate];

    lastObject = [bufferCopy lastObject];
    sampleDate2 = [lastObject sampleDate];

    lastObject2 = [bufferCopy lastObject];
    [lastObject2 sampleDuration];
    v23 = v22;

    [sampleDate2 timeIntervalSinceDate:sampleDate];
    v25 = v24;
    v26 = +[HUNoiseSettings sharedInstance];
    if ([v26 notificationThreshold] <= l && (v27 = v23 + v25 * 1000.0, (time * 90.0) / 100.0 <= v27))
    {

      if (v27 > 15000.0)
      {
        v29 = HCLogHearingProtection();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = +[HUNoiseSettings sharedInstance];
          LODWORD(buf) = 67109376;
          DWORD1(buf) = [v30 notificationThreshold];
          WORD4(buf) = 1024;
          *(&buf + 10) = time;
          _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "Sample is above threshold of %i dB and buffered more than %i ms", &buf, 0xEu);
        }

        v31 = [sampleDate2 dateByAddingTimeInterval:-15.0];
        v32 = HCLogHearingProtection();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "Leq buffer gating date: %@", &buf, 0xCu);
        }

        v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __85__HUNoiseController_checkToSurfaceNotificationForSPL_withDuration_andBuffer_forTime___block_invoke;
        v62[3] = &unk_1E85CCFD8;
        v60 = v31;
        v63 = v60;
        v34 = v33;
        v64 = v34;
        [bufferCopy enumerateObjectsUsingBlock:v62];
        if ([v34 count])
        {
          v35 = HCLogHearingProtection();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v34 count];
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v36;
            _os_log_impl(&dword_1DA5E2000, v35, OS_LOG_TYPE_DEFAULT, "Total count of samples beyond gate date: %i", &buf, 8u);
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v69 = 0x2020000000;
          v70 = 0;
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __85__HUNoiseController_checkToSurfaceNotificationForSPL_withDuration_andBuffer_forTime___block_invoke_412;
          v61[3] = &unk_1E85CD000;
          v61[4] = &buf;
          [v34 enumerateObjectsUsingBlock:v61];
          v37 = HCLogHearingProtection();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(*(&buf + 1) + 24);
            *v65 = 67109120;
            *v66 = v38;
            _os_log_impl(&dword_1DA5E2000, v37, OS_LOG_TYPE_DEFAULT, "Count of samples beyond gate date and above threshold: %i", v65, 8u);
          }

          v39 = *(*(&buf + 1) + 24);
          v40 = (v39 / [v34 count]) * 100.0;
          if (v40 >= 50.0)
          {
            v41 = HCLogHearingProtection();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = +[HUNoiseSettings sharedInstance];
              notificationThreshold = [v42 notificationThreshold];
              *v65 = 67109632;
              *v66 = v40;
              *&v66[4] = 1024;
              *&v66[6] = 15;
              LOWORD(v67) = 1024;
              *(&v67 + 2) = notificationThreshold;
              _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "Checking to surface notification: %i percent of last %i seconds of samples are above %i dB set threshold - calculating leq", v65, 0x14u);
            }

            [(HUNoiseController *)self calculateLeqForBuffer:bufferCopy];
            v45 = v44;
            v46 = HCLogHearingProtection();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *v65 = 134217984;
              *v66 = v45;
              _os_log_impl(&dword_1DA5E2000, v46, OS_LOG_TYPE_DEFAULT, "Calculated Leq: %0.1f dB", v65, 0xCu);
            }

            v47 = +[HUNoiseSettings sharedInstance];
            v48 = v45 < [v47 notificationThreshold];

            if (!v48)
            {
              v49 = HCLogHearingProtection();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = +[HUNoiseSettings sharedInstance];
                notificationThreshold2 = [v50 notificationThreshold];
                *v65 = 134218240;
                *v66 = v45;
                *&v66[8] = 1024;
                LODWORD(v67) = notificationThreshold2;
                _os_log_impl(&dword_1DA5E2000, v49, OS_LOG_TYPE_DEFAULT, "Leq over last 3 minutes is %0.0f dB, which is over set threshold of %i dB.", v65, 0x12u);
              }

              *&v52 = v45;
              [(HUNoiseController *)self logNoiseBuffer:bufferCopy calculatedLeq:v52];
              *&v53 = v45;
              [(HUNoiseController *)self showNotificationForAlertType:[(HUNoiseController *)self alertTypeFromLevel:v53]];
              [(HUNoiseController *)self setNotified:1];
              date2 = [MEMORY[0x1E695DF00] date];
              [(HUNoiseController *)self setTimeNotified:date2];

              *&v55 = v45;
              [(HUNoiseController *)self writeNotificationSampleToHKWithSPL:sampleDate startDate:sampleDate2 endDate:v55];
              v56 = HCLogHearingProtection();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                timeNotified = self->_timeNotified;
                *v65 = 138412546;
                *v66 = timeNotified;
                *&v66[8] = 2048;
                v67 = v45;
                _os_log_impl(&dword_1DA5E2000, v56, OS_LOG_TYPE_DEFAULT, "Completed surfacing notification at %@ for Leq %0.1f dB and writing sample to HK", v65, 0x16u);
              }

              mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
              isHealthDataSubmissionAllowed = [mEMORY[0x1E69ADFB8] isHealthDataSubmissionAllowed];

              if (isHealthDataSubmissionAllowed)
              {
                AnalyticsSendEventLazy();
              }

              _Block_object_dispose(&buf, 8);

              goto LABEL_5;
            }
          }

          _Block_object_dispose(&buf, 8);
        }
      }
    }

    else
    {
    }

LABEL_5:

    goto LABEL_8;
  }

  sampleDate = HCLogHearingProtection();
  if (os_log_type_enabled(sampleDate, OS_LOG_TYPE_ERROR))
  {
    [HUNoiseController checkToSurfaceNotificationForSPL:withDuration:andBuffer:forTime:];
  }

LABEL_8:

  v28 = *MEMORY[0x1E69E9840];
}

void __85__HUNoiseController_checkToSurfaceNotificationForSPL_withDuration_andBuffer_forTime___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sampleDate];
  v5 = [v4 compare:*(a1 + 32)];

  if (v5 != -1)
  {
    [*(a1 + 40) addObject:v3];
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [v3 splValue];
      v8 = v7;
      v9 = [v3 sampleDate];
      v11 = 134218242;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sample is beyond gate date: %0.1f, %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __85__HUNoiseController_checkToSurfaceNotificationForSPL_withDuration_andBuffer_forTime___block_invoke_412(uint64_t a1, void *a2)
{
  [a2 splValue];
  v4 = v3;
  v5 = +[HUNoiseSettings sharedInstance];
  v6 = [v5 notificationThreshold];

  if (v4 >= v6)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

id __85__HUNoiseController_checkToSurfaceNotificationForSPL_withDuration_andBuffer_forTime___block_invoke_417(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"timeNotified";
  v2 = [MEMORY[0x1E696AB78] localizedStringFromDate:*(*(a1 + 32) + 80) dateStyle:3 timeStyle:3];
  v12[0] = v2;
  v11[1] = @"leq";
  LODWORD(v3) = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v12[1] = v4;
  v11[2] = @"notificationThreshold";
  v5 = MEMORY[0x1E696AD98];
  v6 = +[HUNoiseSettings sharedInstance];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "notificationThreshold")}];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)applyAnalyticsNotificationLogicForSPL:(float)l withDuration:(float)duration
{
  v7 = +[HUNoiseSettings sharedInstance];
  notificationsEnabled = [v7 notificationsEnabled];

  if (notificationsEnabled)
  {
    isNotified80 = [(HUNoiseController *)self isNotified80];
    leqBuffer80Threshold = self->_leqBuffer80Threshold;
    if (isNotified80)
    {
      LODWORD(v12) = 1230748160;
      *&v10 = l;
      *&v11 = duration;
      [(HUNoiseController *)self checkToResetAnalyticsNotificationsForSPL:leqBuffer80Threshold withDuration:0 andBuffer:v10 forTime:v11 andThreshold:v12];
    }

    else
    {
      LODWORD(v12) = 1211090944;
      *&v10 = l;
      *&v11 = duration;
      [(HUNoiseController *)self checkToSurfaceAnalyticsNotificationForSPL:leqBuffer80Threshold withDuration:0 andBuffer:v10 forTime:v11 andThreshold:v12];
    }

    isNotified85 = [(HUNoiseController *)self isNotified85];
    leqBuffer85Threshold = self->_leqBuffer85Threshold;
    if (isNotified85)
    {
      LODWORD(v17) = 1230748160;
      *&v15 = l;
      *&v16 = duration;
      [(HUNoiseController *)self checkToResetAnalyticsNotificationsForSPL:leqBuffer85Threshold withDuration:1 andBuffer:v15 forTime:v16 andThreshold:v17];
    }

    else
    {
      LODWORD(v17) = 1211090944;
      *&v15 = l;
      *&v16 = duration;
      [(HUNoiseController *)self checkToSurfaceAnalyticsNotificationForSPL:leqBuffer85Threshold withDuration:1 andBuffer:v15 forTime:v16 andThreshold:v17];
    }

    isNotified90 = [(HUNoiseController *)self isNotified90];
    leqBuffer90Threshold = self->_leqBuffer90Threshold;
    if (isNotified90)
    {
      LODWORD(v22) = 1230748160;
      *&v20 = l;
      *&v21 = duration;

      [(HUNoiseController *)self checkToResetAnalyticsNotificationsForSPL:leqBuffer90Threshold withDuration:2 andBuffer:v20 forTime:v21 andThreshold:v22];
    }

    else
    {
      LODWORD(v22) = 1211090944;
      *&v20 = l;
      *&v21 = duration;

      [(HUNoiseController *)self checkToSurfaceAnalyticsNotificationForSPL:leqBuffer90Threshold withDuration:2 andBuffer:v20 forTime:v21 andThreshold:v22];
    }
  }
}

- (void)checkToResetAnalyticsNotificationsForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time andThreshold:(int64_t)threshold
{
  v43 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v13 = [HUNoiseSample alloc];
  date = [MEMORY[0x1E695DF00] date];
  *&v15 = l;
  *&v16 = duration;
  v17 = [(HUNoiseSample *)v13 initWithSampleDate:date splValue:v15 andDuration:v16];

  [bufferCopy addObject:v17];
  *&v18 = time;
  [(HUNoiseController *)self maintainCircularBuffer:bufferCopy forTime:v18];
  if ([bufferCopy count])
  {
    firstObject = [bufferCopy firstObject];
    sampleDate = [firstObject sampleDate];

    lastObject = [bufferCopy lastObject];
    sampleDate2 = [lastObject sampleDate];

    lastObject2 = [bufferCopy lastObject];
    [lastObject2 sampleDuration];
    v25 = v24;

    [sampleDate2 timeIntervalSinceDate:sampleDate];
    v27 = v26;
    if (threshold > 2)
    {
      v31 = 0;
      v28 = 0.0;
    }

    else
    {
      v28 = flt_1DA6876E8[threshold];
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:(&self->_timeNotified80)[threshold]];
      v31 = (v30 * 1000.0);
    }

    *&v26 = v31;
    if (v31 >= time && (v32 = v25 + v27 * 1000.0, v26 = v32, (time * 90.0) / 100.0 <= v26) && ([(HUNoiseController *)self calculateLeqForBuffer:bufferCopy], *&v26 < v28))
    {
      v33 = *&v26;
      switch(threshold)
      {
        case 2:
          [(HUNoiseController *)self setNotified90:0];
          break;
        case 1:
          [(HUNoiseController *)self setNotified85:0];
          break;
        case 0:
          [(HUNoiseController *)self setNotified80:0];
          break;
      }

      v34 = HCLogHearingProtection();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v39 = 134218240;
      v40 = v33;
      v41 = 1024;
      v42 = v28;
      v35 = "[Analytics]: Resetting notifications for Leq %0.1f dB being under %i dB threshold for minimum reset time";
      v36 = v34;
      v37 = 18;
    }

    else
    {
      if (v31 < 0x1B7740)
      {
LABEL_29:

        goto LABEL_30;
      }

      switch(threshold)
      {
        case 2:
          [(HUNoiseController *)self setNotified90:0, v26];
          break;
        case 1:
          [(HUNoiseController *)self setNotified85:0, v26];
          break;
        case 0:
          [(HUNoiseController *)self setNotified80:0, v26];
          break;
      }

      v34 = HCLogHearingProtection();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      v39 = 67109120;
      LODWORD(v40) = v28;
      v35 = "[Analytics] Resetting notifications since it has been more than general reset time for %i dB threshold";
      v36 = v34;
      v37 = 8;
    }

    _os_log_impl(&dword_1DA5E2000, v36, OS_LOG_TYPE_DEFAULT, v35, &v39, v37);
    goto LABEL_28;
  }

  sampleDate = HCLogHearingProtection();
  if (os_log_type_enabled(sampleDate, OS_LOG_TYPE_ERROR))
  {
    [HUNoiseController checkToResetAnalyticsNotificationsForSPL:withDuration:andBuffer:forTime:andThreshold:];
  }

LABEL_30:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)checkToSurfaceAnalyticsNotificationForSPL:(float)l withDuration:(float)duration andBuffer:(id)buffer forTime:(float)time andThreshold:(int64_t)threshold
{
  v65 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x1E69ADFB8] isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v15 = [HUNoiseSample alloc];
    date = [MEMORY[0x1E695DF00] date];
    *&v17 = l;
    *&v18 = duration;
    v19 = [(HUNoiseSample *)v15 initWithSampleDate:date splValue:v17 andDuration:v18];

    [bufferCopy addObject:v19];
    *&v20 = time;
    [(HUNoiseController *)self maintainCircularBuffer:bufferCopy forTime:v20];
    if (![bufferCopy count])
    {
      sampleDate = HCLogHearingProtection();
      if (os_log_type_enabled(sampleDate, OS_LOG_TYPE_ERROR))
      {
        [HUNoiseController checkToSurfaceAnalyticsNotificationForSPL:withDuration:andBuffer:forTime:andThreshold:];
      }

      goto LABEL_41;
    }

    firstObject = [bufferCopy firstObject];
    sampleDate = [firstObject sampleDate];

    lastObject = [bufferCopy lastObject];
    sampleDate2 = [lastObject sampleDate];

    lastObject2 = [bufferCopy lastObject];
    [lastObject2 sampleDuration];
    v27 = v26;

    [sampleDate2 timeIntervalSinceDate:sampleDate];
    v29 = 0.0;
    if (threshold <= 2)
    {
      v29 = flt_1DA6876E8[threshold];
    }

    if (v29 > l || ((v30 = v27 + v28 * 1000.0, v30 > 15000.0) ? (v31 = (time * 90.0) / 100.0 > v30) : (v31 = 1), v31))
    {
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v32 = HCLogHearingProtection();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v29;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = time;
      _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "[Analytics] Sample is above threshold of %i dB and buffered more than %i ms", buf, 0xEu);
    }

    v33 = [sampleDate2 dateByAddingTimeInterval:-15.0];
    v34 = HCLogHearingProtection();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v29;
      LOWORD(v63) = 2112;
      *(&v63 + 2) = v33;
      _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "[Analytics] Leq buffer gating date for %i dB threshold: %@", buf, 0x12u);
    }

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __107__HUNoiseController_checkToSurfaceAnalyticsNotificationForSPL_withDuration_andBuffer_forTime_andThreshold___block_invoke;
    v55[3] = &unk_1E85CD050;
    v52 = v33;
    v56 = v52;
    v36 = v35;
    v57 = v36;
    v58 = v29;
    [bufferCopy enumerateObjectsUsingBlock:v55];
    if (![v36 count])
    {
LABEL_39:

      goto LABEL_40;
    }

    v37 = HCLogHearingProtection();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v36 count];
      *buf = 67109376;
      *&buf[4] = v29;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = v38;
      _os_log_impl(&dword_1DA5E2000, v37, OS_LOG_TYPE_DEFAULT, "[Analytics] Total count of samples beyond gate date for %i dB threshold: %i", buf, 0xEu);
    }

    *buf = 0;
    *&v63 = buf;
    *(&v63 + 1) = 0x2020000000;
    v64 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __107__HUNoiseController_checkToSurfaceAnalyticsNotificationForSPL_withDuration_andBuffer_forTime_andThreshold___block_invoke_429;
    v53[3] = &unk_1E85CD078;
    v54 = v29;
    v53[4] = buf;
    [v36 enumerateObjectsUsingBlock:v53];
    v39 = HCLogHearingProtection();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(v63 + 24);
      *v59 = 67109376;
      *v60 = v29;
      *&v60[4] = 1024;
      *&v60[6] = v40;
      _os_log_impl(&dword_1DA5E2000, v39, OS_LOG_TYPE_DEFAULT, "[Analytics] Count of samples beyond gate date and above %i dB threshold: %i", v59, 0xEu);
    }

    v41 = *(v63 + 24);
    v42 = (v41 / [v36 count]) * 100.0;
    if (v42 < 50.0)
    {
      goto LABEL_38;
    }

    v43 = HCLogHearingProtection();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 67109632;
      *v60 = v42;
      *&v60[4] = 1024;
      *&v60[6] = 15;
      LOWORD(v61[0]) = 1024;
      *(v61 + 2) = v29;
      _os_log_impl(&dword_1DA5E2000, v43, OS_LOG_TYPE_DEFAULT, "[Analytics] Checking to surface notification: %i percent of last %i seconds of samples are above %i dB set threshold - calculating leq", v59, 0x14u);
    }

    [(HUNoiseController *)self calculateLeqForBuffer:bufferCopy];
    v45 = v44;
    if (v44 < v29)
    {
LABEL_38:
      _Block_object_dispose(buf, 8);
      goto LABEL_39;
    }

    v46 = HCLogHearingProtection();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 134218240;
      *v60 = v45;
      *&v60[8] = 1024;
      v61[0] = v29;
      _os_log_impl(&dword_1DA5E2000, v46, OS_LOG_TYPE_DEFAULT, "[Analytics] Leq over last 3 minutes is %0.0f dB, which is over set threshold of %i dB.", v59, 0x12u);
    }

    mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    isHealthDataSubmissionAllowed2 = [mEMORY[0x1E69ADFB8]2 isHealthDataSubmissionAllowed];

    if (isHealthDataSubmissionAllowed2)
    {
      switch(threshold)
      {
        case 2:
          [(HUNoiseController *)self setNotified90:1];
          date2 = [MEMORY[0x1E695DF00] date];
          [(HUNoiseController *)self setTimeNotified90:date2];
          goto LABEL_34;
        case 1:
          [(HUNoiseController *)self setNotified85:1];
          date2 = [MEMORY[0x1E695DF00] date];
          [(HUNoiseController *)self setTimeNotified85:date2];
          goto LABEL_34;
        case 0:
          [(HUNoiseController *)self setNotified80:1];
          date2 = [MEMORY[0x1E695DF00] date];
          [(HUNoiseController *)self setTimeNotified80:date2];
LABEL_34:

          AnalyticsSendEventLazy();
          break;
      }
    }

    v50 = HCLogHearingProtection();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 134218240;
      *v60 = v45;
      *&v60[8] = 1024;
      v61[0] = v29;
      _os_log_impl(&dword_1DA5E2000, v50, OS_LOG_TYPE_DEFAULT, "[Analytics] Analytics notification surfaced for Leq %0.1f dB and analytics threshold %i dB", v59, 0x12u);
    }

    goto LABEL_38;
  }

LABEL_42:

  v51 = *MEMORY[0x1E69E9840];
}

void __107__HUNoiseController_checkToSurfaceAnalyticsNotificationForSPL_withDuration_andBuffer_forTime_andThreshold___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sampleDate];
  v5 = [v4 compare:*(a1 + 32)];

  if (v5 != -1)
  {
    [*(a1 + 40) addObject:v3];
    v6 = HCLogHearingProtection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      [v3 splValue];
      v9 = v8;
      v10 = [v3 sampleDate];
      v12[0] = 67109634;
      v12[1] = v7;
      v13 = 2048;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "[Analytics] Sample is beyond gate date for %i dB threshold: %0.1f, %@", v12, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __107__HUNoiseController_checkToSurfaceAnalyticsNotificationForSPL_withDuration_andBuffer_forTime_andThreshold___block_invoke_429(uint64_t a1, void *a2)
{
  result = [a2 splValue];
  if (v4 >= *(a1 + 40))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)addNoiseSample:(id)sample toCircularBuffer:(id)buffer forMinTime:(float)time
{
  bufferCopy = buffer;
  sampleCopy = sample;
  dataQueue = [(HUNoiseController *)self dataQueue];
  dispatch_assert_queue_V2(dataQueue);

  [bufferCopy addObject:sampleCopy];
  *&v10 = time;
  [(HUNoiseController *)self maintainCircularBuffer:bufferCopy forTime:v10];
}

- (void)maintainCircularBuffer:(id)buffer forTime:(float)time
{
  v27 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if ([bufferCopy count])
  {
    lastObject = [bufferCopy lastObject];
    [lastObject sampleDuration];
    v8 = v7;

    lastObject2 = [bufferCopy lastObject];
    sampleDate = [lastObject2 sampleDate];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = bufferCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      v16 = v8;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          sampleDate2 = [v18 sampleDate];
          [sampleDate timeIntervalSinceDate:sampleDate2];
          *&v20 = v16 + v20 * 1000.0;
          if (*&v20 >= time)
          {
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [v12 removeObjectsInArray:v11];
    }
  }

  else
  {
    sampleDate = HCLogHearingProtection();
    if (os_log_type_enabled(sampleDate, OS_LOG_TYPE_ERROR))
    {
      [HUNoiseController maintainCircularBuffer:forTime:];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (float)calculateLeqForBuffer:(id)buffer
{
  v24 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if ([bufferCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = bufferCopy;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          [v11 splValue];
          v13 = v12;
          [v11 sampleDuration];
          v8 = v8 + v14;
          v9 = v9 + v14 * __exp10((v13 / 10.0));
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    v16 = log10(((1.0 / v8) * v9)) * 10.0;
  }

  else
  {
    v15 = HCLogHearingProtection();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HUNoiseController calculateLeqForBuffer:];
    }

    v16 = 0.0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)writeNotificationSampleToHKWithSPL:(float)l startDate:(id)date endDate:(id)endDate
{
  v54 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  HKQuantityClass = getHKQuantityClass();
  decibelAWeightedSoundPressureLevelUnit = [getHKUnitClass() decibelAWeightedSoundPressureLevelUnit];
  lCopy = l;
  v43 = [HKQuantityClass quantityWithUnit:decibelAWeightedSoundPressureLevelUnit doubleValue:lCopy];

  v13 = getHKQuantityClass();
  decibelAWeightedSoundPressureLevelUnit2 = [getHKUnitClass() decibelAWeightedSoundPressureLevelUnit];
  v15 = +[HUNoiseSettings sharedInstance];
  v16 = [v13 quantityWithUnit:decibelAWeightedSoundPressureLevelUnit2 doubleValue:{objc_msgSend(v15, "notificationThreshold")}];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v17 = getHKMetadataKeyAudioExposureLevelSymbolLoc_ptr;
  v47 = getHKMetadataKeyAudioExposureLevelSymbolLoc_ptr;
  if (!getHKMetadataKeyAudioExposureLevelSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHKMetadataKeyAudioExposureLevelSymbolLoc_block_invoke;
    v52 = &unk_1E85C9FB0;
    v53 = &v44;
    v18 = HealthKitLibrary();
    v19 = dlsym(v18, "HKMetadataKeyAudioExposureLevel");
    *(v53[1] + 24) = v19;
    getHKMetadataKeyAudioExposureLevelSymbolLoc_ptr = *(v53[1] + 24);
    v17 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v17)
  {
    goto LABEL_17;
  }

  v20 = *v17;
  v50[0] = v43;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v21 = get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_ptr;
  v47 = get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_ptr;
  v48 = v20;
  if (!get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_block_invoke;
    v52 = &unk_1E85C9FB0;
    v53 = &v44;
    v22 = HealthKitLibrary();
    v23 = dlsym(v22, "_HKPrivateMetadataKeyAudioExposureLimit");
    *(v53[1] + 24) = v23;
    get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_ptr = *(v53[1] + 24);
    v21 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v21)
  {
    goto LABEL_17;
  }

  v49 = *v21;
  v50[1] = v16;
  v24 = MEMORY[0x1E695DF20];
  v25 = v49;
  v26 = [v24 dictionaryWithObjects:v50 forKeys:&v48 count:2];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v27 = getHKCategorySampleClass_softClass;
  v47 = getHKCategorySampleClass_softClass;
  if (!getHKCategorySampleClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHKCategorySampleClass_block_invoke;
    v52 = &unk_1E85C9FB0;
    v53 = &v44;
    __getHKCategorySampleClass_block_invoke(buf);
    v27 = v45[3];
  }

  v28 = v27;
  _Block_object_dispose(&v44, 8);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v29 = getHKObjectTypeClass_softClass;
  v47 = getHKObjectTypeClass_softClass;
  if (!getHKObjectTypeClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHKObjectTypeClass_block_invoke;
    v52 = &unk_1E85C9FB0;
    v53 = &v44;
    __getHKObjectTypeClass_block_invoke(buf);
    v29 = v45[3];
  }

  v30 = v29;
  _Block_object_dispose(&v44, 8);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v31 = getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_ptr;
  v47 = getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_ptr;
  if (!getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_block_invoke;
    v52 = &unk_1E85C9FB0;
    v53 = &v44;
    v32 = HealthKitLibrary();
    v33 = dlsym(v32, "HKCategoryTypeIdentifierEnvironmentalAudioExposureEvent");
    *(v53[1] + 24) = v33;
    getHKCategoryTypeIdentifierEnvironmentalAudioExposureEventSymbolLoc_ptr = *(v53[1] + 24);
    v31 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v31)
  {
LABEL_17:
    getADAFMetadataKeyHAEDataForGauge_cold_1();
    __break(1u);
  }

  v34 = *v31;
  v35 = [v29 categoryTypeForIdentifier:v34];
  localDevice = [getHKDeviceClass() localDevice];
  v37 = [v27 categorySampleWithType:v35 value:1 startDate:dateCopy endDate:endDateCopy device:localDevice metadata:v26];
  p_notificationSample = &self->_notificationSample;
  notificationSample = self->_notificationSample;
  self->_notificationSample = v37;

  healthStore = [(HUNoiseController *)self healthStore];
  [healthStore saveObject:*p_notificationSample withCompletion:&__block_literal_global_461];

  v41 = HCLogHearingProtection();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = lCopy;
    *&buf[12] = 2112;
    *&buf[14] = dateCopy;
    *&buf[22] = 2112;
    v52 = endDateCopy;
    _os_log_impl(&dword_1DA5E2000, v41, OS_LOG_TYPE_DEFAULT, "Wrote sample to HK for Leq: %0.1f dB, StartDate: %@, EndDate: %@", buf, 0x20u);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __74__HUNoiseController_writeNotificationSampleToHKWithSPL_startDate_endDate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = HCLogHearingProtection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__HUNoiseController_writeNotificationSampleToHKWithSPL_startDate_endDate___block_invoke_cold_1();
    }
  }
}

- (void)writeAttentuationSampleToHealth
{
  v35 = *MEMORY[0x1E69E9840];
  attenuationBuffer = [(HUNoiseController *)self attenuationBuffer];
  v4 = [attenuationBuffer copy];

  attenuationBuffer2 = [(HUNoiseController *)self attenuationBuffer];
  [attenuationBuffer2 removeAllObjects];

  [(HUNoiseController *)self calculateLeqForBuffer:v4];
  v7 = v6;
  firstObject = [v4 firstObject];
  sampleDate = [firstObject sampleDate];

  lastObject = [v4 lastObject];
  sampleDate2 = [lastObject sampleDate];

  if (v7 < 1.0 || ([sampleDate2 timeIntervalSinceDate:sampleDate], v12 <= 0.0))
  {
    v15 = HCLogHearingProtection();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "Skipping HK write %lf", &buf, 0xCu);
    }
  }

  else
  {
    HKQuantityClass = getHKQuantityClass();
    decibelAWeightedSoundPressureLevelUnit = [getHKUnitClass() decibelAWeightedSoundPressureLevelUnit];
    v15 = [HKQuantityClass quantityWithUnit:decibelAWeightedSoundPressureLevelUnit doubleValue:v7];

    v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:sampleDate endDate:sampleDate2];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = getHKQuantityDatumClass_softClass;
    v29 = getHKQuantityDatumClass_softClass;
    if (!getHKQuantityDatumClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v32 = __getHKQuantityDatumClass_block_invoke;
      v33 = &unk_1E85C9FB0;
      v34 = &v26;
      __getHKQuantityDatumClass_block_invoke(&buf);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    v19 = [v17 alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v19 initWithIdentifier:uUID dateInterval:v16 quantity:v15 resumeContext:0];

    attenuationDataCollector = self->_attenuationDataCollector;
    v30 = v21;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    localDevice = [getHKDeviceClass() localDevice];
    [(HKDataCollector *)attenuationDataCollector insertDatums:v23 device:localDevice metadata:0 completion:&__block_literal_global_465];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __52__HUNoiseController_writeAttentuationSampleToHealth__block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = HCLogHearingProtection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__HUNoiseController_writeNotificationSampleToHKWithSPL_startDate_endDate___block_invoke_cold_1();
    }
  }
}

- (void)subscribeToSharedNotifications
{
  objc_initWeak(&location, self);
  v3 = +[HUNoiseSettings sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HUNoiseController_subscribeToSharedNotifications__block_invoke;
  v13[3] = &unk_1E85CB800;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [v3 registerUpdateBlock:v13 forRetrieveSelector:sel_noiseEnabled withListener:self];

  dataQueue = [(HUNoiseController *)self dataQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_485;
  v11 = &unk_1E85CAF10;
  objc_copyWeak(&v12, &location);
  notify_register_dispatch("com.apple.coreaudio.envsenseagent", &self->_measurementSuspensionNotifyToken, dataQueue, &v8);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_lowPowerModeChanged_ name:*MEMORY[0x1E696A7D8] object:0];

  [(HUNoiseController *)self lowPowerModeChanged:0];
  if (AXIsInternalInstall())
  {
    v6 = +[HUNoiseSettings sharedInstance];
    -[HUNoiseController setInternalDataCollectionEnabled:](self, "setInternalDataCollectionEnabled:", [v6 internalDataCollectionEnabled]);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, handleInternalDataCollectionDidChangeNotification, @"com.apple.accessibility.hearing.internal.data.collection.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__HUNoiseController_subscribeToSharedNotifications__block_invoke(uint64_t a1)
{
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = [v2 noiseEnabled];

  v4 = +[HUNoiseSettings sharedInstance];
  v5 = [v4 contextualVolumeNeedsEnvironmentalMeasurements];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logNoiseEnabledStateToPowerlog:(v3 | v5) & 1];

  v7 = [*(a1 + 32) dataQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_2;
  v8[3] = &unk_1E85CD0C0;
  v10 = v3;
  objc_copyWeak(&v9, (a1 + 40));
  v11 = v5;
  dispatch_async(v7, v8);

  objc_destroyWeak(&v9);
}

void __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = HCLogHearingProtection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Noise measurements enabled.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained readEnvironmentalDosimetryLevels];
  }

  else
  {
    v4 = *(a1 + 41);
    WeakRetained = HCLogHearingProtection();
    v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v5)
      {
        *v11 = 0;
        _os_log_impl(&dword_1DA5E2000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Contextual volume is enabled. Do not disable noise measurements.", v11, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v10 = 0;
        _os_log_impl(&dword_1DA5E2000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Noise measurements disabled.", v10, 2u);
      }

      v6 = objc_loadWeakRetained((a1 + 32));
      [v6 writeAttentuationSampleToHealth];

      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 edDataReceiver];
      [v8 stopReceivingAudioSampleType:1702260324];

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = [WeakRetained edDataReceiver];
      [v9 stopMeasuringAudioSampleType:1702260324];
    }
  }
}

void __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_485(uint64_t a1, int token)
{
  state64 = -1;
  notify_get_state(token, &state64);
  v3 = state64;
  v4 = HCLogHearingProtection();
  v5 = v4;
  if (v3 == 1835885673)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Received measurement disabled by EDA.", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v7 = 0;
    goto LABEL_9;
  }

  if (v3 == 1835885934)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Received measurement enabled by EDA.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v7 = 1;
LABEL_9:
    [WeakRetained setMeasurementEnabled:v7];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_485_cold_1();
  }

LABEL_12:
}

- (void)lowPowerModeChanged:(id)changed
{
  v4 = HCLogHearingProtection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Low power changed", buf, 2u);
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    [(HUNoiseController *)self sampleDuration];
    if (v7 == 5000.0)
    {
      v8 = HCLogHearingProtection();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Low power enabled. Stopping measurements.", buf, 2u);
      }

      [(HUNoiseController *)self setMeasurementEnabled:0];
      edDataReceiver = [(HUNoiseController *)self edDataReceiver];
      [edDataReceiver stopReceivingAudioSampleType:1702260324];

      edDataReceiver2 = [(HUNoiseController *)self edDataReceiver];
      [edDataReceiver2 stopMeasuringAudioSampleType:1702260324];
    }
  }

  else
  {
    v11 = +[HUNoiseSettings sharedInstance];
    noiseEnabled = [v11 noiseEnabled];

    if (noiseEnabled)
    {
      v13 = HCLogHearingProtection();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Low power disabled. Resuming measurements.", buf, 2u);
      }

      [(HUNoiseController *)self setMeasurementEnabled:1];
      [(HUNoiseController *)self readEnvironmentalDosimetryLevels];
    }
  }

  dataQueue = [(HUNoiseController *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HUNoiseController_lowPowerModeChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (id)registerForEnvironmentalDosimetryUpdates:(id)updates
{
  v48 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  payload = [updatesCopy payload];
  v33 = [payload objectForKey:?];

  payload2 = [updatesCopy payload];
  v6 = *MEMORY[0x1E69A4550];
  v32 = [payload2 valueForKey:*MEMORY[0x1E69A4550]];

  payload3 = [updatesCopy payload];
  v8 = [payload3 objectForKey:@"ax_hearing_should_register_client_key"];

  if (!v33 || ![v32 length])
  {
    v26 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [v33 doubleValue];
  v10 = v9;
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__10;
  v43 = __Block_byref_object_dispose__10;
  v44 = 0;
  dataQueue = [(HUNoiseController *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HUNoiseController_registerForEnvironmentalDosimetryUpdates___block_invoke;
  block[3] = &unk_1E85CAF38;
  block[4] = self;
  block[5] = &v39;
  dispatch_sync(dataQueue, block);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v40[5];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        sampleDate = [v17 sampleDate];
        v19 = sampleDate;
        if (sampleDate)
        {
          [sampleDate timeIntervalSinceNow];
          if (fabs(v20) <= v10)
          {
            transportRepresentation = [v17 transportRepresentation];
            [array hcSafeAddObject:transportRepresentation];
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v14);
  }

  v45[0] = v6;
  payload4 = [updatesCopy payload];
  v23 = [payload4 valueForKey:v6];
  v45[1] = @"HUEDSampleIntervalKey";
  v46[0] = v23;
  v46[1] = array;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v25 = [MEMORY[0x1E69A4560] messagePayloadFromDictionary:v24 andIdentifier:0x40000];
  v26 = [updatesCopy replyMessageWithPayload:v25];

  _Block_object_dispose(&v39, 8);
  if (v8)
  {
LABEL_16:
    bOOLValue = [v8 BOOLValue];
    client = [updatesCopy client];
    [client setWantsUpdates:bOOLValue forIdentifier:0x40000];

    [(HUNoiseController *)self readEnvironmentalDosimetryLevels];
  }

LABEL_17:

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

void __62__HUNoiseController_registerForEnvironmentalDosimetryUpdates___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) contextualVolumeBuffer];
  v2 = [v5 copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

- (BOOL)shouldEnableNoiseMeasurements
{
  v2 = +[HUNoiseSettings sharedInstance];
  if ([v2 noiseEnabled])
  {
    contextualVolumeNeedsEnvironmentalMeasurements = 1;
  }

  else
  {
    v4 = +[HUNoiseSettings sharedInstance];
    contextualVolumeNeedsEnvironmentalMeasurements = [v4 contextualVolumeNeedsEnvironmentalMeasurements];
  }

  return contextualVolumeNeedsEnvironmentalMeasurements;
}

- (void)logThresholdTransitionForSample:(id)sample
{
  v19 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  v5 = +[HUNoiseSettings sharedInstance];
  notificationThreshold = [v5 notificationThreshold];

  leqBuffer = [(HUNoiseController *)self leqBuffer];
  lastObject = [leqBuffer lastObject];

  [sampleCopy splValue];
  v9 = notificationThreshold;
  if (v10 >= notificationThreshold)
  {
    if (!lastObject || ([lastObject splValue], v15 < v9))
    {
      v12 = HCLogHearingProtection();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        detailedDescription = [sampleCopy detailedDescription];
        v17 = 138412290;
        v18 = detailedDescription;
        v14 = "[Notifications] Sample rises above threshold: %@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  else
  {
    [lastObject splValue];
    if (v11 >= v9)
    {
      v12 = HCLogHearingProtection();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        detailedDescription = [sampleCopy detailedDescription];
        v17 = 138412290;
        v18 = detailedDescription;
        v14 = "[Notifications] Sample falls below threshold: %@";
LABEL_9:
        _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, v14, &v17, 0xCu);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)logNoiseBuffer:(id)buffer calculatedLeq:(float)leq
{
  v35 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v6 = +[HUNoiseSettings sharedInstance];
  notificationThreshold = [v6 notificationThreshold];

  v8 = HCLogHearingProtection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(bufferCopy, "count")}];
    *&v10 = leq;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    *buf = 138412546;
    v32 = v9;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "[Notifications] Surfacing notification with buffer count: %@, calculated Leq: %@", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = bufferCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v27;
    *&v14 = 138412546;
    v25 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        [v18 splValue];
        v20 = v19;
        v21 = HCLogHearingProtection();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          if (v20 < notificationThreshold)
          {
            v22 = @" ";
          }

          else
          {
            v22 = @"+";
          }

          detailedDescription = [v18 detailedDescription];
          *buf = v25;
          v32 = v22;
          v33 = 2112;
          v34 = detailedDescription;
          _os_log_impl(&dword_1DA5E2000, v21, OS_LOG_TYPE_DEFAULT, "[Notifications] %@ %@", buf, 0x16u);
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)setInternalDataCollectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (AXIsInternalInstall())
  {
    self->_internalDataCollectionEnabled = enabledCopy;
    if (enabledCopy)
    {

      [(HUNoiseController *)self _initializeInternalDataCollectionIfNeeded];
    }
  }
}

- (void)_initializeInternalDataCollectionIfNeeded
{
  if (AXIsInternalInstall())
  {
    internalDataCollectionQueue = [(HUNoiseController *)self internalDataCollectionQueue];

    if (!internalDataCollectionQueue)
    {
      v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v5 = dispatch_queue_create("com.apple.HearingUtilities.HUNoiseController.InternalDataCollectionQueue", v4);
      [(HUNoiseController *)self setInternalDataCollectionQueue:v5];
    }

    internalDataCollectionQueue2 = [(HUNoiseController *)self internalDataCollectionQueue];
    dispatch_async(internalDataCollectionQueue2, &__block_literal_global_501);
  }
}

void __62__HUNoiseController__initializeInternalDataCollectionIfNeeded__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [&unk_1F5624418 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v13;
    *&v2 = 138412290;
    v11 = v2;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(&unk_1F5624418);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        if (([v0 fileExistsAtPath:{v6, v11}] & 1) == 0)
        {
          v7 = [MEMORY[0x1E695DEF0] data];
          v8 = [v7 writeToFile:v6 atomically:1];

          if ((v8 & 1) == 0)
          {
            v9 = HCLogHearingProtection();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = v11;
              v17 = v6;
              _os_log_error_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_ERROR, "[Internal] Failed to create log file: %@", buf, 0xCu);
            }
          }
        }
      }

      v3 = [&unk_1F5624418 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_internalDataCollectionLogSPLValue:(id)value metaData:(id)data
{
  valueCopy = value;
  dataCopy = data;
  if (AXIsInternalInstall())
  {
    internalDataCollectionQueue = [(HUNoiseController *)self internalDataCollectionQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke;
    v9[3] = &unk_1E85C9F38;
    v10 = dataCopy;
    v11 = valueCopy;
    dispatch_async(internalDataCollectionQueue, v9);
  }
}

void __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"FastData"];
  v3 = [v2 BOOLValue];

  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [v4 stringWithFormat:@"%@, %@\n", v5, v6];
    v8 = @"/var/mobile/tmp/com.apple.heard/fast_spl.csv";
  }

  else
  {
    v6 = [*(a1 + 32) objectForKey:@"StartDate"];
    v9 = [*(a1 + 32) objectForKey:@"EndDate"];
    v7 = [v4 stringWithFormat:@"%@, %@, %@\n", v5, v6, v9];

    v8 = @"/var/mobile/tmp/com.apple.heard/slow_spl.csv";
  }

  v10 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:v8];
  v11 = v10;
  if (v10)
  {
    [v10 seekToEndOfFile];
    v12 = [v7 dataUsingEncoding:4];
    [v11 writeData:v12];
    [v11 closeFile];

    [v11 closeFile];
  }

  else
  {
    v13 = HCLogHearingProtection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke_cold_2();
    }
  }
}

void __99__HUNoiseController_sendNotificationRequestWithTitle_body_suggestANCMode_suggestHearingProtection___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkToResetNotificationsForSPL:withDuration:andBuffer:forTime:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkToSurfaceNotificationForSPL:withDuration:andBuffer:forTime:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkToResetAnalyticsNotificationsForSPL:withDuration:andBuffer:forTime:andThreshold:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkToSurfaceAnalyticsNotificationForSPL:withDuration:andBuffer:forTime:andThreshold:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)maintainCircularBuffer:forTime:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)calculateLeqForBuffer:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__HUNoiseController_writeNotificationSampleToHKWithSPL_startDate_endDate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__HUNoiseController_subscribeToSharedNotifications__block_invoke_485_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__HUNoiseController__internalDataCollectionLogSPLValue_metaData___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end