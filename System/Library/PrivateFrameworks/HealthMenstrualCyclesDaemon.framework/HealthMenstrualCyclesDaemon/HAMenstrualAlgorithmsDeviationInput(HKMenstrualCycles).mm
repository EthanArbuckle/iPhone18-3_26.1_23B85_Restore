@interface HAMenstrualAlgorithmsDeviationInput(HKMenstrualCycles)
+ (id)_dayIndexAfterLastDeviationOfType:()HKMenstrualCycles profile:calendar:;
+ (id)hdmc_deviationInputWithProfile:()HKMenstrualCycles enabledSetExplicitly:calendar:;
@end

@implementation HAMenstrualAlgorithmsDeviationInput(HKMenstrualCycles)

+ (id)hdmc_deviationInputWithProfile:()HKMenstrualCycles enabledSetExplicitly:calendar:
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D0FCB0]);
  v11 = [self _dayIndexAfterLastDeviationOfType:0 profile:v8 calendar:v9];
  [v10 setJulianDayMinAnalysisWindowStartProlonged:v11];

  v12 = [self _dayIndexAfterLastDeviationOfType:1 profile:v8 calendar:v9];
  [v10 setJulianDayMinAnalysisWindowStartSpotting:v12];

  v13 = [self _dayIndexAfterLastDeviationOfType:2 profile:v8 calendar:v9];
  [v10 setJulianDayMinAnalysisWindowStartIrregular:v13];

  v14 = [self _dayIndexAfterLastDeviationOfType:3 profile:v8 calendar:v9];
  [v10 setJulianDayMinAnalysisWindowStartInfrequent:v14];

  v15 = HKShowSensitiveLogItems();
  v16 = MEMORY[0x277CCC2E8];
  if (v15)
  {
    _HKInitializeLogging();
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = objc_opt_class();
      v20 = v19;
      julianDayMinAnalysisWindowStartProlonged = [v10 julianDayMinAnalysisWindowStartProlonged];
      *buf = 138543618;
      v75 = v19;
      v76 = 2112;
      v77 = julianDayMinAnalysisWindowStartProlonged;
      _os_log_impl(&dword_2293D1000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Minimum deviation analysis start day (prolonged): %@", buf, 0x16u);

      v16 = MEMORY[0x277CCC2E8];
    }

    _HKInitializeLogging();
    v22 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v25 = v24;
      julianDayMinAnalysisWindowStartSpotting = [v10 julianDayMinAnalysisWindowStartSpotting];
      *buf = 138543618;
      v75 = v24;
      v76 = 2112;
      v77 = julianDayMinAnalysisWindowStartSpotting;
      _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Minimum deviation analysis start day (spotting): %@", buf, 0x16u);

      v16 = MEMORY[0x277CCC2E8];
    }

    _HKInitializeLogging();
    v27 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = objc_opt_class();
      v30 = v29;
      julianDayMinAnalysisWindowStartIrregular = [v10 julianDayMinAnalysisWindowStartIrregular];
      *buf = 138543618;
      v75 = v29;
      v76 = 2112;
      v77 = julianDayMinAnalysisWindowStartIrregular;
      _os_log_impl(&dword_2293D1000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Minimum deviation analysis start day (irregular): %@", buf, 0x16u);

      v16 = MEMORY[0x277CCC2E8];
    }

    _HKInitializeLogging();
    v32 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = objc_opt_class();
      v35 = v34;
      julianDayMinAnalysisWindowStartInfrequent = [v10 julianDayMinAnalysisWindowStartInfrequent];
      *buf = 138543618;
      v75 = v34;
      v76 = 2112;
      v77 = julianDayMinAnalysisWindowStartInfrequent;
      _os_log_impl(&dword_2293D1000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Minimum deviation analysis start day (infrequent): %@", buf, 0x16u);

      v16 = MEMORY[0x277CCC2E8];
    }
  }

  onboardingCompletionManager = [v8 onboardingCompletionManager];
  v38 = *MEMORY[0x277CCC098];
  v73 = 0;
  v39 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v38 error:&v73];
  v40 = v73;

  if (!v39)
  {
    _HKInitializeLogging();
    v41 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      [HAMenstrualAlgorithmsDeviationInput(HKMenstrualCycles) hdmc_deviationInputWithProfile:v41 enabledSetExplicitly:? calendar:?];
    }
  }

  if ([v39 count])
  {
    v42 = [v39 hk_firstSortedObjectWithComparison:&__block_literal_global];
    completionDate = [v42 completionDate];

    v69 = completionDate;
    v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(completionDate, "hk_dayIndexWithCalendar:", v9)}];
    [MEMORY[0x277D10718] hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:v8];
    v68 = v72 = v40;
    v44 = [v68 hdmc_unconfirmedDeviationDismissalDayIndexWithError:&v72];
    v45 = v72;

    if (v44 || !v45)
    {
      if (v44)
      {
        v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v44, "integerValue") + 10}];
