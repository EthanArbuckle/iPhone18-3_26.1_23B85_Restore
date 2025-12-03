@interface HDAudioAnalyticsUtilities
+ (double)doseFromStatistics:(id)statistics days:(int64_t)days;
+ (double)durationFromStatistics:(id)statistics;
+ (double)leqFromStatistics:(id)statistics;
+ (id)_quantityTypeForExposureType:(int64_t)type;
+ (id)audioAverageAndDurationForExposureType:(int64_t)type profile:(id)profile startDate:(id)date endDate:(id)endDate error:(id *)error;
+ (id)audioExposureEventsForExposureType:(int64_t)type profile:(id)profile startDate:(id)date endDate:(id)endDate error:(id *)error;
+ (id)boundedIntegerForEventDuration:(double)duration;
+ (id)boundedIntegerForExposureDuration:(double)duration;
+ (id)boundedIntegerForLockedDuration:(double)duration;
+ (id)boundedIntegerForSyncDelayDuration:(double)duration;
+ (id)boundedIntegerForTimeSinceLastNotification:(double)notification;
+ (id)boundedIntegerForValue:(double)value orderedBuckets:(id)buckets sentinel:(id)sentinel transformer:(id)transformer;
+ (id)fullDays:(int64_t)days beforeDate:(id)date;
+ (id)latestAudioExposureEventForExposureType:(int64_t)type profile:(id)profile error:(id *)error;
+ (id)localGregorianCalendar;
+ (id)rollingDays:(int64_t)days beforeDate:(id)date;
+ (int64_t)exposureAlertCount:(id)count;
@end

@implementation HDAudioAnalyticsUtilities

+ (id)localGregorianCalendar
{
  v2 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  return v2;
}

+ (double)leqFromStatistics:(id)statistics
{
  if (!statistics)
  {
    return 0.0;
  }

  averageQuantity = [statistics averageQuantity];
  if (averageQuantity)
  {
    decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
    [averageQuantity doubleValueForUnit:decibelAWeightedSoundPressureLevelUnit];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (double)durationFromStatistics:(id)statistics
{
  if (!statistics)
  {
    return 0.0;
  }

  duration = [statistics duration];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  [duration doubleValueForUnit:secondUnit];
  v6 = v5;

  return v6;
}

+ (double)doseFromStatistics:(id)statistics days:(int64_t)days
{
  statisticsCopy = statistics;
  v7 = -1.0;
  if (statisticsCopy)
  {
    [self leqFromStatistics:statisticsCopy];
    v9 = v8;
    [self durationFromStatistics:statisticsCopy];
    v11 = v10;
    [MEMORY[0x277CCD028] maximumDurationInSecondsForLEQ:days days:v9];
    if (v12 > 2.22044605e-16)
    {
      v7 = v11 / v12 * 100.0;
    }
  }

  return v7;
}

+ (int64_t)exposureAlertCount:(id)count
{
  if (count)
  {
    return [count count];
  }

  else
  {
    return 0;
  }
}

+ (id)fullDays:(int64_t)days beforeDate:(id)date
{
  dateCopy = date;
  localGregorianCalendar = [self localGregorianCalendar];
  v8 = [localGregorianCalendar startOfDayForDate:dateCopy];

  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:-days];
  v10 = [localGregorianCalendar dateByAddingComponents:v9 toDate:v8 options:0];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v8];

  return v11;
}

+ (id)rollingDays:(int64_t)days beforeDate:(id)date
{
  dateCopy = date;
  localGregorianCalendar = [self localGregorianCalendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:-days];
  v9 = [localGregorianCalendar dateByAddingComponents:v8 toDate:dateCopy options:0];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:dateCopy];

  return v10;
}

+ (id)boundedIntegerForExposureDuration:(double)duration
{
  if (duration == 0.0)
  {
    v5 = &unk_2863A8D98;
  }

  else
  {
    v5 = [self boundedIntegerForValue:&unk_2863A9BA8 orderedBuckets:&unk_2863A9068 sentinel:&__block_literal_global transformer:v3];
  }

  return v5;
}

