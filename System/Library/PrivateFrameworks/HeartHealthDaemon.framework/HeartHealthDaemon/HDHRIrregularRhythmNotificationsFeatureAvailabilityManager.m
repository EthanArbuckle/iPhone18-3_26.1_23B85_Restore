@interface HDHRIrregularRhythmNotificationsFeatureAvailabilityManager
- (HDHRIrregularRhythmNotificationsFeatureAvailabilityManager)initWithProfile:(id)a3 v2PairedFeaturePropertiesSyncManager:(id)a4 notificationSettingDefaults:(id)a5;
- (HDHRIrregularRhythmNotificationsFeatureAvailabilityManager)initWithV1FeatureAvailabilityManager:(id)a3 v2FeatureAvailabilityManager:(id)a4;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3;
- (id)featureAvailabilityRequirementsWithError:(id *)a3;
- (id)featureOnboardingRecordWithError:(id *)a3;
- (id)highestAvailableOnboardedAlgorithmVersionWithError:(id *)a3;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)pairedFeatureAttributesWithError:(id *)a3;
- (int64_t)_featureSupportedStateForOnboardedV1CountryCodeSupportedState:(int64_t)a3 onboardedV2CountryCodeSupportedState:(int64_t)a4;
- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)a3;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3;
- (void)getFeatureOnboardingRecordWithCompletion:(id)a3;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)resetOnboardingWithCompletion:(id)a3;
- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDHRIrregularRhythmNotificationsFeatureAvailabilityManager

- (HDHRIrregularRhythmNotificationsFeatureAvailabilityManager)initWithProfile:(id)a3 v2PairedFeaturePropertiesSyncManager:(id)a4 notificationSettingDefaults:(id)a5
{
  v8 = MEMORY[0x277D107C0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [v11 daemon];
  v14 = [v12 initWithDaemon:v13 remoteDisableCondition:*MEMORY[0x277CCCCE8] seedExpirationCondition:*MEMORY[0x277CCCCF8]];

  v15 = [[HDHRIrregularRhythmNotificationsV1FeatureAvailabilityManager alloc] initWithProfile:v11 disableAndExpiryProvider:v14 notificationSettingDefaults:v9];
  v16 = [MEMORY[0x277D106D8] hdhr_irregularRhythmNotificationsV2FeatureAvailabilityManagerWithProfile:v11 disableAndExpiryProvider:v14 pairedFeaturePropertiesSyncManager:v10];

  v17 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)self initWithV1FeatureAvailabilityManager:v15 v2FeatureAvailabilityManager:v16];
  return v17;
}

- (HDHRIrregularRhythmNotificationsFeatureAvailabilityManager)initWithV1FeatureAvailabilityManager:(id)a3 v2FeatureAvailabilityManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HDHRIrregularRhythmNotificationsFeatureAvailabilityManager;
  v9 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_v1FeatureAvailabilityManager, a3);
    objc_storeStrong(&v10->_v2FeatureAvailabilityManager, a4);
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithName:v13 loggingCategory:*MEMORY[0x277CCC2D8]];
    observers = v10->_observers;
    v10->_observers = v14;
  }

  return v10;
}

- (id)highestAvailableOnboardedAlgorithmVersionWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v19 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v19];
  v7 = v19;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v18 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (a3)
      {
        v15 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_18;
  }

  if (-[HDHRIrregularRhythmNotificationsFeatureAvailabilityManager _featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:](self, "_featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:", [v6 integerValue], objc_msgSend(v9, "integerValue")) != 2)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if ([v9 integerValue] == 2)
  {
    v16 = &unk_283CD33A0;
  }

  else
  {
    v16 = &unk_283CD33B8;
  }

