@interface HKMCViewModelProvider
- ($0AC6E346AE4835514AAA8AC86D8F4844)_test_managedDayRange;
- ($0AC6E346AE4835514AAA8AC86D8F4844)activeDayRange;
- (BOOL)_didFetchMinimumAnalysis;
- (HKMCViewModelProvider)initWithHealthStore:(id)a3 analysisProvider:(id)a4 pregnancyModelProvider:(id)a5 maximumActiveDuration:(int64_t)a6 minimumBufferDuration:(int64_t)a7 shouldFetchCycleFactors:(BOOL)a8 calendarCache:(id)a9;
- (id)_copyWithDataSource:(id)a3 cycleFactorsDataSource:(id)a4 minimumBufferDuration:(int64_t)a5;
- (id)_initWithDataSource:(id)a3 cycleFactorsDataSource:(id)a4 analysisProvider:(id)a5 maximumActiveDuration:(int64_t)a6 minimumBufferDuration:(int64_t)a7 prefetchDuration:(int64_t)a8 shouldFetchCycleFactors:(BOOL)a9 calendarCache:(id)a10 queue:(id)a11;
- (id)_viewModelWithDayIndex:(int64_t)a3 fetchedDaySummary:(id)a4;
- (id)copyWithMinimumBufferDuration:(int64_t)a3;
- (id)dayViewModelAtIndex:(int64_t)a3;
- (int64_t)_fetchStateForDayIndex:(int64_t)a3;
- (unint64_t)_bleedingAfterPregnancyLevel:(int64_t)a3;
- (unint64_t)_bleedingInPregnancyLevel:(int64_t)a3;
- (unint64_t)_fertileWindowLevelWithDayIndex:(int64_t)a3;
- (unint64_t)_menstruationLevelWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 partiallyLoggedPeriod:(BOOL *)a5;
- (unint64_t)_pregnancyStateWithDayIndex:(int64_t)a3 cycleFactors:(id)a4;
- (void)_queue_notifyObserversDidUpdate;
- (void)_queue_runNotifyObserversOperationNow;
- (void)_setFetchState:(int64_t)a3 forDayIndexRange:(id)a4;
- (void)_updateManagedDayRangeIfNeeded;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)cycleFactorsDataSource:(id)a3 didFetchCycleFactors:(id)a4;
- (void)cycleFactorsDataSource:(id)a3 didUpdatePregnancyModel:(id)a4;
- (void)dealloc;
- (void)setActiveCycles:(id)a3;
- (void)setActiveDayRange:(id)a3;
- (void)viewModelProviderDataSource:(id)a3 didFetchDaySummaries:(id)a4 forDayIndexRange:(id)a5 daySummaryAnchor:(id)a6;
- (void)viewModelProviderDataSourceDidUpdateDaySummaries:(id)a3;
@end

@implementation HKMCViewModelProvider

- (void)setActiveCycles:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    [(HKMCViewModelProvider(HKMCCycle) *)a2 setActiveCycles:?];
  }

  v6 = [(HKMCViewModelProvider *)self calendarCache];
  v7 = [v6 currentCalendar];
  v8 = HKMCTodayIndex(v7);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v23 = self;
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = 0xFFFFFFFF80000000;
    v14 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 menstruationSegment];
        v18 = [v17 days];

        if (v18 < v14)
        {
          v14 = v18;
        }

        v19 = [v16 lastDayIndex];
        v20 = [v19 integerValue];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v8;
        }

        if (v21 > v13)
        {
          v13 = v21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0xFFFFFFFF80000000;
    v14 = 0x7FFFFFFFLL;
  }

  [(HKMCViewModelProvider *)v23 setMaximumActiveDuration:v13 - v14 + 1];
  [(HKMCViewModelProvider *)v23 setActiveDayRange:v14, v13 - v14 + 1];

  v22 = *MEMORY[0x277D85DE8];
}

