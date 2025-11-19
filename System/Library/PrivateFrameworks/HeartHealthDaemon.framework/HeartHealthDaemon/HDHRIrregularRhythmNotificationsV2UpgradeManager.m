@interface HDHRIrregularRhythmNotificationsV2UpgradeManager
- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)a3 v1FeatureAvailabilityManager:(id)a4 v2FeatureAvailabilityManager:(id)a5 hypertensionNotificationsFeatureAvailabilityManager:(id)a6 analyticsSubmissionManager:(id)a7;
- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)a3 v1FeatureAvailabilityManager:(id)a4 v2FeatureAvailabilityManager:(id)a5 hypertensionNotificationsFeatureAvailabilityManager:(id)a6 analyticsSubmissionManager:(id)a7 protectedDataOperation:(id)a8;
- (void)_reportAnalyticsEventForCountryCode:(id)a3 eventType:(id)a4 errorCategory:(id)a5 errorDetail:(id)a6;
- (void)_startObservingOnboardingChanges;
- (void)_stopObservingOnboardingChanges;
- (void)doWorkWithCompletion:(id)a3;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)pairedDeviceCapabilitiesDidUpdate:(id)a3;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
@end

@implementation HDHRIrregularRhythmNotificationsV2UpgradeManager

- (void)_startObservingOnboardingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  [(HDFeatureAvailabilityExtension *)self->_v2FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
  queue = self->_queue;

  [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager registerObserver:self queue:queue];
}

- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)a3 v1FeatureAvailabilityManager:(id)a4 v2FeatureAvailabilityManager:(id)a5 hypertensionNotificationsFeatureAvailabilityManager:(id)a6 analyticsSubmissionManager:(id)a7
{
  v12 = MEMORY[0x277D10800];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 alloc];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v18 initWithProfile:v17 debugIdentifier:v20 delegate:0];

  v22 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self initWithProfile:v17 v1FeatureAvailabilityManager:v16 v2FeatureAvailabilityManager:v15 hypertensionNotificationsFeatureAvailabilityManager:v14 analyticsSubmissionManager:v13 protectedDataOperation:v21];
  return v22;
}

- (HDHRIrregularRhythmNotificationsV2UpgradeManager)initWithProfile:(id)a3 v1FeatureAvailabilityManager:(id)a4 v2FeatureAvailabilityManager:(id)a5 hypertensionNotificationsFeatureAvailabilityManager:(id)a6 analyticsSubmissionManager:(id)a7 protectedDataOperation:(id)a8
{
  v14 = a3;
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = HDHRIrregularRhythmNotificationsV2UpgradeManager;
  v18 = [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, v14);
    objc_storeStrong(&v19->_v1FeatureAvailabilityManager, a4);
    objc_storeStrong(&v19->_v2FeatureAvailabilityManager, a5);
    objc_storeStrong(&v19->_hypertensionNotificationsAvailabilityManager, a6);
    v20 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_analyticsSubmissionManager, a7);
    objc_storeStrong(&v19->_protectedDataOperation, a8);
    [(HDProtectedDataOperation *)v19->_protectedDataOperation setDelegate:v19, v23, v24];
    [(HDProtectedDataOperation *)v19->_protectedDataOperation requestWorkWithPriority:2 error:0];
  }

  return v19;
}

- (void)_stopObservingOnboardingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager unregisterObserver:self];
  [(HDFeatureAvailabilityExtension *)self->_v2FeatureAvailabilityManager unregisterObserver:self];
  hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;

  [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager unregisterObserver:self];
}