LABEL_19:

  return v16;
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v24 = 0;
  v7 = a3;
  v8 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager canCompleteOnboardingForCountryCode:v7 error:&v24];
  v9 = v24;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v23 = 0;
  v11 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager canCompleteOnboardingForCountryCode:v7 error:&v23];

  v12 = v23;
  v13 = v12;
  if (v8)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;
    if (v16)
    {
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v21 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = [v8 BOOLValue];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = [v11 BOOLValue];
    }

    v21 = [v18 numberWithInt:v20];
  }

  return v21;
}

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v33 = 0;
  v7 = a3;
  v8 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardingEligibilityForCountryCode:v7 error:&v33];
  v9 = v33;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v32 = 0;
  v11 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardingEligibilityForCountryCode:v7 error:&v32];

  v12 = v32;
  v13 = v12;
  if (v8)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if ([v11 ineligibilityReasons])
    {
      if ([v8 ineligibilityReasons])
      {
        v19 = [v8 ineligibilityReasons];
        v20 = [v11 ineligibilityReasons] & v19;
        if (v20)
        {
          v21 = [v11 countryAvailabilityVersion];
          v16 = [objc_alloc(MEMORY[0x277CCD3F8]) initWithIneligibilityReasons:v20 countryAvailabilityVersion:v21];

LABEL_23:
          v24 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)self featureIdentifier];
          v18 = [v16 eligibilityRespectingOverridesForFeatureIdentifier:v24];

          goto LABEL_24;
        }

        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          v27 = v23;
          v28 = objc_opt_class();
          v29 = v28;
          v30 = [v8 ineligibilityReasonsDescription];
          v31 = [v11 ineligibilityReasonsDescription];
          *buf = 138543874;
          v35 = v28;
          v36 = 2114;
          v37 = v30;
          v38 = 2114;
          v39 = v31;
          _os_log_error_impl(&dword_229486000, v27, OS_LOG_TYPE_ERROR, "[%{public}@] No intersection of unavailability reasons for IRN1 and IRN2: %{public}@ (v1) | %{public}@ (v2)", buf, 0x20u);
        }
      }

      v22 = v8;
    }

    else
    {
      v22 = v11;
    }

    v16 = v22;
    goto LABEL_23;
  }

  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;
  if (v16)
  {
    if (a4)
    {
      v17 = v16;
      v18 = 0;
      *a4 = v16;
      goto LABEL_24;
    }

    _HKLogDroppedError();
  }

  v18 = 0;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v19 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager earliestDateLowestOnboardingVersionCompletedWithError:&v19];
  v7 = v19;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v18 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager earliestDateLowestOnboardingVersionCompletedWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v6 | v9)
  {
    if (v6)
    {
      if (v9)
      {
        v15 = [v6 earlierDate:v9];
      }

      else
      {
        v15 = v6;
      }
    }

    else
    {
      v15 = v9;
    }

    v16 = v15;
  }

  else
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)featureOnboardingRecordWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v19 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager featureOnboardingRecordWithError:&v19];
  v7 = v19;
  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager featureOnboardingRecordWithError:];
    }
  }

  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v18 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager featureOnboardingRecordWithError:&v18];
  v10 = v18;
  if (v9)
  {
    if (v6)
    {
      v11 = -[HDHRIrregularRhythmNotificationsFeatureAvailabilityManager _featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:](self, "_featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:", [v6 onboardingState], objc_msgSend(v9, "onboardingState"));
      if ([v9 onboardingState] == v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v6;
      }

      v13 = v12;
      goto LABEL_20;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager featureOnboardingRecordWithError:];
    }
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;
  if (v15)
  {
    if (a3)
    {
      v16 = v15;
      *a3 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__8;
  v31[4] = __Block_byref_object_dispose__8;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__8;
  v29[4] = __Block_byref_object_dispose__8;
  v30 = 0;
  dispatch_group_enter(v5);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v25[3] = &unk_278660FB0;
  v27 = v31;
  v28 = v29;
  v7 = v5;
  v26 = v7;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithCompletion:v25];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__8;
  v23[4] = __Block_byref_object_dispose__8;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = 0;
  dispatch_group_enter(v7);
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_2;
  v17[3] = &unk_278660FB0;
  v19 = v23;
  v20 = v21;
  v9 = v7;
  v18 = v9;
  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithCompletion:v17];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_3;
  block[3] = &unk_278660FD8;
  v12 = v4;
  v13 = v31;
  v14 = v23;
  v15 = v29;
  v16 = v21;
  v10 = v4;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __112__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke_3(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2 && *(*(a1[6] + 8) + 40))
  {
    if ([v2 BOOLValue])
    {
      v3 = 1;
    }

    else
    {
      v3 = [*(*(a1[6] + 8) + 40) BOOLValue];
    }

    v6 = a1[4];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v4 = *(*(a1[8] + 8) + 40);
    }

    v5 = *(a1[4] + 16);

    v5();
  }
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:&v22];
  v7 = v22;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isCurrentOnboardingVersionCompletedWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (a3)
      {
        v15 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  else
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [v6 BOOLValue];
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = [v9 BOOLValue];
    }

    v19 = [v16 numberWithInt:v18];
  }

  return v19;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v22 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v22];
  v7 = v22;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v21 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (a3)
      {
        v15 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v19 = 0;
  }

  else
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [v6 BOOLValue];
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = [v9 BOOLValue];
    }

    v19 = [v16 numberWithInt:v18];
  }

  return v19;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v19 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v19];
  v7 = v19;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v18 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v6 | v9)
  {
    if (v6)
    {
      if (v9)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRIrregularRhythmNotificationsFeatureAvailabilityManager _featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:](self, "_featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:", objc_msgSend(v6, "integerValue"), objc_msgSend(v9, "integerValue"))}];
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
        }

        v15 = v6;
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:];
      }

      v15 = v9;
    }

    v16 = v15;
  }

  else
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16;
}

