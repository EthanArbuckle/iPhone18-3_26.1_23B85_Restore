@interface HDHeadphoneAudioExposureStatisticsBucket
+ (id)_currentDoseStringForEndDate:(id)a3 earliestStartDate:(id)a4 profile:(id)a5;
+ (id)_makeBucketsForNowDate:(id)a3 earliestStartDate:(id)a4 profile:(id)a5;
+ (id)_makeDataSourceWithProfile:(id)a3;
+ (id)_makeJournaledCalculator;
+ (id)_makePrimaryCalculator;
+ (id)_makeSourceOrderProviderWithProfile:(id)a3;
+ (id)bucketForArchivedRepresentation:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)makeBucketsForProfile:(id)a3 earliestStartDate:(id)a4;
- (BOOL)hasPreviousStatistics;
- (BOOL)includesJournaledSamples;
- (BOOL)isExpiredForNowDate:(id)a3;
- (NSDateInterval)dateInterval;
- (id)_initWithProfile:(id)a3 primaryCalculator:(id)a4 journaledCalculator:(id)a5 startDate:(id)a6 earliestStartDate:(id)a7 boundedInterval:(BOOL)a8 anchor:(id)a9 previousStatistics:(id)a10 includesPrunableData:(BOOL)a11;
- (id)_lock_addQuantitySamples:(id)a3 anchor:(id)a4 error:(id *)a5;
- (id)_lock_archivedRepresentationWithError:(id *)a3;
- (id)_lock_copyWithEarliestStartDate:(id)a3 resetDoseToZero:(BOOL)a4 error:(id *)a5;
- (id)_lock_currentStatisticsWithError:(id *)a3;
- (id)_lock_dateInterval;
- (id)_lock_fetchIncludesPrunableDataWithError:(id *)a3;
- (id)_lock_journalQuantitySamples:(id)a3 error:(id *)a4;
- (id)_lock_queryForInitialStatisticsWithError:(id *)a3;
- (id)archivedRepresentationWithError:(id *)a3;
- (id)queryForInitialStatisticsWithError:(id *)a3;
- (id)snapshotStatisticsWithError:(id *)a3;
- (id)updateWithSampleBatch:(id)a3 error:(id *)a4;
- (void)unitTesting_setIncludesPrunableData:(BOOL)a3;
- (void)unitTesting_setPreviousStatistics:(id)a3;
@end

@implementation HDHeadphoneAudioExposureStatisticsBucket

+ (id)makeBucketsForProfile:(id)a3 earliestStartDate:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 now];
  v10 = [a1 _makeBucketsForNowDate:v9 earliestStartDate:v7 profile:v8];

  return v10;
}

+ (id)_makeBucketsForNowDate:(id)a3 earliestStartDate:(id)a4 profile:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 5;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v12 = [v7 dateByAddingTimeInterval:-604800.0];
  v13 = 0;
  do
  {
    v14 = [v12 dateByAddingTimeInterval:3600.0 * v13];
    v15 = [[HDHeadphoneAudioExposureStatisticsBucket alloc] _initWithProfile:v9 startDate:v14 earliestStartDate:v8 boundedInterval:--v10 != 0];
    [v11 addObject:v15];

    ++v13;
  }

  while (v10);
  v16 = [v11 copy];

  return v16;
}

+ (id)_currentDoseStringForEndDate:(id)a3 earliestStartDate:(id)a4 profile:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dateByAddingTimeInterval:-604800.0];
  v11 = [[a1 alloc] _initWithProfile:v8 startDate:v10 earliestStartDate:v9 boundedInterval:1];

  v26 = 0;
  v12 = [v11 queryForInitialStatisticsWithError:&v26];
  v13 = v26;
  v14 = v13;
  if (v12)
  {
    v25 = 0;
    v15 = [v11 snapshotStatisticsWithError:&v25];
    v16 = v25;
    if (v15)
    {
      v17 = [v15 statistics];
      v24 = 0;
      v18 = [v17 hk_hearingSevenDayDosePercentageWithError:&v24];
      v19 = v24;

      v20 = MEMORY[0x277CCACA8];
      if (v18)
      {
        [v18 doubleValue];
        [v20 stringWithFormat:@"%.2f%%", v21 * 100.0];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"compute dose failed %@", v19];
      }
      v22 = ;
    }

    else
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"compute statistics failed %@", v16];
    }
  }

  else if ([v13 hk_isDatabaseAccessibilityError])
  {
    v22 = @"Locked (Data Inaccessible)";
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"query dose failed %@", v14];
  }

  return v22;
}

