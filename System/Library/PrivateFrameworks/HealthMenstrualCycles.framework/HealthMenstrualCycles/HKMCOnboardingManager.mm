@interface HKMCOnboardingManager
- (BOOL)_resetOnboardingCharacteristicsWithError:(id *)a3;
- (BOOL)_resetOnboardingKeyValueDomainWithError:(id *)a3;
- (BOOL)_setLegacyOnboardingCompletedVersion:(int64_t)a3 error:(id *)a4;
- (BOOL)isAnyOnboardingVersionCompleted;
- (HKMCOnboardingManager)initWithHealthStore:(id)a3 queue:(id)a4;
- (HKQuantity)userEnteredCycleLength;
- (HKQuantity)userEnteredPeriodLength;
- (id)_featureAvailabilityStoreForFeatureWithIdentifier:(id)a3;
- (id)_onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (void)_saveUserEnteredCycleLength:(id)a3 userEnteredPeriodLength:(id)a4 userEnteredLastPeriodStartDay:(id)a5 addedCycleFactors:(id)a6 deletedCycleFactors:(id)a7 completion:(id)a8;
- (void)_setCurrentOnboardingVersionCompletedWithInfo:(id)a3 completion:(id)a4;
- (void)_triggerHealthKitSync;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3;
- (void)isAnyOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)resetOnboarding:(id)a3;
- (void)setOnboardingCompletedWithInfo:(id)a3 completion:(id)a4;
- (void)userEnteredCycleLength;
- (void)userEnteredPeriodLength;
@end

@implementation HKMCOnboardingManager

- (HKMCOnboardingManager)initWithHealthStore:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = HKMCOnboardingManager;
  v9 = [(HKMCOnboardingManager *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = [v11 initWithName:@"HKMCOnboardingManagerObserver" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v10->_observers;
    v10->_observers = v12;

    v14 = [[HKMenstrualCyclesStore alloc] initWithHealthStore:v10->_healthStore];
    menstrualCyclesStore = v10->_menstrualCyclesStore;
    v10->_menstrualCyclesStore = v14;

    if (v8)
    {
      v16 = v8;
      observerQueue = v10->_observerQueue;
      v10->_observerQueue = v16;
    }

    else
    {
      v18 = MEMORY[0x277D85CD0];
      v19 = MEMORY[0x277D85CD0];
      observerQueue = v10->_observerQueue;
      v10->_observerQueue = v18;
    }

    v20 = objc_alloc(MEMORY[0x277CCD438]);
    v21 = [v20 initWithFeatureIdentifier:*MEMORY[0x277CCC090] healthStore:v10->_healthStore];
    featureAvailabilityStore = v10->_featureAvailabilityStore;
    v10->_featureAvailabilityStore = v21;

    [(HKFeatureAvailabilityStore *)v10->_featureAvailabilityStore registerObserver:v10 queue:v10->_observerQueue];
    v23 = objc_alloc(MEMORY[0x277CCD438]);
    v24 = [v23 initWithFeatureIdentifier:*MEMORY[0x277CCC0A0] healthStore:v10->_healthStore];
    heartRateInputFeatureAvailabilityStore = v10->_heartRateInputFeatureAvailabilityStore;
    v10->_heartRateInputFeatureAvailabilityStore = v24;

    [(HKFeatureAvailabilityStore *)v10->_heartRateInputFeatureAvailabilityStore registerObserver:v10 queue:v10->_observerQueue];
    v26 = objc_alloc(MEMORY[0x277CCD438]);
    v27 = [v26 initWithFeatureIdentifier:*MEMORY[0x277CCC098] healthStore:v10->_healthStore];
    deviationsFeatureAvailabilityStore = v10->_deviationsFeatureAvailabilityStore;
    v10->_deviationsFeatureAvailabilityStore = v27;

    [(HKFeatureAvailabilityStore *)v10->_deviationsFeatureAvailabilityStore registerObserver:v10 queue:v10->_observerQueue];
    v29 = objc_alloc(MEMORY[0x277CCD438]);
    v30 = [v29 initWithFeatureIdentifier:*MEMORY[0x277CCC0A8] healthStore:v10->_healthStore];
    wristTemperatureInputFeatureAvailabilityStore = v10->_wristTemperatureInputFeatureAvailabilityStore;
    v10->_wristTemperatureInputFeatureAvailabilityStore = v30;

    [(HKFeatureAvailabilityStore *)v10->_wristTemperatureInputFeatureAvailabilityStore registerObserver:v10 queue:v10->_observerQueue];
    v32 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:0 domainName:@"com.apple.private.health.menstrual-cycles" healthStore:v7];
    legacyOnboardingKeyValueDomain = v10->_legacyOnboardingKeyValueDomain;
    v10->_legacyOnboardingKeyValueDomain = v32;
  }

  return v10;
}

