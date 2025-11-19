@interface HKHRAFibBurdenSevenDayAnalysisModeDeterminer
- (HKHRAFibBurdenSevenDayAnalysisModeDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4;
- (id)_mostRecentSampleEndDateDayIndexWithError:(id *)a3;
- (id)_onboardingDateDayIndexWithFeatureStatus:(id)a3 error:(id *)a4;
- (id)determineModeForAnalysisWeekRange:(id)a3 featureStatus:(id)a4 error:(id *)a5;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisModeDeterminer

- (HKHRAFibBurdenSevenDayAnalysisModeDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenSevenDayAnalysisModeDeterminer;
  v8 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_calendarCache, a4);
  }

  return v9;
}

- (id)determineModeForAnalysisWeekRange:(id)a3 featureStatus:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v9 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)self _onboardingDateDayIndexWithFeatureStatus:a4 error:&v23];
  v10 = v23;
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (v9)
  {
    v14 = [v9 integerValue];
    if (v14 >= var0 + var1)
    {
      _HKInitializeLogging();
      v11 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HKHRAFibBurdenSevenDayAnalysisModeDeterminer determineModeForAnalysisWeekRange:v11 featureStatus:? error:?];
      }

      v13 = &unk_283CD32E0;
    }

    else
    {
      v15 = v14;
      v22 = 0;
      v16 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)self _mostRecentSampleEndDateDayIndexWithError:&v22];
      v11 = v22;
      if (v11)
      {
        if (a5)
        {
          v17 = v11;
          v13 = 0;
          *a5 = v11;
        }

        else
        {
          _HKLogDroppedError();
          v13 = 0;
        }
      }

      else if (v16 && [v16 integerValue] >= var0)
      {
        _HKInitializeLogging();
        v19 = HKHRAFibBurdenLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = self;
          _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Most recent sample end date after analysis week range start, implying part of this week or future. Skipping analysis", buf, 0xCu);
        }

        v13 = &unk_283CD32E0;
      }

      else
      {
        v13 = &unk_283CD3310;
        if (v15 >= var0 && v15 - var0 < var1)
        {
          _HKInitializeLogging();
          v18 = HKHRAFibBurdenLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = self;
            _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding date within analysis week range, allowing analysis to proceed but will not notify on no data.", buf, 0xCu);
          }

          v13 = &unk_283CD32F8;
        }
      }
    }

    goto LABEL_26;
  }

  v13 = &unk_283CD32E0;
LABEL_27:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_onboardingDateDayIndexWithFeatureStatus:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 isOnboardingRecordPresent] && (objc_msgSend(v5, "onboardingRecord"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "allOnboardingCompletionsRegardlessOfSupportedState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v5 onboardingRecord];
    v11 = [v10 allOnboardingCompletionsRegardlessOfSupportedState];

    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v16 completionDate];
          v18 = [v9 hk_isBeforeDate:v17];

          if (v18)
          {
            v19 = [v16 completionDate];

            v9 = v19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v20 = MEMORY[0x277CCABB0];
    v21 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
    v22 = [v20 numberWithInteger:{objc_msgSend(v9, "hk_dayIndexWithCalendar:", v21)}];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_mostRecentSampleEndDateDayIndexWithError:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10848];
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v24 = 0;
  v8 = [v5 mostRecentSampleWithType:v6 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v24];
  v9 = v24;

  if (v8)
  {
    v10 = [v8 endDate];
    v11 = [v10 dateByAddingTimeInterval:-1.0];

    calendarCache = self->_calendarCache;
    v13 = [v8 _timeZone];
    v14 = [(HKCalendarCache *)calendarCache calendarForTimeZone:v13];
    v15 = [v11 hk_dayIndexWithCalendar:v14];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];

    goto LABEL_14;
  }

  _HKInitializeLogging();
  v17 = HKHRAFibBurdenLogForCategory();
  v18 = v17;
  if (v9)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)self _mostRecentSampleEndDateDayIndexWithError:v9, v18];
    }

    if (a3)
    {
      v19 = v9;
      v16 = 0;
      *a3 = v9;
      goto LABEL_14;
    }

    _HKLogDroppedError();
  }

  else
  {
    v20 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v20)
    {
      v21 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v26 = self;
        _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_INFO, "[%{public}@] No sample found", buf, 0xCu);
      }
    }
  }

  v16 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)determineModeForAnalysisWeekRange:(uint64_t)a1 featureStatus:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Onboarding date day index after analysis week, meaning we were not onboarded for any part of the analysis week. Skipping analysis.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_mostRecentSampleEndDateDayIndexWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error when finding most recent sample: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end