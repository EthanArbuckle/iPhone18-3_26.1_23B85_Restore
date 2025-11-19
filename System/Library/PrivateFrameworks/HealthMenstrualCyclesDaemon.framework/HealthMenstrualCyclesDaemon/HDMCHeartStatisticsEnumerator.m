@interface HDMCHeartStatisticsEnumerator
- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4;
- (HDMCHeartStatisticsEnumerator)initWithProfile:(id)a3 calendarCache:(id)a4 dayIndexRange:(id)a5 databaseAccessibilityAssertion:(id)a6;
- (id)_asleepSleepAnalysisDateIntervalTreeOnDayIndex:(int64_t)a3 calendar:(id)a4 error:(id *)a5;
- (id)_cachingSessionWithCalendar:(id)a3 error:(id *)a4;
- (id)_heartStatisticsForDayIndex:(int64_t)a3 calendar:(id)a4 errorOut:(id *)a5;
@end

@implementation HDMCHeartStatisticsEnumerator

- (HDMCHeartStatisticsEnumerator)initWithProfile:(id)a3 calendarCache:(id)a4 dayIndexRange:(id)a5 databaseAccessibilityAssertion:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HDMCHeartStatisticsEnumerator;
  v14 = [(HDMCHeartStatisticsEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v11);
    objc_storeStrong(&v15->_calendarCache, a4);
    v15->_dayIndexRange.start = var0;
    v15->_dayIndexRange.duration = var1;
    objc_storeStrong(&v15->_databaseAccessibilityAssertion, a6);
  }

  return v15;
}

- (id)_asleepSleepAnalysisDateIntervalTreeOnDayIndex:(int64_t)a3 calendar:(id)a4 error:(id *)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCD0C0];
  v9 = *MEMORY[0x277CCBAB8];
  v10 = a4;
  v11 = [v8 categoryTypeForIdentifier:v9];
  v12 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndex:a3 calendar:v10];

  v13 = HDSampleEntityPredicateForDateInterval();

  v14 = _HKCategoryValueSleepAnalysisAsleepValues();
  v15 = HDCategorySampleEntityPredicateEqualToValues();

  v16 = MEMORY[0x277D10B20];
  v30[0] = v13;
  v30[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = [v19 entityEnumeratorWithType:v11 profile:WeakRetained];

  [v21 setPredicate:v18];
  [v21 setLimitCount:0];
  v22 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __95__HDMCHeartStatisticsEnumerator__asleepSleepAnalysisDateIntervalTreeOnDayIndex_calendar_error___block_invoke;
  v28[3] = &unk_27865ABD0;
  v29 = v22;
  v23 = v22;
  if ([v21 enumerateWithError:a5 handler:v28])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL __95__HDMCHeartStatisticsEnumerator__asleepSleepAnalysisDateIntervalTreeOnDayIndex_calendar_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  v5 = HKSafeObject();
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [v5 startDate];
    v8 = [v5 endDate];
    v9 = [v6 initWithStartDate:v7 endDate:v8];

    [*(a1 + 32) insertInterval:v9];
  }

  objc_autoreleasePoolPop(v4);
  return v5 != 0;
}