- (HKMCViewModelProvider)initWithHealthStore:(id)a3 analysisProvider:(id)a4 pregnancyModelProvider:(id)a5 maximumActiveDuration:(int64_t)a6 minimumBufferDuration:(int64_t)a7 shouldFetchCycleFactors:(BOOL)a8 calendarCache:(id)a9
{
  v15 = a9;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [HKMCViewModelProviderDataSource alloc];
  v20 = MEMORY[0x277D85CD0];
  v21 = [(HKMCViewModelProviderDataSource *)v19 initWithHealthStore:v18 calendarCache:v15 queue:MEMORY[0x277D85CD0]];
  v22 = [[HKMCCycleFactorsDataSource alloc] initWithHealthStore:v18 pregnancyModelProvider:v16 queue:v20];

  LOBYTE(v25) = a8;
  v23 = [(HKMCViewModelProvider *)self _initWithDataSource:v21 cycleFactorsDataSource:v22 analysisProvider:v17 maximumActiveDuration:a6 minimumBufferDuration:a7 prefetchDuration:5 * a7 shouldFetchCycleFactors:v25 calendarCache:v15 queue:v20];

  return v23;
}

- (id)_initWithDataSource:(id)a3 cycleFactorsDataSource:(id)a4 analysisProvider:(id)a5 maximumActiveDuration:(int64_t)a6 minimumBufferDuration:(int64_t)a7 prefetchDuration:(int64_t)a8 shouldFetchCycleFactors:(BOOL)a9 calendarCache:(id)a10 queue:(id)a11
{
  v35 = a2;
  v18 = a3;
  v38 = a4;
  v37 = a5;
  v39 = a10;
  v36 = a11;
  v43.receiver = self;
  v43.super_class = HKMCViewModelProvider;
  v19 = [(HKMCViewModelProvider *)&v43 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a11);
    objc_storeStrong((v20 + 8), a3);
    [*(v20 + 8) setDelegate:v20];
    objc_storeStrong((v20 + 16), a4);
    objc_storeStrong((v20 + 24), a5);
    [*(v20 + 24) registerObserver:v20];
    if (a9)
    {
      [*(v20 + 16) setDelegate:{v20, v35}];
    }

    if (a7 > a8)
    {
      [HKMCViewModelProvider _initWithDataSource:v35 cycleFactorsDataSource:v20 analysisProvider:? maximumActiveDuration:? minimumBufferDuration:? prefetchDuration:? shouldFetchCycleFactors:? calendarCache:? queue:?];
    }

    *(v20 + 152) = a6;
    *(v20 + 56) = a7;
    *(v20 + 64) = a8;
    *(v20 + 48) = a9;
    v21 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v22 = *(v20 + 32);
    *(v20 + 32) = v21;

    v23 = [MEMORY[0x277CCAB58] indexSet];
    v24 = *(v20 + 88);
    *(v20 + 88) = v23;

    v25 = [MEMORY[0x277CCAB58] indexSet];
    v26 = *(v20 + 96);
    *(v20 + 96) = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    v28 = *(v20 + 104);
    *(v20 + 104) = v27;

    objc_storeStrong((v20 + 160), a10);
    v29 = [v39 currentCalendar];
    *(v20 + 168) = HKMCTodayIndex(v29);

    objc_initWeak(&location, v20);
    v30 = objc_alloc(MEMORY[0x277CCDD98]);
    v31 = *(v20 + 40);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __190__HKMCViewModelProvider__initWithDataSource_cycleFactorsDataSource_analysisProvider_maximumActiveDuration_minimumBufferDuration_prefetchDuration_shouldFetchCycleFactors_calendarCache_queue___block_invoke;
    v40[3] = &unk_2796D4DB8;
    objc_copyWeak(&v41, &location);
    v32 = [v30 initWithQueue:v31 delay:v40 block:1.0];
    v33 = *(v20 + 144);
    *(v20 + 144) = v32;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v20;
}

void __190__HKMCViewModelProvider__initWithDataSource_cycleFactorsDataSource_analysisProvider_maximumActiveDuration_minimumBufferDuration_prefetchDuration_shouldFetchCycleFactors_calendarCache_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_runNotifyObserversOperationNow];
}

- (id)copyWithMinimumBufferDuration:(int64_t)a3
{
  v5 = [HKMCViewModelProviderDataSource alloc];
  v6 = [(HKMCAnalysisProvider *)self->_analysisProvider healthStore];
  v7 = [(HKMCViewModelProviderDataSource *)v5 initWithHealthStore:v6 calendarCache:self->_calendarCache queue:self->_queue];

  v8 = [HKMCCycleFactorsDataSource alloc];
  v9 = [(HKMCAnalysisProvider *)self->_analysisProvider healthStore];
  v10 = [(HKMCCycleFactorsDataSource *)v8 initWithHealthStore:v9 pregnancyModelProvider:0 queue:self->_queue];

  v11 = [(HKMCViewModelProvider *)self _copyWithDataSource:v7 cycleFactorsDataSource:v10 minimumBufferDuration:a3];
  return v11;
}

