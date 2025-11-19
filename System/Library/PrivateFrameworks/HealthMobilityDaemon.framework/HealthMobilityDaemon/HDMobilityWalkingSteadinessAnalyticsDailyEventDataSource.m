@interface HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource
- (HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource)initWithProfile:(id)a3;
- (id)_categoryValuePredicateWithValues:(id)a3;
- (id)_countOfCategorySamplesInPastYearWithType:(id)a3 values:(id)a4 error:(id *)a5;
- (id)_countOfSamplesInPastYearWithType:(id)a3 valuePredicate:(id)a4 error:(id *)a5;
- (id)_countOfSamplesWithType:(id)a3 predicate:(id)a4 error:(id *)a5;
- (id)_hasLaunchedHealthAppInLastTimeInterval:(double)a3 error:(id *)a4;
- (id)_hasSampleWithType:(id)a3 error:(id *)a4;
- (id)_healthAppLastOpenedDateWithError:(id *)a3;
- (id)_numberOfDaysSinceLastCategorySampleWithSampleType:(id)a3 values:(id)a4 error:(id *)a5;
- (id)_numberOfDaysSinceLastSampleWithSampleType:(id)a3 predicate:(id)a4 error:(id *)a5;
- (id)_samplePredicateForPastYearFromDate:(id)a3;
- (id)ageWithError:(id *)a3;
- (id)areHealthNotificationsAuthorizedWithError:(id *)a3;
- (id)biologicalSexWithError:(id *)a3;
- (id)currentWalkingSteadinessClassificationWithError:(id *)a3;
- (id)daysSinceLastInitialNotificationWithError:(id *)a3;
- (id)daysSinceLastRepeatNotificationWithError:(id *)a3;
- (id)hasHeightWithError:(id *)a3;
- (id)hasWalkingSteadinessMeasurementsWithError:(id *)a3;
- (id)numberOfDaysSinceLastWalkingSteadinessMeasurementWithError:(id *)a3;
- (id)numberOfInitialNotificationsInPastYearWithError:(id *)a3;
- (id)numberOfLowNotificationsInPastYearWithError:(id *)a3;
- (id)numberOfRepeatLowNotificationsInPastYearWithError:(id *)a3;
- (id)numberOfRepeatVeryLowNotificationsInPastYearWithError:(id *)a3;
- (id)numberOfVeryLowNotificationsInPastYearWithError:(id *)a3;
- (id)previousWalkingSteadinessClassificationWithError:(id *)a3;
- (id)walkingSteadinessNotificationsEnabledWithError:(id *)a3;
@end

@implementation HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource

- (HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource;
  v5 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)ageWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [HDMobilityAnalyticsUtilities ageWithProfile:WeakRetained date:v5 error:a3];

  return v6;
}

- (id)biologicalSexWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [HDMobilityAnalyticsUtilities biologicalSexWithProfile:WeakRetained error:a3];

  return v5;
}

- (id)hasHeightWithError:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x277CCD830]);
  v6 = [v5 initWithIdentifier:*MEMORY[0x277CCCBA8]];
  v7 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _hasSampleWithType:v6 error:a3];

  return v7;
}

- (id)numberOfDaysSinceLastWalkingSteadinessMeasurementWithError:(id *)a3
{
  v5 = HKMobilityWalkingSteadinessType();
  v11 = 0;
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _numberOfDaysSinceLastSampleWithSampleType:v5 predicate:0 error:&v11];
  v7 = v11;

  if (v6)
  {
    if ([v6 integerValue] <= 85)
    {
      v8 = v6;
    }

    else
    {
      v8 = &unk_2863D8390;
    }
  }

  else if (v7)
  {
    if (a3)
    {
      v9 = v7;
      v8 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = &unk_2863D8378;
  }

  return v8;
}

- (id)numberOfLowNotificationsInPastYearWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfCategorySamplesInPastYearWithType:v5 values:&unk_2863D8420 error:a3];

  return v6;
}

- (id)numberOfRepeatLowNotificationsInPastYearWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfCategorySamplesInPastYearWithType:v5 values:&unk_2863D8438 error:a3];

  return v6;
}

