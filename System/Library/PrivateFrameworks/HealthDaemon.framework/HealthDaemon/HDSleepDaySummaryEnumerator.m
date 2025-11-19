@interface HDSleepDaySummaryEnumerator
+ (id)sleepAnalysisQueryDescriptorForDateInterval:(id)a3 options:(unint64_t)a4;
+ (id)sleepTypesQueryDescriptorsForDateInterval:(id)a3 options:(unint64_t)a4;
- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4;
- (HDSleepDaySummaryEnumerator)initWithProfile:(id)a3 cachingSession:(id)a4 gregorianCalendar:(id)a5 morningIndexRange:(id)a6 ascending:(BOOL)a7 options:(unint64_t)a8 debugIdentifier:(id)a9;
- (id)_updatedBuilderForMorningIndex:(void *)a3 fromBuilders:(int)a4 createIfNeeded:;
- (uint64_t)_aggregationIntervalAdjustedMorningIndexFromMorningIndex:(void *)a1;
- (uint64_t)_enumerateSleepDaySummariesForMorningIndexRanges:(uint64_t)a3 summariesToCache:(void *)a4 error:(void *)a5 handler:(void *)a6;
- (void)_closeBuilders:(uint64_t)a3 fromIndex:(uint64_t)a4 toIndex:(void *)a5 summariesToCache:(void *)a6 handler:(_BYTE *)a7 stop:;
@end

@implementation HDSleepDaySummaryEnumerator

- (HDSleepDaySummaryEnumerator)initWithProfile:(id)a3 cachingSession:(id)a4 gregorianCalendar:(id)a5 morningIndexRange:(id)a6 ascending:(BOOL)a7 options:(unint64_t)a8 debugIdentifier:(id)a9
{
  var1 = a6.var1;
  var0 = a6.var0;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v30 = a9;
  v31.receiver = self;
  v31.super_class = HDSleepDaySummaryEnumerator;
  v18 = [(HDSleepDaySummaryEnumerator *)&v31 init];
  v19 = v18;
  if (v18)
  {
    v29 = v16;
    objc_storeWeak(&v18->_profile, v15);
    objc_storeStrong(&v19->_cachingSession, a4);
    objc_storeStrong(&v19->_gregorianCalendar, a5);
    v19->_morningIndexRange.start = var0;
    v19->_morningIndexRange.duration = var1;
    v19->_ascending = a7;
    v19->_options = a8;
    objc_storeStrong(&v19->_debugIdentifier, a9);
    v20 = [MEMORY[0x277CBEAB8] hk_componentsWithDayIndex:var0 calendar:v17];
    v21 = [v20 date];
    v22 = [v17 component:512 fromDate:v21];

    v19->_cachedFirstDayOfWeek = var0 - v22 + 1;
    options = v19->_options;
    if ((options & 4) != 0 || (options & 0x18) == 0)
    {
      v24 = [HDStatisticsCollectionCalculatorCachingSourceOrderProvider sleepSourceOrderProviderForProfile:v15, v16];
    }

    else
    {
      v24 = 0;
    }

    sourceOrderProvider = v19->_sourceOrderProvider;
    v19->_sourceOrderProvider = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    adjustedMorningIndexCache = v19->_adjustedMorningIndexCache;
    v19->_adjustedMorningIndexCache = v26;

    v16 = v29;
  }

  return v19;
}

- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    debugIdentifier = self->_debugIdentifier;
    start = self->_morningIndexRange.start;
    duration = self->_morningIndexRange.duration;
    v13 = v9;
    v14 = NSStringFromHKDayIndexRange();
    ascending = self->_ascending;
    v16 = HKStringFromBool();
    options = self->_options;
    v18 = HKSleepDaySummaryQueryOptionsStringRepresentation();
    *buf = 138544386;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    *&buf[22] = 2114;
    v99 = v14;
    *v100 = 2114;
    *&v100[2] = v16;
    *&v100[10] = 2114;
    *&v100[12] = v18;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Enumerate with range: %{public}@, ascending: %{public}@, options: %{public}@", buf, 0x34u);
  }

  v19 = self->_cachingSession;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v21 = [WeakRetained daemon];
  v22 = [v21 behavior];
  v23 = [v22 supportsCachedSleepDaySummaryQueries];
  if (v19)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 & 1) == 0)
  {
    _HKInitializeLogging();
    v30 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = self->_debugIdentifier;
      *buf = 138543618;
      *&buf[4] = v32;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      v34 = v32;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Caching not enabled; enumerating without caching.", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (self->_morningIndexRange.start != *MEMORY[0x277CCBBF8] || self->_morningIndexRange.duration != *(MEMORY[0x277CCBBF8] + 8))
  {
    v36 = objc_loadWeakRetained(&self->_profile);
    v37 = [v36 database];
    v95 = 0;
    v89 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:v37 error:&v95];
    v38 = v95;

    if (!v89)
    {
      _HKInitializeLogging();
      v54 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v79 = v54;
        v80 = objc_opt_class();
        v81 = self->_debugIdentifier;
        *buf = 138543874;
        *&buf[4] = v80;
        *&buf[12] = 2114;
        *&buf[14] = v81;
        *&buf[22] = 2114;
        v99 = v38;
        v82 = v80;
        _os_log_error_impl(&dword_228986000, v79, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error checking for max row ID to serve as cache anchor: %{public}@", buf, 0x20u);
      }

      v55 = v38;
      v39 = v55;
      if (v55)
      {
        if (a3)
        {
          v56 = v55;
          v35 = 0;
          *a3 = v39;
        }

        else
        {
          _HKLogDroppedError();
          v35 = 0;
        }

        v53 = v39;
        goto LABEL_52;
      }

      v53 = 0;
      goto LABEL_49;
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94 = v38;
    v40 = [(HDSampleAggregateCachingSession *)v19 cachesExistWithError:&v94];
    v41 = v94;

    if (v40 == 1)
    {
      _HKInitializeLogging();
      v57 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
        v59 = objc_opt_class();
        v60 = self->_debugIdentifier;
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        v61 = v59;
        _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Cache exists! Returning cached sleep day summaries.", buf, 0x16u);
      }

      v92 = v41;
      v62 = v19;
      v88 = v89;
      v63 = v39;
      v64 = v5;
      v96[0] = 0;
      v96[1] = v96;
      v96[2] = 0x2020000000;
      v97 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __96__HDSleepDaySummaryEnumerator__enumerateCacheWithSession_anchor_summariesToCache_error_handler___block_invoke;
      v99 = &unk_278617208;
      *v100 = self;
      v65 = v64;
      *&v100[16] = v65;
      v101 = v96;
      v66 = v63;
      *&v100[8] = v66;
      v87 = [(HDSampleAggregateCachingSession *)v62 activateWithError:&v92 cacheHandler:buf];

      _Block_object_dispose(v96, 8);
      v48 = v92;

      v41 = v48;
      if (v87)
      {
LABEL_21:
        v91 = v48;
        v39 = v39;
        v49 = v19;
        v50 = v89;
        if ([v39 count])
        {
          if (v40 == 2 && ![(HDSampleAggregateCachingSession *)v49 activateWithError:&v91 cacheHandler:&__block_literal_global_338])
          {
            v52 = 0;
            goto LABEL_26;
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __101__HDSleepDaySummaryEnumerator__cacheSleepDaySummaries_cachingSession_cacheAnchor_isEmptyCache_error___block_invoke_2;
          v99 = &unk_278613630;
          *v100 = self;
          v51 = v39;
          *&v100[8] = v51;
          *&v100[16] = v50;
          [(HDSampleAggregateCachingSession *)v49 insertCaches:v51 anchor:*&v100[16] completion:buf];
        }

        v52 = 1;
LABEL_26:

        v53 = v91;
        if (v52)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __53__HDSleepDaySummaryEnumerator__finishCachingSession___block_invoke;
          v99 = &unk_2786130B0;
          *v100 = self;
          [(HDSampleAggregateCachingSession *)v49 finishWithCompletion:buf];
          v35 = 1;
LABEL_52:

          goto LABEL_53;
        }

        _HKInitializeLogging();
        v70 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v83 = v70;
          v84 = objc_opt_class();
          v85 = self->_debugIdentifier;
          *buf = 138543874;
          *&buf[4] = v84;
          *&buf[12] = 2114;
          *&buf[14] = v85;
          *&buf[22] = 2114;
          v99 = v53;
          v86 = v84;
          _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error caching sleep day summaries: %{public}@", buf, 0x20u);
        }

        v71 = v53;
        v53 = v71;
        if (v71)
        {
          if (a3)
          {
            v72 = v71;
            *a3 = v53;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_49:
        v35 = 0;
        goto LABEL_52;
      }
    }

    else if (v40 == 2)
    {
      _HKInitializeLogging();
      v42 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = objc_opt_class();
        v45 = self->_debugIdentifier;
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        v46 = v44;
        _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Cache does not exist. Enumerating sleep day summaries from scratch.", buf, 0x16u);
      }

      v93 = v41;
      v47 = [(HDSleepDaySummaryEnumerator *)self _enumerateSleepDaySummariesForMorningIndexRanges:self->_morningIndexRange.duration summariesToCache:v39 error:&v93 handler:v5];
      v48 = v93;

      v41 = v48;
      if (v47)
      {
        goto LABEL_21;
      }
    }

    _HKInitializeLogging();
    v67 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v75 = v67;
      v76 = objc_opt_class();
      v77 = self->_debugIdentifier;
      *buf = 138543874;
      *&buf[4] = v76;
      *&buf[12] = 2114;
      *&buf[14] = v77;
      *&buf[22] = 2114;
      v99 = v41;
      v78 = v76;
      _os_log_error_impl(&dword_228986000, v75, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error enumerating sleep day summaries: %{public}@", buf, 0x20u);
    }

    v68 = v41;
    v53 = v68;
    if (v68)
    {
      if (a3)
      {
        v69 = v68;
        *a3 = v53;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_49;
  }

  _HKInitializeLogging();
  v25 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = objc_opt_class();
    v28 = self->_debugIdentifier;
    *buf = 138543618;
    *&buf[4] = v27;
    *&buf[12] = 2114;
    *&buf[14] = v28;
    v29 = v27;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Client specified HKDayIndexRangeZero; enumerating without caching.", buf, 0x16u);
  }

LABEL_14:
  v35 = [(HDSleepDaySummaryEnumerator *)self _enumerateSleepDaySummariesForMorningIndexRanges:self->_morningIndexRange.duration summariesToCache:0 error:a3 handler:v5];
LABEL_53:

  v73 = *MEMORY[0x277D85DE8];
  return v35;
}

