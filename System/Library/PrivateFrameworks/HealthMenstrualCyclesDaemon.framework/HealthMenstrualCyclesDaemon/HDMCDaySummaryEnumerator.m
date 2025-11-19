@interface HDMCDaySummaryEnumerator
+ (id)daySummariesInIndexRange:(id)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6;
+ (id)daySummaryAtIndex:(int64_t)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4;
- (HDMCDaySummaryEnumerator)initWithProfile:(id)a3 calendarCache:(id)a4 dayIndexRange:(id)a5 ascending:(BOOL)a6 includeFactors:(BOOL)a7 includeWristTemperature:(BOOL)a8;
- (void)_addSample:(id)a3 toBuilders:(id)a4 atDayIndex:(int64_t)a5;
- (void)_addSample:(id)a3 toBuilders:(id)a4 inRange:(id)a5;
- (void)_addSample:(id)a3 toBuilders:(id)a4 sampleRange:(id)a5;
- (void)_closeBuilders:(id)a3 withIndexes:(id)a4 handler:(id)a5 stop:(BOOL *)a6;
@end

@implementation HDMCDaySummaryEnumerator

- (HDMCDaySummaryEnumerator)initWithProfile:(id)a3 calendarCache:(id)a4 dayIndexRange:(id)a5 ascending:(BOOL)a6 includeFactors:(BOOL)a7 includeWristTemperature:(BOOL)a8
{
  v8 = a7;
  v9 = a6;
  var1 = a5.var1;
  var0 = a5.var0;
  v59[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v55.receiver = self;
  v55.super_class = HDMCDaySummaryEnumerator;
  v16 = [(HDMCDaySummaryEnumerator *)&v55 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_profile, v14);
    objc_storeStrong(&v17->_calendarCache, a4);
    v17->_dayIndexRange.start = var0;
    v17->_dayIndexRange.duration = var1;
    v17->_ascending = v9;
    v53 = v14;
    v51 = v9;
    if (a8)
    {
      v50 = v8;
      WeakRetained = objc_loadWeakRetained(&v17->_profile);
      v19 = [WeakRetained sourceOrderManager];
      v20 = _HKMCAppleSleepingWristTemperatureType();
      v54 = 0;
      v21 = [v19 orderedSourcesForObjectType:v20 error:&v54];
      v22 = v54;
      orderedWatchSources = v17->_orderedWatchSources;
      v17->_orderedWatchSources = v21;

      if (!v17->_orderedWatchSources)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCDaySummaryEnumerator initWithProfile:v24 calendarCache:v17 dayIndexRange:v22 ascending:? includeFactors:? includeWristTemperature:?];
        }
      }

      v8 = v50;
    }

    v58 = *MEMORY[0x277D10400];
    v59[0] = MEMORY[0x277CBEC38];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    if (var0 == *MEMORY[0x277CCBBF8] && var1 == *(MEMORY[0x277CCBBF8] + 8))
    {
      v27 = 0;
    }

    else
    {
      v27 = [MEMORY[0x277D10B70] hdmc_predicateForSamplesInDayIndexRange:{var0, var1}];
    }

    v28 = HKMCDaySummaryCategoryTypes();
    v52 = v15;
    if (v8)
    {
      v29 = HKMCCycleFactorsTypes();
      v30 = [v28 arrayByAddingObjectsFromArray:v29];

      v28 = v30;
    }

    v31 = HKMCDaySummaryQuantityTypes();
    v32 = objc_alloc(MEMORY[0x277D10820]);
    v33 = [MEMORY[0x277CBEB98] setWithArray:v28];
    v34 = [v32 initWithSampleTypes:v33 encodingOptions:v25 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v27];
    v57[0] = v34;
    v35 = objc_alloc(MEMORY[0x277D10820]);
    v36 = [MEMORY[0x277CBEB98] setWithArray:v31];
    v37 = [v35 initWithSampleTypes:v36 encodingOptions:v25 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v27];
    v57[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];

    v39 = MEMORY[0x277CCCD50];
    if (!v51)
    {
      v39 = MEMORY[0x277CCCD38];
    }

    v40 = MEMORY[0x277CCAC98];
    v41 = *v39;
    v42 = [v40 sortDescriptorWithKey:v41 ascending:v51];
    v43 = objc_alloc(MEMORY[0x277D10780]);
    v56 = v42;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v45 = v43;
    v14 = v53;
    v46 = [v45 initWithQueryDescriptors:v38 includeDeletedObjects:0 anchor:0 sortDescriptors:v44 bufferSize:100 profile:v53];
    iterator = v17->_iterator;
    v17->_iterator = v46;

    v15 = v52;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v52 = a4;
  v6 = _HKLogPersistedSignposts();
  v7 = _HKLogSignpostIDGenerate();

  _HKInitializeLogging();
  v8 = _HKLogPersistedSignposts();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = _HKLogPersistedSignposts();
    v11 = v10;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      start = self->_dayIndexRange.start;
      duration = self->_dayIndexRange.duration;
      v14 = NSStringFromHKDayIndexRange();
      *buf = 138412290;
      v57 = v14;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "menstrual-cycles-daysummary", "dayIndexRange=%@", buf, 0xCu);
    }
  }

  spid = v7;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v55 = 0;
  iterator = self->_iterator;
  v54 = 0;
  v17 = [(HDMultiTypeSortedSampleIterator *)iterator advanceWithError:&v54];
  v18 = v54;
  v19 = v18;
  if (!v17)
  {
    v20 = 0;
    v37 = v18;
LABEL_21:
    v38 = [v15 allKeys];
    [(HDMCDaySummaryEnumerator *)self _closeBuilders:v15 withIndexes:v38 handler:v52 stop:&v55];

    goto LABEL_22;
  }

  v50 = a3;
  v20 = 0;
  do
  {
    v21 = objc_autoreleasePoolPush();
    v22 = [(HDMultiTypeSortedSampleIterator *)self->_iterator sample];
    if (([v22 hkmc_isNotPresentSymptom] & 1) == 0)
    {
      if (self->_ascending)
      {
        v23 = [v22 startDate];
        v24 = [v23 hk_earliestPossibleDayIndex];
      }

      else
      {
        v23 = [v22 endDate];
        v24 = [v23 hk_latestPossibleDayIndex];
      }

      v25 = v24;

      v26 = [v15 allKeys];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __55__HDMCDaySummaryEnumerator_enumerateWithError_handler___block_invoke;
      v53[3] = &unk_27865AEA0;
      v53[4] = self;
      v53[5] = v25;
      v27 = [v26 hk_filter:v53];

      [(HDMCDaySummaryEnumerator *)self _closeBuilders:v15 withIndexes:v27 handler:v52 stop:&v55];
      calendarCache = self->_calendarCache;
      v29 = [v22 _timeZone];
      v30 = [(HKCalendarCache *)calendarCache calendarForTimeZone:v29];

      if ([v22 hkmc_isSleepDependentSample])
      {
        v31 = [v22 endDate];
        v32 = [v31 hk_morningIndexWithCalendar:v30];

        v33 = 1;
      }

      else
      {
        v32 = [v22 hk_dayIndexRangeWithCalendar:v30];
        v33 = v34;
      }

      ++v20;
      [(HDMCDaySummaryEnumerator *)self _addSample:v22 toBuilders:v15 sampleRange:v32, v33, v50];
    }

    objc_autoreleasePoolPop(v21);
    v35 = self->_iterator;
    v54 = v19;
    v36 = [(HDMultiTypeSortedSampleIterator *)v35 advanceWithError:&v54];
    v37 = v54;

    if (!v36)
    {
      break;
    }

    v19 = v37;
  }

  while (!v55);
  a3 = v50;
  if (!v55)
  {
    goto LABEL_21;
  }