- (int64_t)_featureSupportedStateForOnboardedV1CountryCodeSupportedState:(int64_t)a3 onboardedV2CountryCodeSupportedState:(int64_t)a4
{
  result = 5;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = a4 - 1;
      if ((a4 - 1) < 5)
      {
        v6 = &unk_2294F7888;
        return v6[v5];
      }

      return 5;
    }

    if (a3 == 4)
    {
      v5 = a4 - 1;
      if ((a4 - 1) < 5)
      {
        v6 = &unk_2294F78B0;
        return v6[v5];
      }

      return 5;
    }
  }

  else if (a3 == 1)
  {
    if ((a4 - 1) >= 5)
    {
      return 5;
    }

    else
    {
      return a4;
    }
  }

  else if (a3 == 2)
  {
    v5 = a4 - 1;
    if ((a4 - 1) < 5)
    {
      v6 = &unk_2294F7860;
      return v6[v5];
    }

    return 5;
  }

  return result;
}

- (id)pairedFeatureAttributesWithError:(id *)a3
{
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v23 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v23];
  v7 = v23;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v22 = 0;
  v9 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v22];
  v10 = v22;
  v11 = v10;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;
    if (v14)
    {
      if (a3)
      {
        v15 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v16 = -[HDHRIrregularRhythmNotificationsFeatureAvailabilityManager _featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:](self, "_featureSupportedStateForOnboardedV1CountryCodeSupportedState:onboardedV2CountryCodeSupportedState:", [v6 integerValue], objc_msgSend(v9, "integerValue"));
    if (v16 != 1)
    {
      if ([v9 integerValue] == v16)
      {
        v19 = self->_v2FeatureAvailabilityManager;
      }

      else
      {
        v19 = self->_v1FeatureAvailabilityManager;
      }

      v20 = [(HDFeatureAvailabilityExtension *)v19 pairedFeatureAttributesWithError:a3];
      goto LABEL_26;
    }

    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager pairedFeatureAttributesWithError:v17];
    }

    v14 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Unable to determine paired feature attributes for IRN without onboarding completion"];
    if (v14)
    {
      if (a3)
      {
        v18 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v20 = 0;
LABEL_26:

  return v20;
}

- (id)featureAvailabilityRequirementsWithError:(id *)a3
{
  v3 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)self featureIdentifier];
  v4 = HKHRIrregularRhythmNotificationsRequirementsWithFeatureIdentifier();

  return v4;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = dispatch_group_create();
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__8;
  v52[4] = __Block_byref_object_dispose__8;
  v53 = 0;
  dispatch_group_enter(v16);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
  v48[3] = &unk_278661000;
  v50 = v54;
  v51 = v52;
  v18 = v16;
  v49 = v18;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:v12 countryCodeProvenance:a4 date:v13 settings:v14 completion:v48];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v39 = 0;
  v20 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardingEligibilityForCountryCode:v12 error:&v39];
  v21 = v39;
  if (v20)
  {
    if (![v20 isEligible])
    {
      v26 = 0;
      goto LABEL_9;
    }

    dispatch_group_enter(v18);
    v22 = self->_v2FeatureAvailabilityManager;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_310;
    v35[3] = &unk_278661000;
    v37 = v46;
    v38 = &v40;
    v36 = v18;
    [(HDFeatureAvailabilityExtension *)v22 setCurrentOnboardingVersionCompletedForCountryCode:v12 countryCodeProvenance:a4 date:v13 settings:v14 completion:v35];
    v23 = v36;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:];
    }

    v24 = v41;
    v25 = v21;
    v23 = v24[5];
    v24[5] = v25;
  }

  v26 = 1;