- (void)doWorkWithCompletion:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  v73 = 0;
  v6 = [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager featureOnboardingRecordWithError:&v73];
  v7 = v73;
  v8 = v7;
  if (v6)
  {
    if ([v6 isOnboardingPresent])
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543362;
        v75 = v11;
        v12 = v11;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already onboarded to IRN2", buf, 0xCu);
      }

      [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v2_eligibility" errorDetail:@"already_onboarded"];
      v4[2](v4, 1, 0);
    }

    else
    {
      v1FeatureAvailabilityManager = self->_v1FeatureAvailabilityManager;
      v72 = v8;
      v18 = [(HDFeatureAvailabilityExtension *)v1FeatureAvailabilityManager featureOnboardingRecordWithError:&v72];
      v19 = v72;

      if (v18)
      {
        if ([v18 isOnboardingPresent])
        {
          v20 = [v18 onboardingCompletion];
          v21 = [v20 countryCode];

          v22 = self->_v2FeatureAvailabilityManager;
          v71 = v19;
          v23 = [(HDFeatureAvailabilityExtension *)v22 onboardingEligibilityForCountryCode:v21 error:&v71];
          v24 = v71;

          v25 = [v18 featureSettings];
          v63 = v23;
          if ([v23 isEligible])
          {
            _HKInitializeLogging();
            v26 = *MEMORY[0x277CCC2D8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              v28 = objc_opt_class();
              *buf = 138543618;
              v75 = v28;
              v76 = 2114;
              v77 = v21;
              v29 = v28;
              _os_log_impl(&dword_229486000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning IRN2 upgrade using IRN1 country: %{public}@", buf, 0x16u);
            }

            v30 = self->_v2FeatureAvailabilityManager;
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke;
            v68[3] = &unk_2786600F8;
            v68[4] = self;
            v21 = v21;
            v69 = v21;
            v70 = v4;
            [(HDFeatureAvailabilityExtension *)v30 setCurrentOnboardingVersionCompletedForCountryCode:v21 countryCodeProvenance:3 date:0 settings:v25 completion:v68];

            v19 = v24;
          }

          else
          {
            hypertensionNotificationsAvailabilityManager = self->_hypertensionNotificationsAvailabilityManager;
            v67 = v24;
            v40 = [(HDFeatureAvailabilityExtension *)hypertensionNotificationsAvailabilityManager featureOnboardingRecordWithError:&v67];
            v19 = v67;

            v62 = v40;
            if (v40)
            {
              if ([v40 isOnboardingPresent])
              {
                v61 = v25;
                v41 = [v40 onboardingCompletion];
                v42 = [v41 countryCode];

                if (v42)
                {
                  _HKInitializeLogging();
                  v43 = *MEMORY[0x277CCC2D8];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = v43;
                    v45 = objc_opt_class();
                    *buf = 138543618;
                    v75 = v45;
                    v76 = 2114;
                    v77 = v42;
                    v46 = v45;
                    _os_log_impl(&dword_229486000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning IRN2 upgrade using Hypertension Notifications onboarding country: %{public}@", buf, 0x16u);
                  }

                  v47 = self->_v2FeatureAvailabilityManager;
                  v64[0] = MEMORY[0x277D85DD0];
                  v64[1] = 3221225472;
                  v64[2] = __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_327;
                  v64[3] = &unk_2786600F8;
                  v64[4] = self;
                  v21 = v42;
                  v65 = v21;
                  v66 = v4;
                  v48 = v47;
                  v25 = v61;
                  [(HDFeatureAvailabilityExtension *)v48 setCurrentOnboardingVersionCompletedForCountryCode:v21 countryCodeProvenance:3 date:0 settings:v61 completion:v64];
                }

                else
                {
                  [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:@"location_unavailable"];
                  v60 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Cannot upgrade V1 user to V2 as no associated feature country code exists"];
                  (v4)[2](v4, 1, v60);

                  v21 = 0;
                  v25 = v61;
                }
              }

              else
              {
                _HKInitializeLogging();
                v54 = *MEMORY[0x277CCC2D8];
                if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
                {
                  v55 = v25;
                  v56 = v54;
                  v57 = objc_opt_class();
                  *buf = 138543362;
                  v75 = v57;
                  v58 = v57;
                  _os_log_impl(&dword_229486000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to IRN2 as not onboarded to Hypertension Notifications", buf, 0xCu);

                  v25 = v55;
                }

                [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:@"not_onboarded"];
                v4[2](v4, 0, 0);
              }
            }

            else
            {
              v49 = MEMORY[0x277CCACA8];
              [v19 domain];
              v51 = v50 = v25;
              v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "code")}];
              v53 = [v49 stringWithFormat:@"%@_%@", v51, v52];
              [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"hypertensionNotifications_eligibility" errorDetail:v53];

              v25 = v50;
              (v4)[2](v4, 0, v19);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2D8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
          {
            v36 = v35;
            v37 = objc_opt_class();
            *buf = 138543362;
            v75 = v37;
            v38 = v37;
            _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot upgrade to IRN2 as not onboarded to IRN1", buf, 0xCu);
          }

          [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v1_eligibility" errorDetail:@"not_onboarded"];
          v4[2](v4, 0, 0);
        }
      }

      else
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = [v19 domain];
        v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "code")}];
        v34 = [v31 stringWithFormat:@"%@_%@", v32, v33];
        [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v1_eligibility" errorDetail:v34];

        (v4)[2](v4, 0, v19);
      }

      v8 = v19;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v7 domain];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
    v16 = [v13 stringWithFormat:@"%@_%@", v14, v15];
    [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self _reportErrorAnalyticsEventForCountryCode:0 errorCategory:@"v2_eligibility" errorDetail:v16];

    (v4)[2](v4, 0, v8);
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _reportDeliveryAnalyticsEventForCountryCode:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(a1, v6);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 domain];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];
    [v7 _reportErrorAnalyticsEventForCountryCode:v8 errorCategory:@"save" errorDetail:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_327(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _reportDeliveryAnalyticsEventForCountryCode:*(a1 + 40)];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(a1, v6);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 domain];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];
    [v7 _reportErrorAnalyticsEventForCountryCode:v8 errorCategory:@"save" errorDetail:v12];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __126__HDHRIrregularRhythmNotificationsV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke;
  v9[3] = &unk_27865FD68;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(HDHRIrregularRhythmNotificationsV2UpgradeManager *)self doWorkWithCompletion:v9];
}