- (id)_copyWithDataSource:(id)a3 cycleFactorsDataSource:(id)a4 minimumBufferDuration:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  calendarCache = self->_calendarCache;
  LOBYTE(v29) = self->_shouldFetchCycleFactors;
  v12 = [v10 _initWithDataSource:v9 cycleFactorsDataSource:v8 analysisProvider:self->_analysisProvider maximumActiveDuration:self->_maximumActiveDuration minimumBufferDuration:a5 prefetchDuration:5 * a5 shouldFetchCycleFactors:v29 calendarCache:calendarCache queue:self->_queue];

  v13 = [(NSMutableIndexSet *)self->_fetchCompletedDayIndexes mutableCopy];
  v14 = v12[12];
  v12[12] = v13;

  fetchCompletedDayIndexes = self->_fetchCompletedDayIndexes;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __90__HKMCViewModelProvider__copyWithDataSource_cycleFactorsDataSource_minimumBufferDuration___block_invoke;
  v30[3] = &unk_2796D4DE0;
  v16 = v12;
  v31 = v16;
  [(NSMutableIndexSet *)fetchCompletedDayIndexes hk_enumerateDayIndexRangesUsingBlock:v30];
  v17 = [(NSMutableDictionary *)self->_daySummariesByDayIndex mutableCopy];
  v18 = v16[13];
  v16[13] = v17;

  v19 = [(NSArray *)self->_cycleFactors copy];
  v20 = v16[14];
  v16[14] = v19;

  v21 = [(HKMCAnalysis *)self->_analysis copy];
  v22 = v16[16];
  v16[16] = v21;

  v23 = [(HKMCPregnancyModel *)self->_lastPregnancyModel copy];
  v24 = v16[17];
  v16[17] = v23;

  v25 = [(NSNumber *)self->_minimumAnalysisAnchor copy];
  v26 = v16[15];
  v16[15] = v25;

  [v16 setActiveDayRange:{self->_activeDayRange.start, self->_activeDayRange.duration}];
  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
  {
    [HKMCViewModelProvider _copyWithDataSource:v27 cycleFactorsDataSource:self minimumBufferDuration:v16];
  }

  return v16;
}

uint64_t __90__HKMCViewModelProvider__copyWithDataSource_cycleFactorsDataSource_minimumBufferDuration___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

- (id)dayViewModelAtIndex:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMCViewModelProvider *)self _fetchStateForDayIndex:a3]== 2)
  {
    daySummariesByDayIndex = self->_daySummariesByDayIndex;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v7 = [(NSMutableDictionary *)daySummariesByDayIndex objectForKeyedSubscript:v6];

    v8 = [(HKMCViewModelProvider *)self _viewModelWithDayIndex:a3 fetchedDaySummary:v7];
  }

  else
  {
    v8 = +[HKMCDayViewModel unfetchedDayViewModel];
  }

  return v8;
}

