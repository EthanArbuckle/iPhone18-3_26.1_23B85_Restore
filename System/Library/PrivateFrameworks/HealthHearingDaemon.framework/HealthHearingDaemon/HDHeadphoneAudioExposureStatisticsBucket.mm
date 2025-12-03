@interface HDHeadphoneAudioExposureStatisticsBucket
+ (id)_currentDoseStringForEndDate:(id)date earliestStartDate:(id)startDate profile:(id)profile;
+ (id)_makeBucketsForNowDate:(id)date earliestStartDate:(id)startDate profile:(id)profile;
+ (id)_makeDataSourceWithProfile:(id)profile;
+ (id)_makeJournaledCalculator;
+ (id)_makePrimaryCalculator;
+ (id)_makeSourceOrderProviderWithProfile:(id)profile;
+ (id)bucketForArchivedRepresentation:(id)representation profile:(id)profile error:(id *)error;
+ (id)makeBucketsForProfile:(id)profile earliestStartDate:(id)date;
- (BOOL)hasPreviousStatistics;
- (BOOL)includesJournaledSamples;
- (BOOL)isExpiredForNowDate:(id)date;
- (NSDateInterval)dateInterval;
- (id)_initWithProfile:(id)profile primaryCalculator:(id)calculator journaledCalculator:(id)journaledCalculator startDate:(id)date earliestStartDate:(id)startDate boundedInterval:(BOOL)interval anchor:(id)anchor previousStatistics:(id)self0 includesPrunableData:(BOOL)self1;
- (id)_lock_addQuantitySamples:(id)samples anchor:(id)anchor error:(id *)error;
- (id)_lock_archivedRepresentationWithError:(id *)error;
- (id)_lock_copyWithEarliestStartDate:(id)date resetDoseToZero:(BOOL)zero error:(id *)error;
- (id)_lock_currentStatisticsWithError:(id *)error;
- (id)_lock_dateInterval;
- (id)_lock_fetchIncludesPrunableDataWithError:(id *)error;
- (id)_lock_journalQuantitySamples:(id)samples error:(id *)error;
- (id)_lock_queryForInitialStatisticsWithError:(id *)error;
- (id)archivedRepresentationWithError:(id *)error;
- (id)queryForInitialStatisticsWithError:(id *)error;
- (id)snapshotStatisticsWithError:(id *)error;
- (id)updateWithSampleBatch:(id)batch error:(id *)error;
- (void)unitTesting_setIncludesPrunableData:(BOOL)data;
- (void)unitTesting_setPreviousStatistics:(id)statistics;
@end

@implementation HDHeadphoneAudioExposureStatisticsBucket

+ (id)makeBucketsForProfile:(id)profile earliestStartDate:(id)date
{
  v6 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  profileCopy = profile;
  v9 = [v6 now];
  v10 = [self _makeBucketsForNowDate:v9 earliestStartDate:dateCopy profile:profileCopy];

  return v10;
}

+ (id)_makeBucketsForNowDate:(id)date earliestStartDate:(id)startDate profile:(id)profile
{
  dateCopy = date;
  startDateCopy = startDate;
  profileCopy = profile;
  v10 = 5;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v12 = [dateCopy dateByAddingTimeInterval:-604800.0];
  v13 = 0;
  do
  {
    v14 = [v12 dateByAddingTimeInterval:3600.0 * v13];
    v15 = [[HDHeadphoneAudioExposureStatisticsBucket alloc] _initWithProfile:profileCopy startDate:v14 earliestStartDate:startDateCopy boundedInterval:--v10 != 0];
    [v11 addObject:v15];

    ++v13;
  }

  while (v10);
  v16 = [v11 copy];

  return v16;
}