- (id)_featureAvailabilityStoreForFeatureWithIdentifier:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviationsFeatureAvailabilityStore = self->_deviationsFeatureAvailabilityStore;
  heartRateInputFeatureAvailabilityStore = self->_heartRateInputFeatureAvailabilityStore;
  wristTemperatureInputFeatureAvailabilityStore = self->_wristTemperatureInputFeatureAvailabilityStore;
  v15[0] = self->_featureAvailabilityStore;
  v15[1] = heartRateInputFeatureAvailabilityStore;
  v15[2] = deviationsFeatureAvailabilityStore;
  v15[3] = wristTemperatureInputFeatureAvailabilityStore;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HKMCOnboardingManager__featureAvailabilityStoreForFeatureWithIdentifier___block_invoke;
  v13[3] = &unk_2796D5428;
  v14 = v4;
  v9 = v4;
  v10 = [v8 hk_firstObjectPassingTest:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __75__HKMCOnboardingManager__featureAvailabilityStoreForFeatureWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 featureIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isAnyOnboardingVersionCompleted
{
  v2 = [(HKMCOnboardingManager *)self onboardingRecordWithError:0];
  v3 = [v2 isOnboardingPresent];

  return v3;
}

- (id)_onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKMCOnboardingManager *)self _featureAvailabilityStoreForFeatureWithIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v15 = 0;
    v9 = [v7 featureOnboardingRecordWithError:&v15];
    v10 = v15;
    v11 = v10;
    if (!v9)
    {
      v12 = v10;
      if (v12)
      {
        if (a4)
        {
          v13 = v12;
          *a4 = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HKMCOnboardingManager _onboardingRecordForFeatureWithIdentifier:error:];
      }
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:110 format:{@"%@ is not a supported feature", v6}];
    v9 = 0;
  }

  return v9;
}

- (void)isAnyOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  featureAvailabilityStore = self->_featureAvailabilityStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HKMCOnboardingManager_isAnyOnboardingVersionCompletedWithCompletion___block_invoke;
  v7[3] = &unk_2796D5450;
  v8 = v4;
  v6 = v4;
  [(HKFeatureAvailabilityStore *)featureAvailabilityStore getFeatureOnboardingRecordWithCompletion:v7];
}

void __71__HKMCOnboardingManager_isAnyOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "onboardingState") == 2}];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (HKQuantity)userEnteredCycleLength
{
  healthStore = self->_healthStore;
  v8 = 0;
  v3 = [(HKHealthStore *)healthStore _userEnteredMenstrualCycleLengthCharacteristicQuantityWithError:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager userEnteredCycleLength];
    }
  }

  return v3;
}

- (HKQuantity)userEnteredPeriodLength
{
  healthStore = self->_healthStore;
  v8 = 0;
  v3 = [(HKHealthStore *)healthStore _userEnteredMenstrualPeriodLengthCharacteristicQuantityWithError:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager userEnteredPeriodLength];
    }
  }

  return v3;
}