LABEL_22:
  _HKInitializeLogging();
  v39 = _HKLogPersistedSignposts();
  v40 = os_signpost_enabled(v39);

  if (v40)
  {
    v41 = _HKLogPersistedSignposts();
    v42 = v41;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      v43 = self->_dayIndexRange.start;
      v44 = self->_dayIndexRange.duration;
      v45 = NSStringFromHKDayIndexRange();
      *buf = 138412546;
      v57 = v45;
      v58 = 2048;
      v59 = v20;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v42, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-daysummary", "dayIndexRange=%@ samples=%ld", buf, 0x16u);
    }
  }

  if (v37 && ([v37 hk_isHealthKitErrorWithCode:900] & 1) == 0)
  {
    if (a3)
    {
      v47 = v37;
      v46 = 0;
      *a3 = v37;
    }

    else
    {
      _HKLogDroppedError();
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v46;
}

uint64_t __55__HDMCDaySummaryEnumerator_enumerateWithError_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = [a2 integerValue];
  v5 = *(a1 + 40);
  v6 = v4 <= v5;
  v7 = v4 < v5;
  v8 = !v6;
  if (v3)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)_closeBuilders:(id)a3 withIndexes:(id)a4 handler:(id)a5 stop:(BOOL *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  context = objc_autoreleasePoolPush();
  v25 = v11;
  v13 = [v11 sortedArrayUsingSelector:sel_compare_];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v13;
  if (self->_ascending)
  {
    v14 = v13;
  }

  else
  {
    v14 = [v13 reverseObjectEnumerator];
  }

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v27 = *v29;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v29 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v28 + 1) + 8 * v17);
      v19 = [v10 objectForKeyedSubscript:v18];
      v20 = [MEMORY[0x277CCD2E8] localDevice];
      v21 = [v19 createDaySummaryWithDevice:v20];

      v12[2](v12, v21, a6);
      [v10 setObject:0 forKeyedSubscript:v18];
      LOBYTE(v20) = *a6;

      if (v20)
      {
        break;
      }

      if (v16 == ++v17)
      {
        v16 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_addSample:(id)a3 toBuilders:(id)a4 atDayIndex:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [HDMCDaySummaryBuilder alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = [(HDMCDaySummaryBuilder *)v11 initWithProfile:WeakRetained dayIndex:a5 orderedWatchSources:self->_orderedWatchSources calendarCache:self->_calendarCache];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v8 setObject:v10 forKeyedSubscript:v13];
  }

  [(HDMCDaySummaryBuilder *)v10 addCycleTrackingSample:v14];
}