+ (id)_currentDoseStringForEndDate:(id)date earliestStartDate:(id)startDate profile:(id)profile
{
  profileCopy = profile;
  startDateCopy = startDate;
  v10 = [date dateByAddingTimeInterval:-604800.0];
  v11 = [[self alloc] _initWithProfile:profileCopy startDate:v10 earliestStartDate:startDateCopy boundedInterval:1];

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
      statistics = [v15 statistics];
      v24 = 0;
      v18 = [statistics hk_hearingSevenDayDosePercentageWithError:&v24];
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

+ (id)_makeDataSourceWithProfile:(id)profile
{
  v3 = MEMORY[0x277D108A0];
  profileCopy = profile;
  v5 = [v3 alloc];
  v6 = HKHeadphoneAudioExposureType();
  v7 = [v5 initForProfile:profileCopy quantityType:v6 predicate:0 restrictedSourceEntities:0];

  [v7 setIncludeUnfrozenSeries:1];

  return v7;
}

+ (id)_makeSourceOrderProviderWithProfile:(id)profile
{
  v3 = MEMORY[0x277D108A8];
  profileCopy = profile;
  v5 = [v3 alloc];
  v6 = HKHeadphoneAudioExposureType();
  v7 = [v5 initWithProfile:profileCopy quantityType:v6];

  return v7;
}

- (id)_initWithProfile:(id)profile primaryCalculator:(id)calculator journaledCalculator:(id)journaledCalculator startDate:(id)date earliestStartDate:(id)startDate boundedInterval:(BOOL)interval anchor:(id)anchor previousStatistics:(id)self0 includesPrunableData:(BOOL)self1
{
  profileCopy = profile;
  calculatorCopy = calculator;
  journaledCalculatorCopy = journaledCalculator;
  dateCopy = date;
  obj = startDate;
  startDateCopy = startDate;
  anchorCopy = anchor;
  statisticsCopy = statistics;
  if (!calculatorCopy)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  quantityType = [calculatorCopy quantityType];
  code = [quantityType code];

  if (code != 173)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  dateInterval = [calculatorCopy dateInterval];

  if (!dateInterval)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  dataSource = [calculatorCopy dataSource];

  if (dataSource)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  sourceOrderProvider = [calculatorCopy sourceOrderProvider];

  if (sourceOrderProvider)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
    if (!journaledCalculatorCopy)
    {
      goto LABEL_19;
    }
  }

  else if (!journaledCalculatorCopy)
  {
    goto LABEL_19;
  }

  quantityType2 = [journaledCalculatorCopy quantityType];
  code2 = [quantityType2 code];

  if (code2 != 173)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  dateInterval2 = [journaledCalculatorCopy dateInterval];
  dateInterval3 = [calculatorCopy dateInterval];
  v28 = [dateInterval2 isEqualToDateInterval:dateInterval3];

  if ((v28 & 1) == 0)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  dataSource2 = [journaledCalculatorCopy dataSource];

  if (dataSource2)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

  sourceOrderProvider2 = [journaledCalculatorCopy sourceOrderProvider];

  if (sourceOrderProvider2)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _initWithProfile:primaryCalculator:journaledCalculator:startDate:earliestStartDate:boundedInterval:anchor:previousStatistics:includesPrunableData:];
  }

LABEL_19:
  v45.receiver = self;
  v45.super_class = HDHeadphoneAudioExposureStatisticsBucket;
  v31 = [(HDHeadphoneAudioExposureStatisticsBucket *)&v45 init];
  if (v31)
  {
    v32 = [objc_opt_class() _makeDataSourceWithProfile:profileCopy];
    v33 = [objc_opt_class() _makeSourceOrderProviderWithProfile:profileCopy];
    [calculatorCopy setDataSource:v32];
    [calculatorCopy setSourceOrderProvider:v33];
    if (journaledCalculatorCopy)
    {
      [journaledCalculatorCopy setDataSource:v32];
      [journaledCalculatorCopy setSourceOrderProvider:v33];
    }

    v31->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v31->_primaryCalculator, calculator);
    objc_storeStrong(&v31->_journaledCalculator, journaledCalculator);
    objc_storeStrong(&v31->_startDate, date);
    objc_storeStrong(&v31->_earliestStartDate, obj);
    v31->_boundedInterval = interval;
    objc_storeStrong(&v31->_anchor, anchor);
    objc_storeStrong(&v31->_previousStatistics, statistics);
    v31->_includesPrunableData = data;
    dataSource = v31->_dataSource;
    v31->_dataSource = v32;
    v35 = v32;

    sourceOrderProvider = v31->_sourceOrderProvider;
    v31->_sourceOrderProvider = v33;

    v37 = v31;
  }

  return v31;
}