uint64_t __126__HDHRIrregularRhythmNotificationsV2UpgradeManager_performWorkForOperation_profile_databaseAccessibilityAssertion_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 nanoRegistryDeviceCapabilityProvider];
  v7 = v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    [v6 unregisterObserver:v8];

    [*(a1 + 32) _stopObservingOnboardingChanges];
  }

  else
  {
    [v6 registerObserver:v8 queue:0];

    [*(a1 + 32) _startObservingOnboardingChanges];
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)pairedDeviceCapabilitiesDidUpdate:(id)a3
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

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  protectedDataOperation = self->_protectedDataOperation;
  v16 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v16];
  v7 = v16;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v4 featureIdentifier];
    v12 = v11;
    *buf = 138543874;
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to onboardingCompletion of Feature: %@ (error: %{public}@)", buf, 0x20u);
  }

  unitTesting_didRequestRetryOnFeatureStatusChangeHandler = self->_unitTesting_didRequestRetryOnFeatureStatusChangeHandler;
  if (unitTesting_didRequestRetryOnFeatureStatusChangeHandler)
  {
    unitTesting_didRequestRetryOnFeatureStatusChangeHandler[2]();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  protectedDataOperation = self->_protectedDataOperation;
  v15 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v15];
  v7 = v15;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v4 featureIdentifier];
    v12 = v11;
    *buf = 138543874;
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7;
    }

    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to region availability changes of Feature: %@ (error: %{public}@)", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3
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
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested a chance to upgrade due to OnboardingCompletionData becoming available (error: %{public}@)", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reportAnalyticsEventForCountryCode:(id)a3 eventType:(id)a4 errorCategory:(id)a5 errorDetail:(id)a6
{
  v10 = MEMORY[0x277D105D0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 alloc];
  if (v14)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 initWithFeatureIdentifier:*MEMORY[0x277CCC080] eventType:v13 countryCode:v14 countryCodeProvenance:v16 errorCategory:v12 errorDetail:v11];

  analyticsSubmissionManager = self->_analyticsSubmissionManager;
  v22 = 0;
  v19 = [(HKAnalyticsEventSubmissionManager *)analyticsSubmissionManager submitEvent:v17 error:&v22];
  v20 = v22;
  if ((v19 & 1) == 0)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HDHRIrregularRhythmNotificationsV2UpgradeManager _reportAnalyticsEventForCountryCode:v21 eventType:? errorCategory:? errorDetail:?];
    }
  }
}

void __73__HDHRIrregularRhythmNotificationsV2UpgradeManager_doWorkWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Error saving IRN2 Upgrade: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_reportAnalyticsEventForCountryCode:(void *)a1 eventType:errorCategory:errorDetail:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to submit analytics event: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end