@interface HKHearingFeatures
+ (BOOL)_BOOLForPreferenceKey:(id)a3 defaultValue:(BOOL)a4 fromValues:(id)a5;
+ (BOOL)_isHeadphoneExposureDataTransient;
+ (BOOL)_isHeadphoneExposureDataTransientOnActiveWatchWithError:(id *)a3;
+ (BOOL)_isMeasureOtherHeadphonesEnabled;
+ (BOOL)_isMeasureOtherHeadphonesEnabledOnActiveWatchWithError:(id *)a3;
+ (BOOL)areHeadphoneExposureNotificationsMandatory;
+ (BOOL)areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:(id *)a3;
+ (BOOL)hasActivePairedDevice;
+ (BOOL)isHeadphoneExposureMeasureLevelsEnabled;
+ (BOOL)isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError:(id *)a3;
+ (BOOL)isHeadphoneExposureNotificationsEnabled;
+ (BOOL)isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError:(id *)a3;
+ (BOOL)isHeadphoneExposureNotificationsSupportedOnActiveWatch;
+ (id)_numbersForPhonePreferenceKeys:(id)a3;
+ (id)_numbersForPreferenceKeys:(id)a3 error:(id *)a4;
+ (id)_numbersForPreferenceKeys:(id)a3 fromActiveWatch:(BOOL)a4;
+ (id)_numbersForWatchPreferenceKeys:(id)a3;
+ (id)_sharedAudioDataAnalysisManager;
+ (id)activePairedDevice;
+ (id)sharedInstance;
+ (void)isHeadphoneExposureNotificationsEnabled;
+ (void)unitTesting_overrideIsHeadphoneExposureNotificationsEnabled:(id)a3;
- (HKHearingFeatures)init;
- (void)_adasPreferenceDidChange:(id)a3;
- (void)_startObservingForChanges;
- (void)_startObservingForChangesOnActiveWatch;
- (void)_stopObservingForChanges;
- (void)dealloc;
@end

@implementation HKHearingFeatures

+ (BOOL)isHeadphoneExposureNotificationsEnabled
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = _unitTesting_overrideIsHeadphoneExposureNotificationsEnabled;
  if (_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled)
  {
    v4 = *MEMORY[0x277D85DE8];

    return [v3 BOOLValue];
  }

  else
  {
    v6 = *MEMORY[0x277CEFAF8];
    v7 = *MEMORY[0x277CEFAF0];
    v18[0] = *MEMORY[0x277CEFAF8];
    v18[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v15 = 0;
    v9 = [a1 _numbersForPreferenceKeys:v8 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = [a1 _BOOLForPreferenceKey:v7 defaultValue:objc_msgSend(a1 fromValues:{"_BOOLForPreferenceKey:defaultValue:fromValues:", v6, 0, v9), v9}];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2C8];
      v13 = *MEMORY[0x277CCC2C8];
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_25175B000, v12, OS_LOG_TYPE_INFO, "Unable to read preferences %{public}@", buf, 0xCu);
      }

      v11 = 0;
    }

    v14 = *MEMORY[0x277D85DE8];
    return v11;
  }
}