- (uint64_t)_enumerateSleepDaySummariesForMorningIndexRanges:(uint64_t)a3 summariesToCache:(void *)a4 error:(void *)a5 handler:(void *)a6
{
  v146 = *MEMORY[0x277D85DE8];
  v110 = a4;
  v111 = a6;
  if (!a1)
  {
    v71 = 0;
    goto LABEL_97;
  }

  v109 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(a1 + 24);
  v11 = a2 == *MEMORY[0x277CCBBF8] && a3 == *(MEMORY[0x277CCBBF8] + 8);
  v12 = v11;
  v107 = v12;
  v105 = a3;
  v106 = a2;
  v117 = a1;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndexRange:a2 calendar:{a3, v10}];
    v15 = v14;
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CCA970]);
      v17 = [v15 startDate];
      v18 = [v17 dateByAddingTimeInterval:-172800.0];
      v19 = [v15 endDate];
      v13 = [v16 initWithStartDate:v18 endDate:v19];
    }

    else
    {
      v13 = 0;
    }

    a3 = v105;
    a2 = v106;
  }

  v20 = v13;
  v112 = v20;
  if ((*(a1 + 56) & 2) != 0)
  {
  }

  else
  {
    v113 = +[HDDataEntity hk_timeZoneEncodingOptions];
    v115 = [v112 startDate];
    v21 = a1;
    v22 = *(a1 + 80);
    *(a1 + 80) = 0;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = *(a1 + 72);
    *(a1 + 72) = v23;

    if (v115)
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v25 = *MEMORY[0x277CCCDD0];
      v26 = HKSleepScheduleWeekdayArrayFromWeekdays();
      v27 = 0;
      v28 = [v26 countByEnumeratingWithState:&v137 objects:buf count:16];
      if (v28)
      {
        v29 = *v138;
        while (2)
        {
          v30 = 0;
          v31 = v27;
          do
          {
            if (*v138 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v137 + 1) + 8 * v30);
            v33 = [v32 integerValue];
            WeakRetained = objc_loadWeakRetained((v117 + 8));
            v132 = v31;
            v35 = [HDSleepScheduleEntity mostRecentSleepScheduleForWeekday:v33 beforeDate:v115 profile:WeakRetained encodingOptions:v113 error:&v132];
            v27 = v132;

            [*(v117 + 72) setObject:v35 forKeyedSubscript:v32];
            if (v35)
            {
              v36 = 1;
            }

            else
            {
              v36 = v27 == 0;
            }

            if (!v36)
            {
              v76 = *(v117 + 72);
              *(v117 + 72) = 0;

              if (a5)
              {
                v77 = v27;
                *a5 = v27;
              }

              else
              {
                _HKLogDroppedError();
              }

              goto LABEL_94;
            }

            ++v30;
            v31 = v27;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v137 objects:buf count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v37 = [MEMORY[0x277CCD720] sleepDurationGoalType];
      v38 = objc_loadWeakRetained((v117 + 8));
      v39 = HDSampleEntityPredicateForStartDate(3);
      v128 = v27;
      v40 = [(HDSampleEntity *)HDQuantitySampleEntity mostRecentSampleWithType:v37 profile:v38 encodingOptions:v113 predicate:v39 anchor:0 error:&v128];
      v26 = v128;

      v41 = *(v117 + 80);
      *(v117 + 80) = v40;

      if (!*(v117 + 72))
      {
        v42 = v26;
        if (!v26)
        {
          v26 = 0;
          v27 = 0;
LABEL_94:

LABEL_95:
          v71 = 0;
          goto LABEL_96;
        }

LABEL_79:
        if (a5)
        {
          v93 = v42;
          *a5 = v26;
        }

        else
        {
          _HKLogDroppedError();
        }

        v27 = v26;
        goto LABEL_94;
      }

      v42 = v26;
      if (!*(v117 + 80) && v26)
      {
        v43 = v26;
        goto LABEL_79;
      }

      v21 = v117;
    }

    v141 = 0;
    v94 = objc_loadWeakRetained((v21 + 8));
    v95 = [v94 userCharacteristicsManager];
    v96 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
    v97 = [v95 userCharacteristicForType:v96 error:&v141];

    if (v97)
    {
      v98 = [v97 hk_dayIndexByAddingYears:18 gregorianCalendar:*(v117 + 24)];
    }

    else
    {
      v98 = 0;
    }

    v27 = v141;
    v99 = *(v117 + 96);
    *(v117 + 96) = v98;

    if (!*(v117 + 96) && v27)
    {
      if (a5)
      {
        v100 = v27;
        *a5 = v27;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_95;
    }

    a3 = v105;
    a2 = v106;
    a1 = v117;
  }

  v136 = 0;
  *&v137 = 0;
  *(&v137 + 1) = &v137;
  v138 = 0x2020000000uLL;
  if ((v107 & 1) == 0)
  {
    v44 = a3 + a2 - 1;
    if (a3 <= 0)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(a1 + 48))
    {
      v45 = a2;
    }

    else
    {
      v45 = v44;
    }

    v46 = [(HDSleepDaySummaryEnumerator *)a1 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v45];
    *(*(&v137 + 1) + 24) = v46;
  }

  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v119 = __111__HDSleepDaySummaryEnumerator__enumerateSleepDaySummariesForMorningIndexRanges_summariesToCache_error_handler___block_invoke;
  v120 = &unk_2786171E0;
  v121 = a1;
  v116 = v109;
  v122 = v116;
  v125 = &v137;
  v126 = &v128;
  v114 = v110;
  v123 = v114;
  v103 = v111;
  v124 = v103;
  v127 = &v132;
  v47 = v112;
  v48 = v118;
  if ((*(a1 + 56) & 2) == 0)
  {
    v49 = v47;
    v50 = [objc_opt_class() sleepTypesQueryDescriptorsForDateInterval:v49 options:{*(v117 + 56), v103}];

    v51 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:*(v117 + 48)];
    v52 = [HDMultiTypeSortedSampleIterator alloc];
    *buf = v51;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
    v54 = objc_loadWeakRetained((v117 + 8));
    v55 = [(HDMultiTypeSortedSampleIterator *)v52 initWithQueryDescriptors:v50 includeDeletedObjects:0 anchor:0 sortDescriptors:v53 bufferSize:100 profile:v54];

    *buf = 0;
    LODWORD(v54) = [(HDMultiTypeSortedSampleIterator *)v55 advanceWithError:buf];
    v56 = *buf;
    if (v54)
    {
      while ((v136 & 1) == 0)
      {
        v57 = objc_autoreleasePoolPush();
        v58 = [(HDMultiTypeSortedSampleIterator *)v55 sample];
        v119(v48, v58, &v136);

        objc_autoreleasePoolPop(v57);
        *buf = v56;
        LOBYTE(v57) = [(HDMultiTypeSortedSampleIterator *)v55 advanceWithError:buf];
        v59 = *buf;

        v56 = v59;
        if ((v57 & 1) == 0)
        {
          if (v59)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }
    }

    v59 = v56;
    if (v56)
    {
LABEL_50:
      if (([v59 hk_isHealthKitErrorWithCode:900] & 1) == 0)
      {
        v80 = v59;
        v75 = 0;
        v74 = v59;
        goto LABEL_59;
      }
    }

LABEL_51:
    v74 = 0;
    v75 = 1;
LABEL_59:
    LOBYTE(v141) = v75;

    v71 = v141;
    goto LABEL_60;
  }

  v60 = MEMORY[0x277CCD0C0];
  v61 = *MEMORY[0x277CCBAB8];
  v62 = v47;
  v63 = [v60 categoryTypeForIdentifier:{v61, v103}];
  v64 = [objc_opt_class() sleepAnalysisQueryDescriptorForDateInterval:v62 options:*(v117 + 56)];

  v65 = objc_loadWeakRetained((v117 + 8));
  v66 = [HDSampleEntity entityEnumeratorWithType:v63 profile:v65];

  v67 = [v64 samplePredicate];
  [v66 setPredicate:v67];

  v68 = [v64 encodingOptions];
  [v66 addEncodingOptionsFromDictionary:v68];

  v69 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:*(v117 + 48)];
  *buf = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
  [v66 setOrderingTerms:v70];

  v141 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __89__HDSleepDaySummaryEnumerator__enumerateSleepSamplesWithDateInterval_stop_error_handler___block_invoke;
  v143 = &unk_278617230;
  v144 = v48;
  v145 = &v136;
  v71 = [v66 enumerateWithError:&v141 handler:buf];
  v72 = v141;
  v73 = v72;
  if (v71)
  {
    v74 = 0;
  }

  else
  {
    v78 = v72;
    v74 = v78;
    if (v78)
    {
      v79 = v78;
    }
  }