- (BOOL)_setLegacyOnboardingCompletedVersion:(int64_t)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithInteger:a3];
    *buf = 138543618;
    v29 = v9;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting onboarding version %{public}@ and completion date in key value store", buf, 0x16u);
  }

  legacyOnboardingKeyValueDomain = self->_legacyOnboardingKeyValueDomain;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v27 = 0;
  LOBYTE(legacyOnboardingKeyValueDomain) = [(HKKeyValueDomain *)legacyOnboardingKeyValueDomain setNumber:v14 forKey:@"OnboardingCompleted" error:&v27];
  v15 = v27;

  if (legacyOnboardingKeyValueDomain)
  {
    v16 = self->_legacyOnboardingKeyValueDomain;
    v26 = v15;
    v17 = [(HKKeyValueDomain *)v16 dateForKey:@"OnboardingFirstCompletedDate" error:&v26];
    v18 = v26;

    if (v17)
    {
      v19 = 1;
LABEL_13:
      v15 = v18;
      goto LABEL_14;
    }

    if (v18)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        [HKMCOnboardingManager _setLegacyOnboardingCompletedVersion:error:];
      }

      v19 = 0;
      goto LABEL_13;
    }

    v22 = self->_legacyOnboardingKeyValueDomain;
    v23 = [MEMORY[0x277CBEAA8] date];
    v25 = 0;
    v24 = [(HKKeyValueDomain *)v22 setDate:v23 forKey:@"OnboardingFirstCompletedDate" error:&v25];
    v15 = v25;

    if (v24)
    {
      v19 = 1;
      goto LABEL_14;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _setLegacyOnboardingCompletedVersion:error:];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _setLegacyOnboardingCompletedVersion:error:];
    }
  }

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_saveUserEnteredCycleLength:(id)a3 userEnteredPeriodLength:(id)a4 userEnteredLastPeriodStartDay:(id)a5 addedCycleFactors:(id)a6 deletedCycleFactors:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke;
  v36[3] = &unk_2796D5478;
  v20 = v19;
  v37 = v20;
  v21 = MEMORY[0x253087260](v36);
  if (v14)
  {
    healthStore = self->_healthStore;
    v35 = 0;
    v23 = [(HKHealthStore *)healthStore _setUserEnteredMenstrualCycleLengthCharacteristicQuantity:v14 error:&v35];
    v24 = v35;
    v25 = v24;
    if ((v23 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HKMCOnboardingManager _saveUserEnteredCycleLength:userEnteredPeriodLength:userEnteredLastPeriodStartDay:addedCycleFactors:deletedCycleFactors:completion:];
      }

      goto LABEL_12;
    }
  }

  if (v15)
  {
    v26 = self->_healthStore;
    v34 = 0;
    v27 = [(HKHealthStore *)v26 _setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:v15 error:&v34];
    v28 = v34;
    v25 = v28;
    if (v27)
    {

      goto LABEL_7;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _saveUserEnteredCycleLength:userEnteredPeriodLength:userEnteredLastPeriodStartDay:addedCycleFactors:deletedCycleFactors:completion:];
    }

LABEL_12:
    (v21)[2](v21, 0, v25);

    goto LABEL_13;
  }

LABEL_7:
  v29 = self->_healthStore;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_386;
  v30[3] = &unk_2796D54A0;
  v30[4] = self;
  v33 = v21;
  v31 = v16;
  v32 = v15;
  [(HKHealthStore *)v29 saveObjects:v17 deleteObjects:v18 associations:0 completion:v30];

LABEL_13:
}

uint64_t __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_386(void *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_386_cold_1(a1, v11);
    }

    v12 = *(a1[7] + 16);
    goto LABEL_9;
  }

  v6 = a1[5];
  if (!v6)
  {
    v12 = *(a1[7] + 16);
LABEL_9:
    v12();
    goto LABEL_12;
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = [MEMORY[0x277CCDAB0] dayUnit];
    [v7 doubleValueForUnit:v8];
    v10 = v9;

    v6 = a1[5];
  }

  else
  {
    v10 = 1;
  }

  v13 = [v6 integerValue];
  v14 = a1[4];
  v15 = *(v14 + 24);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_388;
  v17[3] = &unk_2796D49B0;
  v16 = a1[7];
  v17[4] = v14;
  v17[5] = v16;
  [v15 saveLastMenstrualPeriodWithDayIndexRange:v13 completion:{v10, v17}];
LABEL_12:
}