+ (id)boundedIntegerForSyncDelayDuration:(double)duration
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:190];
  for (i = 1; i != 61; ++i)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    [v5 addObject:v7];
  }

  for (j = 120; j != 660; j += 60)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:j];
    [v5 addObject:v9];
  }

  v10 = 0;
  v11 = 900;
  do
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v5 addObject:v12];

    v10 += 15;
    v11 += 900;
  }

  while (v10 < 0x2E);
  v13 = 167;
  v14 = 7200;
  do
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [v5 addObject:v15];

    v14 += 3600;
    --v13;
  }

  while (v13);
  v16 = [self boundedIntegerForValue:v5 orderedBuckets:&unk_2863A9080 sentinel:&__block_literal_global_368 transformer:duration];

  return v16;
}

+ (id)boundedIntegerForEventDuration:(double)duration
{
  if (duration >= 1800.0)
  {
    v5 = [self boundedIntegerForValue:&unk_2863A9BC0 orderedBuckets:&unk_2863A9218 sentinel:&__block_literal_global_407 transformer:v3];
  }

  else
  {
    v5 = &unk_2863A8D98;
  }

  return v5;
}

+ (id)boundedIntegerForLockedDuration:(double)duration
{
  if (duration >= 0.0)
  {
    v5 = [self boundedIntegerForValue:&unk_2863A9BD8 orderedBuckets:&unk_2863A9470 sentinel:&__block_literal_global_462 transformer:v3];
  }

  else
  {
    v5 = &unk_2863A9230;
  }

  return v5;
}

+ (id)boundedIntegerForTimeSinceLastNotification:(double)notification
{
  if (notification >= 0.0)
  {
    if (notification >= 720.0)
    {
      v5 = [self boundedIntegerForValue:&unk_2863A9BF0 orderedBuckets:&unk_2863A95C0 sentinel:&__block_literal_global_495 transformer:v3];
    }

    else
    {
      v5 = &unk_2863A8D98;
    }
  }

  else
  {
    v5 = &unk_2863A9230;
  }

  return v5;
}

