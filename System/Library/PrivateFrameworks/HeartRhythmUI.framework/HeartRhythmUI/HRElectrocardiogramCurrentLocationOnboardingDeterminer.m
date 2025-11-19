@interface HRElectrocardiogramCurrentLocationOnboardingDeterminer
- (HRElectrocardiogramCurrentLocationOnboardingDeterminer)initWithHealthStore:(id)a3;
- (void)_submitOnboardingUIErrorEventWithCountryCode:(void *)a3 algorithmVersion:(void *)a4 onboardingEligibility:;
- (void)isElectrocardiogramOnboardingAvailableInCurrentLocationForActiveWatch:(id)a3;
- (void)isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch:(void *)a3 completion:;
@end

@implementation HRElectrocardiogramCurrentLocationOnboardingDeterminer

- (HRElectrocardiogramCurrentLocationOnboardingDeterminer)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HRElectrocardiogramCurrentLocationOnboardingDeterminer;
  v6 = [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = HKPreferredRegulatoryDomainProvider();
    mobileCountryCodeManager = v7->_mobileCountryCodeManager;
    v7->_mobileCountryCodeManager = v8;

    v10 = objc_alloc(MEMORY[0x277CCCFE8]);
    v11 = [v10 initWithLoggingCategory:*MEMORY[0x277CCC2D8] healthDataSource:v5];
    analyticsEventSubmissionManager = v7->_analyticsEventSubmissionManager;
    v7->_analyticsEventSubmissionManager = v11;
  }

  return v7;
}

- (void)isElectrocardiogramOnboardingAvailableInCurrentLocationForActiveWatch:(id)a3
{
  v4 = MEMORY[0x277CCD6A0];
  v5 = a3;
  v7 = [v4 activeNonFamilySetupDevice];
  [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)self isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch:v6 completion:v5];
}

void __133__HRElectrocardiogramCurrentLocationOnboardingDeterminer_isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 ISOCode];
    if (!v7)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v21 = a1[4];
        v22 = a1[6];
        v23 = v20;
        v24 = NSStringFromSelector(v22);
        *buf = 138543618;
        v44 = v21;
        v45 = 2114;
        v46 = v24;
        _os_log_impl(&dword_2521E7000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@] -> Country code is nil. Set error.", buf, 0x16u);
      }

      v25 = [MEMORY[0x277CCA9B8] hk_error:122 description:@"Location is invalid or unavailable"];

      [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)a1[4] _submitOnboardingUIErrorEventWithCountryCode:v5 algorithmVersion:*MEMORY[0x277CCB7A0] onboardingEligibility:0];
      (*(a1[5] + 16))();
      v6 = v25;
      goto LABEL_9;
    }

    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      v8 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
      v9 = [v8 objectForKey:*MEMORY[0x277CCBCC0]];

      v10 = [v9 unsignedIntegerValue];
      if (v10)
      {
        v11 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:v10];
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          v13 = a1[4];
          v14 = a1[6];
          v15 = v12;
          v16 = NSStringFromSelector(v14);
          *buf = 138544130;
          v44 = v13;
          v45 = 2114;
          v46 = v16;
          v47 = 2114;
          v48 = v9;
          v49 = 2114;
          v50 = v5;
          _os_log_impl(&dword_2521E7000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Algorithm Version was overridden via HKECGOnboardingVersionOverrideKey -> %{public}@, Country Code: %{public}@", buf, 0x2Au);
        }

        v17 = a1[5];
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        (*(v17 + 16))(v17, v7, v18, v6);

        goto LABEL_8;
      }
    }

    v26 = objc_alloc(MEMORY[0x277CCD438]);
    v27 = a1[4];
    if (v27)
    {
      v28 = *(v27 + 8);
    }

    else
    {
      v28 = 0;
    }

    v9 = [v26 initWithFeatureIdentifier:*MEMORY[0x277CCC020] healthStore:v28];
    v42 = 0;
    v29 = [v9 onboardingEligibilityForCountryCode:v7 error:&v42];
    v30 = v42;
    if (!v29)
    {
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v32 = a1[4];
        v33 = a1[6];
        v34 = v31;
        v35 = NSStringFromSelector(v33);
        *buf = 138544130;
        v44 = v32;
        v45 = 2114;
        v46 = v35;
        v47 = 2114;
        v48 = v7;
        v49 = 2114;
        v50 = v30;
        _os_log_error_impl(&dword_2521E7000, v34, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Could not establish eligibility for ECG2 countryCode: %{public}@, Error: %{public}@", buf, 0x2Au);
      }

      [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)a1[4] _submitOnboardingUIErrorEventWithCountryCode:v5 algorithmVersion:&unk_2864717E8 onboardingEligibility:0];
      v36 = *(a1[5] + 16);
      goto LABEL_26;
    }

    if ([v29 isEligible])
    {
      [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)a1[4] _submitOnboardingUIErrorEventWithCountryCode:v5 algorithmVersion:&unk_2864717E8 onboardingEligibility:v29];
      v36 = *(a1[5] + 16);