LABEL_60:
  v81 = v74;
  v82 = v81;
  if ((v71 & 1) == 0)
  {
    v89 = v81;
    v90 = v89;
    if (v89)
    {
      if (a5)
      {
        v91 = v89;
        *a5 = v90;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_71;
  }

  _HKInitializeLogging();
  v83 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v84 = objc_opt_class();
    v85 = *(v117 + 64);
    v86 = v133[3];
    *buf = 138543874;
    *&buf[4] = v84;
    *&buf[12] = 2114;
    *&buf[14] = v85;
    *&buf[22] = 2050;
    v143 = v86;
    v87 = v84;
    _os_log_impl(&dword_228986000, v83, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Enumerated %{public}ld samples", buf, 0x20u);
  }

  if ((v136 & 1) == 0)
  {
    if (v107)
    {
      v88 = v129[3];
    }

    else
    {
      v88 = v106;
      if (*(v117 + 48) == 1)
      {
        if (v105 <= 0)
        {
          v92 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_77;
        }

        v88 = v105 + v106 - 1;
      }
    }

    v92 = v88;
    if (v88)
    {
LABEL_77:
      [(HDSleepDaySummaryEnumerator *)v117 _closeBuilders:v116 fromIndex:*(*(&v137 + 1) + 24) toIndex:v92 summariesToCache:v114 handler:v104 stop:&v136];
    }
  }

LABEL_71:

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(&v137, 8);
LABEL_96:

LABEL_97:
  v101 = *MEMORY[0x277D85DE8];
  return v71;
}

- (uint64_t)_aggregationIntervalAdjustedMorningIndexFromMorningIndex:(void *)a1
{
  v2 = a2;
  v4 = a1[14];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = a1[7];
    if ((v7 & 0x10) != 0)
    {
      v8 = [MEMORY[0x277CBEAA8] hk_sleepMonthStartForMorningIndex:v2 calendar:a1[3]];
    }

    else
    {
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x277CBEAA8] hk_sleepWeekStartForMorningIndex:v2 calendar:a1[3]];
    }

    v9 = v8;
    v10 = [v8 hk_morningIndexWithCalendar:a1[3]];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v12 = a1[14];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    [v12 setObject:v11 forKeyedSubscript:v13];

    v2 = v10;
    goto LABEL_8;
  }

  v2 = [v6 integerValue];