- (void)setActiveDayRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (var1 <= self->_maximumActiveDuration)
  {
    if (self->_activeDayRange.start != var0 || self->_activeDayRange.duration != var1)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
      {
        [(HKMCViewModelProvider *)v13 setActiveDayRange:?];
      }

      self->_activeDayRange.start = var0;
      self->_activeDayRange.duration = var1;
      [(HKMCViewModelProvider *)self _updateManagedDayRangeIfNeeded];
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKDayIndexRange();
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maximumActiveDuration];
      v15 = 138544130;
      v16 = v8;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_2518FC000, v7, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Ignoring invalid active day range: %{public}@, maximum duration is %{public}@", &v15, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_viewModelWithDayIndex:(int64_t)a3 fetchedDaySummary:(id)a4
{
  v6 = a4;
  v27 = 0;
  v7 = -[HKMCViewModelProvider _menstruationLevelWithDayIndex:menstrualFlow:partiallyLoggedPeriod:](self, "_menstruationLevelWithDayIndex:menstrualFlow:partiallyLoggedPeriod:", a3, [v6 menstrualFlow], &v27);
  v8 = [(HKMCViewModelProvider *)self _fertileWindowLevelWithDayIndex:a3];
  v9 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v10 = v9;
  cycleFactors = self->_cycleFactors;
  if (cycleFactors)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__HKMCViewModelProvider__viewModelWithDayIndex_fetchedDaySummary___block_invoke;
    v24[3] = &unk_2796D4E08;
    v25 = v9;
    v26 = a3;
    v23 = [(NSArray *)cycleFactors hk_filter:v24];
    v12 = [(HKMCViewModelProvider *)self _pregnancyStateWithDayIndex:a3 cycleFactors:self->_cycleFactors];
    v13 = -[HKMCViewModelProvider _bleedingInPregnancyLevel:](self, "_bleedingInPregnancyLevel:", [v6 bleedingInPregnancyFlow]);
    v14 = -[HKMCViewModelProvider _bleedingAfterPregnancyLevel:](self, "_bleedingAfterPregnancyLevel:", [v6 bleedingAfterPregnancyFlow]);

    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  if (!v7 && !v8 && !v12 && !v13 && !v14 && ![v23 count])
  {
    if ([(HKMCViewModelProvider *)self _didFetchInitialAnalysis])
    {
      +[HKMCDayViewModel emptyDayViewModel];
    }

    else
    {
      +[HKMCDayViewModel unfetchedDayViewModel];
    }
    v20 = ;
    v19 = v23;
    goto LABEL_12;
  }

LABEL_11:
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v27;
  BYTE1(v22) = [(HKMCViewModelProvider *)self _didFetchInitialAnalysis];
  LOBYTE(v22) = v18;
  v10 = v17;
  v19 = v23;
  v20 = [HKMCDayViewModel dayViewModelWithMenstruationLevel:v16 fertileWindowLevel:v15 pregnancyState:v12 bleedingInPregnancyLevel:v13 bleedingAfterPregnancyLevel:v14 daySummary:v6 cycleFactors:v23 partiallyLoggedPeriod:v22 fetched:?];
LABEL_12:

  return v20;
}

BOOL __66__HKMCViewModelProvider__viewModelWithDayIndex_fetchedDaySummary___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hk_dayIndexRangeWithCalendar:*(a1 + 32)];
  v5 = *(a1 + 40);
  v7 = v5 < v3;
  v6 = v5 - v3;
  return !v7 && v6 < v4;
}

- (unint64_t)_pregnancyStateWithDayIndex:(int64_t)a3 cycleFactors:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v8 = [MEMORY[0x277CCD5A0] recentPregnancyStartThresholdInDays];
  v54 = [MEMORY[0x277CCD5A0] recentPregnancyEndThresholdInDays];
  v9 = [MEMORY[0x277CCD5A0] maximumNumberOfWeeksPregnant];
  v10 = [(HKMCPregnancyModel *)self->_lastPregnancyModel estimatedDueDate];

  v56 = a3;
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [(HKMCPregnancyModel *)self->_lastPregnancyModel estimatedDueDate];
  v12 = [v11 hk_dayIndexWithCalendar:v7];

  if (v12 != a3)
  {
    goto LABEL_5;
  }

  v13 = [(HKMCPregnancyModel *)self->_lastPregnancyModel pregnancyEndDate];

  v14 = [(HKMCPregnancyModel *)self->_lastPregnancyModel pregnancyEndDate];
  v15 = v7;
  v16 = v14;
  v17 = v15;
  v18 = [v14 hk_dayIndexWithCalendar:?];

  v19 = 4;
  if (!v13)
  {
    v7 = v17;
    goto LABEL_47;
  }

  v7 = v17;
  if (v18 < v56)
  {
LABEL_5:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (!v20)
    {
      v57 = 0;
      goto LABEL_46;
    }

    v21 = v20;
    v57 = 0;
    v59 = 0;
    v52 = 7 * v9;
    v53 = self;
    v22 = *v61;
    v23 = *MEMORY[0x277CCBA68];
    v55 = v8 + 1;
    while (1)
    {
      v24 = 0;
      do
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v60 + 1) + 8 * v24);
        v26 = [v25 categoryType];
        v27 = [v26 identifier];
        v28 = v27;
        if (v27 != v23)
        {

          goto LABEL_34;
        }

        v29 = v22;
        v30 = [v25 startDate];
        v31 = v7;
        v32 = [v30 hk_dayIndexWithCalendar:v7];

        if (v32 <= v59)
        {
          v7 = v31;
LABEL_33:
          v22 = v29;
          goto LABEL_34;
        }

        v33 = [v25 hk_dayIndexRangeWithCalendar:v31];
        v35 = v34;
        v36 = [v25 startDate];
        v37 = [v36 hk_dayIndexWithCalendar:v31];

        v38 = [v25 endDate];
        v39 = [v38 hk_dayIndexWithCalendar:v31];

        v40 = v37;
        if (v55 + v37 >= v39)
        {
          v41 = v39 - v37;
        }

        else
        {
          v41 = v55;
        }

        v7 = v31;
        v59 = v40;
        if (v56 < v33 || v56 - v33 >= v35)
        {
          v45 = v56 - v39 > v54 || v56 < v39;
          v46 = v57;
          if (!v45)
          {
            v46 = 1;
          }

          v57 = v46;
          goto LABEL_33;
        }

        v22 = v29;
        v42 = v56 - v40;
        if (v53->_todayDayIndex >= v56)
        {
          v47 = v42 >= v41 || v56 < v40;
          v44 = 5;
          if (v47)
          {
            v44 = 6;
          }

          goto LABEL_41;
        }

        if (v42 < v52)
        {
          v43 = v42 >= v41 || v56 < v40;
          v44 = 2;
          if (!v43)
          {
            v44 = 3;
          }

LABEL_41:
          v57 = v44;
          goto LABEL_34;
        }

        v57 = 0;