LABEL_26:
      v36();
LABEL_37:

LABEL_8:
LABEL_9:

      goto LABEL_10;
    }

    v37 = v29;
    v38 = [v37 ineligibilityReasons];
    if ((v38 & 2) == 0 && (v38 & 4) == 0)
    {
      if ((v38 & 8) != 0)
      {
        goto LABEL_38;
      }

      if ((v38 & 0x10) == 0)
      {
        if ((v38 & 0x20) == 0)
        {
          if ((v38 & 0x40) != 0)
          {
            v40 = MEMORY[0x277CCA9B8];
            v39 = @"Feature disabled";
            v41 = 111;
            goto LABEL_36;
          }

          if (v38 < 0)
          {
            v39 = @"Feature seed expired";
            v40 = MEMORY[0x277CCA9B8];
            v41 = 113;
            goto LABEL_36;
          }

          v39 = @"Feature unavailable";
          v40 = MEMORY[0x277CCA9B8];
          goto LABEL_39;
        }

LABEL_38:
        v40 = MEMORY[0x277CCA9B8];
        v39 = @"Feature unavailable";
LABEL_39:
        v41 = 110;
        goto LABEL_36;
      }
    }

    v40 = MEMORY[0x277CCA9B8];
    v39 = @"Device not supported";
    v41 = 112;
LABEL_36:
    v30 = [v40 hk_error:v41 description:v39];
    [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)a1[4] _submitOnboardingUIErrorEventWithCountryCode:v5 algorithmVersion:&unk_2864717E8 onboardingEligibility:v37];
    (*(a1[5] + 16))();

    goto LABEL_37;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    __133__HRElectrocardiogramCurrentLocationOnboardingDeterminer_isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch_completion___block_invoke_cold_1(a1, v19, v6);
  }

  [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)a1[4] _submitOnboardingUIErrorEventWithCountryCode:*MEMORY[0x277CCB7A0] algorithmVersion:0 onboardingEligibility:?];
  (*(a1[5] + 16))();
LABEL_10:
}

- (void)isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch:(void *)a3 completion:
{
  v4 = a3;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __133__HRElectrocardiogramCurrentLocationOnboardingDeterminer_isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch_completion___block_invoke;
    v7[3] = &unk_2796FB8F0;
    v7[4] = a1;
    v9 = sel_isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch_completion_;
    v8 = v4;
    [v6 fetchMobileCountryCodeFromCellularWithCompletion:v7];
  }
}

- (void)_submitOnboardingUIErrorEventWithCountryCode:(void *)a3 algorithmVersion:(void *)a4 onboardingEligibility:
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = MEMORY[0x277D129B0];
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = [v7 alloc];
    v12 = *MEMORY[0x277CCC010];
    v13 = [v9 stringValue];

    v14 = [v10 ISOCode];

    v15 = [v11 initWithFeatureIdentifier:v12 featureVersion:v13 countryCode:v14 step:@"Intro" onboardingEligibility:v8];
    v16 = *(a1 + 24);
    v23 = 0;
    v17 = v16;
    LOBYTE(v8) = [v17 submitEvent:v15 error:&v23];
    v18 = v23;

    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = objc_opt_class();
        *buf = 138543618;
        v25 = v21;
        v26 = 2114;
        v27 = v18;
        v22 = v21;
        _os_log_error_impl(&dword_2521E7000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error submitting onboarding errors analytics event: %{public}@", buf, 0x16u);
      }
    }
  }
}

void __133__HRElectrocardiogramCurrentLocationOnboardingDeterminer_isElectrocardiogramOnboardingAvailableInCurrentLocationForWatch_completion___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = 138544130;
  v9 = v4;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = 0;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_2521E7000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Location not found, Country Code: %{public}@, Error: %{public}@", &v8, 0x2Au);
}

@end