LABEL_8:

  return v2;
}

void __111__HDSleepDaySummaryEnumerator__enumerateSleepDaySummariesForMorningIndexRanges_summariesToCache_error_handler___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1[8] + 8);
  v8 = *(a1[9] + 8);
  v9 = *(v5 + 24);
  v10 = a1[6];
  v11 = a1[7];
  v12 = a2;
  v53 = v6;
  v56 = v9;
  v55 = v10;
  v54 = v11;
  v51 = v8;
  v52 = v7;
  v13 = *(v7 + 24);
  v50 = *(v8 + 24);
  if (*(v5 + 48))
  {
    [v12 startDate];
  }

  else
  {
    [v12 endDate];
  }
  v14 = ;
  v15 = [v14 hk_morningIndexWithCalendar:v56];

  v16 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v15];
  v17 = v16;
  if (*(v5 + 48))
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = v16 + 1;
  }

  v19 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v18];
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v17;
  }

  if (*(v5 + 48) == 1)
  {
    if (v17 <= v20)
    {
LABEL_12:
      v49 = v20;
      goto LABEL_15;
    }
  }

  else if (v17 >= v20)
  {
    goto LABEL_12;
  }

  [(HDSleepDaySummaryEnumerator *)v5 _closeBuilders:v53 fromIndex:v20 toIndex:v19 summariesToCache:v55 handler:v54 stop:a3];
  v49 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v17];
LABEL_15:
  v21 = [v12 sampleType];
  v22 = [v21 code];

  if (v22 == 198)
  {
    v23 = v12;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    [v23 weekdays];
    v24 = HKSleepScheduleWeekdayArrayFromWeekdays();
    v25 = [v24 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v58;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v57 + 1) + 8 * i);
          if ([v29 integerValue])
          {
            [*(v5 + 72) setObject:v23 forKeyedSubscript:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v26);
    }
  }

  v30 = [v12 sampleType];
  v31 = [v30 code];

  if (v31 == 197)
  {
    objc_storeStrong((v5 + 80), a2);
  }

  v32 = [v12 hk_morningIndexRangeWithCalendarWithCalendar:v56];
  v34 = v33;
  if (*(v5 + 32) != *MEMORY[0x277CCBBF8] || *(v5 + 40) != *(MEMORY[0x277CCBBF8] + 8))
  {
    v32 = HKIntersectionDayIndexRange();
    v34 = v35;
  }

  v36 = v12;
  v37 = v53;
  v38 = v32 + v34;
  if (v34 >= 1)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = v32;
    do
    {
      v41 = [(HDSleepDaySummaryEnumerator *)v5 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:v40];
      if (v41 != v39)
      {
        v42 = v41;
        v43 = [(HDSleepDaySummaryEnumerator *)v5 _updatedBuilderForMorningIndex:v41 fromBuilders:v37 createIfNeeded:1];
        [v43 addOrderedSample:v36];

        v39 = v42;
      }

      ++v40;
    }

    while (v40 < v38);
  }

  if (v50 >= v32)
  {
    v44 = v32;
  }

  else
  {
    v44 = v50;
  }

  v45 = v38 - 1;
  if (v34 <= 0)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v50 > v45)
  {
    v45 = v50;
  }

  if (*(v5 + 48) == 1)
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  *(v52 + 24) = v49;
  *(v51 + 24) = v46;

  ++*(*(a1[10] + 8) + 24);
  v47 = *MEMORY[0x277D85DE8];
}