- (id)numberOfVeryLowNotificationsInPastYearWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfCategorySamplesInPastYearWithType:v5 values:&unk_2863D8450 error:a3];

  return v6;
}

- (id)numberOfRepeatVeryLowNotificationsInPastYearWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfCategorySamplesInPastYearWithType:v5 values:&unk_2863D8468 error:a3];

  return v6;
}

- (id)numberOfInitialNotificationsInPastYearWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfCategorySamplesInPastYearWithType:v5 values:&unk_2863D8480 error:a3];

  return v6;
}

- (id)daysSinceLastRepeatNotificationWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _numberOfDaysSinceLastCategorySampleWithSampleType:v5 values:&unk_2863D8498 error:a3];

  return v6;
}

- (id)daysSinceLastInitialNotificationWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E8]];
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _numberOfDaysSinceLastCategorySampleWithSampleType:v5 values:&unk_2863D84B0 error:a3];

  return v6;
}

- (id)currentWalkingSteadinessClassificationWithError:(id *)a3
{
  v5 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self hasWalkingSteadinessMeasurementsWithError:?];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v7 = HKMobilityWalkingSteadinessType();
  v8 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = 0;
  v10 = [v8 mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v21];
  v11 = v21;

  if (!v10)
  {
    v13 = v11;
    if (v13)
    {
      if (a3)
      {
        v15 = v13;
        v14 = 0;
        *a3 = v13;
        goto LABEL_16;
      }

      _HKLogDroppedError();
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  classificationOut = 0;
  v12 = [v10 quantity];
  errorOut = 0;
  HKAppleWalkingSteadinessClassificationForQuantity(v12, &classificationOut, &errorOut);
  v13 = errorOut;

  if (!classificationOut)
  {
    v16 = v13;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_15;
  }

  v14 = [MEMORY[0x277D11AB8] payloadStringForWalkingSteadinessClassification:?];
LABEL_16:

LABEL_17:

  return v14;
}

- (id)previousWalkingSteadinessClassificationWithError:(id *)a3
{
  v5 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self hasWalkingSteadinessMeasurementsWithError:?];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v7 = HKMobilityWalkingSteadinessType();
  v8 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v29 = 0;
  v10 = [v8 mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v29];
  v11 = v29;

  if (v10)
  {
    v12 = [v10 startDate];
    v13 = HDSampleEntityPredicateForStartDate();

    v14 = MEMORY[0x277D10848];
    v15 = objc_loadWeakRetained(&self->_profile);
    v28 = 0;
    v16 = [v14 mostRecentSampleWithType:v7 profile:v15 encodingOptions:0 predicate:v13 anchor:0 error:&v28];
    v17 = v28;

    if (v16)
    {
      classificationOut = 0;
      v18 = [v16 quantity];
      v26 = 0;
      HKAppleWalkingSteadinessClassificationForQuantity(v18, &classificationOut, &v26);
      v19 = v26;

      if (classificationOut)
      {
        v20 = [MEMORY[0x277D11AB8] payloadStringForWalkingSteadinessClassification:?];
LABEL_22:

        goto LABEL_23;
      }

      v23 = v19;
      if (v23)
      {
        if (a3)
        {
          v24 = v23;
          *a3 = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    else
    {
      v19 = v17;
      if (v19)
      {
        if (a3)
        {
          v22 = v19;
          v20 = 0;
          *a3 = v19;
          goto LABEL_22;
        }

        _HKLogDroppedError();
      }
    }

    v20 = 0;
    goto LABEL_22;
  }

  v17 = v11;
  if (!v17)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_17:
    v20 = 0;
    goto LABEL_23;
  }

  v21 = v17;
  v20 = 0;
  *a3 = v17;
LABEL_23:

LABEL_24:

  return v20;
}

- (id)hasWalkingSteadinessMeasurementsWithError:(id *)a3
{
  v5 = HKMobilityWalkingSteadinessType();
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _hasSampleWithType:v5 error:a3];

  return v6;
}

- (id)walkingSteadinessNotificationsEnabledWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained featureSettingsManager];
  v7 = [v6 featureSettingsForFeatureIdentifier:*MEMORY[0x277CCC110] error:a3];

  if (v7)
  {
    v8 = [v7 numberForKey:*MEMORY[0x277CCC120]];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self walkingSteadinessNotificationsEnabledWithError:a3, v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)areHealthNotificationsAuthorizedWithError:(id *)a3
{
  v3 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained notificationManager];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "areHealthNotificationsAuthorized")}];

  return v6;
}