LABEL_9:
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2;
  v28[3] = &unk_278661028;
  v29 = v15;
  v30 = v54;
  v31 = v46;
  v32 = v52;
  v33 = &v40;
  v34 = v26;
  v27 = v15;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], v28);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);
}

void __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_310(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
LABEL_5:
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = MEMORY[0x277CCC2D8];
      v10 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 72);
        v25[0] = 67240192;
        v25[1] = v11;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_INFO, "Completed onboarding for IRN 1.0, but did not complete onboarding for 2.0 with expectation: %{public}d", v25, 8u);
      }

      if (*(a1 + 72) == 1)
      {
        _HKInitializeLogging();
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2_cold_2(a1, v12, v13, v14, v15, v16, v17, v18);
        }
      }
    }

    result = (*(*(a1 + 32) + 16))();
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }

    goto LABEL_5;
  }

  v21 = *(a1 + 32);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v22 = *(*(*(a1 + 64) + 8) + 40);
  }

  v23 = *(v21 + 16);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v5 = a5;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager saveOnboardingCompletion:v6 settings:? completion:?];
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Saving HKOnboardingCompletion directly is not supported for IRN's combined feature identifier"];
  v5[2](v5, 0, v7);
}

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager setFeatureSettingData:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown data setting for IRN"];
  v7[2](v7, 0, v8);
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager setFeatureSettingString:forKey:completion:];
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot set unknown string setting for IRN"];
  v7[2](v7, 0, v8);
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_group_create();
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v58 = 0;
  v13 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v58];
  v14 = v58;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 1;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__8;
  v54[4] = __Block_byref_object_dispose__8;
  v55 = 0;
  if (v13)
  {
    if ([v13 integerValue] != 1)
    {
      dispatch_group_enter(v11);
      v15 = self->_v1FeatureAvailabilityManager;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke;
      v50[3] = &unk_278661050;
      v50[4] = self;
      v52 = v56;
      v53 = v54;
      v51 = v11;
      [(HDFeatureAvailabilityExtension *)v15 setFeatureSettingNumber:v8 forKey:v9 completion:v50];
    }
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager setFeatureSettingNumber:v17 forKey:v14 completion:v60];
    }
  }

  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v49 = 0;
  v19 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager onboardedCountryCodeSupportedStateWithError:&v49];
  v20 = v49;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 1;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__8;
  v45[4] = __Block_byref_object_dispose__8;
  v46 = 0;
  if (v19)
  {
    if ([v19 integerValue] != 1)
    {
      dispatch_group_enter(v11);
      v21 = self->_v2FeatureAvailabilityManager;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_320;
      v41[3] = &unk_278661050;
      v41[4] = self;
      v43 = v47;
      v44 = v45;
      v42 = v11;
      [(HDFeatureAvailabilityExtension *)v21 setFeatureSettingNumber:v8 forKey:v9 completion:v41];
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      [HDHRIrregularRhythmNotificationsFeatureAvailabilityManager setFeatureSettingNumber:v23 forKey:v20 completion:v59];
    }
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_321;
  v30[3] = &unk_278661078;
  v31 = v13;
  v32 = v19;
  v33 = v14;
  v34 = v20;
  v37 = v56;
  v38 = v47;
  v39 = v54;
  v40 = v45;
  v35 = self;
  v36 = v10;
  v24 = v20;
  v25 = v14;
  v26 = v10;
  v27 = v19;
  v28 = v13;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], v30);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);

  v29 = *MEMORY[0x277D85DE8];
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_cold_1(a1, v6);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_320(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_320_cold_1(a1, v6);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_321(uint64_t a1)
{
  if (!*(a1 + 32) || (v2 = *(a1 + 40)) == 0)
  {
    v6 = *(a1 + 72);
    if (!*(a1 + 48))
    {
      v7 = *(a1 + 56);
    }

    goto LABEL_14;
  }

  if (*(*(*(a1 + 80) + 8) + 24) != 1 || (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (!*(*(*(a1 + 96) + 8) + 40))
    {
      v8 = *(*(*(a1 + 104) + 8) + 40);
    }

LABEL_14:
    v9 = *(v6 + 16);
    goto LABEL_15;
  }

  if ([v2 integerValue] == 1 && objc_msgSend(*(a1 + 32), "integerValue") == 1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_FAULT))
    {
      __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_321_cold_1(a1, v3);
    }

    v4 = *(a1 + 72);
    v5 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Unable to update setting for IRN with neither version onboarded"];
    (*(v4 + 16))(v4, 0, v5);

    return;
  }

  v9 = *(*(a1 + 72) + 16);
LABEL_15:

  v9();
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 1;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__8;
  v32[4] = __Block_byref_object_dispose__8;
  v33 = 0;
  dispatch_group_enter(v8);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke;
  v28[3] = &unk_278661050;
  v28[4] = self;
  v30 = v34;
  v31 = v32;
  v10 = v8;
  v29 = v10;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager removeFeatureSettingValueForKey:v6 completion:v28];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 1;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__8;
  v24[4] = __Block_byref_object_dispose__8;
  v25 = 0;
  dispatch_group_enter(v10);
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_325;
  v20[3] = &unk_278661050;
  v20[4] = self;
  v22 = v26;
  v23 = v24;
  v12 = v10;
  v21 = v12;
  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager removeFeatureSettingValueForKey:v6 completion:v20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_326;
  block[3] = &unk_278660FD8;
  v15 = v7;
  v16 = v34;
  v17 = v26;
  v18 = v32;
  v19 = v24;
  v13 = v7;
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