+ (id)_makePrimaryCalculator
{
  v2 = MEMORY[0x277D10890];
  v3 = HKHeadphoneAudioExposureType();
  v4 = [v2 calculatorForQuantityType:v3 intervalCollection:0 options:66 mergeStrategy:0];

  v5 = [objc_alloc(MEMORY[0x277D108B8]) initWithOverlapProcessingEnabled:0];
  [v4 setStatisticsConfiguration:v5];

  return v4;
}

+ (id)_makeJournaledCalculator
{
  v2 = MEMORY[0x277D10890];
  v3 = HKHeadphoneAudioExposureType();
  v4 = [v2 calculatorForQuantityType:v3 intervalCollection:0 options:66 mergeStrategy:1];

  v5 = [objc_alloc(MEMORY[0x277D108B8]) initWithOverlapProcessingEnabled:0];
  [v4 setStatisticsConfiguration:v5];

  return v4;
}

+ (id)_makeDataSourceWithProfile:(id)a3
{
  v3 = MEMORY[0x277D108A0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = HKHeadphoneAudioExposureType();
  v7 = [v5 initForProfile:v4 quantityType:v6 predicate:0 restrictedSourceEntities:0];

  [v7 setIncludeUnfrozenSeries:1];

  return v7;
}

+ (id)_makeSourceOrderProviderWithProfile:(id)a3
{
  v3 = MEMORY[0x277D108A8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = HKHeadphoneAudioExposureType();
  v7 = [v5 initWithProfile:v4 quantityType:v6];

  return v7;
}

- (id)_initWithProfile:(id)a3 primaryCalculator:(id)a4 journaledCalculator:(id)a5 startDate:(id)a6 earliestStartDate:(id)a7 boundedInterval:(BOOL)a8 anchor:(id)a9 previousStatistics:(id)a10 includesPrunableData:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v44 = a6;
  obj = a7;
  v43 = a7;
  v42 = a9;
  v41 = a10;
  if (!v17)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v19 = [v17 quantityType];
  v20 = [v19 code];

  if (v20 != 173)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v21 = [v17 dateInterval];

  if (!v21)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v22 = [v17 dataSource];

  if (v22)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v23 = [v17 sourceOrderProvider];

  if (v23)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  else if (!v18)
  {
    goto LABEL_19;
  }

  v24 = [v18 quantityType];
  v25 = [v24 code];

  if (v25 != 173)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v26 = [v18 dateInterval];
  v27 = [v17 dateInterval];
  v28 = [v26 isEqualToDateInterval:v27];

  if ((v28 & 1) == 0)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v29 = [v18 dataSource];

  if (v29)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  v30 = [v18 sourceOrderProvider];

  if (v30)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

LABEL_19:
  v45.receiver = self;
  v45.super_class = HDHeadphoneAudioExposureStatisticsBucket;
  v31 = [(HDHeadphoneAudioExposureStatisticsBucket *)&v45 init];
  if (v31)
  {
    v32 = [objc_opt_class() _makeDataSourceWithProfile:v16];
    v33 = [objc_opt_class() _makeSourceOrderProviderWithProfile:v16];
    [v17 setDataSource:v32];
    [v17 setSourceOrderProvider:v33];
    if (v18)
    {
      [v18 setDataSource:v32];
      [v18 setSourceOrderProvider:v33];
    }

    v31->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v31->_primaryCalculator, a4);
    objc_storeStrong(&v31->_journaledCalculator, a5);
    objc_storeStrong(&v31->_startDate, a6);
    objc_storeStrong(&v31->_earliestStartDate, obj);
    v31->_boundedInterval = a8;
    objc_storeStrong(&v31->_anchor, a9);
    objc_storeStrong(&v31->_previousStatistics, a10);
    v31->_includesPrunableData = a11;
    dataSource = v31->_dataSource;
    v31->_dataSource = v32;
    v35 = v32;

    sourceOrderProvider = v31->_sourceOrderProvider;
    v31->_sourceOrderProvider = v33;

    v37 = v31;
  }

  return v31;
}