LABEL_34:
        ++v24;
      }

      while (v21 != v24);
      v48 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      v21 = v48;
      if (!v48)
      {
LABEL_46:

        v6 = v51;
        v19 = v57;
        break;
      }
    }
  }

LABEL_47:

  v49 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)_bleedingInPregnancyLevel:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_bleedingAfterPregnancyLevel:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_menstruationLevelWithDayIndex:(int64_t)a3 menstrualFlow:(int64_t)a4 partiallyLoggedPeriod:(BOOL *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  if ((a4 - 1) >= 5)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = [(HKMCAnalysis *)self->_analysis cycles];
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v37 + 1) + 8 * i) menstruationSegment];
          v15 = [v14 days];
          v17 = v16;

          if (a3 >= v15 && a3 - v15 < v17)
          {

            v5 = 3;
            goto LABEL_33;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [(HKMCAnalysis *)self->_analysis menstruationProjections];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      v5 = 2;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = [v24 mostLikelyDays];
          if (a3 >= v25 && a3 - v25 < v26)
          {
            goto LABEL_32;
          }

          v28 = [v24 allDays];
          if (a3 >= v28 && a3 - v28 < v29)
          {
            v5 = 1;
LABEL_32:
            *a5 = [v24 isPartiallyLogged];

            goto LABEL_33;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = qword_25192B3B0[a4 - 1];
  }

LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)_fertileWindowLevelWithDayIndex:(int64_t)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [(HKMCAnalysis *)self->_analysis cycles];
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 fertileWindowSegment];

        if (v11)
        {
          v12 = [v10 fertileWindowSegment];
          v13 = [v12 days];
          v15 = v14 + v13 - 1;
          if (v14 <= 0)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v15 == a3)
          {
            if ([v10 ovulationConfirmationType] == 1)
            {

LABEL_39:
              v25 = 3;
              goto LABEL_41;
            }

            v16 = [v10 ovulationConfirmationType];

            if (v16 == 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          v17 = [v10 fertileWindowSegment];
          v18 = [v17 days];
          v20 = v19;

          if (a3 >= v18 && a3 - v18 < v20)
          {
            v25 = 2;
            goto LABEL_41;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(HKMCAnalysis *)self->_analysis fertileWindowProjections];
  v22 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    v25 = 3;
LABEL_22:
    v26 = 0;
    while (1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v5);
      }

      v27 = *(*(&v36 + 1) + 8 * v26);
      if ([v27 predictionPrimarySource] == 3 || objc_msgSend(v27, "predictionPrimarySource") == 4)
      {
        v28 = [v27 allDays];
        v30 = v29 + v28 - 1;
        if (v29 <= 0)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v30 == a3)
        {
          break;
        }
      }

      v31 = [v27 allDays];
      if (a3 >= v31 && a3 - v31 < v32)
      {
        v25 = 1;
        break;
      }

      if (v23 == ++v26)
      {
        v23 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v23)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v25 = 0;
  }