- (id)_lock_copyWithEarliestStartDate:(id)date resetDoseToZero:(BOOL)zero error:(id *)error
{
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = [(NSDate *)self->_startDate hk_isAfterDate:dateCopy];
  startDate = dateCopy;
  if ((v9 & 1) == 0)
  {
    startDate = self->_startDate;
  }

  v11 = startDate;
  v12 = objc_alloc(objc_opt_class());
  profile = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource profile];
  v14 = [v12 _initWithProfile:profile startDate:v11 earliestStartDate:dateCopy boundedInterval:self->_boundedInterval];

  v15 = *(v14 + 56);
  *(v14 + 56) = 0;

  if (zero)
  {
    goto LABEL_6;
  }

  v16 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_currentStatisticsWithError:error];
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

- (id)archivedRepresentationWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_archivedRepresentationWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_archivedRepresentationWithError:(id *)error
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
  encodedData = [v4 encodedData];

  return encodedData;
}

+ (id)bucketForArchivedRepresentation:(id)representation profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v8 = MEMORY[0x277CCAAC8];
  representationCopy = representation;
  v10 = [[v8 alloc] initForReadingFromData:representationCopy error:error];

  if (!v10)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"primaryCalculator"];
  if (!v11 || ([v10 error], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    error = [v10 error];
    if (error)
    {
      if (error)
      {
        v14 = error;
        *error = error;
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
  error2 = [v10 error];

  if (error2)
  {
    error3 = [v10 error];
    if (error3)
    {
      if (error)
      {
        v19 = error3;
        *error = error3;
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
    error4 = [v10 error];
    if (error4)
    {
      if (error)
      {
        v23 = error4;
        *error = error4;
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
  error5 = [v10 error];

  if (error5 || (v26 = [v10 decodeBoolForKey:@"boundedInterval"], objc_msgSend(v10, "error"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    error6 = [v10 error];
    if (error6)
    {
      if (error)
      {
        v29 = error6;
        *error = error6;
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
  error7 = [v10 error];

  if (error7)
  {
    error8 = [v10 error];
    if (error8)
    {
      if (error)
      {
        v33 = error8;
        *error = error8;
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
  error9 = [v10 error];

  if (error9)
  {
    v35 = v10;
LABEL_46:
    error10 = [v35 error];
    v39 = v43;
    if (error10)
    {
      if (error)
      {
        v40 = error10;
        *error = error10;
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
  error11 = [v10 error];

  v35 = v10;
  if (error11)
  {
    goto LABEL_46;
  }

  [v10 finishDecoding];
  LOBYTE(v41) = v42;
  v39 = v43;
  v36 = v44;
  v15 = [objc_alloc(objc_opt_class()) _initWithProfile:profileCopy primaryCalculator:v11 journaledCalculator:v16 startDate:v20 earliestStartDate:v24 boundedInterval:v26 anchor:v44 previousStatistics:v43 includesPrunableData:v41];
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
  _lock_dateInterval = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_dateInterval;
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

- (id)snapshotStatisticsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  includesPrunableData = self->_includesPrunableData;
  v6 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_currentStatisticsWithError:error];
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

- (id)_lock_currentStatisticsWithError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_lock);
  currentStatistics = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator currentStatistics];
  if (!currentStatistics)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"unable compute primary statistics"];
    v7 = 0;
    goto LABEL_14;
  }

  previousStatistics = self->_previousStatistics;
  if (previousStatistics)
  {
    v7 = [(HKStatistics *)previousStatistics statisticsByCombiningWithNoiseLevelStatistics:currentStatistics error:error];
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = currentStatistics;
  }

  journaledCalculator = self->_journaledCalculator;
  if (journaledCalculator)
  {
    currentStatistics2 = [(HDStatisticsCollectionCalculator *)journaledCalculator currentStatistics];
    if (currentStatistics2)
    {
      v10 = [v7 statisticsByCombiningWithNoiseLevelStatistics:currentStatistics2 error:error];

      v7 = v10;
      v11 = v7;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"unable compute journaled statistics"];
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

- (BOOL)isExpiredForNowDate:(id)date
{
  dateCopy = date;
  dateInterval = [(HDHeadphoneAudioExposureStatisticsBucket *)self dateInterval];
  endDate = [dateInterval endDate];
  v7 = [endDate hk_isBeforeDate:dateCopy];

  return v7;
}

- (id)queryForInitialStatisticsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_queryForInitialStatisticsWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)updateWithSampleBatch:(id)batch error:(id *)error
{
  batchCopy = batch;
  os_unfair_lock_lock(&self->_lock);
  if ([batchCopy isJournaled])
  {
    samples = [batchCopy samples];
    v8 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_journalQuantitySamples:samples error:error];
LABEL_5:

    goto LABEL_6;
  }

  anchor = [batchCopy anchor];

  if (anchor)
  {
    samples = [batchCopy samples];
    anchor2 = [batchCopy anchor];
    v8 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_addQuantitySamples:samples anchor:anchor2 error:error];

    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
  {
    [HDHeadphoneAudioExposureStatisticsBucket updateWithSampleBatch:v13 error:batchCopy];
  }

  v8 = 0;
LABEL_6:
  if (!self->_includesPrunableData)
  {
    samples2 = [batchCopy samples];
    self->_includesPrunableData = [samples2 hk_containsObjectPassingTest:&__block_literal_global_3];
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

- (void)unitTesting_setPreviousStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  previousStatistics = self->_previousStatistics;
  self->_previousStatistics = statisticsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTesting_setIncludesPrunableData:(BOOL)data
{
  os_unfair_lock_lock(&self->_lock);
  self->_includesPrunableData = data;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dateInterval
{
  os_unfair_lock_assert_owner(&self->_lock);
  primaryCalculator = self->_primaryCalculator;

  return [(HDStatisticsCollectionCalculator *)primaryCalculator dateInterval];
}

- (id)_lock_journalQuantitySamples:(id)samples error:(id *)error
{
  samplesCopy = samples;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = self->_journaledCalculator;
  if (v7)
  {
    _makeJournaledCalculator = v7;
  }

  else
  {
    _makeJournaledCalculator = [objc_opt_class() _makeJournaledCalculator];
    [_makeJournaledCalculator setDataSource:self->_dataSource];
    [_makeJournaledCalculator setSourceOrderProvider:self->_sourceOrderProvider];
    _lock_dateInterval = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    [_makeJournaledCalculator setDateInterval:_lock_dateInterval];

    if (!_makeJournaledCalculator)
    {
      goto LABEL_6;
    }
  }

  if ([(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource addValuesForQuantitySamples:samplesCopy calculator:_makeJournaledCalculator includeSeries:0 error:error])
  {
    objc_storeStrong(&self->_journaledCalculator, _makeJournaledCalculator);
    v10 = [HDHeadphoneExposureStatisticUpdateResult resultForSamplesJournaled:samplesCopy];
    goto LABEL_7;
  }

LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

- (id)_lock_addQuantitySamples:(id)samples anchor:(id)anchor error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  anchorCopy = anchor;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_primaryCalculator)
  {
    p_anchor = &self->_anchor;
    anchor = self->_anchor;
    v12 = MEMORY[0x277CCC2C8];
    if (anchor)
    {
      longLongValue = [(NSNumber *)anchor longLongValue];
      if (longLongValue > [(NSNumber *)anchorCopy longLongValue])
      {
        _HKInitializeLogging();
        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v28 = v14;
          v29 = [samplesCopy count];
          v30 = *p_anchor;
          v31 = 134218498;
          v32 = v29;
          v33 = 2114;
          v34 = anchorCopy;
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
      v17 = [samplesCopy count];
      v18 = *p_anchor;
      v31 = 134218498;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = anchorCopy;
      _os_log_impl(&dword_251764000, v16, OS_LOG_TYPE_DEFAULT, "Added %lu sample(s) to primary calculator (anchor: %{public}@ -> %{public}@)", &v31, 0x20u);
    }

    v19 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource hearing_addQuantitySamples:samplesCopy calculator:self->_primaryCalculator error:error];
    if (v19)
    {
      if (self->_journaledCalculator)
      {
        _HKInitializeLogging();
        v20 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [samplesCopy count];
          v23 = *p_anchor;
          v31 = 134218498;
          v32 = v22;
          v33 = 2114;
          v34 = v23;
          v35 = 2114;
          v36 = anchorCopy;
          _os_log_impl(&dword_251764000, v21, OS_LOG_TYPE_DEFAULT, "Invalidated journaled calculator on %lu samples added (anchor: %{public}@ -> %{public}@)", &v31, 0x20u);
        }

        journaledCalculator = self->_journaledCalculator;
        self->_journaledCalculator = 0;
      }

      objc_storeStrong(&self->_anchor, anchor);
      v25 = v19;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"unable to add samples without primary caclulator"];
    v19 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_lock_queryForInitialStatisticsWithError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_dataSource || !self->_sourceOrderProvider)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  dataSource = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dataSource];
  dataSource = self->_dataSource;

  if (dataSource != dataSource)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  sourceOrderProvider = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator sourceOrderProvider];
  sourceOrderProvider = self->_sourceOrderProvider;

  if (sourceOrderProvider != sourceOrderProvider)
  {
    [HDHeadphoneAudioExposureStatisticsBucket _lock_queryForInitialStatisticsWithError:];
  }

  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC2C8];
  v10 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    _lock_dateInterval = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    startDate = [_lock_dateInterval startDate];
    [startDate timeIntervalSince1970];
    v15 = v14;
    _lock_dateInterval2 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    endDate = [_lock_dateInterval2 endDate];
    [endDate timeIntervalSince1970];
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

    dateInterval = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dateInterval];
    [(HDStatisticsCollectionCalculator *)self->_primaryCalculator setDateInterval:dateInterval];

    v41 = v21;
    if (v41)
    {
      if (error)
      {
        v42 = v41;
        *error = v41;
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
    v22 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_fetchIncludesPrunableDataWithError:error];
    if (!v22)
    {
LABEL_26:
      v38 = 0;
      goto LABEL_27;
    }

    v23 = v22;
    self->_includesPrunableData = [v22 BOOLValue];
  }

  currentStatistics = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator currentStatistics];

  if (!currentStatistics)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Something went wrong with the calculator and we were unable to compute current statistics."];
    goto LABEL_26;
  }

  journaledCalculator = self->_journaledCalculator;
  self->_journaledCalculator = 0;

  anchor = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource anchor];
  anchor = self->_anchor;
  self->_anchor = anchor;

  _HKInitializeLogging();
  v28 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_anchor;
    v30 = v28;
    _lock_dateInterval3 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    startDate2 = [_lock_dateInterval3 startDate];
    [startDate2 timeIntervalSince1970];
    v34 = v33;
    _lock_dateInterval4 = [(HDHeadphoneAudioExposureStatisticsBucket *)self _lock_dateInterval];
    endDate2 = [_lock_dateInterval4 endDate];
    [endDate2 timeIntervalSince1970];
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

- (id)_lock_fetchIncludesPrunableDataWithError:(id *)error
{
  v27[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  profile = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self->_dataSource profile];
  v5 = HKHeadphoneAudioExposureType();
  v6 = MEMORY[0x277D10B20];
  v7 = HDSampleEntityPredicateForDataType();
  v27[0] = v7;
  dateInterval = [(HDStatisticsCollectionCalculator *)self->_primaryCalculator dateInterval];
  v9 = HDSampleEntityPredicateForDateInterval();
  v27[1] = v9;
  metadataManager = [profile metadataManager];
  v11 = [MEMORY[0x277CBEB98] setWithObject:MEMORY[0x277CBEC38]];
  v12 = [metadataManager predicateWithMetadataKey:*MEMORY[0x277CCDFF8] allowedValues:v11];
  v27[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v14 = [v6 predicateMatchingAllPredicates:v13];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = [MEMORY[0x277D10810] entityEnumeratorWithType:v5 profile:profile];
  [v15 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  [v15 setPredicate:v14];
  [v15 setLimitCount:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HDHeadphoneAudioExposureStatisticsBucket__lock_fetchIncludesPrunableDataWithError___block_invoke;
  v20[3] = &unk_2796C6510;
  v20[4] = &v21;
  [v15 enumerateWithError:error handler:v20];
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