- (id)_lock_copyWithEarliestStartDate:(id)a3 resetDoseToZero:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [(NSDate *)self->_startDate hk_isAfterDate:v8];
  startDate = v8;
  if ((v9 & 1) == 0)
  {
    startDate = self->_startDate;
  }

  v11 = startDate;
  v12 = objc_alloc(objc_opt_class());
  v13 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource profile];
  v14 = [v12 _initWithProfile:v13 startDate:v11 earliestStartDate:v8 boundedInterval:self->_boundedInterval];

  v15 = *(v14 + 56);
  *(v14 + 56) = 0;

  if (a4)
  {
    goto LABEL_6;
  }

  v16 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_currentStatisticsWithError:a5];
  if (v16)
  {
    v17 = *(v14 + 64);
    *(v14 + 64) = v16;

    *(v14 + 72) = self->_includesPrunableData;
LABEL_6:
    v18 = v14;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (id)archivedRepresentationWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_archivedRepresentationWithError:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_archivedRepresentationWithError:(id *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeObject:self->_primaryCalculator forKey:@"primaryCalculator"];
  journaledCalculator = self->_journaledCalculator;
  if (journaledCalculator)
  {
    [v4 encodeObject:journaledCalculator forKey:@"journaledCalculator"];
  }

  [v4 encodeObject:self->_startDate forKey:@"startDate"];
  earliestStartDate = self->_earliestStartDate;
  if (earliestStartDate)
  {
    [v4 encodeObject:earliestStartDate forKey:@"earliestStartDate"];
  }

  [v4 encodeBool:self->_boundedInterval forKey:@"boundedInterval"];
  previousStatistics = self->_previousStatistics;
  if (previousStatistics)
  {
    [v4 encodeObject:previousStatistics forKey:@"previousStatistics"];
  }

  [v4 encodeBool:self->_includesPrunableData forKey:@"includesPrunableData"];
  [v4 encodeObject:self->_anchor forKey:@"anchor"];
  [v4 finishEncoding];
  v8 = [v4 encodedData];

  return v8;
}