- (void)_closeBuilders:(uint64_t)a3 fromIndex:(uint64_t)a4 toIndex:(void *)a5 summariesToCache:(void *)a6 handler:(_BYTE *)a7 stop:
{
  v76 = *MEMORY[0x277D85DE8];
  v65 = a2;
  v63 = a5;
  v62 = a6;
  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC320];
  v13 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v54 = v13;
    v55 = objc_opt_class();
    v56 = *(a1 + 64);
    v57 = *(a1 + 48);
    v58 = v55;
    v59 = HKStringFromBool();
    *buf = 138544386;
    v67 = v55;
    v68 = 2114;
    v69 = v56;
    v12 = MEMORY[0x277CCC320];
    v70 = 2050;
    v71 = a3;
    v72 = 2050;
    v73 = a4;
    v74 = 2112;
    v75 = v59;
    _os_log_debug_impl(&dword_228986000, v54, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Closing builders from %{public}ld to %{public}ld (ascending = %@)", buf, 0x34u);
  }

  if (*(a1 + 48))
  {
    v15 = a3 <= a4;
  }

  else
  {
    v15 = a3 >= a4;
  }

  if (v15)
  {
    v17 = *MEMORY[0x277CCBBF8];
    v16 = *(MEMORY[0x277CCBBF8] + 8);
    *&v14 = 138543874;
    v60 = v14;
    v61 = a4;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = v19 == v17 && v20 == v16;
      if (v21 || ((v22 = __OFSUB__(a3, v19), v23 = a3 - v19, v23 < 0 == v22) ? (v24 = v23 < v20) : (v24 = 0), v24))
      {
        v33 = *(a1 + 56);
        if ((v33 & 0x10) != 0)
        {
          v39 = [(HDSleepDaySummaryEnumerator *)a1 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:a3];
          if (a3 == v39)
          {
            goto LABEL_24;
          }

          v46 = v39;
          _HKInitializeLogging();
          v47 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v26 = v47;
            v48 = objc_opt_class();
            v49 = *(a1 + 64);
            *buf = 138544130;
            v67 = v48;
            v68 = 2114;
            v69 = v49;
            v70 = 2050;
            v71 = a3;
            v72 = 2050;
            v73 = v46;
            v29 = v48;
            v30 = v26;
            v31 = "[%{public}@:%{public}@] Aggregating monthly! Skipping day index %{public}ld because it's beyond start of month index %{public}ld";
LABEL_29:
            v32 = 42;
LABEL_30:
            _os_log_debug_impl(&dword_228986000, v30, OS_LOG_TYPE_DEBUG, v31, buf, v32);
          }
        }

        else
        {
          if ((v33 & 8) == 0 || (v34 = [(HDSleepDaySummaryEnumerator *)a1 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:a3], a3 == v34))
          {
LABEL_24:
            v40 = v16;
            v41 = v17;
            v42 = [(HDSleepDaySummaryEnumerator *)a1 _updatedBuilderForMorningIndex:a3 fromBuilders:v65 createIfNeeded:(*(a1 + 56) & 1) == 0];
            v43 = v42;
            if (v42)
            {
              v44 = [v42 createDaySummary];
              v45 = [v44 periods];
              if ([v45 count])
              {

LABEL_32:
                v62[2](v62, v44, a7);
                if (v63)
                {
                  [v63 addObject:v44];
                }

                v51 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, v60}];
                [v65 setObject:0 forKeyedSubscript:v51];

                if (*a7)
                {

                  objc_autoreleasePoolPop(v18);
                  break;
                }
              }

              else
              {
                v50 = *(a1 + 56);

                if ((v50 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              a4 = v61;
              v12 = MEMORY[0x277CCC320];
            }

            v17 = v41;
            v16 = v40;
            goto LABEL_37;
          }

          v35 = v34;
          _HKInitializeLogging();
          v36 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v26 = v36;
            v37 = objc_opt_class();
            v38 = *(a1 + 64);
            *buf = 138544130;
            v67 = v37;
            v68 = 2114;
            v69 = v38;
            v70 = 2050;
            v71 = a3;
            v72 = 2050;
            v73 = v35;
            v29 = v37;
            v30 = v26;
            v31 = "[%{public}@:%{public}@] Aggregating weekly! Skipping day index %{public}ld because it's beyond start of week index %{public}ld";
            goto LABEL_29;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v26 = v25;
          v27 = objc_opt_class();
          v28 = *(a1 + 64);
          *buf = v60;
          v67 = v27;
          v68 = 2114;
          v69 = v28;
          v70 = 2050;
          v71 = a3;
          v29 = v27;
          v30 = v26;
          v31 = "[%{public}@:%{public}@] Skipping index out of range for morning index %{public}ld";
          v32 = 32;
          goto LABEL_30;
        }
      }

LABEL_37:
      objc_autoreleasePoolPop(v18);
      if (*(a1 + 48))
      {
        ++a3;
      }

      else
      {
        --a3;
      }

      if (*(a1 + 48))
      {
        v52 = a3 <= a4;
      }

      else
      {
        v52 = a3 >= a4;
      }
    }

    while (v52);
  }

  v53 = *MEMORY[0x277D85DE8];
}