LABEL_41:

  v34 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)_updateManagedDayRangeIfNeeded
{
  v44 = *MEMORY[0x277D85DE8];
  start = self->_managedDayRange.start;
  duration = self->_managedDayRange.duration;
  v5 = self->_activeDayRange.start;
  v6 = self->_activeDayRange.duration;
  HKIntersectionDayIndexRange();
  v7 = self->_managedDayRange.start;
  if (v8)
  {
    minimumBufferDuration = self->_minimumBufferDuration;
    prefetchDuration = self->_prefetchDuration;
    v11 = self->_maximumActiveDuration + 2 * prefetchDuration;
    v12 = self->_activeDayRange.start;
    if (v12 < minimumBufferDuration + v7)
    {
      if (v7 >= v12)
      {
        v13 = self->_activeDayRange.start;
      }

      else
      {
        v13 = self->_managedDayRange.start;
      }

      start = v13 - prefetchDuration;
      v14 = self->_managedDayRange.duration;
      v15 = v7 + v14 - 1;
      v16 = v14 <= 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v15;
      }

      v18 = v17 - start;
      if (v11 >= v18 + 1)
      {
        duration = v18 + 1;
      }

      else
      {
        duration = self->_maximumActiveDuration + 2 * prefetchDuration;
      }
    }

    v19 = self->_activeDayRange.duration;
    v20 = v12 + v19 - 1;
    v16 = v19 <= 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (duration > 0)
    {
      v21 = duration + start - 1;
    }

    if (v20 > v21 - minimumBufferDuration)
    {
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      v23 = v22 + prefetchDuration;
      if (v11 >= v23 - start + 1)
      {
        duration = v23 - start + 1;
      }

      else
      {
        duration = v11;
      }

      start = v23 - duration + 1;
    }
  }

  else
  {
    v24 = self->_prefetchDuration;
    start = self->_activeDayRange.start - v24;
    duration = self->_activeDayRange.duration + 2 * v24;
  }

  if (v7 != start || self->_managedDayRange.duration != duration)
  {
    v26 = [MEMORY[0x277CCAA78] hk_indexSetWithDayIndexRange:?];
    v27 = [MEMORY[0x277CCAA78] hk_indexSetWithDayIndexRange:{start, duration}];
    self->_managedDayRange.start = start;
    self->_managedDayRange.duration = duration;
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = objc_opt_class();
      v31 = v30;
      v32 = NSStringFromHKDayIndexRange();
      *buf = 138543874;
      v39 = v30;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = v32;
      _os_log_impl(&dword_2518FC000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated managed day range: %{public}@", buf, 0x20u);
    }

    v33 = [v26 hk_indexSetSubtractingIndexes:v27];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke;
    v37[3] = &unk_2796D4DE0;
    v37[4] = self;
    [v33 hk_enumerateDayIndexRangesUsingBlock:v37];
    v34 = [v27 hk_indexSetSubtractingIndexes:v26];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke_2;
    v36[3] = &unk_2796D4DE0;
    v36[4] = self;
    [v34 hk_enumerateDayIndexRangesUsingBlock:v36];
    if (self->_shouldFetchCycleFactors)
    {
      [(HKMCCycleFactorsDataSourceProviding *)self->_cycleFactorsDataSource startObservingCycleFactorsInDayIndexRange:start, duration];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) cancelFetchForDaySummariesInDayIndexRange:{a2, a3}];
  [*(a1 + 32) _setFetchState:0 forDayIndexRange:{v4, a3}];
  v6 = v4 + a3;
  do
  {
    do
    {
      v7 = *(*(a1 + 32) + 104);
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [v7 setObject:0 forKeyedSubscript:v8];

      ++v4;
    }

    while (a3 < 1);
  }

  while (v6 > v4);
}

uint64_t __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _setFetchState:1 forDayIndexRange:{a2, a3}];
  v6 = *(*(a1 + 32) + 8);

  return [v6 fetchDaySummariesInDayIndexRange:{a2, a3}];
}