- (id)_heartStatisticsForDayIndex:(int64_t)a3 calendar:(id)a4 errorOut:(id *)a5
{
  v100[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCC2E8];
  v9 = *MEMORY[0x277CCC2E8];
  v10 = a4;
  v11 = _HKLogSignpostIDGenerate();
  _HKInitializeLogging();
  v12 = *v8;
  if (os_signpost_enabled(*v8))
  {
    v13 = v12;
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      *buf = 138412290;
      v97 = v15;
      _os_signpost_emit_with_name_impl(&dword_2293D1000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "menstrual-cycles-heartStatisticsForDayIndex", "dayIndex=%@", buf, 0xCu);
    }
  }

  spid = v11;
  v80 = a5;
  v16 = [MEMORY[0x277CCD830] heartRateType];
  v94 = 0;
  v17 = [(HDMCHeartStatisticsEnumerator *)self _asleepSleepAnalysisDateIntervalTreeOnDayIndex:a3 calendar:v10 error:&v94];
  v81 = v94;
  v18 = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  v79 = a3;
  v19 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndex:a3 calendar:v10];

  v20 = HDSampleEntityPredicateForDateInterval();

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = [WeakRetained metadataManager];
  v23 = *MEMORY[0x277CCE030];
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283CC3228, 0}];
  v25 = [v22 predicateWithMetadataKey:v23 allowedValues:v24];

  v26 = [v17 mergedIntervals];
  v27 = [v26 count];

  v83 = v18;
  if (!v27)
  {
    v56 = MEMORY[0x277D10B20];
    v100[0] = v20;
    v57 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    v100[1] = v57;
    v100[2] = v25;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:3];
    v59 = [v56 predicateMatchingAllPredicates:v58];

    v60 = objc_loadWeakRetained(&self->_profile);
    v93 = v81;
    v61 = [v18 hdmc_heartRateStatisticsWithProfile:v60 predicate:v59 errorOut:&v93];
    v45 = v93;

    if (!v45)
    {
      v51 = [MEMORY[0x277D11980] dailyHeartStatisticsWithDayIndex:v79 asleepStatistics:0 awakeStatistics:v61];
      _HKInitializeLogging();
      v65 = *MEMORY[0x277CCC2E8];
      if (os_signpost_enabled(*MEMORY[0x277CCC2E8]))
      {
        v66 = v65;
        v67 = v66;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
        {
          v68 = [MEMORY[0x277CCABB0] numberWithInteger:v79];
          *buf = 138412546;
          v97 = v68;
          v98 = 2112;
          v99 = &unk_283CC3240;
          _os_signpost_emit_with_name_impl(&dword_2293D1000, v67, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-daily-heart-statistics", "dayIndex=%@ sleepData=%@", buf, 0x16u);
        }
      }

      v69 = v83;
      goto LABEL_40;
    }

    if (v80)
    {
      v62 = v45;
      *v80 = v45;
    }

    else
    {
      _HKLogDroppedError();
    }

    v51 = 0;
    v70 = 0;
LABEL_38:
    v69 = v83;
    goto LABEL_42;
  }

  v77 = v25;
  v28 = objc_loadWeakRetained(&self->_profile);
  v29 = [v28 metadataManager];
  v30 = MEMORY[0x22AACC010]();
  v31 = [v29 predicateWithMetadataKey:v23 allowedValues:v30];

  v32 = MEMORY[0x277D10B20];
  v33 = HDSampleEntityPredicateForDataType();
  v95[0] = v33;
  v95[1] = v20;
  v78 = v20;
  v34 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v95[2] = v34;
  v95[3] = v31;
  v76 = v31;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:4];
  v36 = [v32 predicateMatchingAllPredicates:v35];

  v37 = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  v38 = [MEMORY[0x277D10890] hdmc_tenthPercentileCalculator];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke;
  aBlock[3] = &unk_27865AD20;
  aBlock[4] = self;
  v39 = v36;
  v89 = v39;
  v90 = v17;
  v40 = v38;
  v91 = v40;
  v41 = v37;
  v92 = v41;
  v42 = _Block_copy(aBlock);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_4;
  v85[3] = &unk_27865AD48;
  v43 = v40;
  v86 = v43;
  v44 = v42;
  v87 = v44;
  v84 = v81;
  LODWORD(v35) = [v41 performAddSampleTransaction:v85 error:&v84];
  v45 = v84;

  v46 = v17;
  v82 = v35;
  if (v35)
  {
    v74 = v39;
    v47 = v17;
    v48 = MEMORY[0x277D11980];
    v49 = [v43 currentStatistics];
    v50 = [v41 currentStatistics];
    v51 = [v48 dailyHeartStatisticsWithDayIndex:v79 asleepStatistics:v49 awakeStatistics:v50];

    _HKInitializeLogging();
    v52 = *MEMORY[0x277CCC2E8];
    if (!os_signpost_enabled(*MEMORY[0x277CCC2E8]))
    {
      v46 = v47;
      v39 = v74;
      goto LABEL_33;
    }

    v53 = v52;
    v54 = v53;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v46 = v47;
    }

    else
    {
      v46 = v47;
      if (os_signpost_enabled(v53))
      {
        v55 = [MEMORY[0x277CCABB0] numberWithInteger:v79];
        *buf = 138412546;
        v97 = v55;
        v98 = 2112;
        v99 = &unk_283CC3258;
        _os_signpost_emit_with_name_impl(&dword_2293D1000, v54, OS_SIGNPOST_INTERVAL_END, spid, "menstrual-cycles-heartStatisticsForDayIndex", "dayIndex=%@ sleepData=%@", buf, 0x16u);
      }
    }

    v39 = v74;
  }

  else
  {
    v63 = v45;
    v54 = v63;
    if (v63)
    {
      if (v80)
      {
        v64 = v63;
        v51 = 0;
        *v80 = v54;
      }

      else
      {
        _HKLogDroppedError();
        v51 = 0;
      }
    }

    else
    {
      v51 = 0;
    }
  }