- (void)_addSample:(id)a3 toBuilders:(id)a4 sampleRange:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v22 = a3;
  v9 = a4;
  v10 = [v22 hkmc_isCycleFactorSample];
  start = self->_dayIndexRange.start;
  duration = self->_dayIndexRange.duration;
  if (v10)
  {
    v15 = var0 >= start && var0 - start < duration || start == *MEMORY[0x277CCBBF8] && duration == *(MEMORY[0x277CCBBF8] + 8);
    if (var1 <= 0)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = var1 + var0 - 1;
    }

    v19 = (v18 < start || v18 - start >= duration) && (start != *MEMORY[0x277CCBBF8] || duration != *(MEMORY[0x277CCBBF8] + 8));
    v21 = v22;
    if (v15)
    {
      [(HDMCDaySummaryEnumerator *)self _addSample:v22 toBuilders:v9 atDayIndex:var0];
      v21 = v22;
    }

    if ((([v21 hasUndeterminedDuration] | v19) & 1) == 0)
    {
      [(HDMCDaySummaryEnumerator *)self _addSample:v22 toBuilders:v9 atDayIndex:v18];
    }
  }

  else
  {
    if (start != *MEMORY[0x277CCBBF8] || duration != *(MEMORY[0x277CCBBF8] + 8))
    {
      var0 = HKIntersectionDayIndexRange();
      var1 = v17;
    }

    [(HDMCDaySummaryEnumerator *)self _addSample:v22 toBuilders:v9 inRange:var0, var1];
  }
}

- (void)_addSample:(id)a3 toBuilders:(id)a4 inRange:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v16 = a3;
  v9 = a4;
  if (var1 >= 1)
  {
    v10 = var0 + var1;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:var0];
      v12 = [v9 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v13 = [HDMCDaySummaryBuilder alloc];
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v12 = [(HDMCDaySummaryBuilder *)v13 initWithProfile:WeakRetained dayIndex:var0 orderedWatchSources:self->_orderedWatchSources calendarCache:self->_calendarCache];

        v15 = [MEMORY[0x277CCABB0] numberWithInteger:var0];
        [v9 setObject:v12 forKeyedSubscript:v15];
      }

      [(HDMCDaySummaryBuilder *)v12 addCycleTrackingSample:v16];

      ++var0;
    }

    while (var0 < v10);
  }
}

+ (id)daySummaryAtIndex:(int64_t)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  LOBYTE(v14) = 0;
  v11 = [[HDMCDaySummaryEnumerator alloc] initWithProfile:v9 calendarCache:v10 dayIndexRange:a3 ascending:1 includeFactors:1 includeWristTemperature:0, v14];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HDMCDaySummaryEnumerator_daySummaryAtIndex_profile_calendarCache_error___block_invoke;
  v15[3] = &unk_27865A998;
  v15[4] = &v16;
  [(HDMCDaySummaryEnumerator *)v11 enumerateWithError:a6 handler:v15];
  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

+ (id)daySummariesInIndexRange:(id)a3 profile:(id)a4 calendarCache:(id)a5 error:(id *)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = MEMORY[0x277CBEB18];
  v11 = a5;
  v12 = a4;
  v13 = [v10 arrayWithCapacity:var1];
  LOBYTE(v18) = 0;
  v14 = [[HDMCDaySummaryEnumerator alloc] initWithProfile:v12 calendarCache:v11 dayIndexRange:var0 ascending:var1 includeFactors:1 includeWristTemperature:0, v18];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__HDMCDaySummaryEnumerator_daySummariesInIndexRange_profile_calendarCache_error___block_invoke;
  v19[3] = &unk_27865AEC8;
  v20 = v13;
  v15 = v13;
  [(HDMCDaySummaryEnumerator *)v14 enumerateWithError:a6 handler:v19];
  v16 = [v15 copy];

  return v16;
}

- (void)initWithProfile:(uint64_t)a3 calendarCache:dayIndexRange:ascending:includeFactors:includeWristTemperature:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving ordered wrist temperature sources: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end