BOOL __96__HDSleepDaySummaryEnumerator__enumerateCacheWithSession_anchor_summariesToCache_error_handler___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(a1 + 32);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = __OFSUB__(a4, v12);
  v14 = a4 - v12;
  v15 = v14 < 0 == v13 && v14 < v11;
  v16 = MEMORY[0x277CCC320];
  if (!v15)
  {
    _HKInitializeLogging();
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_FAULT))
    {
      v43 = *(a1 + 32);
      v44 = v17;
      v45 = objc_opt_class();
      v46 = *(a1 + 32);
      v51 = v46[8];
      v47 = v46[4];
      v48 = v46[5];
      v50 = v45;
      v49 = NSStringFromHKDayIndexRange();
      *aBlock = 138544386;
      *&aBlock[4] = v45;
      *&aBlock[12] = 2114;
      *&aBlock[14] = v51;
      *&aBlock[22] = 2050;
      v60 = a4;
      *v61 = 2114;
      *&v61[2] = v49;
      *&v61[10] = 2114;
      *&v61[12] = v9;
      _os_log_fault_impl(&dword_228986000, v44, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Error: Summary for morningIndex %{public}ld is out of bounds for expected morningIndexRange %{public}@: %{public}@", aBlock, 0x34u);
    }
  }

  _HKInitializeLogging();
  v18 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 32);
    v36 = v18;
    v37 = objc_opt_class();
    v38 = *(*(a1 + 32) + 64);
    v39 = v37;
    v40 = HKStringFromBool();
    *aBlock = 138544386;
    *&aBlock[4] = v37;
    *&aBlock[12] = 2114;
    *&aBlock[14] = v38;
    *&aBlock[22] = 2050;
    v60 = a4;
    *v61 = 2114;
    *&v61[2] = v40;
    *&v61[10] = 2114;
    *&v61[12] = v9;
    _os_log_debug_impl(&dword_228986000, v36, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Summary returned for dayIndex: %{public}ld, stale: %{public}@, summary: %{public}@", aBlock, 0x34u);
  }

  if (!v9 || a3)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__29;
      v57 = __Block_byref_object_dispose__29;
      v58 = 0;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = __69__HDSleepDaySummaryEnumerator__sleepDaySummaryForMorningIndex_error___block_invoke;
      v60 = &unk_2786172C0;
      *&v61[8] = &v53;
      *&v61[16] = sel__sleepDaySummaryForMorningIndex_error_;
      *v61 = v22;
      v23 = _Block_copy(aBlock);
      v52 = 0;
      v24 = [(HDSleepDaySummaryEnumerator *)v22 _enumerateSleepDaySummariesForMorningIndexRanges:a4 summariesToCache:1 error:0 handler:&v52, v23];
      v25 = v52;
      v26 = v25;
      if (v24)
      {
        v22 = 0;
        v27 = v54[5];
      }

      else
      {
        v28 = v25;
        v22 = v28;
        if (v28)
        {
          v29 = v28;
        }

        v27 = 0;
      }

      v21 = v27;

      _Block_object_dispose(&v53, 8);
    }

    else
    {
      v21 = 0;
    }

    v30 = v22;

    v20 = v21 != 0;
    if (v21)
    {
      v31 = *(*(a1 + 56) + 8);
      (*(*(a1 + 48) + 16))();
      [*(a1 + 40) addObject:v21];
    }

    else
    {
      v32 = v30;
      v33 = v32;
      if (v32)
      {
        if (a5)
        {
          v34 = v32;
          *a5 = v33;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v19 = *(*(a1 + 56) + 8);
    (*(*(a1 + 48) + 16))();
    v20 = 1;
    v21 = v9;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __89__HDSleepDaySummaryEnumerator__enumerateSleepSamplesWithDateInterval_stop_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v4);

  return 1;
}

- (id)_updatedBuilderForMorningIndex:(void *)a3 fromBuilders:(int)a4 createIfNeeded:
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(HDSleepDaySummaryEnumerator *)a1 _aggregationIntervalAdjustedMorningIndexFromMorningIndex:a2];
  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (!v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
    {
      v42 = v13;
      v43 = objc_opt_class();
      v44 = *(a1 + 64);
      *buf = 138543874;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      *&buf[22] = 2050;
      v51 = v8;
      v45 = v43;
      _os_log_debug_impl(&dword_228986000, v42, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Creating builder for morning index %{public}ld", buf, 0x20u);
    }

    v14 = v8 - *(a1 + 88) + *MEMORY[0x277CCBC00];
    v15 = HKSleepScheduleWeekdayFromWeekdayComponent();
    v16 = *(a1 + 56);
    v17 = (v16 >> 5) & 2 | (v16 >> 2) & 1 | (v16 >> 4) & 8;
    if ((v16 & 2) == 0 || ([MEMORY[0x277CCDD30] sharedBehavior], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "features"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "timeInBedTracking"), v19, v18, v20))
    {
      v17 |= 4uLL;
    }

    v21 = *(a1 + 56);
    if ((v21 & 0x10) != 0)
    {
      v25 = [HDSleepIntervalSummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v26 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v8 calendar:*(a1 + 24)];
      [*(a1 + 24) rangeOfUnit:16 inUnit:8 forDate:v26];
      v28 = v27;

      v29 = *(a1 + 24);
      v30 = v28;
      v9 = 0x277CCA000;
      v24 = [(HDSleepDaySummaryBuilder *)v25 initWithProfile:WeakRetained dayIndexRange:v8 weekday:v30 options:v15 eighteenthBirthdayDayIndex:v17 gregorianCalendar:*(a1 + 96) sourceOrderProvider:v29, *(a1 + 104), *buf, *&buf[16], v51];
    }

    else if ((v21 & 8) != 0)
    {
      v31 = [HDSleepIntervalSummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v32 = *(a1 + 24);
      v24 = [(HDSleepDaySummaryBuilder *)v31 initWithProfile:WeakRetained dayIndexRange:v8 weekday:7 options:v15 eighteenthBirthdayDayIndex:v17 gregorianCalendar:*(a1 + 96) sourceOrderProvider:v32, *(a1 + 104), *buf, *&buf[16], v51];
    }

    else
    {
      v22 = [HDSleepDaySummaryBuilder alloc];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v24 = [(HDSleepDaySummaryBuilder *)v22 initWithProfile:WeakRetained morningIndex:v8 weekday:v15 options:v17 eighteenthBirthdayDayIndex:*(a1 + 96) gregorianCalendar:*(a1 + 24) sourceOrderProvider:*(a1 + 104)];
    }

    v11 = v24;

    v33 = [*(v9 + 2992) numberWithInteger:v8];
    [v7 setObject:v11 forKeyedSubscript:v33];
  }

  if (v11 && (*(a1 + 56) & 2) == 0)
  {
    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
    {
      v46 = v34;
      v47 = objc_opt_class();
      v48 = *(a1 + 64);
      *buf = 138543874;
      *&buf[4] = v47;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      *&buf[22] = 2050;
      v51 = v8;
      v49 = v47;
      _os_log_debug_impl(&dword_228986000, v46, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Updating builder with schedule and goal for morning index %{public}ld", buf, 0x20u);
    }

    v35 = a2 - *(a1 + 88) + *MEMORY[0x277CCBC00];
    v36 = HKSleepScheduleWeekdayFromWeekdayComponent();
    v37 = *(a1 + 72);
    v38 = [*(v9 + 2992) numberWithUnsignedInteger:v36];
    v39 = [v37 objectForKeyedSubscript:v38];

    if (v39)
    {
      [v11 addOrderedSample:v39];
    }

    if (*(a1 + 80))
    {
      [v11 addOrderedSample:?];
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)sleepAnalysisQueryDescriptorForDateInterval:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v7 = [&unk_283CAE800 hk_map:&__block_literal_global_33];
  v8 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v7];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
  if (v5)
  {
    v10 = HDSampleEntityPredicateForDateInterval(v5, v6);
    [v9 addObject:v10];
  }

  if ((v4 & 0x20) != 0)
  {
    v11 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
    [v9 addObject:v11];
  }

  v12 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];

  v13 = [HDQueryDescriptor alloc];
  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  v21[0] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = [v14 initWithArray:v15];
  v17 = +[HDDataEntity hk_timeZoneEncodingOptions];
  v18 = [(HDQueryDescriptor *)v13 initWithSampleTypes:v16 encodingOptions:v17 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v12];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)sleepTypesQueryDescriptorsForDateInterval:(id)a3 options:(unint64_t)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [a1 sleepAnalysisQueryDescriptorForDateInterval:v6 options:a4];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v7 initWithArray:v9];

  if ((a4 & 2) == 0)
  {
    v11 = [MEMORY[0x277CCD8D8] dataTypeWithCode:198];
    v19[0] = v11;
    v12 = [MEMORY[0x277CCD830] dataTypeWithCode:197];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__HDSleepDaySummaryEnumerator_sleepTypesQueryDescriptorsForDateInterval_options___block_invoke;
    v17[3] = &unk_278617278;
    v18 = v6;
    v14 = [v13 hk_map:v17];
    [v10 addObjectsFromArray:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

HDQueryDescriptor *__81__HDSleepDaySummaryEnumerator_sleepTypesQueryDescriptorsForDateInterval_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = HDSampleEntityPredicateForDateInterval(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [HDQueryDescriptor alloc];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v8 = +[HDDataEntity hk_timeZoneEncodingOptions];
  v9 = [(HDQueryDescriptor *)v6 initWithSampleTypes:v7 encodingOptions:v8 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v5];

  return v9;
}

void __53__HDSleepDaySummaryEnumerator__finishCachingSession___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v14 = *(a1 + 32);
    v9 = v6;
    v15 = objc_opt_class();
    v16 = *(*(a1 + 32) + 64);
    v17 = 138543874;
    v18 = v15;
    v19 = 2114;
    v20 = v16;
    v21 = 2114;
    v22 = v5;
    v12 = v15;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error finishing caching session: %{public}@", &v17, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = objc_opt_class();
    v11 = *(*(a1 + 32) + 64);
    v17 = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v12 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Finished caching session!", &v17, 0x16u);
LABEL_4:
  }

LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
}