void __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_388(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_388_cold_1(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_setCurrentOnboardingVersionCompletedWithInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [(HKMCOnboardingManager *)self _setLegacyOnboardingCompletedVersion:2 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277CCD740]);
    v11 = *MEMORY[0x277CCC090];
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [v10 initWithFeatureIdentifier:v11 version:2 completionDate:v12 countryCode:0 countryCodeProvenance:0];

    v14 = [objc_alloc(MEMORY[0x277CCD450]) initWithMenstruationProjectionsEnabled:objc_msgSend(v6 fertileWindowProjectionsEnabled:"menstruationProjectionsEnabled") areFertilityTrackingDisplayTypesVisible:objc_msgSend(v6 isSexualActivityDisplayTypeVisible:{"fertileWindowProjectionsEnabled"), objc_msgSend(v6, "fertilityTrackingDisplayTypesVisible"), objc_msgSend(v6, "sexualActivityDisplayTypeVisible")}];
    featureAvailabilityStore = self->_featureAvailabilityStore;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__HKMCOnboardingManager__setCurrentOnboardingVersionCompletedWithInfo_completion___block_invoke;
    v16[3] = &unk_2796D49B0;
    v16[4] = self;
    v17 = v7;
    [(HKFeatureAvailabilityStore *)featureAvailabilityStore saveOnboardingCompletion:v13 settings:v14 completion:v16];
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __82__HKMCOnboardingManager__setCurrentOnboardingVersionCompletedWithInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set current onboarding version completed in the feature availability store", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __82__HKMCOnboardingManager__setCurrentOnboardingVersionCompletedWithInfo_completion___block_invoke_cold_1(a1, v6);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setOnboardingCompletedWithInfo:(id)a3 completion:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v58 = v9;
    v11 = [v10 numberWithInteger:2];
    v12 = [v6 userEnteredCycleLength];
    v13 = HKSensitiveLogItem();
    [v6 userEnteredPeriodLength];
    v14 = v59 = self;
    v15 = HKSensitiveLogItem();
    v16 = [v6 userEnteredLastPeriodStartDay];
    v17 = HKSensitiveLogItem();
    *buf = 138544386;
    v73 = v9;
    v74 = 2114;
    v75 = v11;
    v76 = 2112;
    v77 = v13;
    v78 = 2112;
    v79 = v15;
    v80 = 2112;
    v81 = v17;
    _os_log_impl(&dword_2518FC000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set onboarding completed (version: %{public}@), cycle length: %@, period length: %@, last period start: %@", buf, 0x34u);

    self = v59;
  }

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke;
  v68[3] = &unk_2796D54C8;
  v68[4] = self;
  v18 = v7;
  v70 = v18;
  v19 = v6;
  v69 = v19;
  [(HKMCOnboardingManager *)self _setCurrentOnboardingVersionCompletedWithInfo:v19 completion:v68];
  v20 = [v19 heartRateInputSupportedCountryCode];

  v21 = MEMORY[0x277CCC120];
  if (v20)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = [v19 heartRateInputEnabled];
    [v22 setObject:v23 forKeyedSubscript:*v21];

    v24 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v22];
    heartRateInputFeatureAvailabilityStore = self->_heartRateInputFeatureAvailabilityStore;
    v26 = [v19 heartRateInputSupportedCountryCode];
    v27 = [v26 ISOCode];
    v28 = [v19 heartRateInputSupportedCountryCode];
    v29 = [v28 provenance];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_3;
    v67[3] = &unk_2796D54F0;
    v67[4] = self;
    v30 = heartRateInputFeatureAvailabilityStore;
    v21 = MEMORY[0x277CCC120];
    [(HKFeatureAvailabilityStore *)v30 setCurrentOnboardingVersionCompletedForCountryCode:v27 countryCodeProvenance:v29 date:0 settings:v24 completion:v67];
  }

  v31 = [v19 deviationDetectionSupportedCountryCode];

  if (v31)
  {
    v60 = v18;
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v33 = HKMCAllDeviationTypes();
    v34 = [v33 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v64;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v64 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "deviationDetectionEnabled")}];
          v40 = HKFeatureSettingsKeyForDeviationDetectionTypeEnabled([v38 integerValue]);
          [v32 setObject:v39 forKeyedSubscript:v40];
        }

        v35 = [v33 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v35);
    }

    v41 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v32];
    deviationsFeatureAvailabilityStore = self->_deviationsFeatureAvailabilityStore;
    v43 = [v19 deviationDetectionSupportedCountryCode];
    v44 = [v43 ISOCode];
    v45 = [v19 deviationDetectionSupportedCountryCode];
    v46 = [v45 provenance];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_394;
    v62[3] = &unk_2796D54F0;
    v62[4] = self;
    [(HKFeatureAvailabilityStore *)deviationsFeatureAvailabilityStore setCurrentOnboardingVersionCompletedForCountryCode:v44 countryCodeProvenance:v46 date:0 settings:v41 completion:v62];

    v18 = v60;
    v21 = MEMORY[0x277CCC120];
  }

  v47 = [v19 wristTemperatureInputSupportedCountryCode];

  if (v47)
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v49 = [v19 wristTemperatureInputEnabled];
    [v48 setObject:v49 forKeyedSubscript:*v21];

    v50 = [objc_alloc(MEMORY[0x277CCD450]) initWithDictionary:v48];
    wristTemperatureInputFeatureAvailabilityStore = self->_wristTemperatureInputFeatureAvailabilityStore;
    v52 = [v19 wristTemperatureInputSupportedCountryCode];
    v53 = [v52 ISOCode];
    v54 = [v19 wristTemperatureInputSupportedCountryCode];
    v55 = [v54 provenance];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_395;
    v61[3] = &unk_2796D54F0;
    v61[4] = self;
    [(HKFeatureAvailabilityStore *)wristTemperatureInputFeatureAvailabilityStore setCurrentOnboardingVersionCompletedForCountryCode:v53 countryCodeProvenance:v55 date:0 settings:v50 completion:v61];
  }

  v56 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = HKCreateSerialDispatchQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_391;
    block[3] = &unk_2796D4E58;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v8;
    v13 = *(a1 + 48);
    dispatch_async(v7, block);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_cold_1(a1, v9);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v5);
    }
  }
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_391(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userEnteredCycleLength];
  v4 = [*(a1 + 40) userEnteredPeriodLength];
  v5 = [*(a1 + 40) userEnteredLastPeriodStartDay];
  v6 = [*(a1 + 40) addedCycleFactors];
  v7 = [*(a1 + 40) deletedCycleFactors];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_2;
  v8[3] = &unk_2796D5478;
  v9 = *(a1 + 48);
  [v2 _saveUserEnteredCycleLength:v3 userEnteredPeriodLength:v4 userEnteredLastPeriodStartDay:v5 addedCycleFactors:v6 deletedCycleFactors:v7 completion:v8];
}

