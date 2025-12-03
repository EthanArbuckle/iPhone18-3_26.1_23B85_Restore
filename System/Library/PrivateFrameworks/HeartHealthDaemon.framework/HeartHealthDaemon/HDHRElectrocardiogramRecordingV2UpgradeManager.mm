@interface HDHRElectrocardiogramRecordingV2UpgradeManager
- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager;
- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation;
- (id)_v1featureSettingsUponBackgroundDelivery;
- (void)_reportAnalyticsEventForCountryCode:(void *)code eventType:(void *)type errorCategory:(void *)category errorDetail:;
- (void)doWorkWithCompletion:(uint64_t)completion;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)update;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
@end

@implementation HDHRElectrocardiogramRecordingV2UpgradeManager

- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager
{
  v10 = MEMORY[0x277D10800];
  submissionManagerCopy = submissionManager;
  availabilityManagerCopy = availabilityManager;
  managerCopy = manager;
  profileCopy = profile;
  v15 = [v10 alloc];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 initWithProfile:profileCopy debugIdentifier:v17 delegate:0];

  v19 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)self initWithProfile:profileCopy v1FeatureAvailabilityManager:managerCopy v2FeatureAvailabilityManager:availabilityManagerCopy analyticsSubmissionManager:submissionManagerCopy protectedDataOperation:v18];
  return v19;
}

- (HDHRElectrocardiogramRecordingV2UpgradeManager)initWithProfile:(id)profile v1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager analyticsSubmissionManager:(id)submissionManager protectedDataOperation:(id)operation
{
  profileCopy = profile;
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  submissionManagerCopy = submissionManager;
  operationCopy = operation;
  v20.receiver = self;
  v20.super_class = HDHRElectrocardiogramRecordingV2UpgradeManager;
  v17 = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    objc_storeStrong(&v18->_protectedDataOperation, operation);
    objc_storeStrong(&v18->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v18->_v2FeatureAvailabilityManager, availabilityManager);
    objc_storeStrong(&v18->_analyticsSubmissionManager, submissionManager);
    [(HDProtectedDataOperation *)v18->_protectedDataOperation setDelegate:v18];
    [(HDProtectedDataOperation *)v18->_protectedDataOperation requestWorkWithPriority:2 error:0];
  }

  return v18;
}

uint64_t __124__HDHRElectrocardiogramRecordingV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 nanoRegistryDeviceCapabilityProvider];
  v7 = v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    [v6 unregisterObserver:v8];
  }

  else
  {
    [v6 registerObserver:v8 queue:0];
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)pairedDeviceCapabilitiesDidUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  protectedDataOperation = self->_protectedDataOperation;
  v11 = 0;
  v4 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v11];
  v5 = v11;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    *buf = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v9 = v7;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to nano pairing changes (error: %{public}@)", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)doWorkWithCompletion:(uint64_t)completion
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (completion)
  {
    v4 = *(completion + 32);
    v96 = 0;
    v5 = [v4 featureOnboardingRecordWithError:&v96];
    v6 = v96;
    v7 = v6;
    if (!v5)
    {
      v8 = MEMORY[0x277CCACA8];
      domain = [v6 domain];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      v11 = [v8 stringWithFormat:@"%@_%@", domain, v10];
      v12 = *MEMORY[0x277D103E8];
      v13 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v13 _reportAnalyticsEventForCountryCode:v14 eventType:v15 errorCategory:v16 errorDetail:v11];

      v17 = OUTLINED_FUNCTION_0_3();
      v19 = 0;
      v20 = v7;
LABEL_8:
      v18(v17, v19, v20);
LABEL_30:

      goto LABEL_31;
    }

    if ([v5 isOnboardingPresent])
    {
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        *buf = 138543362;
        v98 = v23;
        v24 = v23;
        _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already onboarded to ECG2", buf, 0xCu);
      }

      v25 = *MEMORY[0x277D103E8];
      v26 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v26 _reportAnalyticsEventForCountryCode:v27 eventType:v28 errorCategory:v29 errorDetail:v30];
      v17 = OUTLINED_FUNCTION_0_3();
      v19 = 1;
      v20 = 0;
      goto LABEL_8;
    }

    v31 = *(completion + 24);
    v95 = v7;
    v32 = [v31 featureOnboardingRecordWithError:&v95];
    v33 = v95;

    if (!v32)
    {
      v34 = MEMORY[0x277CCACA8];
      domain2 = [v33 domain];
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v33, "code")}];
      v37 = [v34 stringWithFormat:@"%@_%@", domain2, v36];
      v38 = *MEMORY[0x277D103E8];
      v39 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v39 _reportAnalyticsEventForCountryCode:v40 eventType:v41 errorCategory:v42 errorDetail:v37];

      v43 = OUTLINED_FUNCTION_0_3();
      v45 = 0;
      v46 = v33;