- (int64_t)_fetchStateForDayIndex:(int64_t)a3
{
  if (([(NSMutableIndexSet *)self->_fetchCompletedDayIndexes containsIndex:?]& 1) != 0)
  {
    return 2;
  }

  else
  {
    return [(NSMutableIndexSet *)self->_fetchStartedDayIndexes containsIndex:a3];
  }
}

- (void)_setFetchState:(int64_t)a3 forDayIndexRange:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  if (a4.var0 < 0)
  {
    [HKMCViewModelProvider _setFetchState:forDayIndexRange:];
  }

  p_fetchStartedDayIndexes = &self->_fetchStartedDayIndexes;
  [(NSMutableIndexSet *)self->_fetchStartedDayIndexes removeIndexesInRange:var0, var1];
  fetchCompletedDayIndexes = self->_fetchCompletedDayIndexes;
  p_fetchCompletedDayIndexes = &self->_fetchCompletedDayIndexes;
  [(NSMutableIndexSet *)fetchCompletedDayIndexes removeIndexesInRange:var0, var1];
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return;
    }

    p_fetchStartedDayIndexes = p_fetchCompletedDayIndexes;
  }

  v11 = *p_fetchStartedDayIndexes;

  [(NSMutableIndexSet *)v11 addIndexesInRange:var0, var1];
}

- (BOOL)_didFetchMinimumAnalysis
{
  v2 = self;
  v3 = [(HKMCAnalysis *)self->_analysis latestSampleInfo];
  v4 = [v3 anchor];
  LOBYTE(v2) = v4 >= [(NSNumber *)v2->_minimumAnalysisAnchor longLongValue];

  return v2;
}

- (void)cycleFactorsDataSource:(id)a3 didFetchCycleFactors:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v13 = HKSensitiveLogItem();
    *buf = 138543874;
    v22 = v9;
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Fetched %@ cycle factors", buf, 0x20u);
  }

  if ([(NSArray *)self->_cycleFactors isEqualToArray:v5])
  {
    if (HKShowSensitiveLogItems())
    {
      _HKInitializeLogging();
      v14 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        [HKMCViewModelProvider cycleFactorsDataSource:v14 didFetchCycleFactors:self];
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
    v20 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v17 = [v5 sortedArrayUsingDescriptors:v16];
    cycleFactors = self->_cycleFactors;
    self->_cycleFactors = v17;

    [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cycleFactorsDataSource:(id)a3 didUpdatePregnancyModel:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  lastPregnancyModel = self->_lastPregnancyModel;
  v8 = HKShowSensitiveLogItems();
  if (lastPregnancyModel == v6)
  {
    if (v8)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v16 = 138543618;
        v17 = objc_opt_class();
        v18 = 2048;
        v19 = self;
        v14 = v17;
        _os_log_impl(&dword_2518FC000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping update due to identical pregnancy model", &v16, 0x16u);
      }
    }
  }

  else
  {
    if (v8)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v16 = 138543618;
        v17 = objc_opt_class();
        v18 = 2048;
        v19 = self;
        v11 = v17;
        _os_log_impl(&dword_2518FC000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated pregnancy model", &v16, 0x16u);
      }
    }

    objc_storeStrong(&self->_lastPregnancyModel, a4);
    [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)viewModelProviderDataSource:(id)a3 didFetchDaySummaries:(id)a4 forDayIndexRange:(id)a5 daySummaryAnchor:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v55 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v36 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v17 = NSStringFromHKDayIndexRange();
    *buf = 138544130;
    v48 = v13;
    v49 = 2048;
    v50 = self;
    v51 = 2112;
    v52 = v16;
    v53 = 2114;
    v54 = v17;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Fetched %@ summaries in range: %{public}@", buf, 0x2Au);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = [(NSMutableDictionary *)self->_daySummariesByDayIndex allKeys];
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * i);
        v24 = [v23 integerValue];
        if (v24 >= var0 && v24 - var0 < var1)
        {
          [(NSMutableDictionary *)self->_daySummariesByDayIndex setObject:0 forKeyedSubscript:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v20);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v10;
  v27 = [v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v38;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v37 + 1) + 8 * j);
        daySummariesByDayIndex = self->_daySummariesByDayIndex;
        v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v31, "dayIndex")}];
        [(NSMutableDictionary *)daySummariesByDayIndex setObject:v31 forKeyedSubscript:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v28);
  }

  [(HKMCViewModelProvider *)self _setFetchState:2 forDayIndexRange:var0, var1];
  minimumAnalysisAnchor = self->_minimumAnalysisAnchor;
  self->_minimumAnalysisAnchor = v36;

  [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  v35 = *MEMORY[0x277D85DE8];
}

