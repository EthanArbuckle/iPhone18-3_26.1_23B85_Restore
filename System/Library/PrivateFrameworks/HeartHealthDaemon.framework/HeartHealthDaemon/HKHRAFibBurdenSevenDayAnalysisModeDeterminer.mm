@interface HKHRAFibBurdenSevenDayAnalysisModeDeterminer
- (HKHRAFibBurdenSevenDayAnalysisModeDeterminer)initWithProfile:(id)profile calendarCache:(id)cache;
- (id)_mostRecentSampleEndDateDayIndexWithError:(id *)error;
- (id)_onboardingDateDayIndexWithFeatureStatus:(id)status error:(id *)error;
- (id)determineModeForAnalysisWeekRange:(id)range featureStatus:(id)status error:(id *)error;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisModeDeterminer

- (HKHRAFibBurdenSevenDayAnalysisModeDeterminer)initWithProfile:(id)profile calendarCache:(id)cache
{
  profileCopy = profile;
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenSevenDayAnalysisModeDeterminer;
  v8 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_calendarCache, cache);
  }

  return v9;
}

- (id)determineModeForAnalysisWeekRange:(id)range featureStatus:(id)status error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v9 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)self _onboardingDateDayIndexWithFeatureStatus:status error:&v23];
  v10 = v23;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
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
    integerValue = [v9 integerValue];
    if (integerValue >= var0 + var1)
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
      v15 = integerValue;
      v22 = 0;
      v16 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)self _mostRecentSampleEndDateDayIndexWithError:&v22];
      v11 = v22;
      if (v11)
      {
        if (error)
        {
          v17 = v11;
          v13 = 0;
          *error = v11;
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
          selfCopy2 = self;
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
            selfCopy2 = self;
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

- (id)_onboardingDateDayIndexWithFeatureStatus:(id)status error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if ([statusCopy isOnboardingRecordPresent] && (objc_msgSend(statusCopy, "onboardingRecord"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "allOnboardingCompletionsRegardlessOfSupportedState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    onboardingRecord = [statusCopy onboardingRecord];
    allOnboardingCompletionsRegardlessOfSupportedState = [onboardingRecord allOnboardingCompletionsRegardlessOfSupportedState];

    v12 = [allOnboardingCompletionsRegardlessOfSupportedState countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(allOnboardingCompletionsRegardlessOfSupportedState);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          completionDate = [v16 completionDate];
          v18 = [distantPast hk_isBeforeDate:completionDate];

          if (v18)
          {
            completionDate2 = [v16 completionDate];

            distantPast = completionDate2;
          }
        }

        v13 = [allOnboardingCompletionsRegardlessOfSupportedState countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v20 = MEMORY[0x277CCABB0];
    currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
    v22 = [v20 numberWithInteger:{objc_msgSend(distantPast, "hk_dayIndexWithCalendar:", currentCalendar)}];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_mostRecentSampleEndDateDayIndexWithError:(id *)error
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
    endDate = [v8 endDate];
    v11 = [endDate dateByAddingTimeInterval:-1.0];

    calendarCache = self->_calendarCache;
    _timeZone = [v8 _timeZone];
    v14 = [(HKCalendarCache *)calendarCache calendarForTimeZone:_timeZone];
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

    if (error)
    {
      v19 = v9;
      v16 = 0;
      *error = v9;
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
        selfCopy = self;
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