- (id)_samplePredicateForPastYearFromDate:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendarWithLocalTimeZone];
  v6 = [v5 dateByAddingUnit:4 value:-1 toDate:v4 options:0];
  v7 = MEMORY[0x277D10B20];
  v8 = HDSampleEntityPredicateForStartDate();
  v14[0] = v8;
  v9 = HDSampleEntityPredicateForStartDate();

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v7 predicateMatchingAllPredicates:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_categoryValuePredicateWithValues:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 hk_map:&__block_literal_global_0];
    v5 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_countOfCategorySamplesInPastYearWithType:(id)a3 values:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _categoryValuePredicateWithValues:a4];
  v10 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfSamplesInPastYearWithType:v8 valuePredicate:v9 error:a5];

  return v10;
}

- (id)_countOfSamplesInPastYearWithType:(id)a3 valuePredicate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEB18];
  v10 = a3;
  v11 = [[v9 alloc] initWithCapacity:2];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _samplePredicateForPastYearFromDate:v12];
  [v11 addObject:v13];

  if (v8)
  {
    [v11 addObject:v8];
  }

  v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v11];
  v15 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _countOfSamplesWithType:v10 predicate:v14 error:a5];

  return v15;
}

- (id)_countOfSamplesWithType:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10848];
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [v8 countOfSamplesWithType:v10 profile:WeakRetained matchingPredicate:v9 withError:a5];

  v13 = MEMORY[0x277CCABB0];

  return [v13 numberWithInteger:v12];
}

- (id)_numberOfDaysSinceLastSampleWithSampleType:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10848];
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v20 = 0;
  v12 = [v8 mostRecentSampleWithType:v10 profile:WeakRetained encodingOptions:0 predicate:v9 anchor:0 error:&v20];

  v13 = v20;
  if (v12)
  {
    if ([v12 hasUndeterminedDuration])
    {
      [v12 startDate];
    }

    else
    {
      [v12 endDate];
    }
    v14 = ;
    v17 = MEMORY[0x277D11AA0];
    v18 = [MEMORY[0x277CBEAA8] date];
    v16 = [v17 numberOfDaysBetweenStartDate:v14 endDate:v18];

    goto LABEL_11;
  }

  v14 = v13;
  if (v14)
  {
    if (a5)
    {
      v15 = v14;
      v16 = 0;
      *a5 = v14;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_numberOfDaysSinceLastCategorySampleWithSampleType:(id)a3 values:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _categoryValuePredicateWithValues:a4];
  v10 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _numberOfDaysSinceLastSampleWithSampleType:v8 predicate:v9 error:a5];

  return v10;
}

- (id)_hasSampleWithType:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _numberOfDaysSinceLastSampleWithSampleType:a3 predicate:0 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else if (v6)
  {
    if (a4)
    {
      v10 = v6;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  return v8;
}

- (id)_hasLaunchedHealthAppInLastTimeInterval:(double)a3 error:(id *)a4
{
  v17 = 0;
  v6 = [(HDMobilityWalkingSteadinessAnalyticsDailyEventDataSource *)self _healthAppLastOpenedDateWithError:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:v6];
    v11 = v10;

    v12 = v11 >= 0.0 && v11 < a3;
    v13 = MEMORY[0x277CBEC28];
    if (v12)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    v14 = v13;
  }

  else if (v7)
  {
    if (a4)
    {
      v16 = v7;
      v14 = 0;
      *a4 = v8;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEC28];
  }

  return v14;
}

- (id)_healthAppLastOpenedDateWithError:(id *)a3
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE378]];
  v5 = [v4 hk_dateForKey:*MEMORY[0x277CCE380]];

  return v5;
}

- (void)walkingSteadinessNotificationsEnabledWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_251962000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to retrieve feature settings due to error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end