+ (id)boundedIntegerForValue:(double)value orderedBuckets:(id)buckets sentinel:(id)sentinel transformer:(id)transformer
{
  v26 = *MEMORY[0x277D85DE8];
  bucketsCopy = buckets;
  sentinelCopy = sentinel;
  v11 = (*(transformer + 2))(transformer, value);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = bucketsCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v11 <= [v17 integerValue])
        {
          v18 = v17;

          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = sentinelCopy;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)audioAverageAndDurationForExposureType:(int64_t)type profile:(id)profile startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v36[3] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dateCopy = date;
  endDateCopy = endDate;
  v15 = [self _quantityTypeForExposureType:type];
  if (v15)
  {
    errorCopy = error;
    v35 = endDateCopy;
    v16 = MEMORY[0x277D10B20];
    v17 = HDSampleEntityPredicateForStartDate();
    v36[0] = v17;
    [v15 maximumAllowedDuration];
    v19 = [dateCopy dateByAddingTimeInterval:-v18];
    v20 = HDSampleEntityPredicateForStartDate();
    v36[1] = v20;
    v21 = HDSampleEntityPredicateForEndDate();
    v36[2] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v23 = [v16 predicateMatchingAllPredicates:v22];

    if (type == 2)
    {
      v24 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
      v25 = [objc_alloc(MEMORY[0x277D10898]) initForProfile:profileCopy quantityType:v15 predicate:v23 restrictedSourceEntities:0 attenuationType:v24];
      v26 = _HKStatisticsOptionAttenuateSamples() | 0x42;
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277D108A0]) initForProfile:profileCopy quantityType:v15 predicate:v23 restrictedSourceEntities:0];
      v26 = 66;
    }

    v29 = [objc_alloc(MEMORY[0x277D108A8]) initWithProfile:profileCopy quantityType:v15];
    v30 = [MEMORY[0x277D10890] calculatorForQuantityType:v15 intervalCollection:0 options:v26 mergeStrategy:0];
    [v30 setDataSource:v25];
    [v30 setSourceOrderProvider:v29];
    currentStatistics = 0;
    endDateCopy = v35;
    if ([v30 queryForInitialStatisticsWithError:errorCopy])
    {
      currentStatistics = [v30 currentStatistics];
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Unknown audio exposure type"];
    if (v27)
    {
      if (error)
      {
        v28 = v27;
        *error = v27;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    currentStatistics = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return currentStatistics;
}

+ (id)_quantityTypeForExposureType:(int64_t)type
{
  if (type <= 3)
  {
    self = [MEMORY[0x277CCD720] quantityTypeForIdentifier:{**(&unk_2796C6310 + type), v3}];
  }

  return self;
}

+ (id)audioExposureEventsForExposureType:(int64_t)type profile:(id)profile startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v62[3] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dateCopy = date;
  endDateCopy = endDate;
  if ((type - 1) >= 2)
  {
    v13 = MEMORY[0x277CCB9A0];
  }

  else
  {
    v13 = MEMORY[0x277CCB960];
  }

  v14 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*v13];
  v15 = MEMORY[0x277D10B20];
  v49 = endDateCopy;
  v16 = HDSampleEntityPredicateForStartDate();
  v62[0] = v16;
  [v14 maximumAllowedDuration];
  v18 = [dateCopy dateByAddingTimeInterval:-v17];
  v19 = HDSampleEntityPredicateForStartDate();
  v62[1] = v19;
  v20 = HDSampleEntityPredicateForEndDate();
  v62[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
  v22 = [v15 predicateMatchingAllPredicates:v21];

  v60 = 0;
  v53 = v14;
  v54 = profileCopy;
  v23 = [MEMORY[0x277D105E8] samplesWithType:v14 profile:profileCopy encodingOptions:0 predicate:v22 limit:0 anchor:0 error:&v60];
  v24 = v60;
  v25 = v24;
  if (!v23)
  {
    v26 = v24;
    if (v26)
    {
      if (error)
      {
        v27 = v26;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (type == 2)
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([v23 count])
    {
      v46 = v25;
      v47 = v22;
      v48 = dateCopy;
      v28 = 0;
      v51 = *MEMORY[0x277CCCB60];
      v52 = v23;
      do
      {
        v29 = MEMORY[0x277D10B20];
        v58 = [v23 objectAtIndexedSubscript:v28];
        endDate = [v58 endDate];
        v55 = HDSampleEntityPredicateForStartDate();
        v61[0] = v55;
        v30 = [v23 objectAtIndexedSubscript:v28];
        startDate = [v30 startDate];
        [v53 maximumAllowedDuration];
        v33 = [startDate dateByAddingTimeInterval:-v32];
        v34 = HDSampleEntityPredicateForStartDate();
        v61[1] = v34;
        v35 = [v23 objectAtIndexedSubscript:v28];
        startDate2 = [v35 startDate];
        v37 = HDSampleEntityPredicateForEndDate();
        v61[2] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
        v39 = [v29 predicateMatchingAllPredicates:v38];

        v40 = MEMORY[0x277D10810];
        v41 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v51];
        v59 = 0;
        v42 = [v40 countOfSamplesWithType:v41 profile:v54 matchingPredicate:v39 withError:&v59];

        v23 = v52;
        if (v42 >= 1)
        {
          v43 = [v52 objectAtIndexedSubscript:v28];
          [array addObject:v43];
        }

        ++v28;
      }

      while ([v52 count] > v28);
      v22 = v47;
      dateCopy = v48;
      v25 = v46;
    }
  }

  else
  {
    array = v23;
  }

  v44 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)latestAudioExposureEventForExposureType:(int64_t)type profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v8 = MEMORY[0x277CCB9A0];
  if (type == 1)
  {
    v8 = MEMORY[0x277CCB960];
  }

  v9 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*v8];
  v16 = 0;
  v10 = [MEMORY[0x277D105E8] mostRecentSampleWithType:v9 profile:profileCopy encodingOptions:0 predicate:0 anchor:0 error:&v16];
  v11 = v16;
  v12 = v11;
  if (!v10)
  {
    v13 = v11;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v10;
}

@end