LABEL_33:
  if (!v82)
  {
    v17 = v46;
    v70 = 0;
    v25 = v77;
    v20 = v78;
    goto LABEL_38;
  }

  v17 = v46;
  v69 = v83;
  if (!v45)
  {
    v25 = v77;
    v20 = v78;
LABEL_40:
    v51 = v51;
    v45 = 0;
    v70 = v51;
    goto LABEL_42;
  }

  v25 = v77;
  v20 = v78;
  if (v80)
  {
    v71 = v45;
    v70 = 0;
    *v80 = v45;
  }

  else
  {
    _HKLogDroppedError();
    v70 = 0;
  }

LABEL_42:

  v72 = *MEMORY[0x277D85DE8];

  return v70;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v4 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained database];
  v7 = [MEMORY[0x277D106B8] contextForReadingProtectedData];
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_2;
  v18[3] = &unk_27865ACF8;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *v4;
  v17 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v19 = v17;
  v20 = v11;
  v21 = *(a1 + 64);
  v12 = [v6 performTransactionWithContext:v7 error:&v22 block:v18 inaccessibilityHandler:0];
  v13 = v22;

  if ((v12 & 1) == 0)
  {
    v14 = v13;
    if (v14)
    {
      if (a2)
      {
        v15 = v14;
        *a2 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v12;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [MEMORY[0x277D10778] metadataValueStatementWithTransaction:a2];
  v6 = MEMORY[0x277D10818];
  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v20 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_3;
  v15[3] = &unk_27865ACD0;
  v15[4] = *(a1 + 40);
  v9 = v5;
  v16 = v9;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v10 = [v6 orderedQuantityValuesBySeriesForPredicate:v7 profile:WeakRetained options:1 error:&v20 handler:v15];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    v12 = v11;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v10;
}

uint64_t __79__HDMCHeartStatisticsEnumerator__heartStatisticsForDayIndex_calendar_errorOut___block_invoke_3(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v23 = [WeakRetained metadataManager];
  v24 = [v23 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:*(a1 + 40) error:a13];

  v25 = *MEMORY[0x277CCE030];
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277CCE030]];

  if (v26)
  {
    if ([*(a1 + 48) hasOverlapWithStartTime:a6 endTime:a7])
    {
      v27 = *(a1 + 56);
      v28 = a5;
      v29 = a6;
      v30 = a7;
    }

    else
    {
      v32 = [v24 objectForKeyedSubscript:v25];
      [v32 integerValue];
      IsSedentary = HKMCHeartRateContextIsSedentary();

      if (!IsSedentary)
      {
        v31 = 1;
        goto LABEL_9;
      }

      v27 = *(a1 + 64);
      v28 = a5;
      v29 = a3;
      v30 = a4;
    }

    v31 = [v27 addSampleValue:a10 startTime:a13 endTime:v28 sourceID:v29 error:v30];
  }

  else
  {
    v31 = 0;
  }

LABEL_9:

  return v31;
}

- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v74 = a4;
  v6 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v7 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained database];
  v88 = 0;
  v10 = [v7 maxRowIDForPredicate:0 healthDatabase:v9 error:&v88];
  v11 = v88;

  if (!v10)
  {
    v12 = v11;
    if (v12)
    {
      if (a3)
      {
        v16 = v12;
        v14 = 0;
        *a3 = v12;
LABEL_18:
        v15 = v12;
        goto LABEL_58;
      }

      _HKLogDroppedError();
    }

    v14 = 0;
    goto LABEL_18;
  }

  v87 = v11;
  v12 = [(HDMCHeartStatisticsEnumerator *)self _cachingSessionWithCalendar:v6 error:&v87];
  v13 = v87;

  if (!v12 && v13)
  {
    v14 = 0;
    v15 = v13;
    goto LABEL_58;
  }

  v86 = v13;
  v17 = [v12 cachesExistWithError:&v86];
  v15 = v86;

  if (v17 == 2)
  {
    v57 = v15;
    v58 = a3;
    v73 = v10;
    _HKInitializeLogging();
    v30 = MEMORY[0x277CCC2E8];
    v31 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = objc_opt_class();
      *buf = 138543362;
      v90 = v33;
      v34 = v33;
      _os_log_impl(&dword_2293D1000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] No cache exists so we need to query all heart statistics data and save to our cache", buf, 0xCu);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    start = self->_dayIndexRange.start;
    v59 = v6;
    while (1)
    {
      v36 = objc_autoreleasePoolPush();
      v85 = 0;
      v37 = [(HDMCHeartStatisticsEnumerator *)self _heartStatisticsForDayIndex:start calendar:v6 errorOut:&v85];
      v38 = v85;
      if (v37)
      {
        if (([v37 isEmpty]& 1) == 0)
        {
          _HKInitializeLogging();
          v39 = *v30;
          if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
          {
            v69 = v39;
            v50 = objc_opt_class();
            log = MEMORY[0x277CCABB0];
            v72 = v50;
            loga = [log numberWithInteger:start];
            *buf = 138543874;
            v90 = v50;
            v91 = 2112;
            v92 = loga;
            v93 = 2114;
            v94 = v37;
            _os_log_debug_impl(&dword_2293D1000, v69, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics created for dayIndex: %@ heart statistics:%{public}@", buf, 0x20u);
          }

          [v29 addObject:{v37, v57}];
          if ([v29 count] >= 0x14)
          {
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke;
            v84[3] = &unk_27865A7A0;
            v84[4] = self;
            [v12 insertCaches:v29 anchor:v73 completion:v84];
            _HKInitializeLogging();
            v40 = *v30;
            v41 = os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT);
            v42 = v29;
            if (v41)
            {
              logb = v40;
              v61 = objc_opt_class();
              v43 = MEMORY[0x277CCABB0];
              v70 = v61;
              v67 = [v29 firstObject];
              v60 = [v43 numberWithInteger:{-[NSObject dayIndex](v67, "dayIndex")}];
              v44 = MEMORY[0x277CCABB0];
              v45 = [v29 lastObject];
              v46 = [v44 numberWithInteger:{objc_msgSend(v45, "dayIndex")}];
              *buf = 138543874;
              v90 = v61;
              v91 = 2112;
              v92 = v60;
              v93 = 2112;
              v94 = v46;
              _os_log_impl(&dword_2293D1000, logb, OS_LOG_TYPE_DEFAULT, "[%{public}@] Statistics saved from dayIndex:%@ to dayIndex: %@", buf, 0x20u);

              v6 = v59;
            }

            v29 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v30 = MEMORY[0x277CCC2E8];
          }

          v74[2](v74, v37);
        }
      }

      else
      {
        _HKInitializeLogging();
        v47 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          v68 = v47;
          v49 = objc_opt_class();
          logc = MEMORY[0x277CCABB0];
          v71 = v49;
          logd = [logc numberWithInteger:start];
          *buf = 138543874;
          v90 = v49;
          v91 = 2114;
          v92 = v38;
          v93 = 2112;
          v94 = logd;
          _os_log_error_impl(&dword_2293D1000, v68, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating heart statistics: %{public}@ for dayIndex: %@", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(v36);
      if (v38)
      {
        break;
      }

      ++start;
      duration = self->_dayIndexRange.duration;
      if (duration >= 1 && duration + self->_dayIndexRange.start <= start)
      {
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_324;
        v83[3] = &unk_27865A7A0;
        v83[4] = self;
        v10 = v73;
        [v12 insertCaches:v29 anchor:v73 completion:v83];
        v28 = 1;
        v15 = v57;
        a3 = v58;
        goto LABEL_47;
      }
    }

    if (v58)
    {
      v51 = v38;
      *v58 = v38;
    }

    else
    {
      _HKLogDroppedError();
    }

    v10 = v73;

    v14 = 0;
    v15 = v57;
  }

  else
  {
    if (v17 == 1)
    {
      _HKInitializeLogging();
      v20 = MEMORY[0x277CCC2E8];
      v21 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        *buf = 138543362;
        v90 = v23;
        v24 = v23;
        _os_log_impl(&dword_2293D1000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cache exists and will be returning values from cache", buf, 0xCu);
      }

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v82 = v15;
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_325;
      v77[3] = &unk_27865AD70;
      v77[4] = self;
      v81 = v74;
      v78 = v6;
      v79 = v15;
      v26 = v25;
      v80 = v26;
      v27 = v15;
      v28 = [v12 activateWithError:&v82 cacheHandler:v77];
      v15 = v82;

      if (v28)
      {
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_327;
        v76[3] = &unk_27865A7A0;
        v76[4] = self;
        [v12 insertCaches:v26 anchor:v10 completion:v76];
        v29 = v26;
      }

      else
      {
        _HKInitializeLogging();
        v52 = *v20;
        v29 = v26;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [HDMCHeartStatisticsEnumerator enumerateWithError:v52 handler:?];
        }
      }

LABEL_47:
    }

    else
    {
      if (!v17)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCHeartStatisticsEnumerator enumerateWithError:v18 handler:?];
        }

        v15 = v15;
        if (v15)
        {
          if (a3)
          {
            v19 = v15;
            *a3 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
        goto LABEL_58;
      }

      v28 = 1;
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328;
    v75[3] = &unk_27865A7A0;
    v75[4] = self;
    [v12 finishWithCompletion:{v75, v57}];
    v14 = (v15 == 0) & v28;
    if (!v14)
    {
      v53 = v15;
      if (v15)
      {
        if (a3)
        {
          v54 = v53;
          *a3 = v53;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

LABEL_58:

  v55 = *MEMORY[0x277D85DE8];
  return v14;
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_324(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

uint64_t __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_325(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(a1 + 32);
  v11 = v10[2];
  v12 = __OFSUB__(a4, v11);
  v13 = a4 - v11;
  if (v13 < 0 != v12 || v13 >= v10[3])
  {
LABEL_16:
    v21 = 1;
    goto LABEL_17;
  }

  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 32);
      v27 = v20;
      v28 = objc_opt_class();
      v29 = MEMORY[0x277CCABB0];
      v30 = v28;
      v31 = [v29 numberWithInteger:a4];
      *buf = 138543874;
      v47 = v28;
      v48 = 2112;
      v49 = v31;
      v50 = 2114;
      v51 = v9;
      _os_log_debug_impl(&dword_2293D1000, v27, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics returned for dayIndex:%@ heart statistics:%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  v15 = *(a1 + 40);
  v45 = 0;
  v16 = [v10 _heartStatisticsForDayIndex:a4 calendar:v15 errorOut:&v45];
  v17 = v45;
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  v19 = *MEMORY[0x277CCC2E8];
  if (v16)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 32);
      v33 = v18;
      v34 = objc_opt_class();
      v35 = MEMORY[0x277CCABB0];
      v36 = v34;
      v37 = [v35 numberWithInteger:a4];
      *buf = 138543874;
      v47 = v34;
      v48 = 2112;
      v49 = v37;
      v50 = 2114;
      v51 = v16;
      _os_log_debug_impl(&dword_2293D1000, v33, OS_LOG_TYPE_DEBUG, "[%{public}@] Statistics created for dayIndex:%@ heart statistics:%{public}@", buf, 0x20u);
    }

    [*(a1 + 56) addObject:v16];
    if (([v16 isEmpty] & 1) == 0)
    {
      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v38 = *(a1 + 32);
    v39 = v18;
    v40 = objc_opt_class();
    v41 = *(a1 + 48);
    v42 = MEMORY[0x277CCABB0];
    v43 = v40;
    v44 = [v42 numberWithInteger:a4];
    *buf = 138543874;
    v47 = v40;
    v48 = 2114;
    v49 = v41;
    v50 = 2112;
    v51 = v44;
    _os_log_error_impl(&dword_2293D1000, v39, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating heart statistics: %{public}@ for dayIndex: %@", buf, 0x20u);
  }

  v24 = v17;
  if (v24)
  {
    if (a5)
    {
      v25 = v24;
      *a5 = v24;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v21 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_327(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(a1, v6);
    }
  }
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328_cold_1(a1, v6);
    }
  }
}

- (id)_cachingSessionWithCalendar:(id)a3 error:(id *)a4
{
  v62[2] = *MEMORY[0x277D85DE8];
  v53 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained sourceManager];
  v56 = 0;
  v8 = [v7 localDeviceSourceWithError:&v56];
  v9 = v56;

  v52 = v8;
  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_profile);
    v11 = [v10 metadataManager];
    v12 = *MEMORY[0x277CCE030];
    v13 = MEMORY[0x22AACC010]();
    v50 = [v11 predicateWithMetadataKey:v12 allowedValues:v13];

    v14 = MEMORY[0x277D10B20];
    v15 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    v62[0] = v15;
    v62[1] = v50;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    v48 = [v14 predicateMatchingAllPredicates:v16];

    v17 = _HKCategoryValueSleepAnalysisAsleepValues();
    v49 = HDCategorySampleEntityPredicateEqualToValues();

    v60 = *MEMORY[0x277D10400];
    v61 = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v51 = v9;
    v19 = objc_alloc(MEMORY[0x277D10820]);
    v20 = MEMORY[0x277CBEB98];
    v21 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    v59 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v23 = [v20 setWithArray:v22];
    v47 = [v19 initWithSampleTypes:v23 encodingOptions:v18 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v49];

    v24 = objc_alloc(MEMORY[0x277D10820]);
    v25 = MEMORY[0x277CBEB98];
    v26 = [MEMORY[0x277CCD830] heartRateType];
    v58 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v28 = [v25 setWithArray:v27];
    v45 = [v24 initWithSampleTypes:v28 encodingOptions:v18 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v48];

    v46 = [MEMORY[0x277CBEBB0] localTimeZone];
    v29 = MEMORY[0x277CCACA8];
    v30 = [v46 name];
    v31 = [v29 stringWithFormat:@"%@_%@", @"menstrualCycles", v30];

    v32 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndexRange:self->_dayIndexRange.start calendar:{self->_dayIndexRange.duration, v53}];
    v33 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v33 setDay:1];
    v34 = objc_alloc(MEMORY[0x277D10840]);
    v35 = objc_loadWeakRetained(&self->_profile);
    v36 = objc_opt_class();
    v37 = [v32 startDate];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __67__HDMCHeartStatisticsEnumerator__cachingSessionWithCalendar_error___block_invoke;
    v54[3] = &unk_27865AD98;
    v55 = v53;
    v38 = [v34 initWithProfile:v35 cachingIdentifier:v31 sourceEntity:v52 queryDescriptor:v45 cachedClass:v36 queryInterval:v32 anchorDate:v37 intervalComponents:v33 timeIntervalToBucketIndex:v54];

    v57 = v47;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v38 setInvalidationQueryDescriptors:v39];

    v9 = v51;
    [v38 setAccessibilityAssertion:self->_databaseAccessibilityAssertion];
  }

  else
  {
    v40 = v9;
    if (v40)
    {
      if (a4)
      {
        v41 = v40;
        *a4 = v40;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      [HDMCHeartStatisticsEnumerator _cachingSessionWithCalendar:v42 error:?];
    }

    v38 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v38;
}

uint64_t __67__HDMCHeartStatisticsEnumerator__cachingSessionWithCalendar_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  v3 = [v2 hk_morningIndexWithCalendar:*(a1 + 32)];

  return v3;
}

- (void)enumerateWithError:(void *)a1 handler:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error activating cache and enumerating over existing caches: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateWithError:(void *)a1 handler:.cold.2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error checking for caches in cacheStore: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v6, v7, "[%{public}@] Error saving statistics in cache store: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HDMCHeartStatisticsEnumerator_enumerateWithError_handler___block_invoke_328_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v6, v7, "[%{public}@] Failed to finish caching session: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_cachingSessionWithCalendar:(void *)a1 error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  _os_log_fault_impl(&dword_2293D1000, v1, OS_LOG_TYPE_FAULT, "[%{public}@] Error retrieving source to create cache store: %{public}@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end