LABEL_17:
      v44(v43, v45, v46);
LABEL_29:

      v7 = v33;
      goto LABEL_30;
    }

    if (([v32 isOnboardingPresent] & 1) == 0)
    {
      _HKInitializeLogging();
      v59 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
        v61 = objc_opt_class();
        *buf = 138543362;
        v98 = v61;
        v62 = v61;
        _os_log_impl(&dword_229486000, v60, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to ECG2 as not onboarded to ECG1", buf, 0xCu);
      }

      v63 = *MEMORY[0x277D103E8];
      v64 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v64 _reportAnalyticsEventForCountryCode:v65 eventType:v66 errorCategory:v67 errorDetail:v68];
      v43 = OUTLINED_FUNCTION_0_3();
      v45 = 1;
      v46 = 0;
      goto LABEL_17;
    }

    onboardingCompletion = [v32 onboardingCompletion];
    countryCode = [onboardingCompletion countryCode];

    if (countryCode)
    {
      v69 = *(completion + 32);
      v94 = v33;
      v55 = [v69 onboardingEligibilityForCountryCode:countryCode error:&v94];
      v58 = v94;

      if (v55)
      {
        isEligible = [v55 isEligible];
        _HKInitializeLogging();
        v78 = *MEMORY[0x277CCC2D8];
        v79 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
        if (isEligible)
        {
          if (v79)
          {
            v80 = v78;
            v81 = objc_opt_class();
            *buf = 138543618;
            v98 = v81;
            v99 = 2114;
            v100 = countryCode;
            v82 = v81;
            _os_log_impl(&dword_229486000, v80, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning ECG2 upgrade in country: %{public}@", buf, 0x16u);
          }

          v83 = *(completion + 32);
          _v1featureSettingsUponBackgroundDelivery = [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _v1featureSettingsUponBackgroundDelivery];
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __71__HDHRElectrocardiogramRecordingV2UpgradeManager_doWorkWithCompletion___block_invoke;
          v91[3] = &unk_2786600F8;
          v91[4] = completion;
          v92 = countryCode;
          v93 = v3;
          [v83 setCurrentOnboardingVersionCompletedForCountryCode:v92 countryCodeProvenance:3 date:0 settings:_v1featureSettingsUponBackgroundDelivery completion:v91];

          goto LABEL_28;
        }

        if (v79)
        {
          v85 = v78;
          v86 = objc_opt_class();
          v90 = v86;
          ineligibilityReasonsDescription = [v55 ineligibilityReasonsDescription];
          *buf = 138543874;
          v98 = v86;
          v99 = 2114;
          v100 = countryCode;
          v101 = 2114;
          v102 = ineligibilityReasonsDescription;
          _os_log_impl(&dword_229486000, v85, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to ECG2 in ECG1 country: %{public}@: %{public}@", buf, 0x20u);
        }

        ineligibilityReasonsDescription2 = [v55 ineligibilityReasonsDescription];
        [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _reportAnalyticsEventForCountryCode:countryCode eventType:*MEMORY[0x277D103E8] errorCategory:@"eligibility" errorDetail:ineligibilityReasonsDescription2];

        v74 = OUTLINED_FUNCTION_0_3();
        v76 = 0;
      }

      else
      {
        v70 = MEMORY[0x277CCACA8];
        domain3 = [v58 domain];
        v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v58, "code")}];
        v73 = [v70 stringWithFormat:@"%@_%@", domain3, v72];
        [(HDHRElectrocardiogramRecordingV2UpgradeManager *)completion _reportAnalyticsEventForCountryCode:countryCode eventType:*MEMORY[0x277D103E8] errorCategory:@"eligibility" errorDetail:v73];

        v74 = OUTLINED_FUNCTION_0_3();
        v76 = v58;
      }

      v75(v74, 0, v76);
    }

    else
    {
      v49 = *MEMORY[0x277D103E8];
      v50 = OUTLINED_FUNCTION_1_4();
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v50 _reportAnalyticsEventForCountryCode:v51 eventType:v52 errorCategory:v53 errorDetail:v54];
      v55 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Cannot upgrade V1 user to V2 as no country code exists"];
      v56 = OUTLINED_FUNCTION_0_3();
      v57(v56, 1, v55);
      v58 = v33;
    }

