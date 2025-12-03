@interface HDSleepPeriodSegmentArrayBuilder
- (double)_timeIntervalForKey:(double)key defaultValue:;
- (id)_computeStatisticsFromSamples:(void *)samples sampleFilterBlock:;
- (id)_sleepPeriodSegmentsFromStatistics:(uint64_t)statistics;
- (id)initProfile:(id)profile morningIndex:(int64_t)index options:(unint64_t)options gregorianCalendar:(id)calendar sourceOrderProvider:(id)provider;
- (id)sortedSleepPeriodSegmentsFromSamples:(id)samples;
@end

@implementation HDSleepPeriodSegmentArrayBuilder

- (id)initProfile:(id)profile morningIndex:(int64_t)index options:(unint64_t)options gregorianCalendar:(id)calendar sourceOrderProvider:(id)provider
{
  profileCopy = profile;
  calendarCopy = calendar;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = HDSleepPeriodSegmentArrayBuilder;
  v15 = [(HDSleepPeriodSegmentArrayBuilder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_profile, profileCopy);
    v16->_morningIndex = index;
    v16->_options = options;
    objc_storeStrong(&v16->_gregorianCalendar, calendar);
    objc_storeWeak(&v16->_sourceOrderProvider, providerCopy);
  }

  return v16;
}

- (id)_computeStatisticsFromSamples:(void *)samples sampleFilterBlock:
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  samplesCopy = samples;
  if (self)
  {
    v7 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:*(self + 2) calendar:*(self + 4)];
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v8 setCalendar:*(self + 4)];
    [v8 setSecond:{-[HDSleepPeriodSegmentArrayBuilder _timeIntervalForKey:defaultValue:](self, @"HDSleepStagesStatisticsBucketInterval", 60.0)}];
    v9 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:v7 intervalComponents:v8];
    [v9 setEnableRiskyFastMathOptimization:1];
    v10 = _HKStatisticsOptionSleepStages();
    WeakRetained = objc_loadWeakRetained(self + 5);
    v12 = WeakRetained != 0;

    v13 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    v14 = [HDStatisticsCollectionCalculator calculatorForCategoryType:v13 intervalCollection:v9 options:v10 | v12 mergeStrategy:0];

    [v14 setMergeGranularity:{-[HDSleepPeriodSegmentArrayBuilder _timeIntervalForKey:defaultValue:](self, @"HDSleepStagesSourceMergeInterval", 30.0)}];
    v15 = objc_loadWeakRetained(self + 5);
    [v14 setSourceOrderProvider:v15];

    [v14 reset];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __84__HDSleepPeriodSegmentArrayBuilder__computeStatisticsFromSamples_sampleFilterBlock___block_invoke;
    v31[3] = &unk_278614AE0;
    v17 = v16;
    v32 = v17;
    [v14 setStatisticsHandler:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HDSleepPeriodSegmentArrayBuilder__computeStatisticsFromSamples_sampleFilterBlock___block_invoke_2;
    v27[3] = &unk_278614B08;
    v28 = v5;
    v30 = samplesCopy;
    v18 = v14;
    v29 = v18;
    v26 = 0;
    LOBYTE(v9) = [v18 performInitialStatisticsTransaction:v27 error:&v26];
    v19 = v26;
    if (v9)
    {
      self = v17;
    }

    else
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
      {
        v23 = v20;
        v24 = objc_opt_class();
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v19;
        v25 = v24;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Error adding samples to statistics calculator: %{public}@", buf, 0x16u);
      }

      self = MEMORY[0x277CBEBF8];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return self;
}

uint64_t __84__HDSleepPeriodSegmentArrayBuilder__computeStatisticsFromSamples_sampleFilterBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [v7 value];
        if ((*(*(a1 + 48) + 16))())
        {
          v9 = *(a1 + 40);
          v10 = v8;
          v11 = [v7 startDate];
          [v11 timeIntervalSinceReferenceDate];
          v13 = v12;
          v14 = [v7 endDate];
          [v14 timeIntervalSinceReferenceDate];
          v16 = v15;
          v17 = [v7 sourceRevision];
          v18 = [v17 source];
          v19 = [v18 _sourceID];
          LODWORD(v9) = [v9 addSampleValue:objc_msgSend(v19 startTime:"longLongValue") endTime:v23 sourceID:v10 error:{v13, v16}];

          if (!v9)
          {
            v20 = 0;
            goto LABEL_12;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)sortedSleepPeriodSegmentsFromSamples:(id)samples
{
  samplesCopy = samples;
  v5 = [(HDSleepPeriodSegmentArrayBuilder *)self _computeStatisticsFromSamples:samplesCopy sampleFilterBlock:&__block_literal_global_10];
  v6 = [(HDSleepPeriodSegmentArrayBuilder *)self _computeStatisticsFromSamples:samplesCopy sampleFilterBlock:&__block_literal_global_305];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(HDSleepPeriodSegmentArrayBuilder *)self _sleepPeriodSegmentsFromStatistics:v5];
  [v7 addObjectsFromArray:v8];

  v9 = [(HDSleepPeriodSegmentArrayBuilder *)self _sleepPeriodSegmentsFromStatistics:v6];
  [v7 addObjectsFromArray:v9];

  [v7 sortUsingComparator:&__block_literal_global_308];
  v10 = [v7 copy];

  return v10;
}

- (id)_sleepPeriodSegmentsFromStatistics:(uint64_t)statistics
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (statistics)
  {
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(HDSleepPeriodSegmentArrayBuilder *)statistics _timeIntervalForKey:29.0 defaultValue:?];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v29 = v3;
      statisticsCopy = statistics;
      v7 = 0;
      v32 = *v35;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = v7;
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          categoryValue = [v10 categoryValue];
          integerValue = [categoryValue integerValue];

          if (_HKCategoryValueSleepAnalysisIsAsleep() && (*(statisticsCopy + 24) & 1) == 0)
          {
            integerValue = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
          }

          v13 = objc_alloc(MEMORY[0x277CCA970]);
          startDate = [v10 startDate];
          endDate = [v10 endDate];
          v16 = [v13 initWithStartDate:startDate endDate:endDate];

          sources = [v10 sources];
          v18 = [sources hk_firstObjectPassingTest:&__block_literal_global_317];

          v19 = MEMORY[0x277CCD9E0];
          v38 = v16;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          v7 = [v19 sleepPeriodSegmentWithDateInterval:v16 sampleIntervals:v20 category:integerValue containsAppleSleepTrackingData:v18 != 0];

          if (v9)
          {
            startDate2 = [v16 startDate];
            dateInterval = [v9 dateInterval];
            endDate2 = [dateInterval endDate];
            [startDate2 timeIntervalSinceDate:endDate2];
            v25 = v24;

            if ([v9 category] == integerValue && v25 <= v4)
            {
              [v33 removeLastObject];
              v26 = [v9 mergingSleepPeriodSegment:v7];

              v7 = v26;
            }
          }

          [v33 addObject:v7];
        }

        v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v6);

      v3 = v29;
    }
  }

  else
  {
    v33 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __73__HDSleepPeriodSegmentArrayBuilder_sortedSleepPeriodSegmentsFromSamples___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (double)_timeIntervalForKey:(double)key defaultValue:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:v5];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
    {
      v12 = v8;
      [v7 doubleValue];
      v14 = 138543874;
      selfCopy = self;
      v16 = 2114;
      v17 = v5;
      v18 = 2050;
      v19 = v13;
      _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Found value for key: %{public}@ = %{public}f", &v14, 0x20u);
    }

    [v7 doubleValue];
    key = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return key;
}

@end