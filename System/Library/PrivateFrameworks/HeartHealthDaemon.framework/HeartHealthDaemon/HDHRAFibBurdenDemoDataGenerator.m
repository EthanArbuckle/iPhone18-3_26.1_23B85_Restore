@interface HDHRAFibBurdenDemoDataGenerator
- (HDHRAFibBurdenDemoDataGenerator)init;
- (HDHRAFibBurdenDemoDataGenerator)initWithCoder:(id)a3;
- (double)_randomlySelectedGaussianWithMean:(double)a3 deviation:(double)a4;
- (id)_currentDateFromCurrentTime:(double)a3;
- (id)_metadataForSampleWithPercentage:(double)a3;
- (void)_completeAFibHistoryOnboardingIfNecessaryForDemoPerson:(id)a3 date:(id)a4;
- (void)_generateAFibBurdenSamplesForDemoPerson:(id)a3 lastTime:(double)a4 atTime:(double)a5 sampleDate:(id)a6 objectCollection:(id)a7;
- (void)_generateTachogramSamplesForDemoPerson:(id)a3 lastTime:(double)a4 atTime:(double)a5 sampleDate:(id)a6 objectCollection:(id)a7;
- (void)_setDataTypeAsFavorite;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4;
@end

@implementation HDHRAFibBurdenDemoDataGenerator

- (HDHRAFibBurdenDemoDataGenerator)init
{
  v6.receiver = self;
  v6.super_class = HDHRAFibBurdenDemoDataGenerator;
  v2 = [(HDHRAFibBurdenDemoDataGenerator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextAFibBurdenSampleTime = 0.0;
    v2->_nextHeartbeatSeriesSampleTime = 0.0;
    HDDemoData_timeFromDateComponents();
    v3->_heartbeatSeriesSampleFrequency = v4;
    v3->_aFibHistoryFeatureOnboarded = 0;
    v3->_percentAFibChance = 0.25;
  }

  return v3;
}

- (HDHRAFibBurdenDemoDataGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDHRAFibBurdenDemoDataGenerator;
  v5 = [(HDHRAFibBurdenDemoDataGenerator *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_NextAFibBurdenSampleTimeKey"];
    v5->_nextAFibBurdenSampleTime = v6;
    [v4 decodeDoubleForKey:@"_NextHeartbeatSeriesSampleTimeKey"];
    v5->_nextHeartbeatSeriesSampleTime = v7;
    HDDemoData_timeFromDateComponents();
    v5->_heartbeatSeriesSampleFrequency = v8;
    v5->_aFibHistoryFeatureOnboarded = [v4 decodeBoolForKey:@"_AFibHistoryFeatureOnboardedKey"];
    v5->_percentAFibChance = 0.25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(HDHRAFibBurdenDemoDataGenerator *)self nextAFibBurdenSampleTime];
  [v4 encodeDouble:@"_NextAFibBurdenSampleTimeKey" forKey:?];
  [(HDHRAFibBurdenDemoDataGenerator *)self nextHeartbeatSeriesSampleTime];
  [v4 encodeDouble:@"_NextHeartbeatSeriesSampleTimeKey" forKey:?];
  [v4 encodeBool:-[HDHRAFibBurdenDemoDataGenerator aFibHistoryFeatureOnboarded](self forKey:{"aFibHistoryFeatureOnboarded"), @"_AFibHistoryFeatureOnboardedKey"}];
}

- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_profile, a3);
  generatorState = self->_generatorState;
  self->_generatorState = v6;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v8 = a3;
  v7 = a4;
  if ([v8 profileType] == 4)
  {
    [(HDHRAFibBurdenDemoDataGenerator *)self _completeAFibHistoryOnboardingIfNecessaryForDemoPerson:v8 date:v7];
  }
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if ([v12 profileType] == 4)
  {
    if ([(HDHRAFibBurdenDemoDataGenerator *)self aFibHistoryFeatureOnboarded])
    {
      v15 = [MEMORY[0x277CCDD30] sharedBehavior];
      v16 = [v15 isAppleWatch];

      if ((v16 & 1) == 0)
      {
        [(HDHRAFibBurdenDemoDataGenerator *)self _generateTachogramSamplesForDemoPerson:v12 lastTime:v13 atTime:v14 sampleDate:a4 objectCollection:a5];
        [(HDHRAFibBurdenDemoDataGenerator *)self _generateAFibBurdenSamplesForDemoPerson:v12 lastTime:v13 atTime:v14 sampleDate:a4 objectCollection:a5];
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [HDHRAFibBurdenDemoDataGenerator generateObjectsForDemoPerson:v17 fromTime:? toTime:? currentDate:? objectCollection:?];
      }
    }
  }
}