uint64_t __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set current heart rate input onboarding version completed", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_3_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_394(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set current deviation detection onboarding version completed", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_394_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_395(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set current wrist temperature input onboarding version completed", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_395_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_resetOnboardingKeyValueDomainWithError:(id *)a3
{
  legacyOnboardingKeyValueDomain = self->_legacyOnboardingKeyValueDomain;
  v16 = 0;
  v6 = [(HKKeyValueDomain *)legacyOnboardingKeyValueDomain setNumber:&unk_2863D3038 forKey:@"OnboardingCompleted" error:&v16];
  v7 = v16;
  v8 = MEMORY[0x277CCC2E8];
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _resetOnboardingKeyValueDomainWithError:];
    }
  }

  v9 = self->_legacyOnboardingKeyValueDomain;
  v15 = v7;
  v10 = [(HKKeyValueDomain *)v9 setDate:0 forKey:@"OnboardingFirstCompletedDate" error:&v15];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _resetOnboardingKeyValueDomainWithError:];
    }
  }

  v12 = v11;
  if (v12)
  {
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v6;
}

- (BOOL)_resetOnboardingCharacteristicsWithError:(id *)a3
{
  healthStore = self->_healthStore;
  v16 = 0;
  v6 = [(HKHealthStore *)healthStore _setUserEnteredMenstrualCycleLengthCharacteristicQuantity:0 error:&v16];
  v7 = v16;
  v8 = MEMORY[0x277CCC2E8];
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _resetOnboardingCharacteristicsWithError:];
    }
  }

  v9 = self->_healthStore;
  v15 = v7;
  v10 = [(HKHealthStore *)v9 _setUserEnteredMenstrualPeriodLengthCharacteristicQuantity:0 error:&v15];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HKMCOnboardingManager _resetOnboardingCharacteristicsWithError:];
    }
  }

  v12 = v11;
  if (v12)
  {
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v10;
}

- (void)_triggerHealthKitSync
{
  v3 = [objc_alloc(MEMORY[0x277CCD6A8]) initWithHealthStore:self->_healthStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HKMCOnboardingManager__triggerHealthKitSync__block_invoke;
  v4[3] = &unk_2796D54F0;
  v4[4] = self;
  [v3 forceNanoSyncWithOptions:0 completion:v4];
}

void __46__HKMCOnboardingManager__triggerHealthKitSync__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forced HealthKit sync", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __46__HKMCOnboardingManager__triggerHealthKitSync__block_invoke_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboarding:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v18 = objc_opt_class();
    v7 = v18;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting onboarding", buf, 0xCu);
  }

  featureAvailabilityStore = self->_featureAvailabilityStore;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __41__HKMCOnboardingManager_resetOnboarding___block_invoke;
  v14 = &unk_2796D49B0;
  v15 = self;
  v16 = v4;
  v9 = v4;
  [(HKFeatureAvailabilityStore *)featureAvailabilityStore resetOnboardingWithCompletion:&v11];
  [(HKFeatureAvailabilityStore *)self->_heartRateInputFeatureAvailabilityStore resetOnboardingWithCompletion:&__block_literal_global_4, v11, v12, v13, v14, v15];
  [(HKFeatureAvailabilityStore *)self->_deviationsFeatureAvailabilityStore resetOnboardingWithCompletion:&__block_literal_global_400];
  [(HKFeatureAvailabilityStore *)self->_wristTemperatureInputFeatureAvailabilityStore resetOnboardingWithCompletion:&__block_literal_global_402];

  v10 = *MEMORY[0x277D85DE8];
}