void __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_cold_1(a1, v6);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_325(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_325_cold_1(a1, v6);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_326(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1 && (*(*(a1[6] + 8) + 24) & 1) != 0)
  {
    return (*(a1[4] + 16))();
  }

  v2 = *(*(a1[7] + 8) + 40);
  if (!v2)
  {
    v2 = *(*(a1[8] + 8) + 40);
  }

  return (*(a1[4] + 16))(a1[4], 0, v2);
}

- (void)resetOnboardingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__8;
  v29[4] = __Block_byref_object_dispose__8;
  v30 = 0;
  dispatch_group_enter(v5);
  v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke;
  v25[3] = &unk_278661000;
  v27 = v31;
  v28 = v29;
  v7 = v5;
  v26 = v7;
  [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager resetOnboardingWithCompletion:v25];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = 0;
  dispatch_group_enter(v7);
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_2;
  v17[3] = &unk_278661000;
  v19 = v23;
  v20 = v21;
  v9 = v7;
  v18 = v9;
  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager resetOnboardingWithCompletion:v17];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_3;
  block[3] = &unk_278660FD8;
  v12 = v4;
  v13 = v31;
  v14 = v23;
  v15 = v29;
  v16 = v21;
  v10 = v4;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __92__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_resetOnboardingWithCompletion___block_invoke_3(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[6] + 8) + 24) == 1)
  {
    return (*(a1[4] + 16))();
  }

  v2 = *(*(a1[7] + 8) + 40);
  if (!v2)
  {
    v2 = *(*(a1[8] + 8) + 40);
  }

  return (*(a1[4] + 16))(a1[4], 0, v2);
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_27865FD90;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