+ (BOOL)isHeadphoneExposureMeasureLevelsEnabled
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFAB8];
  v12[0] = *MEMORY[0x277CEFAF8];
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v11 = 0;
  v6 = [a1 _numbersForPreferenceKeys:v5 error:&v11];
  v7 = v11;
  if (v6)
  {
    if ([a1 _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v6])
    {
      v8 = 1;
    }

    else
    {
      v8 = [a1 _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v6];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)areHeadphoneExposureNotificationsMandatory
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v11[0] = *MEMORY[0x277CEFAF8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = 0;
  v5 = [a1 _numbersForPreferenceKeys:v4 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [a1 _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v5];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isHeadphoneExposureNotificationsSupportedOnActiveWatch
{
  v2 = [a1 activePairedDevice];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FFF1DEA3-3FB3-43F8-B986-EAFC838148EA"];
    v4 = [v2 supportsCapability:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError:(id *)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ([a1 hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAF0];
    v12[0] = *MEMORY[0x277CEFAF8];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [a1 _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      v9 = [a1 _BOOLForPreferenceKey:v6 defaultValue:objc_msgSend(a1 fromValues:{"_BOOLForPreferenceKey:defaultValue:fromValues:", v5, 0, v8), v8}];
    }

    else
    {
      if ([a1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 description:@"Unable to read preferences. No active watch."];
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError:(id *)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ([a1 hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAB8];
    v12[0] = *MEMORY[0x277CEFAF8];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [a1 _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      if ([a1 _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v8])
      {
        v9 = 1;
      }

      else
      {
        v9 = [a1 _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v8];
      }
    }

    else
    {
      if ([a1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 description:@"Unable to read preferences. No active watch."];
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:(id *)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([a1 hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v11[0] = *MEMORY[0x277CEFAF8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [a1 _numbersForWatchPreferenceKeys:v6];
    if (v7)
    {
      v8 = [a1 _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v7];
    }

    else
    {
      if ([a1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:11 format:{@"Unable to read preferences %@.", v6}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 format:{@"Unable to read preferences %@. Feature not supported.", v6}];
      }

      v8 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 description:@"Unable to read preferences. No active watch."];
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)_isHeadphoneExposureDataTransient
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFB10];
  v12[0] = *MEMORY[0x277CEFAF8];
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v11 = 0;
  v6 = [a1 _numbersForPreferenceKeys:v5 error:&v11];
  v7 = v11;
  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    goto LABEL_6;
  }

  if (![a1 _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v6])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [a1 _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v6];
LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)_isMeasureOtherHeadphonesEnabled
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFAF8];
  v4 = *MEMORY[0x277CEFAB8];
  v13[0] = *MEMORY[0x277CEFAF8];
  v13[1] = v4;
  v5 = *MEMORY[0x277CEFAC0];
  v13[2] = *MEMORY[0x277CEFAC0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v12 = 0;
  v7 = [a1 _numbersForPreferenceKeys:v6 error:&v12];
  v8 = v12;
  if (!v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      +[HKHearingFeatures isHeadphoneExposureNotificationsEnabled];
    }

    goto LABEL_8;
  }

  if (([a1 _BOOLForPreferenceKey:v3 defaultValue:0 fromValues:v7] & 1) == 0)
  {
    if ([a1 _BOOLForPreferenceKey:v4 defaultValue:0 fromValues:v7])
    {
      v9 = [a1 _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v7];
      goto LABEL_9;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)_isHeadphoneExposureDataTransientOnActiveWatchWithError:(id *)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ([a1 hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFB10];
    v12[0] = *MEMORY[0x277CEFAF8];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [a1 _numbersForWatchPreferenceKeys:v7];
    if (v8)
    {
      v9 = 0;
      if ([a1 _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v8])
      {
        v9 = [a1 _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v8];
      }
    }

    else
    {
      if ([a1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:11 format:{@"Unable to read preferences %@.", v7}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 format:{@"Unable to read preferences %@. Feature not supported.", v7}];
      }

      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 description:@"Unable to read preferences. No active watch."];
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)_isMeasureOtherHeadphonesEnabledOnActiveWatchWithError:(id *)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ([a1 hasActivePairedDevice])
  {
    v5 = *MEMORY[0x277CEFAF8];
    v6 = *MEMORY[0x277CEFAB8];
    v13[0] = *MEMORY[0x277CEFAF8];
    v13[1] = v6;
    v7 = *MEMORY[0x277CEFAC0];
    v13[2] = *MEMORY[0x277CEFAC0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v9 = [a1 _numbersForWatchPreferenceKeys:v8];
    if (v9)
    {
      if ([a1 _BOOLForPreferenceKey:v5 defaultValue:0 fromValues:v9])
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if ([a1 _BOOLForPreferenceKey:v6 defaultValue:0 fromValues:v9])
        {
          v10 = [a1 _BOOLForPreferenceKey:v7 defaultValue:0 fromValues:v9];
        }
      }
    }

    else
    {
      if ([a1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:11 format:{@"Unable to read preferences %@.", v8}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 format:{@"Unable to read preferences %@. Feature not supported.", v8}];
      }

      v10 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:110 description:@"Unable to read preferences. No active watch."];
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)unitTesting_overrideIsHeadphoneExposureNotificationsEnabled:(id)a3
{
  v5 = a3;
  v6 = _unitTesting_overrideIsHeadphoneExposureNotificationsEnabled != 0;
  objc_storeStrong(&_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled, a3);
  if (((v6 ^ (_unitTesting_overrideIsHeadphoneExposureNotificationsEnabled == 0)) & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getHAENDefaultsClass_softClass;
    v15 = getHAENDefaultsClass_softClass;
    if (!getHAENDefaultsClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getHAENDefaultsClass_block_invoke;
      v11[3] = &unk_2796C56D8;
      v11[4] = &v12;
      __getHAENDefaultsClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    InstanceMethod = class_getInstanceMethod(v7, sel_isHAENFeatureEnabled);
    v10 = class_getInstanceMethod(a1, sel_swizzled_isHAENFeatureEnabled);
    method_exchangeImplementations(InstanceMethod, v10);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HKHearingFeatures_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __35__HKHearingFeatures_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (HKHearingFeatures)init
{
  v6.receiver = self;
  v6.super_class = HKHearingFeatures;
  v2 = [(HKHearingFeatures *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(HKHearingFeatures *)v2 _startObservingForChanges];
    [(HKHearingFeatures *)v3 _startObservingForChangesOnActiveWatch];
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(HKHearingFeatures *)self _stopObservingForChanges];
  v3.receiver = self;
  v3.super_class = HKHearingFeatures;
  [(HKHearingFeatures *)&v3 dealloc];
}

- (void)_startObservingForChanges
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation for HKHearingFeatures changes to current device.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _adasPreferenceDidChange, *MEMORY[0x277CEFA68], 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_startObservingForChangesOnActiveWatch
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation for HKHearingFeatures changes to active watch.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _adasPreferenceDidChange, *MEMORY[0x277CEFA80], 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_stopObservingForChanges
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25175B000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering for HKHearingFeatures changes.", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_adasPreferenceDidChange:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:@"HKHearingFeatureHeadphoneExposureNotificationsEnabledDidChange" object:self userInfo:v5];
}

+ (id)_numbersForPreferenceKeys:(id)a3 fromActiveWatch:(BOOL)a4
{
  if (a4)
  {
    [a1 _numbersForWatchPreferenceKeys:a3];
  }

  else
  {
    [a1 _numbersForPhonePreferenceKeys:a3];
  }
  v4 = ;

  return v4;
}

+ (id)_numbersForPreferenceKeys:(id)a3 error:(id *)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6 = a3;
  HKWithUnfairLock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__HKHearingFeatures__numbersForPreferenceKeys_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_numbersForPhonePreferenceKeys:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5 = a3;
  HKWithUnfairLock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HKHearingFeatures__numbersForPhonePreferenceKeys___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_numbersForWatchPreferenceKeys:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5 = a3;
  HKWithUnfairLock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HKHearingFeatures__numbersForWatchPreferenceKeys___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) _sharedAudioDataAnalysisManager];
  v2 = [v5 getNanoPreferencesFor:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (BOOL)_BOOLForPreferenceKey:(id)a3 defaultValue:(BOOL)a4 fromValues:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:v7];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        v13 = v9;
        v14 = HKStringFromBool();
        v15 = 138544130;
        v16 = v7;
        v17 = 2114;
        v18 = v14;
        v19 = 2112;
        v20 = objc_opt_class();
        v21 = 2112;
        v22 = objc_opt_class();
        _os_log_fault_impl(&dword_25175B000, v13, OS_LOG_TYPE_FAULT, "Error reading %{public}@ using defaultValue %{public}@: Unexpected class (expected %@, found %@)", &v15, 0x2Au);
      }
    }

    a4 = [v8 BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HKHearingFeatures _BOOLForPreferenceKey:v7 defaultValue:v10 fromValues:?];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a4;
}

void __66__HKHearingFeatures__setBoolForPhonePreferenceKey_newValue_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 56) _sharedAudioDataAnalysisManager];
  v2 = [v5 setPreferenceFor:*(a1 + 32) value:*(a1 + 40) notify:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __66__HKHearingFeatures__setBoolForWatchPreferenceKey_newValue_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 56) _sharedAudioDataAnalysisManager];
  v2 = [v5 setNanoPreferenceFor:*(a1 + 32) value:*(a1 + 40) notify:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_sharedAudioDataAnalysisManager
{
  if (_sharedAudioDataAnalysisManager_onceToken != -1)
  {
    +[HKHearingFeatures _sharedAudioDataAnalysisManager];
  }

  v3 = _sharedAudioDataAnalysisManager_manager;

  return v3;
}

uint64_t __52__HKHearingFeatures__sharedAudioDataAnalysisManager__block_invoke()
{
  _sharedAudioDataAnalysisManager_manager = objc_alloc_init(MEMORY[0x277CEFB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)activePairedDevice
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

+ (BOOL)hasActivePairedDevice
{
  v2 = [a1 activePairedDevice];
  v3 = v2 != 0;

  return v3;
}

+ (void)isHeadphoneExposureNotificationsEnabled
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25175B000, v0, v1, "Unable to read preferences %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_BOOLForPreferenceKey:(uint64_t)a1 defaultValue:(void *)a2 fromValues:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKStringFromBool();
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_25175B000, v3, OS_LOG_TYPE_ERROR, "Missing preference for %{public}@, using defaultValue %{public}@.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end