LABEL_28:

    v33 = v58;
    goto LABEL_29;
  }

LABEL_31:

  v89 = *MEMORY[0x277D85DE8];
}

- (id)_v1featureSettingsUponBackgroundDelivery
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = objc_alloc(MEMORY[0x277CCD450]);
    v2 = *MEMORY[0x277CCBD10];
    v7[0] = *MEMORY[0x277CCBD18];
    v7[1] = v2;
    v8[0] = MEMORY[0x277CBEC38];
    v8[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
    v4 = [v1 initWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __71__HDHRElectrocardiogramRecordingV2UpgradeManager_doWorkWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v6 _reportAnalyticsEventForCountryCode:*MEMORY[0x277D103E0] eventType:0 errorCategory:0 errorDetail:?];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = v7;
      objc_opt_class();
      OUTLINED_FUNCTION_2_2();
      v18 = v17;
      OUTLINED_FUNCTION_3_1(&dword_229486000, v19, v20, "[%{public}@] Error saving ECGV2 Upgrade: %{public}@", v21, v22, v23, v24, v25, v26, v27);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = MEMORY[0x277CCACA8];
    v11 = [v5 domain];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v13 = [v10 stringWithFormat:@"%@_%@", v11, v12];
    if (v8)
    {
      [(HDHRElectrocardiogramRecordingV2UpgradeManager *)v8 _reportAnalyticsEventForCountryCode:v9 eventType:*MEMORY[0x277D103E8] errorCategory:@"save" errorDetail:v13];
    }
  }

  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __124__HDHRElectrocardiogramRecordingV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
  v9[3] = &unk_27865FD68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDHRElectrocardiogramRecordingV2UpgradeManager *)self doWorkWithCompletion:v9];
}

- (void)_reportAnalyticsEventForCountryCode:(void *)code eventType:(void *)type errorCategory:(void *)category errorDetail:
{
  v35 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = MEMORY[0x277D105D0];
    categoryCopy = category;
    typeCopy = type;
    codeCopy = code;
    v13 = a2;
    v14 = [v9 alloc];
    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v14 initWithFeatureIdentifier:*MEMORY[0x277CCC020] eventType:codeCopy countryCode:v13 countryCodeProvenance:v15 errorCategory:typeCopy errorDetail:categoryCopy];

    v17 = *(self + 40);
    v32 = 0;
    v18 = [v17 submitEvent:v16 error:&v32];
    v19 = v32;
    if ((v18 & 1) == 0)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v22 = v20;
        objc_opt_class();
        OUTLINED_FUNCTION_2_2();
        v34 = v19;
        v24 = v23;
        OUTLINED_FUNCTION_3_1(&dword_229486000, v25, v26, "[%{public}@] Failed to submit analytics event: %{public}@", v27, v28, v29, v30, v31, v32, v33);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end