void __41__HKMCOnboardingManager_resetOnboarding___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = HKCreateSerialDispatchQueue();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__HKMCOnboardingManager_resetOnboarding___block_invoke_398;
    v11[3] = &unk_2796D4BA8;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    dispatch_async(v7, v11);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __41__HKMCOnboardingManager_resetOnboarding___block_invoke_cold_1(a1, v9);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v5);
    }
  }
}

void __41__HKMCOnboardingManager_resetOnboarding___block_invoke_398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 _resetOnboardingKeyValueDomainWithError:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = *(a1 + 32);
    v8 = v4;
    v3 = [v5 _resetOnboardingCharacteristicsWithError:&v8];
    v6 = v8;

    v4 = v6;
  }

  [*(a1 + 32) _triggerHealthKitSync];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, v4);
  }
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 featureIdentifier];
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notify observers that onboarding state did change for %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HKMCOnboardingManager_featureAvailabilityProvidingDidUpdateOnboardingCompletion___block_invoke;
  v12[3] = &unk_2796D5518;
  v12[4] = self;
  [(HKObserverSet *)observers notifyObservers:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 featureIdentifier];
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notify observers of feature settings change for %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HKMCOnboardingManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke;
  v13[3] = &unk_2796D5540;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  [(HKObserverSet *)observers notifyObservers:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __71__HKMCOnboardingManager_featureAvailabilityProvidingDidUpdateSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 featureIdentifier];
  [v4 onboardingManager:v2 didUpdateFeatureSettingsForFeatureIdentifier:v5];
}

- (void)_onboardingRecordForFeatureWithIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error retrieving onboarding record: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)userEnteredCycleLength
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error retrieving user entered cycle length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)userEnteredPeriodLength
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error retrieving user entered period length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setLegacyOnboardingCompletedVersion:error:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error setting onboarding completed: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setLegacyOnboardingCompletedVersion:error:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error retrieving first onboarding completed date: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setLegacyOnboardingCompletedVersion:error:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error setting onboarding completed date: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_saveUserEnteredCycleLength:userEnteredPeriodLength:userEnteredLastPeriodStartDay:addedCycleFactors:deletedCycleFactors:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error setting user entered cycle length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_saveUserEnteredCycleLength:userEnteredPeriodLength:userEnteredLastPeriodStartDay:addedCycleFactors:deletedCycleFactors:completion:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error setting user entered period length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_386_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error saving added and removed cycle factors: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __156__HKMCOnboardingManager__saveUserEnteredCycleLength_userEnteredPeriodLength_userEnteredLastPeriodStartDay_addedCycleFactors_deletedCycleFactors_completion___block_invoke_388_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error saving user entered last period: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __82__HKMCOnboardingManager__setCurrentOnboardingVersionCompletedWithInfo_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error setting saving current onboarding version completed to feature availability store: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error saving current onboarding version completed: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error setting current heart rate input onboarding version completed: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_394_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error setting current deviation detection onboarding version completed: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __67__HKMCOnboardingManager_setOnboardingCompletedWithInfo_completion___block_invoke_395_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error setting current wrist temperature input onboarding version completed: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_resetOnboardingKeyValueDomainWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error resetting onboarding completed: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetOnboardingKeyValueDomainWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error resetting onboarding completed date: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetOnboardingCharacteristicsWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error clearing user entered cycle length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resetOnboardingCharacteristicsWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v5, v6, "[%{public}@] Error clearing user entered period length: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __46__HKMCOnboardingManager__triggerHealthKitSync__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error forcing HealthKit sync: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __41__HKMCOnboardingManager_resetOnboarding___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_2518FC000, v6, v7, "[%{public}@] Error resetting onboarding in feature availability store: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end