- (void)viewModelProviderDataSourceDidUpdateDaySummaries:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543618;
    *&v8[4] = objc_opt_class();
    *&v8[12] = 2048;
    *&v8[14] = self;
    v6 = *&v8[4];
    _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated summaries", v8, 0x16u);
  }

  [(HKMCViewModelProviderDataSource *)self->_dataSource fetchDaySummariesInDayIndexRange:self->_managedDayRange.start, self->_managedDayRange.duration, *v8, *&v8[16], v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2048;
    v14 = self;
    v8 = v12;
    _os_log_impl(&dword_2518FC000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated analysis", &v11, 0x16u);
  }

  analysis = self->_analysis;
  self->_analysis = v5;

  [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notifyObserversDidUpdate
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HKMCViewModelProvider *)self _didFetchInitialAnalysis]&& ![(HKMCViewModelProvider *)self _didFetchMinimumAnalysis])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      analysis = self->_analysis;
      v9 = v7;
      v10 = [(HKMCAnalysis *)analysis latestSampleInfo];
      v11 = HKSensitiveLogItem();
      minimumAnalysisAnchor = self->_minimumAnalysisAnchor;
      v14 = 138544130;
      v15 = v7;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = minimumAnalysisAnchor;
      _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Delaying notifying observers of updates due to outdated analysis: %{public}@ < %{public}@", &v14, 0x2Au);
    }

    [(_HKDelayedOperation *)self->_notifyObserversOperation execute];
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    notifyObserversOperation = self->_notifyObserversOperation;
    v4 = *MEMORY[0x277D85DE8];

    [(_HKDelayedOperation *)notifyObserversOperation executeWithDelay:0.0];
  }
}

- (void)_queue_runNotifyObserversOperationNow
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v8 = v5;
    v9 = [v6 numberWithUnsignedInteger:{-[NSHashTable count](observers, "count")}];
    *buf = 138543874;
    v22 = v5;
    v23 = 2048;
    v24 = self;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Notifying %{public}@ observers of updates", buf, 0x20u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) viewModelProviderDidUpdate:{self, v16}];
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v5 = v9;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Dealloc", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = HKMCViewModelProvider;
  [(HKMCViewModelProvider *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_test_managedDayRange
{
  duration = self->_managedDayRange.duration;
  start = self->_managedDayRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)activeDayRange
{
  duration = self->_activeDayRange.duration;
  start = self->_activeDayRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- (void)_initWithDataSource:(uint64_t)a1 cycleFactorsDataSource:(uint64_t)a2 analysisProvider:maximumActiveDuration:minimumBufferDuration:prefetchDuration:shouldFetchCycleFactors:calendarCache:queue:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCViewModelProvider.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"minimumBufferDuration <= prefetchDuration"}];
}

- (void)_copyWithDataSource:(void *)a1 cycleFactorsDataSource:(uint64_t)a2 minimumBufferDuration:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = 138543874;
  v9 = objc_opt_class();
  v10 = 2050;
  v11 = a2;
  v12 = 2050;
  v13 = a3;
  v6 = v9;
  _os_log_debug_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Copying %{public}p to %{public}p", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setActiveDayRange:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = v4;
  v6 = NSStringFromHKDayIndexRange();
  v8 = 138543874;
  v9 = v4;
  v10 = 2048;
  v11 = a2;
  v12 = 2114;
  v13 = v6;
  _os_log_debug_impl(&dword_2518FC000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@:%p] Updated active day range: %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setFetchState:forDayIndexRange:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange NSRangeFromHKDayIndexRange(HKDayIndexRange)"];
  [v1 handleFailureInFunction:v0 file:@"HKDayIndexRange.h" lineNumber:46 description:@"Cannot convert day index ranges less than 0 to NSRange"];
}

- (void)cycleFactorsDataSource:(void *)a1 didFetchCycleFactors:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2048;
  v9 = a2;
  v4 = v7;
  _os_log_debug_impl(&dword_2518FC000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@:%p] No factors changed, skipping notifying observers", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end