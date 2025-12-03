@interface HDHRCardioFitnessAnalyticsDailyEventDataSource
+ (id)localGregorianCalendar;
- (HDHRCardioFitnessAnalyticsDailyEventDataSource)initWithProfile:(id)profile;
- (HDHRCardioFitnessAnalyticsDailyEventDataSource)initWithProfile:(id)profile privacyDefaults:(id)defaults heartRateDefaults:(id)rateDefaults;
- (id)determineDaysSinceLastLowNotificationWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error;
- (id)determineDaysSinceLastVO2MaxSampleWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error;
- (id)determineIsBlockersEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error;
- (id)determineIsHeartRateEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed;
- (id)determineIsWristDetectionEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed;
- (id)determineNumberOfLowNotificationsInPastYearWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error;
- (int64_t)_determineDaysSinceLastSampleWithSampleType:(id)type currentDate:(id)date error:(id *)error;
- (int64_t)determineWeeksSinceOnboardingWithCurrentDate:(id)date error:(id *)error;
- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate;
@end

@implementation HDHRCardioFitnessAnalyticsDailyEventDataSource

- (HDHRCardioFitnessAnalyticsDailyEventDataSource)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CBEBD0];
  profileCopy = profile;
  standardUserDefaults = [v4 standardUserDefaults];
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CCE458]];
  v9 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)self initWithProfile:profileCopy privacyDefaults:standardUserDefaults heartRateDefaults:v8];

  return v9;
}

- (HDHRCardioFitnessAnalyticsDailyEventDataSource)initWithProfile:(id)profile privacyDefaults:(id)defaults heartRateDefaults:(id)rateDefaults
{
  profileCopy = profile;
  defaultsCopy = defaults;
  rateDefaultsCopy = rateDefaults;
  v14.receiver = self;
  v14.super_class = HDHRCardioFitnessAnalyticsDailyEventDataSource;
  v11 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_privacyDefaults, defaults);
    objc_storeStrong(&v12->_heartRateDefaults, rateDefaults);
  }

  return v12;
}

- (id)determineDaysSinceLastLowNotificationWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (allowed)
  {
    v9 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA08]];
    v17 = 0;
    v10 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)self _determineDaysSinceLastSampleWithSampleType:v9 currentDate:dateCopy error:&v17];
    v11 = v17;
    if (v11)
    {
      _HKInitializeLogging();
      v12 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsDailyEventDataSource determineDaysSinceLastLowNotificationWithCurrentDate:isImproveHealthAndActivityAllowed:error:];
      }

      if (error)
      {
        v13 = v11;
        v14 = 0;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including days since last low notification as user does not have IH&A allowed", buf, 0xCu);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)determineDaysSinceLastVO2MaxSampleWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (allowed)
  {
    v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC98]];
    v17 = 0;
    v10 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)self _determineDaysSinceLastSampleWithSampleType:v9 currentDate:dateCopy error:&v17];
    v11 = v17;
    if (v11)
    {
      _HKInitializeLogging();
      v12 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsDailyEventDataSource determineDaysSinceLastVO2MaxSampleWithCurrentDate:isImproveHealthAndActivityAllowed:error:];
      }

      if (error)
      {
        v13 = v11;
        v14 = 0;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including days since last low VO2 Max as user does not have IH&A allowed", buf, 0xCu);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)determineNumberOfLowNotificationsInPastYearWithCurrentDate:(id)date isImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (allowed)
  {
    v9 = +[HDHRCardioFitnessAnalyticsDailyEventDataSource localGregorianCalendar];
    v10 = [v9 dateByAddingUnit:4 value:-1 toDate:dateCopy options:0];
    v11 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA08]];
    v12 = MEMORY[0x277D10B20];
    v13 = HDSampleEntityPredicateForStartDate();
    v27[0] = v13;
    v14 = HDSampleEntityPredicateForStartDate();
    v27[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v16 = [v12 predicateMatchingAllPredicates:v15];

    v17 = MEMORY[0x277D10848];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v26 = 0;
    v19 = [v17 countOfSamplesWithType:v11 profile:WeakRetained matchingPredicate:v16 withError:&v26];
    v20 = v26;

    if (v20)
    {
      _HKInitializeLogging();
      v21 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsDailyEventDataSource determineNumberOfLowNotificationsInPastYearWithCurrentDate:isImproveHealthAndActivityAllowed:error:];
      }

      if (error)
      {
        v22 = v20;
        v23 = 0;
        *error = v20;
      }

      else
      {
        _HKLogDroppedError();
        v23 = 0;
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including number of low notifications in past year as user does not have IH&A allowed", buf, 0xCu);
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)determineIsBlockersEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  if (allowed)
  {
    v6 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCDED0]];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
    v17 = 0;
    v9 = [userCharacteristicsManager userCharacteristicForType:v6 error:&v17];
    v10 = v17;

    if (v10)
    {
      _HKInitializeLogging();
      v11 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsDailyEventDataSource determineIsBlockersEnabledWithIsImproveHealthAndActivityAllowed:error:];
      }

      if (error)
      {
        v12 = v10;
        v13 = 0;
        *error = v10;
      }

      else
      {
        _HKLogDroppedError();
        v13 = 0;
      }
    }

    else if (v9)
    {
      v14 = [v9 unsignedIntValue] != 0;
      v13 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    }

    else
    {
      v13 = MEMORY[0x277CBEC28];
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including whether user has blockers enabled as user does not have IH&A allowed", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)determineIsHeartRateEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v13 = *MEMORY[0x277D85DE8];
  if (allowed)
  {
    v4 = [(NSUserDefaults *)self->_privacyDefaults persistentDomainForName:*MEMORY[0x277CCE500]];
    v5 = [v4 objectForKey:*MEMORY[0x277CCE518]];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including whether user has heart rate as user does not have IH&A allowed", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)determineIsWristDetectionEnabledWithIsImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v11 = *MEMORY[0x277D85DE8];
  if (allowed)
  {
    isWristDetectEnabled = [MEMORY[0x277CCDCF8] isWristDetectEnabled];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:isWristDetectEnabled];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not including whether user has wrist detect as user does not have IH&A allowed", &v9, 0xCu);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)determineWeeksSinceOnboardingWithCurrentDate:(id)date error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = objc_alloc(MEMORY[0x277D106D8]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [v7 initWithProfile:WeakRetained featureIdentifier:*MEMORY[0x277CCC000] currentOnboardingVersion:1 loggingCategory:*MEMORY[0x277CCC2D0]];

  v18 = 0;
  v10 = [v9 earliestDateLowestOnboardingVersionCompletedWithError:&v18];
  v11 = v18;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessAnalyticsDailyEventDataSource determineWeeksSinceOnboardingWithCurrentDate:error:];
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_12:
    v14 = *MEMORY[0x277D12EF0];
    goto LABEL_13;
  }

  if (!v10)
  {
    _HKInitializeLogging();
    v15 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No onboarding date given, user has not onboarded yet", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v14 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)self numberOfDaysBetweenStartDate:v10 endDate:dateCopy]/ 7;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int64_t)_determineDaysSinceLastSampleWithSampleType:(id)type currentDate:(id)date error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dateCopy = date;
  v10 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = 0;
  v12 = [v10 mostRecentSampleWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v21];
  v13 = v21;

  if (v13)
  {
    _HKInitializeLogging();
    v14 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      identifier = [typeCopy identifier];
      *buf = 138543874;
      selfCopy = self;
      v24 = 2114;
      v25 = identifier;
      v26 = 2114;
      v27 = v13;
      _os_log_error_impl(&dword_229486000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]: Error when querying for %{public}@: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    v17 = *MEMORY[0x277D12EF0];
    goto LABEL_10;
  }

  startDate = [v12 startDate];
  v17 = [(HDHRCardioFitnessAnalyticsDailyEventDataSource *)self numberOfDaysBetweenStartDate:startDate endDate:dateCopy];

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = +[HDHRCardioFitnessAnalyticsDailyEventDataSource localGregorianCalendar];
  v14 = 0;
  [v7 rangeOfUnit:16 startDate:&v14 interval:0 forDate:dateCopy];

  v8 = v14;
  v13 = 0;
  [v7 rangeOfUnit:16 startDate:&v13 interval:0 forDate:endDateCopy];

  v9 = v13;
  v10 = [v7 components:16 fromDate:v8 toDate:v9 options:0];
  v11 = [v10 day];

  return v11;
}

+ (id)localGregorianCalendar
{
  v2 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  return v2;
}

- (void)determineDaysSinceLastLowNotificationWithCurrentDate:isImproveHealthAndActivityAllowed:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when determining days since last low notification, will retry daily event: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)determineDaysSinceLastVO2MaxSampleWithCurrentDate:isImproveHealthAndActivityAllowed:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when determining days since last VO2 max sample, will retry daily event: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)determineNumberOfLowNotificationsInPastYearWithCurrentDate:isImproveHealthAndActivityAllowed:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error received from query, assigning error so we retry: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)determineIsBlockersEnabledWithIsImproveHealthAndActivityAllowed:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when retrieving cardio fitness medications use object, using error sentinel: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)determineWeeksSinceOnboardingWithCurrentDate:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when determining onboarding date: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end