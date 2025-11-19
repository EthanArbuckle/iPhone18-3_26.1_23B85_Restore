@interface HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector
- (BOOL)shouldAllowAnalysisWithFeatureStatus:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector)initWithOnboardingEligibilityDeterminer:(id)a3 breadcrumbManager:(id)a4;
- (id)pairedDevices;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector

- (HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector)initWithOnboardingEligibilityDeterminer:(id)a3 breadcrumbManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector;
  v9 = [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingEligibilityDeterminer, a3);
    objc_storeStrong(&v10->_breadcrumbManager, a4);
  }

  return v10;
}

- (BOOL)shouldAllowAnalysisWithFeatureStatus:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v6 = [v5 areAllRequirementsSatisfied];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v64 = self;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Usage context supported, allowing analysis", buf, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v9 = *MEMORY[0x277D12E58];
    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D12E58]];
    v11 = [v10 areAllRequirementsSatisfied];

    if (v11)
    {
      v12 = [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)self pairedDevices];
      if ([v12 count])
      {
        v13 = [v4 onboardingRecord];
        v14 = [v13 allOnboardingCompletionsRegardlessOfSupportedState];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v15 = v12;
        v16 = [v15 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v57;
          v47 = v12;
          v49 = v15;
          v50 = v14;
          v45 = *v57;
          while (2)
          {
            v19 = 0;
            v46 = v17;
            do
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v56 + 1) + 8 * v19);
              onboardingEligibilityDeterminer = self->_onboardingEligibilityDeterminer;
              v55 = 0;
              v22 = [(HDFeatureAvailabilityOnboardingEligibilityDeterminer *)onboardingEligibilityDeterminer onboardingEligibilitiesForDevice:v20 onboardingCompletions:v14 error:&v55, v45];
              v23 = v55;
              v8 = v23 == 0;
              if (v23)
              {
                v24 = v23;
                _HKInitializeLogging();
                v44 = HKHRAFibBurdenLogForCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  [(HKHRAFibBurdenSevenDayAnalysisFeatureStatusInspector *)self shouldAllowAnalysisWithFeatureStatus:v24, v44];
                }

                [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Error determining onboarding eligibility"];
                v12 = v47;
LABEL_40:

                goto LABEL_41;
              }

              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v48 = v22;
              v24 = v22;
              v25 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v52;
                while (2)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v52 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = [*(*(&v51 + 1) + 8 * i) onboardingEligibility];
                    v30 = [v29 isEligible];

                    if (v30)
                    {
                      _HKInitializeLogging();
                      v41 = HKHRAFibBurdenLogForCategory();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        v64 = self;
                        _os_log_impl(&dword_229486000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] At least one paired device has supported onboarding completion, allowing analysis", buf, 0xCu);
                      }

                      v12 = v47;
                      v22 = v48;
                      v15 = v49;
                      v14 = v50;
                      goto LABEL_40;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v51 objects:v60 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v19;
              v18 = v45;
              v15 = v49;
              v14 = v50;
            }

            while (v19 != v46);
            v17 = [v49 countByEnumeratingWithState:&v56 objects:v61 count:16];
            v12 = v47;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        _HKInitializeLogging();
        v31 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v64 = self;
          _os_log_impl(&dword_229486000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] No paired devices had supported onboarding completion, not allowing analysis", buf, 0xCu);
        }

        [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"No devices supported for onboarding completions"];
        v8 = 0;
LABEL_41:
      }

      else
      {
        _HKInitializeLogging();
        v40 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v64 = self;
          _os_log_impl(&dword_229486000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] No devices present, not allowing analysis", buf, 0xCu);
        }

        [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)self->_breadcrumbManager dropAnalysisResultBreadcrumbWithContext:@"Analysis feature context allowed but no paired devices"];
        v8 = 0;
      }
    }

    else
    {
      v32 = [v4 objectForKeyedSubscript:v9];
      v33 = [v32 unsatisfiedRequirementIdentifiers];
      v62 = *MEMORY[0x277CCBF38];
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      v35 = [v33 isEqualToArray:v34];

      _HKInitializeLogging();
      v36 = HKHRAFibBurdenLogForCategory();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v37)
        {
          *buf = 138543362;
          v64 = self;
          _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis context not supported exclusively due to setting being toggled off, not allowing analysis", buf, 0xCu);
        }

        breadcrumbManager = self->_breadcrumbManager;
        v39 = @"Feature turned off";
      }

      else
      {
        if (v37)
        {
          *buf = 138543362;
          v64 = self;
          _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis context not supported, not allowing analysis", buf, 0xCu);
        }

        breadcrumbManager = self->_breadcrumbManager;
        v39 = @"Usage feature status not allowed";
      }

      [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManaging *)breadcrumbManager dropAnalysisResultBreadcrumbWithContext:v39];
      v8 = 0;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)pairedDevices
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [MEMORY[0x277D2BCF8] pairedDevicesSelectorBlock];
  v4 = [v2 getDevicesMatching:v3];

  return v4;
}

- (void)shouldAllowAnalysisWithFeatureStatus:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error when retrieving onboarding eligibility: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end