+ (id)bucketForArchivedRepresentation:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCAAC8];
  v9 = a3;
  v10 = [[v8 alloc] initForReadingFromData:v9 error:a5];

  if (!v10)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"primaryCalculator"];
  if (!v11 || ([v10 error], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [v10 error];
    if (v13)
    {
      if (a5)
      {
        v14 = v13;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    goto LABEL_33;
  }

  v16 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"journaledCalculator"];
  v17 = [v10 error];

  if (v17)
  {
    v18 = [v10 error];
    if (v18)
    {
      if (a5)
      {
        v19 = v18;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    goto LABEL_32;
  }

  v20 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  if (!v20 || ([v10 error], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v22 = [v10 error];
    if (v22)
    {
      if (a5)
      {
        v23 = v22;
        *a5 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    goto LABEL_31;
  }

  v24 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"earliestStartDate"];
  v25 = [v10 error];

  if (v25 || (v26 = [v10 decodeBoolForKey:@"boundedInterval"], objc_msgSend(v10, "error"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v28 = [v10 error];
    if (v28)
    {
      if (a5)
      {
        v29 = v28;
        *a5 = v28;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    goto LABEL_30;
  }

  v44 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
  v31 = [v10 error];

  if (v31)
  {
    v32 = [v10 error];
    if (v32)
    {
      if (a5)
      {
        v33 = v32;
        *a5 = v32;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    v36 = v44;
    goto LABEL_52;
  }

  v43 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"previousStatistics"];
  v34 = [v10 error];

  if (v34)
  {
    v35 = v10;
LABEL_46:
    v38 = [v35 error];
    v39 = v43;
    if (v38)
    {
      if (a5)
      {
        v40 = v38;
        *a5 = v38;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v10 finishDecoding];
    v15 = 0;
    v36 = v44;
    goto LABEL_51;
  }

  v42 = [v10 decodeBoolForKey:@"includesPrunableData"];
  v37 = [v10 error];

  v35 = v10;
  if (v37)
  {
    goto LABEL_46;
  }

  [v10 finishDecoding];
  LOBYTE(v41) = v42;
  v39 = v43;
  v36 = v44;
  v15 = [objc_alloc(objc_opt_class()) _initWithProfile:v7 primaryCalculator:v11 journaledCalculator:v16 startDate:v20 earliestStartDate:v24 boundedInterval:v26 anchor:v44 previousStatistics:v43 includesPrunableData:v41];
LABEL_51:

LABEL_52:
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:
LABEL_34:

  return v15;
}

- (NSDateInterval)dateInterval
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)includesJournaledSamples
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_journaledCalculator)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_previousStatistics != 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasPreviousStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_previousStatistics != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)snapshotStatisticsWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  includesPrunableData = self->_includesPrunableData;
  v6 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_currentStatisticsWithError:a3];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v7 = [[HDHeadphoneAudioExposureStatisticsSnapshot alloc] initWithStatistics:v6 includesPrunableData:includesPrunableData previousNotificationDate:self->_earliestStartDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_lock_currentStatisticsWithError:(id *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator currentStatistics];
  if (!v5)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"unable compute primary statistics"];
    v7 = 0;
    goto LABEL_14;
  }

  previousStatistics = self->_previousStatistics;
  if (previousStatistics)
  {
    v7 = [(HKStatistics *)previousStatistics statisticsByCombiningWithNoiseLevelStatistics:v5 error:a3];
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = v5;
  }

  journaledCalculator = self->_journaledCalculator;
  if (journaledCalculator)
  {
    v9 = [(HDStatisticsCollectionCalculator *)journaledCalculator currentStatistics];
    if (v9)
    {
      v10 = [v7 statisticsByCombiningWithNoiseLevelStatistics:v9 error:a3];

      v7 = v10;
      v11 = v7;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"unable compute journaled statistics"];
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        [HDHeadphoneAudioExposureStatisticsBucket _lock_currentStatisticsWithError:v12];
      }

      v11 = 0;
    }

    v7 = v11;
  }

LABEL_14:

  return v7;
}

- (BOOL)isExpiredForNowDate:(id)a3
{
  v4 = a3;
  v5 = [(HDHeadphoneAudioExposureStatisticsBucket *)self dateInterval];
  v6 = [v5 endDate];
  v7 = [v6 hk_isBeforeDate:v4];

  return v7;
}

- (id)queryForInitialStatisticsWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_queryForInitialStatisticsWithError:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)updateWithSampleBatch:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([v6 isJournaled])
  {
    v7 = [v6 samples];
    v8 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_journalQuantitySamples:v7 error:a4];
LABEL_5:

    goto LABEL_6;
  }

  v9 = [v6 anchor];

  if (v9)
  {
    v7 = [v6 samples];
    v10 = [v6 anchor];
    v8 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_addQuantitySamples:v7 anchor:v10 error:a4];

    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
  {
    [HDHeadphoneAudioExposureStatisticsBucket updateWithSampleBatch:v13 error:v6];
  }

  v8 = 0;
LABEL_6:
  if (!self->_includesPrunableData)
  {
    v11 = [v6 samples];
    self->_includesPrunableData = [v11 hk_containsObjectPassingTest:&__block_literal_global_3];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

uint64_t __72__HDHeadphoneAudioExposureStatisticsBucket_updateWithSampleBatch_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = *MEMORY[0x277CCDFF8];
  v10 = 0;
  v5 = [v3 hk_safeNumberIfExistsForKeyPath:v4 error:&v10];
  v6 = v10;

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      __72__HDHeadphoneAudioExposureStatisticsBucket_updateWithSampleBatch_error___block_invoke_cold_1(v7, v2, v6);
    }

    v8 = 1;
  }

  else
  {
    v8 = [v5 BOOLValue];
  }

  return v8;
}

- (void)unitTesting_setPreviousStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  previousStatistics = self->_previousStatistics;
  self->_previousStatistics = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTesting_setIncludesPrunableData:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_includesPrunableData = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dateInterval
{
  os_unfair_lock_assert_owner(&self->_lock);
  primaryCalculator = self->_primaryCalculator;

  return [(HDStatisticsCollectionCalculator *)primaryCalculator dateInterval];
}