void __101__HDSleepDaySummaryEnumerator__cacheSleepDaySummaries_cachingSession_cacheAnchor_isEmptyCache_error___block_invoke_2(void *a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v17 = a1[4];
    v9 = v6;
    v18 = objc_opt_class();
    v19 = *(a1[4] + 64);
    v21 = 138543874;
    v22 = v18;
    v23 = 2114;
    v24 = v19;
    v25 = 2114;
    v26 = v5;
    v20 = v18;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error updating cache: %{public}@", &v21, 0x20u);

    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = v6;
    v10 = objc_opt_class();
    v11 = a1[5];
    v12 = *(a1[4] + 64);
    v13 = v10;
    v14 = [v11 count];
    v15 = a1[6];
    v21 = 138544130;
    v22 = v10;
    v23 = 2114;
    v24 = v12;
    v25 = 2050;
    v26 = v14;
    v27 = 2114;
    v28 = v15;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Updated cache with %{public}ld sleep day summaries (anchor: %{public}@)", &v21, 0x2Au);

LABEL_4:
  }

LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
}

void __69__HDSleepDaySummaryEnumerator__sleepDaySummaryForMorningIndex_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"HDSleepDaySummaryEnumerator.m" lineNumber:845 description:@"Handler should only be called once since we're only enumerating samples for a single day."];

    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
  }

  *(v6 + 40) = v5;

  *a3 = 1;
}

@end