- (void)_generateAFibBurdenSamplesForDemoPerson:(id)a3 lastTime:(double)a4 atTime:(double)a5 sampleDate:(id)a6 objectCollection:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a7;
  if (self->_nextAFibBurdenSampleTime <= a5)
  {
    v11 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v12 = [(HDHRAFibBurdenDemoDataGenerator *)self _currentDateFromCurrentTime:a4];
    v13 = [(HDHRAFibBurdenDemoDataGenerator *)self _currentDateFromCurrentTime:a5];
    v14 = HKHRAFibBurdenSevenDayAnalysisDetermineAlarmDateComponents();
    v15 = [v11 nextDateAfterDate:v13 matchingComponents:v14 options:260];

    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v13];
    v17 = [v16 containsDate:v15];

    if (v17)
    {
      v18 = HKHRAFibBurdenPreviousWeekDayIndexRange();
      v40 = v10;
      v20 = v19;
      [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v18 atHour:0 calendar:v11];
      v21 = v39 = v15;
      v22 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v18 + v20 atHour:0 calendar:v11];
      [(HDHRAFibBurdenDemoDataGenerator *)self _randomlySelectedGaussianWithMean:self->_percentAFibChance deviation:0.03];
      v24 = v23;
      v25 = MEMORY[0x277CCD7E8];
      v26 = [MEMORY[0x277CCDAB0] percentUnit];
      [v25 quantityWithUnit:v26 doubleValue:v24];
      v38 = v13;
      v28 = v27 = v12;

      v29 = MEMORY[0x277CCD800];
      v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
      v31 = [MEMORY[0x277CCD2E8] localDevice];
      v32 = [(HDHRAFibBurdenDemoDataGenerator *)self _metadataForSampleWithPercentage:v24];
      v33 = [v29 quantitySampleWithType:v30 quantity:v28 startDate:v21 endDate:v22 device:v31 metadata:v32];

      v10 = v40;
      [v40 addObjectFromPhone:v33];
      v34 = [v11 dateByAddingUnit:16 value:7 toDate:v27 options:0];
      [v34 timeIntervalSinceDate:v27];
      self->_nextAFibBurdenSampleTime = a4 + v35 * 0.0000115740741;

      v12 = v27;
      v13 = v38;

      v15 = v39;
    }

    else
    {
      _HKInitializeLogging();
      v36 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v42 = self;
        v43 = 2114;
        v44 = v15;
        v45 = 2114;
        v46 = v12;
        v47 = 2114;
        v48 = v13;
        _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Target date %{public}@ not included in date range from %{public}@ to %{public}@", buf, 0x2Au);
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_generateTachogramSamplesForDemoPerson:(id)a3 lastTime:(double)a4 atTime:(double)a5 sampleDate:(id)a6 objectCollection:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (self->_nextHeartbeatSeriesSampleTime <= a4)
  {
    if ([(HDDemoDataGeneratorState *)self->_generatorState isExercising])
    {
      _HKInitializeLogging();
      v15 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = self;
        _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not adding background tachograms as person is exercising", buf, 0xCu);
      }
    }

    else
    {
      v24 = v13;
      v25 = v12;
      nextHeartbeatSeriesSampleTime = self->_nextHeartbeatSeriesSampleTime;
      if (nextHeartbeatSeriesSampleTime <= a5)
      {
        v17 = *MEMORY[0x277CCE050];
        v18 = *MEMORY[0x277CCDFA0];
        do
        {
          v19 = [(HDHRAFibBurdenDemoDataGenerator *)self _currentDateFromCurrentTime:nextHeartbeatSeriesSampleTime, v24, v25];
          v26[0] = v17;
          v26[1] = v18;
          v27[0] = &unk_283CD2A70;
          v27[1] = &unk_283CD2A88;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
          v21 = [MEMORY[0x277CCD2E8] localDevice];
          if (arc4random_uniform(0x64u) / 100.0 >= self->_percentAFibChance)
          {
            [MEMORY[0x277CCD540] _nonAFibSeriesSampleWithStartDate:v19 device:v21 metadata:v20];
          }

          else
          {
            [MEMORY[0x277CCD540] _aFibSeriesSampleWithStartDate:v19 device:v21 metadata:v20];
          }
          v22 = ;
          [v14 addObjectFromWatch:v22];
          nextHeartbeatSeriesSampleTime = nextHeartbeatSeriesSampleTime + self->_heartbeatSeriesSampleFrequency;
        }

        while (nextHeartbeatSeriesSampleTime <= a5);
      }

      self->_nextHeartbeatSeriesSampleTime = nextHeartbeatSeriesSampleTime;
      v13 = v24;
      v12 = v25;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_completeAFibHistoryOnboardingIfNecessaryForDemoPerson:(id)a3 date:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained featureAvailabilityProvidingForFeatureIdentifier:*MEMORY[0x277CCBFF0]];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [v8 countryCode];

    v10 = objc_alloc(MEMORY[0x277CCD450]);
    v11 = *MEMORY[0x277D12EF8];
    v16[0] = *MEMORY[0x277CCC120];
    v16[1] = v11;
    v17[0] = MEMORY[0x277CBEC38];
    v17[1] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v10 initWithDictionary:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__HDHRAFibBurdenDemoDataGenerator__completeAFibHistoryOnboardingIfNecessaryForDemoPerson_date___block_invoke;
    v15[3] = &unk_278660408;
    v15[4] = self;
    [v7 setCurrentOnboardingVersionCompletedForCountryCode:v9 countryCodeProvenance:102 date:v5 settings:v13 completion:v15];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to find AFib History Feature Availability Provider", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __95__HDHRAFibBurdenDemoDataGenerator__completeAFibHistoryOnboardingIfNecessaryForDemoPerson_date___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKHRAFibBurdenLogForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed AFib History onboarding", &v10, 0xCu);
    }

    [*(a1 + 32) setAFibHistoryFeatureOnboarded:1];
    [*(a1 + 32) _setDataTypeAsFavorite];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __95__HDHRAFibBurdenDemoDataGenerator__completeAFibHistoryOnboardingIfNecessaryForDemoPerson_date___block_invoke_cold_1(a1, v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setDataTypeAsFavorite
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] Error setting favorites: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (double)_randomlySelectedGaussianWithMean:(double)a3 deviation:(double)a4
{
  v6 = arc4random() / 4294967300.0;
  v7 = arc4random() / 4294967300.0;
  v8 = sqrt(log(v6) * -2.0);
  return a3 + v8 * cos(v7 * 6.28318531) * a4;
}