- (id)_lock_journalQuantitySamples:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = self->_journaledCalculator;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [objc_opt_class() _makeJournaledCalculator];
    [v8 setDataSource:self->_dataSource];
    [v8 setSourceOrderProvider:self->_sourceOrderProvider];
    v9 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    [v8 setDateInterval:v9];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if ([(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource addValuesForQuantitySamples:v6 calculator:v8 includeSeries:0 error:a4])
  {
    objc_storeStrong(&self->_journaledCalculator, v8);
    v10 = [HDHeadphoneExposureStatisticUpdateResult resultForSamplesJournaled:v6];
    goto LABEL_7;
  }

LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_lock_addQuantitySamples:(id)a3 anchor:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_primaryCalculator)
  {
    p_anchor = &self->_anchor;
    anchor = self->_anchor;
    v12 = MEMORY[0x277CCC2C8];
    if (anchor)
    {
      v13 = [(NSNumber *)anchor longLongValue];
      if (v13 > [(NSNumber *)v9 longLongValue])
      {
        _HKInitializeLogging();
        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v28 = v14;
          v29 = [v8 count];
          v30 = *p_anchor;
          v31 = 134218498;
          v32 = v29;
          v33 = 2114;
          v34 = v9;
          v35 = 2114;
          v36 = v30;
          _os_log_error_impl(&dword_251764000, v28, OS_LOG_TYPE_ERROR, "[Warning] Adding %lu samples with anchor (%{public}@) below currentAnchor (%{public}@).", &v31, 0x20u);
        }
      }
    }

    _HKInitializeLogging();
    v15 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v8 count];
      v18 = *p_anchor;
      v31 = 134218498;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_251764000, v16, OS_LOG_TYPE_DEFAULT, "Added %lu sample(s) to primary calculator (anchor: %{public}@ -> %{public}@)", &v31, 0x20u);
    }

    v19 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource hearing_addQuantitySamples:v8 calculator:self->_primaryCalculator error:a5];
    if (v19)
    {
      if (self->_journaledCalculator)
      {
        _HKInitializeLogging();
        v20 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [v8 count];
          v23 = *p_anchor;
          v31 = 134218498;
          v32 = v22;
          v33 = 2114;
          v34 = v23;
          v35 = 2114;
          v36 = v9;
          _os_log_impl(&dword_251764000, v21, OS_LOG_TYPE_DEFAULT, "Invalidated journaled calculator on %lu samples added (anchor: %{public}@ -> %{public}@)", &v31, 0x20u);
        }

        journaledCalculator = self->_journaledCalculator;
        self->_journaledCalculator = 0;
      }

      objc_storeStrong(&self->_anchor, a4);
      v25 = v19;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"unable to add samples without primary caclulator"];
    v19 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_lock_queryForInitialStatisticsWithError:(id *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_dataSource || !self->_sourceOrderProvider)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  v5 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dataSource];
  dataSource = self->_dataSource;

  if (v5 != dataSource)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  v7 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator sourceOrderProvider];
  sourceOrderProvider = self->_sourceOrderProvider;

  if (v7 != sourceOrderProvider)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC2C8];
  v10 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    v13 = [v12 startDate];
    [v13 timeIntervalSince1970];
    v15 = v14;
    v16 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    v17 = [v16 endDate];
    [v17 timeIntervalSince1970];
    *buf = 134218240;
    v47 = v15;
    v48 = 2048;
    v49 = v18;
    _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "Querying initial HAE statistics for bucket interval: %{time_t}ld to %{time_t}ld", buf, 0x16u);
  }

  [(HDHeadphoneAudioExposureStatisticsBucket *)self _enableOverlappingProcessingInPrimaryCalculator:1];
  primaryCalculator = self->_primaryCalculator;
  v45 = 0;
  v20 = [(HDStatisticsCollectionCalculator *)primaryCalculator queryForInitialStatisticsWithError:&v45];
  v21 = v45;
  [(HDHeadphoneAudioExposureStatisticsBucket *)self _enableOverlappingProcessingInPrimaryCalculator:0];
  if ((v20 & 1) == 0)
  {
    _HKInitializeLogging();
    v39 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:v39];
    }

    v40 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dateInterval];
    [(HDStatisticsCollectionCalculator *)self->_primaryCalculator setDateInterval:v40];

    v41 = v21;
    if (v41)
    {
      if (a3)
      {
        v42 = v41;
        *a3 = v41;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_26;
  }

  if (!self->_previousStatistics || !self->_includesPrunableData)
  {
    v22 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_fetchIncludesPrunableDataWithError:a3];
    if (!v22)
    {
LABEL_26:
      v38 = 0;
      goto LABEL_27;
    }

    v23 = v22;
    self->_includesPrunableData = [v22 BOOLValue];
  }

  v24 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator currentStatistics];

  if (!v24)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"Something went wrong with the calculator and we were unable to compute current statistics."];
    goto LABEL_26;
  }

  journaledCalculator = self->_journaledCalculator;
  self->_journaledCalculator = 0;

  v26 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource anchor];
  anchor = self->_anchor;
  self->_anchor = v26;

  _HKInitializeLogging();
  v28 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_anchor;
    v30 = v28;
    v31 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    v32 = [v31 startDate];
    [v32 timeIntervalSince1970];
    v34 = v33;
    v35 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    v36 = [v35 endDate];
    [v36 timeIntervalSince1970];
    *buf = 138543874;
    v47 = v29;
    v48 = 2048;
    v49 = v34;
    v50 = 2048;
    v51 = v37;
    _os_log_impl(&dword_251764000, v30, OS_LOG_TYPE_DEFAULT, "Queried initial anchor %{public}@ for HAE statistics in bucket interval: %{time_t}ld to %{time_t}ld", buf, 0x20u);
  }

  v38 = self->_anchor;
