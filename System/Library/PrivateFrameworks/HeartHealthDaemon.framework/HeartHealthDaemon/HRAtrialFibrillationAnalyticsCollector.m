@interface HRAtrialFibrillationAnalyticsCollector
- (HDProfile)profile;
- (HRAtrialFibrillationAnalyticsCollector)initWithProfile:(id)a3;
- (id)_fetchBiologicalSex;
- (id)_fetchCurrentAge;
- (void)_fetchBiologicalSex;
- (void)_fetchCurrentAge;
- (void)_postConfirmationCycleMetric:(id)a3;
- (void)collectAnalyticsForRemoteDisableMessageShownForOnboardingCountryCode:(id)a3;
- (void)collectAnalyticsForRemoteReEnableMessageShownForOnboardingCountryCode:(id)a3;
- (void)collectAnalyticsForResult:(id)a3 algorithmVersion:(int64_t)a4 samplesDateInterval:(id)a5;
- (void)updateCountAnalyzedTachogramsWithCount:(int64_t)a3 keyValueDomain:(id)a4;
@end

@implementation HRAtrialFibrillationAnalyticsCollector

- (HRAtrialFibrillationAnalyticsCollector)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HRAtrialFibrillationAnalyticsCollector;
  v5 = [(HRAtrialFibrillationAnalyticsCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (void)collectAnalyticsForResult:(id)a3 algorithmVersion:(int64_t)a4 samplesDateInterval:(id)a5
{
  v23 = a3;
  v8 = a5;
  if (([v23 tachogramShouldBeRequested] & 1) == 0)
  {
    v9 = [(HRAtrialFibrillationAnalyticsCollector *)self _fetchCurrentAge];
    v10 = HKHRAnalyticsAgeBinFromAgeInYears();

    v11 = [v23 positiveUUIDs];
    v12 = [v11 count];

    v13 = [v23 negativeUUIDs];
    v14 = [v13 count];

    v15 = [(HRAtrialFibrillationAnalyticsCollector *)self _fetchBiologicalSex];
    v16 = [v15 integerValue];

    v17 = [HRAtrialFibrillationConfirmationCycleMetric alloc];
    v18 = [v23 userShouldBeAlerted];
    [v8 duration];
    v20 = v19;
    v21 = [v23 metricsForCoreAnalytics];
    v22 = [(HRAtrialFibrillationConfirmationCycleMetric *)v17 initWithAgeBin:v10 numberOfPositiveTachograms:v12 numberOfNegativeTachograms:v14 algorithmVersion:a4 biologicalSex:v16 userShouldBeAlerted:v18 cycleDuration:v20 additionalMetrics:v21];

    [(HRAtrialFibrillationAnalyticsCollector *)self _postConfirmationCycleMetric:v22];
  }
}

- (void)collectAnalyticsForRemoteDisableMessageShownForOnboardingCountryCode:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"nil";
  }

  v8 = @"OnboardingCountryCode";
  v9[0] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  AnalyticsSendEvent();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)collectAnalyticsForRemoteReEnableMessageShownForOnboardingCountryCode:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"nil";
  }

  v8 = @"OnboardingCountryCode";
  v9[0] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  AnalyticsSendEvent();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateCountAnalyzedTachogramsWithCount:(int64_t)a3 keyValueDomain:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 >= 1)
  {
    v7 = *MEMORY[0x277CCB740];
    v13 = 0;
    v8 = [v5 numberForKey:v7 error:&v13];
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
        a3 += [v8 integerValue];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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

- (void)_postConfirmationCycleMetric:(id)a3
{
  v4 = a3;
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v3 = [v4 payload];
    AnalyticsSendEvent();
  }
}

- (id)_fetchCurrentAge
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained userCharacteristicsManager];
  v14 = 0;
  v6 = [v5 userCharacteristicForType:v3 error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v8 hk_dateOfBirthDateComponentsWithDate:v9];

    v11 = [v8 components:4 fromDateComponents:v6 toDateComponents:v10 options:0];
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
  v5 = [WeakRetained userCharacteristicsManager];
  v10 = 0;
  v6 = [v5 userCharacteristicForType:v3 error:&v10];
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