LABEL_24:
        v70 = v9;
        v53 = a4;
        if (a4)
        {
          v54 = v52;
        }

        else
        {
          v55 = v71;
          if (v52 && v71)
          {
            v67 = MEMORY[0x277CCABB0];
            integerValue = [v52 integerValue];
            integerValue2 = [v71 integerValue];
            if (integerValue <= integerValue2)
            {
              v58 = integerValue2;
            }

            else
            {
              v58 = integerValue;
            }

            v54 = [v67 numberWithInteger:v58];
          }

          else
          {
            if (v52)
            {
              v55 = v52;
            }

            v54 = v55;
          }
        }

        v59 = v54;
        _HKInitializeLogging();
        v60 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
        {
          v61 = v60;
          v62 = objc_opt_class();
          *buf = 138544386;
          v63 = @"NO";
          v75 = v62;
          v76 = 2112;
          if (v53)
          {
            v63 = @"YES";
          }

          v77 = v59;
          v78 = 2112;
          v79 = v71;
          v80 = 2112;
          v81 = v44;
          v82 = 2112;
          v83 = v63;
          v64 = v62;
          _os_log_impl(&dword_2293D1000, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] Minimum deviation analysis end day: %@ (first onboarded: %@, last dismissed: %@, enabled set explicitly: %@)", buf, 0x34u);
        }

        [v10 setJulianDayMinAnalysisWindowEndProlonged:v59];
        [v10 setJulianDayMinAnalysisWindowEndSpotting:v59];
        [v10 setJulianDayMinAnalysisWindowEndIrregular:v59];
        [v10 setJulianDayMinAnalysisWindowEndInfrequent:v59];
        v51 = v10;

        v9 = v70;
        goto LABEL_40;
      }
    }

    else
    {
      _HKInitializeLogging();
      v46 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HAMenstrualAlgorithmsDeviationInput(HKMenstrualCycles) hdmc_deviationInputWithProfile:v46 enabledSetExplicitly:? calendar:?];
      }
    }

    v52 = 0;
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v47 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v47;
    v49 = objc_opt_class();
    *buf = 138543362;
    v75 = v49;
    v50 = v49;
    _os_log_impl(&dword_2293D1000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping deviation input configuration due to no onboarding completion", buf, 0xCu);
  }

  v51 = 0;
  v45 = v40;
LABEL_40:

  v65 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (id)_dayIndexAfterLastDeviationOfType:()HKMenstrualCycles profile:calendar:
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v8 = MEMORY[0x277D10848];
  v9 = HKCategoryTypeFromDeviationType();
  v10 = [v8 entityEnumeratorWithType:v9 profile:v6];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
  v39[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v10 setSortDescriptors:v12];

  v13 = HDSampleEntityOrderingTermsForRecentness();
  [v10 setOrderingTerms:v13];

  [v10 setLimitCount:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__HAMenstrualAlgorithmsDeviationInput_HKMenstrualCycles___dayIndexAfterLastDeviationOfType_profile_calendar___block_invoke;
  v25[3] = &unk_27865A6F8;
  v25[4] = &v27;
  v26 = 0;
  [v10 enumerateWithError:&v26 handler:v25];
  v14 = v26;
  v15 = v28[5];
  if (v15)
  {
    v16 = [v15 hk_dayIndexRangeWithCalendar:v7];
    if (v17 <= 0)
    {
      v18 = 0x8000000000000000;
    }

    else
    {
      v18 = v16 + v17;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  }

  else
  {
    if (v14)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromDeviationType();
        *buf = 138543874;
        v34 = v23;
        v35 = 2114;
        v36 = v24;
        v37 = 2114;
        v38 = v14;
        _os_log_error_impl(&dword_2293D1000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last %{public}@ deviation sample: %{public}@", buf, 0x20u);
      }
    }

    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)hdmc_deviationInputWithProfile:()HKMenstrualCycles enabledSetExplicitly:calendar:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving deviation detection onboarding completions: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)hdmc_deviationInputWithProfile:()HKMenstrualCycles enabledSetExplicitly:calendar:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error retrieving unconfirmed deviation dismiss day: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end