void __85__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_registerObserver_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = HKCreateSerialDispatchQueue();
  [*(*(a1 + 32) + 8) registerObserver:*(a1 + 32) queue:v3];
  [*(*(a1 + 32) + 16) registerObserver:*(a1 + 32) queue:v3];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_unregisterObserver___block_invoke;
  v4[3] = &unk_27865FD90;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

uint64_t __81__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) unregisterObserver:?];
  v2 = *(*(a1 + 32) + 16);

  return [v2 unregisterObserver:?];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __120__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateOnboardingCompletion___block_invoke;
  v4[3] = &unk_27865FD18;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __108__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke;
  v4[3] = &unk_27865FD18;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

void __108__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __118__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdateRegionAvailability___block_invoke;
  v4[3] = &unk_27865FD18;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

void __118__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdateRegionAvailability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionDidUpdateRegionAvailability:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __133__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable___block_invoke;
  v4[3] = &unk_27865FD18;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

void __133__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283CDA550])
  {
    [v3 featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:*(a1 + 32)];
  }
}

- (void)featureAvailabilityExtensionDidUpdatePairedDeviceCapability:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __122__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdatePairedDeviceCapability___block_invoke;
  v4[3] = &unk_27865FD18;
  v4[4] = self;
  [(HKObserverSet *)observers notifyObservers:v4];
}

void __122__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_featureAvailabilityExtensionDidUpdatePairedDeviceCapability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityExtensionDidUpdatePairedDeviceCapability:*(a1 + 32)];
  }
}

- (void)featureOnboardingRecordWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Failed to retrieve onboarding record for IRN1: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureOnboardingRecordWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Failed to retrieve onboarding record for IRN2: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Error checking onboarded country code supported state for IRN 2.0, returning supported state for 1.0: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)onboardedCountryCodeSupportedStateWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Error checking onboarded country code supported state for IRN 1.0, returning supported state for 2.0: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:countryCodeProvenance:date:settings:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not validate IRN 2.0 eligibility with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*(a1 + 56) + 8) + 40));
  OUTLINED_FUNCTION_0_4(&dword_229486000, a2, a3, "Completed onboarding for IRN 2.0, but failed to complete for 1.0: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __160__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*(a1 + 64) + 8) + 40));
  OUTLINED_FUNCTION_0_4(&dword_229486000, a2, a3, "Failed to complete onboarding for IRN 2.0 with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveOnboardingCompletion:(void *)a1 settings:completion:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Saving HKOnboardingCompletion directly is not supported for IRN's combined feature identifier", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown data setting for IRN: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:forKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_3(&dword_229486000, v5, v6, "[%{public}@] Unknown string setting for IRN: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(void *)a1 forKey:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_5_4(a1, a2, a3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0(&dword_229486000, v4, v5, "[%{public}@] Unable to determine whether IRN1 is onboarded: %{public}@");
}

- (void)setFeatureSettingNumber:(void *)a1 forKey:(uint64_t)a2 completion:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_5_4(a1, a2, a3, 5.8382e-34);
  OUTLINED_FUNCTION_7_0(&dword_229486000, v4, v5, "[%{public}@] Unable to determine whether IRN2 is onboarded: %{public}@");
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to update feature setting for IRN1: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_320_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to update feature setting for IRN2: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __104__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_setFeatureSettingNumber_forKey_completion___block_invoke_321_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  _os_log_fault_impl(&dword_229486000, v3, OS_LOG_TYPE_FAULT, "[%{public}@] Attempt to update setting failed; neither version of IRN is onboarded", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to remove feature setting for IRN1: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __105__HDHRIrregularRhythmNotificationsFeatureAvailabilityManager_removeFeatureSettingValueForKey_completion___block_invoke_325_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to remove feature setting for IRN2: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end