LABEL_27:

  v43 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)_lock_fetchIncludesPrunableDataWithError:(id *)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource profile];
  v5 = HKHeadphoneAudioExposureType();
  v6 = MEMORY[0x277D10B20];
  v7 = HDSampleEntityPredicateForDataType();
  v27[0] = v7;
  v8 = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dateInterval];
  v9 = HDSampleEntityPredicateForDateInterval();
  v27[1] = v9;
  v10 = [v4 metadataManager];
  v11 = [MEMORY[0x277CBEB98] setWithObject:MEMORY[0x277CBEC38]];
  v12 = [v10 predicateWithMetadataKey:*MEMORY[0x277CCDFF8] allowedValues:v11];
  v27[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v14 = [v6 predicateMatchingAllPredicates:v13];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = [MEMORY[0x277D10810] entityEnumeratorWithType:v5 profile:v4];
  [v15 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  [v15 setPredicate:v14];
  [v15 setLimitCount:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HDHeadphoneAudioExposureStatisticsBucket__lock_fetchIncludesPrunableDataWithError___block_invoke;
  v20[3] = &unk_2796C6510;
  v20[4] = &v21;
  [v15 enumerateWithError:a3 handler:v20];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v22[5] != 0];

  _Block_object_dispose(&v21, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"primaryCalculator" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"primaryCalculator.quantityType.code == _HKDataTypeHeadphoneAudioExposure" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"primaryCalculator.dateInterval" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.4()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"primaryCalculator.dataSource == nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.5()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"primaryCalculator.sourceOrderProvider == nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.6()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"journaledCalculator.quantityType.code == _HKDataTypeHeadphoneAudioExposure" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.7()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"[journaledCalculator.dateInterval isEqualToDateInterval:primaryCalculator.dateInterval]" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.8()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"journaledCalculator.dataSource == nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:.cold.9()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"journaledCalculator.sourceOrderProvider == nil" object:? file:? lineNumber:? description:?];
}

- (void)updateWithSampleBatch:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 samples];
  v6 = 134217984;
  v7 = [v4 count];
  _os_log_fault_impl(&dword_251764000, v3, OS_LOG_TYPE_FAULT, "Added %lu HAE quantity samples without an anchor!", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __72__HDHeadphoneAudioExposureStatisticsBucket_updateWithSampleBatch_error___block_invoke_cold_1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 UUID];
  v8 = 138412546;
  v9 = v6;
  v10 = 2114;
  v11 = a3;
  _os_log_fault_impl(&dword_251764000, v5, OS_LOG_TYPE_FAULT, "Incoming HAE sample %@ has invalid metadata: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_lock_queryForInitialStatisticsWithError:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"_dataSource && _sourceOrderProvider" object:? file:? lineNumber:? description:?];
}

- (void)_lock_queryForInitialStatisticsWithError:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"_primaryCalculator.dataSource == _dataSource" object:? file:? lineNumber:? description:?];
}

- (void)_lock_queryForInitialStatisticsWithError:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"_primaryCalculator.sourceOrderProvider == _sourceOrderProvider" object:? file:? lineNumber:? description:?];
}

@end