@interface HRAtrialFibrillationAnalyticsCollector
- (HDProfile)profile;
- (HRAtrialFibrillationAnalyticsCollector)initWithProfile:(id)profile;
- (id)_fetchBiologicalSex;
- (id)_fetchCurrentAge;
- (void)_fetchBiologicalSex;
- (void)_fetchCurrentAge;
- (void)_postConfirmationCycleMetric:(id)metric;
- (void)collectAnalyticsForRemoteDisableMessageShownForOnboardingCountryCode:(id)code;
- (void)collectAnalyticsForRemoteReEnableMessageShownForOnboardingCountryCode:(id)code;
- (void)collectAnalyticsForResult:(id)result algorithmVersion:(int64_t)version samplesDateInterval:(id)interval;
- (void)updateCountAnalyzedTachogramsWithCount:(int64_t)count keyValueDomain:(id)domain;
@end

@implementation HRAtrialFibrillationAnalyticsCollector

- (HRAtrialFibrillationAnalyticsCollector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HRAtrialFibrillationAnalyticsCollector;
  v5 = [(HRAtrialFibrillationAnalyticsCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)collectAnalyticsForResult:(id)result algorithmVersion:(int64_t)version samplesDateInterval:(id)interval
{
  resultCopy = result;
  intervalCopy = interval;
  if (([resultCopy tachogramShouldBeRequested] & 1) == 0)
  {
    _fetchCurrentAge = [(HRAtrialFibrillationAnalyticsCollector *)self _fetchCurrentAge];
    v10 = HKHRAnalyticsAgeBinFromAgeInYears();

    positiveUUIDs = [resultCopy positiveUUIDs];
    v12 = [positiveUUIDs count];

    negativeUUIDs = [resultCopy negativeUUIDs];
    v14 = [negativeUUIDs count];

    _fetchBiologicalSex = [(HRAtrialFibrillationAnalyticsCollector *)self _fetchBiologicalSex];
    integerValue = [_fetchBiologicalSex integerValue];

    v17 = [HRAtrialFibrillationConfirmationCycleMetric alloc];
    userShouldBeAlerted = [resultCopy userShouldBeAlerted];
    [intervalCopy duration];
    v20 = v19;
    metricsForCoreAnalytics = [resultCopy metricsForCoreAnalytics];
    v22 = [(HRAtrialFibrillationConfirmationCycleMetric *)v17 initWithAgeBin:v10 numberOfPositiveTachograms:v12 numberOfNegativeTachograms:v14 algorithmVersion:version biologicalSex:integerValue userShouldBeAlerted:userShouldBeAlerted cycleDuration:v20 additionalMetrics:metricsForCoreAnalytics];

    [(HRAtrialFibrillationAnalyticsCollector *)self _postConfirmationCycleMetric:v22];
  }
}

- (void)collectAnalyticsForRemoteDisableMessageShownForOnboardingCountryCode:(id)code
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (code)
  {
    codeCopy = code;
  }

  else
  {
    codeCopy = @"nil";
  }

  v8 = @"OnboardingCountryCode";
  v9[0] = codeCopy;
  v4 = MEMORY[0x277CBEAC0];
  codeCopy2 = code;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  AnalyticsSendEvent();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)collectAnalyticsForRemoteReEnableMessageShownForOnboardingCountryCode:(id)code
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (code)
  {
    codeCopy = code;
  }

  else
  {
    codeCopy = @"nil";
  }

  v8 = @"OnboardingCountryCode";
  v9[0] = codeCopy;
  v4 = MEMORY[0x277CBEAC0];
  codeCopy2 = code;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  AnalyticsSendEvent();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateCountAnalyzedTachogramsWithCount:(int64_t)count keyValueDomain:(id)domain
{
  domainCopy = domain;
  v6 = domainCopy;
  if (count >= 1)
  {
    v7 = *MEMORY[0x277CCB740];
    v13 = 0;
    v8 = [domainCopy numberForKey:v7 error:&v13];
    v9 = v13;
    if (v9)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationAnalyticsCollector updateCountAnalyzedTachogramsWithCount:keyValueDomain:];
      }
    }

    else
    {
      if (v8 && ([v8 integerValue] & 0x8000000000000000) == 0)
      {
        count += [v8 integerValue];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      v12 = 0;
      [v6 setNumber:v10 forKey:v7 error:&v12];
      v11 = v12;

      if (v11)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          [HRAtrialFibrillationAnalyticsCollector updateCountAnalyzedTachogramsWithCount:keyValueDomain:];
        }
      }
    }
  }
}

- (void)_postConfirmationCycleMetric:(id)metric
{
  metricCopy = metric;
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    payload = [metricCopy payload];
    AnalyticsSendEvent();
  }
}

- (id)_fetchCurrentAge
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v14 = 0;
  v6 = [userCharacteristicsManager userCharacteristicForType:v3 error:&v14];
  v7 = v14;

  if (v6)
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

    v11 = [hk_gregorianCalendarWithLocalTimeZone components:4 fromDateComponents:v6 toDateComponents:v10 options:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "year")}];
  }

  else
  {
    if (v7)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationAnalyticsCollector _fetchCurrentAge];
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)_fetchBiologicalSex
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v10 = 0;
  v6 = [userCharacteristicsManager userCharacteristicForType:v3 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationAnalyticsCollector _fetchBiologicalSex];
    }
  }

  return v6;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)updateCountAnalyzedTachogramsWithCount:keyValueDomain:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to get CountAnalyzedTacogramsPast24Hours, error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCountAnalyzedTachogramsWithCount:keyValueDomain:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to set CountAnalyzedTacogramsPast24Hours, error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCurrentAge
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to get date of birth, error: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_fetchBiologicalSex
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to get biological sex, error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end