- (id)_currentDateFromCurrentTime:(double)a3
{
  v4 = [(HDDemoDataGeneratorState *)self->_generatorState firstSampleDate];
  v5 = [v4 dateByAddingTimeInterval:a3 * 86400.0];

  return v5;
}

- (id)_metadataForSampleWithPercentage:(double)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = HKHRAFibBurdenLocalFeatureAttributes();
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v16[0] = *MEMORY[0x277CCE0D0];
  v6 = [v4 updateVersion];
  v17[0] = v6;
  v16[1] = *MEMORY[0x277CCC428];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 featureVersion];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
  v17[1] = v9;
  v16[2] = *MEMORY[0x277CCC530];
  v10 = [MEMORY[0x277CBEBB0] localTimeZone];
  v11 = [v10 name];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [v5 initWithDictionary:v12];

  if (a3 <= 0.02)
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4F8]];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)generateObjectsForDemoPerson:(uint64_t)a1 fromTime:(NSObject *)a2 toTime:currentDate:objectCollection:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] AFib profile selected but AFib History not onboarded.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __95__HDHRAFibBurdenDemoDataGenerator__completeAFibHistoryOnboardingIfNecessaryForDemoPerson_date___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_7(&dword_229486000, v3, v4, "[%{public}@] Unable to complete AFib History onboarding: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end