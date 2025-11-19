@interface HDStatisticsCollectionQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDStatisticsCollectionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_newCachingSessionWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11;
- (uint64_t)_queue_accumulateUpdatedStatistics:(void *)a3 accumulatedStatistics:(void *)a4 sendHandler:;
- (void)_queue_deliverUpdatedStatistics:(void *)a3 error:;
- (void)_queue_fetchAndDeliverAllStatistics;
- (void)_queue_scheduleUpdate;
- (void)_queue_sendAccumulatedStatistics:(void *)a3 cachedStatistics:(uint64_t)a4 isFinal:(void *)a5 statisticsCount:(_BYTE *)a6 shouldResetStatistics:;
- (void)_queue_start;
- (void)_queue_updateStatistics;
- (void)_queue_useCachedStatistics;
- (void)profile:(id)a3 didDiscardSeriesOfType:(id)a4;
@end

@implementation HDStatisticsCollectionQueryServer

- (HDStatisticsCollectionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v52.receiver = self;
  v52.super_class = HDStatisticsCollectionQueryServer;
  v11 = [(HDQueryServer *)&v52 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [v10 intervalComponents];
  v13 = [v12 calendar];

  if (!v13)
  {
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v10 intervalComponents];
    [v15 setCalendar:v14];
  }

  v16 = objc_alloc(MEMORY[0x277CCDD78]);
  v17 = [v10 anchorDate];
  v18 = [v10 intervalComponents];
  v19 = [v16 initWithAnchorDate:v17 intervalComponents:v18];
  intervalCollection = v11->_intervalCollection;
  v11->_intervalCollection = v19;

  v51.receiver = v11;
  v51.super_class = HDStatisticsCollectionQueryServer;
  v21 = [(HDQueryServer *)&v51 quantityType];
  quantityType = v11->_quantityType;
  v11->_quantityType = v21;

  if (!v11->_quantityType)
  {
    v23 = [(HDQueryServer *)v11 sampleType];
    v24 = [v23 conformsToProtocol:&unk_283D0AD30];

    if (v24)
    {
      v25 = [(HDQueryServer *)v11 sampleType];
      v26 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithConfigurationProviding:v25];
      v27 = v11->_quantityType;
      v11->_quantityType = v26;
    }

    else
    {
      if (v11->_quantityType)
      {
        goto LABEL_10;
      }

      v28 = [(HDQueryServer *)v11 sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_10;
      }

      v25 = [(HDQueryServer *)v11 sampleType];
      v27 = [MEMORY[0x277CCDAB0] countUnit];
      v49 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v25 aggregationStyle:1 canonicalUnit:v27];
      v50 = v11->_quantityType;
      v11->_quantityType = v49;
    }
  }

LABEL_10:
  v30 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
  v31 = [(HDQueryServer *)v11 profile];
  v32 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v30 initWithProfile:v31 quantityType:v11->_quantityType];
  sourceOrderProvider = v11->_sourceOrderProvider;
  v11->_sourceOrderProvider = v32;

  v34 = +[HDStatisticsCollectionCalculator calculatorForQuantityType:intervalCollection:options:mergeStrategy:](HDStatisticsCollectionCalculator, "calculatorForQuantityType:intervalCollection:options:mergeStrategy:", v11->_quantityType, v11->_intervalCollection, [v10 options], objc_msgSend(v10, "mergeStrategy"));
  calculator = v11->_calculator;
  v11->_calculator = v34;

  [(HDStatisticsCollectionCalculator *)v11->_calculator setSourceOrderProvider:v11->_sourceOrderProvider];
  v36 = [v10 anchorDate];
  anchorDate = v11->_anchorDate;
  v11->_anchorDate = v36;

  v11->_statisticsOptions = [v10 options];
  v11->_deliversUpdates = [v10 shouldDeactivateAfterInitialResults] ^ 1;
  v38 = [v10 dateInterval];
  resultsDateInterval = v11->_resultsDateInterval;
  v11->_resultsDateInterval = v38;

  v11->_mergeStrategy = [v10 mergeStrategy];
  statisticsOptions = v11->_statisticsOptions;
  if ((_HKStatisticsOptionBaselineRelativeQuantities() & statisticsOptions) == 0)
  {
    v41 = [(HDQueryServer *)v11 profile];
    v42 = [v41 daemon];
    v43 = [v42 behavior];
    v44 = [v43 supportsCachedStatisticsCollectionQueries];

    if (v44)
    {
      v45 = [v10 cacheSettings];
      v46 = [v45 copy];
      cacheSettings = v11->_cacheSettings;
      v11->_cacheSettings = v46;
    }
  }

  v11->_requiresFetch = 1;
LABEL_14:

  return v11;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  objc_opt_self();
  v11 = [v10 options];
  if ((_HKStatisticsOptionPercentile() & v11) != 0 || (v12 = [v10 options], (_HKStatisticsOptionPresence() & v12) != 0) || (v13 = objc_msgSend(v10, "options"), (_HKStatisticOptionsAverageSampleDuration() & v13) != 0) || (v14 = objc_msgSend(v10, "options"), (_HKStatisticsOptionBaselineRelativeQuantities() & v14) != 0) || (v15 = objc_msgSend(v10, "options"), (_HKStatisticsOptionSleepStages() & v15) != 0))
  {
  }

  else
  {
    v27 = [v10 objectType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_8:
      v16 = [v10 options];
      if ((_HKStatisticsOptionBaselineRelativeQuantities() & v16) != 0)
      {
        v17 = [v10 objectType];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        if ((v18 & 1) == 0)
        {
          v21 = MEMORY[0x277CCA9B8];
          v22 = @"Only quantity types are supported for baseline relative calculations";
LABEL_15:
          [v21 hk_assignError:a5 code:3 format:v22];
          goto LABEL_16;
        }

        v19 = [v10 objectType];
        if (([v19 _supportsRelativeDataCalculation] & 1) == 0)
        {
          v25 = MEMORY[0x277CCA9B8];
          v26 = [v19 identifier];
          [v25 hk_assignError:a5 code:3 format:{@"%@ does not support baseline relative calculations", v26}];

          goto LABEL_16;
        }
      }

      v20 = [v10 options];
      if ((_HKStatisticsOptionSleepStages() & v20) == 0)
      {
        v29.receiver = a1;
        v29.super_class = &OBJC_METACLASS___HDStatisticsCollectionQueryServer;
        v23 = objc_msgSendSuper2(&v29, sel_validateConfiguration_client_error_, v10, v9, a5);
        goto LABEL_17;
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = @"This statistics option is currently only intended to be used via HDStatisticsCalculator directly.";
      goto LABEL_15;
    }
  }

  if ([v9 hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:a5])
  {
    goto LABEL_8;
  }

LABEL_16:
  v23 = 0;
LABEL_17:

  return v23;
}

- (void)_queue_start
{
  v3.receiver = self;
  v3.super_class = HDStatisticsCollectionQueryServer;
  [(HDQueryServer *)&v3 _queue_start];
  if (self->_requiresFetch)
  {
    [(HDStatisticsCollectionQueryServer *)self _queue_fetchAndDeliverAllStatistics];
  }

  else if ([(NSMutableDictionary *)self->_pendingQuantitiesBySeries count])
  {
    [(HDStatisticsCollectionQueryServer *)self _queue_updateStatistics];
  }
}

- (void)_queue_fetchAndDeliverAllStatistics
{
  v115 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 queryQueue];
    dispatch_assert_queue_V2(v2);

    if (([a1 _shouldStopProcessingQuery] & 1) == 0)
    {
      v88 = [a1 clientProxy];
      v110[0] = 0;
      v110[1] = v110;
      v110[2] = 0x2020000000;
      v111 = 1;
      v3 = *(a1 + 240);
      *(a1 + 240) = 0;

      v4 = [a1 sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = [a1 profile];
        v7 = [v6 dataManager];
        v8 = [v7 quantitySeriesManager];
        v9 = [a1 quantityType];
        [v8 removeObserver:a1 forType:v9];
      }

      v10 = [a1 sampleType];
      v109 = 0;
      v11 = [a1 authorizationStatusRecordForType:v10 error:&v109];
      v89 = v109;

      if (!v11)
      {
        _HKInitializeLogging();
        v12 = HKLogAuthorization();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve authorization status; skipping statistics fetch: %{public}@", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (([v11 canRead] & 1) == 0)
      {
        v12 = [a1 queryUUID];
        [v88 client_deliverStatisticsBatch:MEMORY[0x277CBEBF8] resetStatistics:1 isFinal:1 anchor:0 query:v12];
        goto LABEL_40;
      }

      v12 = [a1 filter];
      if (v12)
      {
        v13 = [a1 profile];
        v14 = [v12 predicateWithProfile:v13];

        if (!v14)
        {
          v86 = [a1 clientProxy];
          v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_fetchAndDeliverAllStatistics format:@"Error building predicate for query"];
          v16 = [a1 queryUUID];
          [v86 client_deliverError:v15 forQuery:v16];

LABEL_40:
          _Block_object_dispose(v110, 8);

          goto LABEL_41;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = MEMORY[0x277D10B20];
      v18 = [v11 authorizationPredicate];
      v19 = [v17 compoundPredicateWithPredicate:v14 otherPredicate:v18];

      v20 = [v11 restrictedSourceEntities];
      v87 = v19;
      v21 = v20;
      v84 = v12;
      v22 = *(a1 + 312);
      if ((_HKStatisticsOptionBaselineRelativeQuantities() & v22) != 0)
      {
        v23 = [HDStatisticsCollectionCalculatorRelativeDataSource alloc];
        v24 = [a1 profile];
        v25 = [a1 quantityType];
        v26 = [a1 quantityType];
        v27 = HKRollingBaselineConfigurationForQuantityType();
        v28 = [MEMORY[0x277CBEAA8] date];
        v29 = [(HDStatisticsCollectionCalculatorRelativeDataSource *)v23 initForProfile:v24 quantityType:v25 predicate:v87 restrictedSourceEntities:v21 configuration:v27 currentDate:v28];
      }

      else
      {
        v30 = *(a1 + 312);
        if ((_HKStatisticsOptionAttenuateSamples() & v30) == 0)
        {
          goto LABEL_19;
        }

        v31 = [a1 quantityType];
        v32 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
        v33 = [v31 isEqual:v32];

        if (!v33)
        {
          goto LABEL_19;
        }

        v34 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
        v35 = [HDStatisticsCollectionCalculatorAttenuatedDataSource alloc];
        v36 = [a1 profile];
        v37 = [a1 quantityType];
        v29 = [(HDStatisticsCollectionCalculatorAttenuatedDataSource *)v35 initForProfile:v36 quantityType:v37 predicate:v87 restrictedSourceEntities:v21 attenuationType:v34];

        if (!v29)
        {
LABEL_19:
          v38 = [HDStatisticsCollectionCalculatorDefaultDataSource alloc];
          v39 = [a1 profile];
          v40 = [a1 quantityType];
          v29 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v38 initForProfile:v39 quantityType:v40 predicate:v87 restrictedSourceEntities:v21];
        }

        [v29 setIncludeUnfrozenSeries:1];
        [v29 setFilter:v84];
        [v29 setShouldContinueFrequency:1];
      }

      v41 = *(a1 + 216);
      *(a1 + 216) = v29;

      [*(a1 + 232) setDataSource:*(a1 + 216)];
      [*(a1 + 232) reset];
      objc_initWeak(&location, a1);
      v107[0] = 0;
      v107[1] = v107;
      v107[2] = 0x2020000000;
      v107[3] = 0;
      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke;
      aBlock[3] = &unk_278627830;
      objc_copyWeak(&v106, &location);
      v43 = v42;
      v103 = v43;
      v104 = v107;
      v105 = v110;
      v44 = _Block_copy(aBlock);
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_2;
      v98[3] = &unk_278627858;
      objc_copyWeak(&v101, &location);
      v82 = v43;
      v99 = v82;
      v83 = v44;
      v100 = v83;
      [*(a1 + 232) setStatisticsHandler:v98];
      v96[0] = 0;
      v96[1] = v96;
      v96[2] = 0x2020000000;
      v97 = 0;
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_3;
      v94[3] = &unk_278627880;
      objc_copyWeak(&v95, &location);
      v94[4] = v96;
      [*(a1 + 216) setShouldContinueHandler:v94];
      [a1 setDataCount:0];
      if (*(a1 + 280))
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          v46 = v45;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v78 = [*(a1 + 280) identifier];
            *buf = 138543618;
            *&buf[4] = a1;
            *&buf[12] = 2112;
            *&buf[14] = v78;
            _os_log_debug_impl(&dword_228986000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ Using cached statistics for %@.", buf, 0x16u);
          }
        }

        v47 = [v11 restrictedSourceEntities];
        v93 = v89;
        v85 = v47;
        v48 = v87;
        v49 = [a1 queryQueue];
        dispatch_assert_queue_V2(v49);

        v50 = [HDQueryDescriptor alloc];
        v51 = MEMORY[0x277CBEB98];
        v52 = [a1 quantityType];
        v53 = [v51 setWithObject:v52];
        v81 = [(HDQueryDescriptor *)v50 initWithSampleTypes:v53 encodingOptions:0 restrictedSourceEntities:v85 authorizationFilter:0 samplePredicate:v48];

        v54 = [a1 profile];
        v55 = [v54 sourceManager];
        v56 = [v55 localDeviceSourceWithError:&v93];

        if (v56)
        {
          v57 = [*(a1 + 208) intervalComponents];
          v58 = [v57 copy];

          v59 = [a1 profile];
          v60 = [*(a1 + 280) identifier];
          v80 = objc_opt_class();
          v61 = *(a1 + 264);
          v62 = v12;
          v63 = *(a1 + 304);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __103__HDStatisticsCollectionQueryServer__queue_cachingSessionWithPredicate_restrictedSourceEntities_error___block_invoke;
          v113 = &unk_2786163E8;
          v114 = v58;
          v64 = v58;
          v79 = v63;
          v12 = v62;
          v65 = v59;
          v66 = [a1 _newCachingSessionWithProfile:v59 cachingIdentifier:v60 sourceEntity:v56 queryDescriptor:v81 cachedClass:v80 queryInterval:v61 anchorDate:v79 intervalComponents:v64 timeIntervalToBucketIndex:buf];
        }

        else
        {
          v66 = 0;
        }

        v67 = v93;
        v68 = *(a1 + 288);
        *(a1 + 288) = v66;

        v69 = *(a1 + 288);
        if (!v69)
        {
          v76 = [a1 queryUUID];
          [v88 client_deliverError:v67 forQuery:v76];

          v89 = v67;
          goto LABEL_39;
        }

        v92 = v67;
        v70 = [v69 cachesExistWithError:&v92];
        v89 = v92;

        if (v70 == 1)
        {
          [(HDStatisticsCollectionQueryServer *)a1 _queue_useCachedStatistics];
          goto LABEL_39;
        }

        if (!v70)
        {
          v71 = [a1 queryUUID];
          [v88 client_deliverError:v89 forQuery:v71];

LABEL_39:
          objc_destroyWeak(&v95);
          _Block_object_dispose(v96, 8);

          objc_destroyWeak(&v101);
          objc_destroyWeak(&v106);

          _Block_object_dispose(v107, 8);
          objc_destroyWeak(&location);

          goto LABEL_40;
        }
      }

      v72 = [a1 profile];
      v73 = [v72 database];
      v90[4] = a1;
      v91 = 0;
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_395;
      v90[3] = &unk_278616048;
      v74 = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:v73 error:&v91 block:v90];
      v89 = v91;

      if (v74)
      {
        *(a1 + 249) = 0;
        (*(v83 + 2))(v83, 1);
      }

      else if (([v89 hk_isHealthKitErrorWithCode:128] & 1) == 0)
      {
        v75 = [a1 queryUUID];
        [v88 client_deliverError:v89 forQuery:v75];
      }

      goto LABEL_39;
    }
  }

LABEL_41:
  v77 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateStatistics
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 queryQueue];
    dispatch_assert_queue_V2(v2);

    *(a1 + 248) = 0;
    if ([*(a1 + 240) count])
    {
      v3 = _Block_copy(*(a1 + 328));
      v4 = v3;
      if (v3)
      {
        (*(v3 + 2))(v3, a1);
      }

      v5 = [a1 sampleType];
      v34 = 0;
      v6 = [a1 authorizationStatusRecordForType:v5 error:&v34];
      v7 = v34;

      if (v6)
      {
        if ([v6 canRead])
        {
          v8 = [v6 restrictedSourceEntities];
          [*(a1 + 216) setRestrictedSourceEntities:v8];

          objc_initWeak(&location, a1);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke;
          v31[3] = &unk_278627808;
          objc_copyWeak(&v32, &location);
          [*(a1 + 232) setStatisticsHandler:v31];

          v30 = 0;
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v10 = [a1 client];
          v11 = [v10 authorizationOracle];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __75__HDStatisticsCollectionQueryServer__queue_filteredPendingSeriesWithError___block_invoke;
          v36 = &unk_2786277E0;
          v37 = a1;
          v38 = v9;
          v12 = v9;
          LODWORD(v9) = [v11 performReadAuthorizationTransactionWithError:&v30 handler:buf];

          if (v9)
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          v7 = v30;
          if (v14)
          {
            if ([v14 count])
            {
              v15 = [a1 quantityType];
              v16 = [v15 canonicalUnit];

              v17 = *(a1 + 232);
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke_378;
              v26[3] = &unk_27861A028;
              v27 = v14;
              v28 = a1;
              v18 = v16;
              v29 = v18;
              v25 = 0;
              LOBYTE(v15) = [v17 performAddSampleTransaction:v26 error:&v25];
              v7 = v25;
              [*(a1 + 232) setStatisticsHandler:0];
              if ((v15 & 1) == 0)
              {
                if ([v7 hk_isDatabaseAccessibilityError])
                {
                  _HKInitializeLogging();
                  v19 = *MEMORY[0x277CCC308];
                  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    *&buf[4] = a1;
                    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@: unable to update statistics because of database accessibility error", buf, 0xCu);
                  }

                  *(a1 + 248) = 1;
                  v20 = _Block_copy(*(a1 + 336));
                  v21 = v20;
                  if (v20)
                  {
                    (*(v20 + 2))(v20, a1);
                  }
                }

                else
                {
                  [(HDStatisticsCollectionQueryServer *)a1 _queue_deliverUpdatedStatistics:v7 error:?];
                }
              }

              if ((*(a1 + 248) & 1) == 0)
              {
                [*(a1 + 240) removeAllObjects];
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC308];
            if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = a1;
              *&buf[12] = 2114;
              *&buf[14] = v7;
              _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter samples for authorization: %{public}@", buf, 0x16u);
            }
          }

          objc_destroyWeak(&v32);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogAuthorization();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v7;
          _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "Failed to retrieve authorization status; ignoring statistics update: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleUpdate
{
  if (a1 && ([*(a1 + 240) count] || *(a1 + 249) == 1) && (*(a1 + 250) & 1) == 0 && (objc_msgSend(a1, "_shouldSuspendQuery") & 1) == 0)
  {
    *(a1 + 250) = 1;
    objc_initWeak(&location, a1);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __58__HDStatisticsCollectionQueryServer__queue_scheduleUpdate__block_invoke;
    v2[3] = &unk_278616F38;
    objc_copyWeak(&v3, &location);
    [a1 scheduleDatabaseAccessOnQueueWithBlock:v2];
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void __58__HDStatisticsCollectionQueryServer__queue_scheduleUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[250] = 0;
    v2 = WeakRetained;
    if (WeakRetained[249] == 1)
    {
      [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_fetchAndDeliverAllStatistics];
    }

    else
    {
      [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_updateStatistics];
    }

    WeakRetained = v2;
  }
}

void __98__HDStatisticsCollectionQueryServer_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v64 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [*(a1 + 32) queryQueue];
  dispatch_assert_queue_V2(v17);

  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) == 0)
  {
    v18 = *(a1 + 32);
    v19 = v64;
    v61 = v13;
    v62 = v14;
    v63 = v15;
    v60 = v16;
    if (v18)
    {
      v20 = *(v18 + 312);
      if ((_HKStatisticsOptionBaselineRelativeQuantities() & v20) != 0)
      {
        *(v18 + 249) = 1;
      }

      else
      {
        v21 = [v18 filter];
        v59 = v21;
        if (!v21)
        {
          goto LABEL_30;
        }

        v22 = [v21 acceptsDataObject:v63];
        v23 = v59;
        if (v22)
        {
          v54 = MEMORY[0x277CCDDB8];
          v55 = [v62 startDate];
          [v55 timeIntervalSinceReferenceDate];
          v25 = v24;
          v53 = [v62 startDate];
          [v53 timeIntervalSinceReferenceDate];
          v27 = v26;
          [v62 duration];
          v29 = v27 + v28;
          [v61 canonicalUnit];
          v57 = a7;
          v31 = v30 = v19;
          [v30 doubleValueForUnit:v31];
          v33 = [v54 filter:v59 acceptsDataObjectWithStartTimestamp:v25 endTimestamp:v29 valueInCanonicalUnit:v32];

          v19 = v30;
          a7 = v57;

          v23 = v59;
          if (v33)
          {
LABEL_30:
            if ([v18 _shouldSuspendQuery])
            {
              *(v18 + 249) = 1;
            }

            else
            {
              v58 = a7;
              v56 = v19;
              v34 = [*(v18 + 240) objectForKeyedSubscript:v63];
              if (v34)
              {
                goto LABEL_15;
              }

              v35 = [_HDStatisticsCollectionQueryPendingSeries alloc];
              v36 = v63;
              v37 = v60;
              if (v35)
              {
                v65.receiver = v35;
                v65.super_class = _HDStatisticsCollectionQueryPendingSeries;
                v38 = objc_msgSendSuper2(&v65, sel_init);
                v35 = v38;
                if (v38)
                {
                  objc_storeStrong(&v38->_series, a5);
                  v39 = [v37 copy];
                  anchor = v35->_anchor;
                  v35->_anchor = v39;

                  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  quantities = v35->_quantities;
                  v35->_quantities = v41;
                }
              }

              [*(v18 + 240) setObject:v35 forKeyedSubscript:v36];
              v34 = v35;
              if (v35)
              {
LABEL_15:
                v43 = v62;
                v44 = v56;
                v45 = [_HDStatisticsCollectionQueryPendingQuantity alloc];
                v46 = v44;
                v47 = v43;
                if (v45)
                {
                  v65.receiver = v45;
                  v65.super_class = _HDStatisticsCollectionQueryPendingQuantity;
                  v45 = objc_msgSendSuper2(&v65, sel_init);
                  if (v45)
                  {
                    v48 = [v46 copy];
                    quantity = v45->_quantity;
                    v45->_quantity = v48;

                    v50 = [v47 copy];
                    dateInterval = v45->_dateInterval;
                    v45->_dateInterval = v50;
                  }
                }

                v19 = v56;

                v52 = v34;
                [*(v34 + 24) addObject:v45];
              }

              else
              {
                v52 = 0;
                v19 = v56;
              }

              a7 = v58;
            }

            v23 = v59;
          }
        }
      }
    }

    if (a7)
    {
      [(HDStatisticsCollectionQueryServer *)*(a1 + 32) _queue_scheduleUpdate];
    }
  }
}

- (void)profile:(id)a3 didDiscardSeriesOfType:(id)a4
{
  v5 = [(HDQueryServer *)self queryQueue:a3];
  dispatch_assert_queue_V2(v5);

  self->_requiresFetch = 1;

  [(HDStatisticsCollectionQueryServer *)self _queue_scheduleUpdate];
}

uint64_t __75__HDStatisticsCollectionQueryServer__queue_filteredPendingSeriesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = a1;
  obj = [*(*(a1 + 32) + 240) allValues];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = a3;
    v8 = *v27;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 8);
          v12 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v25 = 0;
        v13 = v5[2];
        v14 = v12;
        v15 = v13(v5, v11, v14, &v25);
        v16 = v25;

        if (v15)
        {
          [*(v23 + 40) addObject:v10];
        }

        else if (v16)
        {
          if (v22)
          {
            v19 = v16;
            *v22 = v16;
          }

          else
          {
            _HKLogDroppedError();
          }

          v18 = 0;
          goto LABEL_20;
        }

        ++v9;
      }

      while (v7 != v9);
      v17 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_deliverUpdatedStatistics:v4 error:0];
}

- (void)_queue_deliverUpdatedStatistics:(void *)a3 error:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 queryQueue];
    dispatch_assert_queue_V2(v6);

    v7 = [a1 clientProxy];
    if (v5)
    {
      v8 = [a1 queryUUID];
      [v7 client_deliverError:v5 forQuery:v8];
    }

    else
    {
      if (!v9)
      {
LABEL_7:

        goto LABEL_8;
      }

      v8 = [a1 queryUUID];
      [v7 client_deliverUpdatedStatistics:v9 anchor:0 query:v8];
    }

    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke_378(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = *(a1 + 32);
  v36 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v36)
  {
    v4 = *v51;
    v38 = v3;
    v40 = v2;
    v35 = *v51;
    do
    {
      v5 = 0;
      do
      {
        if (*v51 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v50 + 1) + 8 * v5);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v37 = v5;
        if (v6)
        {
          v7 = *(v6 + 24);
        }

        else
        {
          v7 = 0;
        }

        obj = v7;
        v44 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v44)
        {
          v41 = v6;
          v42 = *v47;
          do
          {
            v8 = 0;
            do
            {
              if (*v47 != v42)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v46 + 1) + 8 * v8);
              v10 = *(*(v2 + 40) + 232);
              if (v9)
              {
                v11 = *(v9 + 8);
              }

              else
              {
                v11 = 0;
              }

              v45 = v11;
              [v45 doubleValueForUnit:*(v2 + 48)];
              v13 = v12;
              if (v9)
              {
                v14 = *(v9 + 16);
              }

              else
              {
                v14 = 0;
              }

              v15 = v14;
              v16 = [v15 startDate];
              [v16 timeIntervalSinceReferenceDate];
              v18 = v17;
              if (v9)
              {
                v19 = *(v9 + 16);
              }

              else
              {
                v19 = 0;
              }

              v20 = v19;
              v21 = [v20 endDate];
              [v21 timeIntervalSinceReferenceDate];
              v23 = v22;
              if (v6)
              {
                v24 = *(v6 + 8);
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              v26 = [v25 sourceRevision];
              v27 = [v26 source];
              v28 = [v27 _sourceID];
              v29 = [v10 addSampleValue:objc_msgSend(v28 startTime:"longLongValue") endTime:a2 sourceID:v13 error:{v18, v23}];

              if (!v29)
              {

                v32 = 0;
                v3 = v38;
                goto LABEL_36;
              }

              ++v8;
              v2 = v40;
              v6 = v41;
            }

            while (v44 != v8);
            v30 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
            v44 = v30;
          }

          while (v30);
        }

        v5 = v37 + 1;
        v3 = v38;
        v4 = v35;
      }

      while (v37 + 1 != v36);
      v31 = [v38 countByEnumeratingWithState:&v50 objects:v55 count:16];
      v32 = 1;
      v36 = v31;
    }

    while (v31);
  }

  else
  {
    v32 = 1;
  }

LABEL_36:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)_queue_sendAccumulatedStatistics:(void *)a3 cachedStatistics:(uint64_t)a4 isFinal:(void *)a5 statisticsCount:(_BYTE *)a6 shouldResetStatistics:
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if (a1)
  {
    v12 = [a1 clientProxy];
    v13 = *(a1 + 280);
    if (v13)
    {
      v35 = a5;
      v14 = [v13 identifier];
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
      {
        v33 = v15;
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = [v11 count];
        *&buf[22] = 2112;
        v42 = v14;
        _os_log_debug_impl(&dword_228986000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ Updating %lu cached statistics for %@.", buf, 0x20u);
      }

      v16 = v11;
      v17 = v14;
      v18 = [*(a1 + 216) maxRowID];
      v34 = v16;
      v19 = v16;
      v20 = v18;
      v21 = [a1 queryQueue];
      dispatch_assert_queue_V2(v21);

      if (*(a1 + 280) && [v19 count] && objc_msgSend(*(a1 + 280), "mode") != 1)
      {
        v22 = *(a1 + 288);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __67__HDStatisticsCollectionQueryServer__queue_cacheStatistics_anchor___block_invoke;
        v42 = &unk_2786130B0;
        v43 = a1;
        [v22 insertCaches:v19 anchor:v20 completion:buf];
      }

      a5 = v35;
      if (a4)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing caching session for %@.", buf, 0x16u);
        }

        v24 = *(a1 + 296);
        v25 = *(a1 + 288);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __133__HDStatisticsCollectionQueryServer__queue_sendAccumulatedStatistics_cachedStatistics_isFinal_statisticsCount_shouldResetStatistics___block_invoke;
        v37[3] = &unk_278620658;
        v37[4] = a1;
        v38 = v17;
        v39 = v12;
        v40 = v24;
        [v25 finishWithCompletion:v37];
      }

      v11 = v34;
    }

    if ((a4 & 1) != 0 || [v10 count])
    {
      v26 = [v10 copy];
      [v10 removeAllObjects];
      v27 = *a5;
      v28 = [v26 count] + v27;
      v29 = *(a1 + 320);
      if (v29)
      {
        (*(v29 + 16))(v29, a1, v26, v28);
      }

      v30 = *a6;
      v31 = [a1 queryUUID];
      [v12 client_deliverStatisticsBatch:v26 resetStatistics:v30 isFinal:a4 anchor:0 query:v31];

      *a6 = 0;
      *a5 = v28;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __133__HDStatisticsCollectionQueryServer__queue_sendAccumulatedStatistics_cachedStatistics_isFinal_statisticsCount_shouldResetStatistics___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@ encountered error when finishing caching session for %@: %@", &v10, 0x20u);
    }
  }

  [*(a1 + 48) client_finishedCachingStatisticsWithCacheHits:*(a1 + 56) error:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_accumulateUpdatedStatistics:(void *)a3 accumulatedStatistics:(void *)a4 sendHandler:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([v8 count] >= 0x64)
    {
      v9[2](v9, 0);
    }

    v10 = v7;
    v11 = v10;
    v12 = *(a1 + 264);
    if (v12)
    {
      v13 = [v10 startDate];
      v14 = [v11 endDate];
      v15 = [v12 hk_intersectsDateIntervalWithStartDate:v13 endDate:v14];

      if (!v15 || ([v11 endDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 264), "startDate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToDate:", v17), v17, v16, v18))
      {

LABEL_8:
        a1 = 0;
        goto LABEL_11;
      }

      v20 = [v11 startDate];
      v21 = [*(a1 + 264) endDate];
      v22 = [v20 isEqualToDate:v21];

      if (v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [v8 addObject:v11];
    [a1 setDataCount:{objc_msgSend(a1, "dataCount") + objc_msgSend(v11, "dataCount")}];
    a1 = 1;
  }

LABEL_11:

  return a1;
}

void __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_sendAccumulatedStatistics:*(a1 + 32) cachedStatistics:a2 isFinal:(*(*(a1 + 40) + 8) + 24) statisticsCount:(*(*(a1 + 48) + 8) + 24) shouldResetStatistics:?];
}

void __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_2(void **a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_accumulateUpdatedStatistics:v4 accumulatedStatistics:a1[4] sendHandler:a1[5]];
}

uint64_t __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_3(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || ([WeakRetained _shouldStopProcessingQuery])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 _shouldSuspendQuery];
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:128 description:@"Query suspended or aborted"];
    if (v7)
    {
      if (a2)
      {
        v8 = v7;
        *a2 = v7;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_13;
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (void)_queue_useCachedStatistics
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = [a1 queryQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 288);
  v83 = 0;
  v47 = [v3 persistentAnchorDateWithError:&v83];
  v46 = v83;
  if (v47)
  {
    v4 = objc_alloc(MEMORY[0x277CCDD78]);
    v5 = [*(a1 + 208) intervalComponents];
    v6 = [v4 initWithAnchorDate:v47 intervalComponents:v5];

    v7 = HKIsResumableQueriesTTREnabled();
    v8 = v7;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__150;
    v95 = __Block_byref_object_dispose__150;
    v96 = 0;
    if (v7)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v9;
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_initWeak(&location, a1);
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2020000000;
    v81[3] = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke;
    aBlock[3] = &unk_2786278A8;
    v78 = v8;
    v15 = v11;
    v72 = v15;
    p_buf = &buf;
    objc_copyWeak(&v77, &location);
    v16 = v13;
    v73 = v16;
    v75 = v81;
    v76 = v79;
    v17 = _Block_copy(aBlock);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_2;
    v63[3] = &unk_2786278D0;
    v18 = v12;
    v64 = v18;
    objc_copyWeak(&v70, &location);
    v19 = v15;
    v65 = v19;
    v20 = v17;
    v69 = v20;
    v45 = v16;
    v66 = v45;
    v21 = v14;
    v67 = v21;
    v22 = v6;
    v68 = v22;
    [*(a1 + 232) setStatisticsHandler:v63];
    *(a1 + 296) = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v23 = *(a1 + 232);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_3;
    v50[3] = &unk_278627920;
    v58 = v8;
    v50[4] = a1;
    v56 = &buf;
    v24 = v22;
    v51 = v24;
    v25 = v21;
    v52 = v25;
    v57 = &v59;
    v26 = v19;
    v53 = v26;
    v27 = v20;
    v55 = v27;
    v28 = v18;
    v54 = v28;
    v49 = 0;
    v29 = [v23 performAddSampleTransaction:v50 error:&v49];
    v30 = v49;
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      v32 = v31;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v42 = [*(a1 + 280) identifier];
        v43 = *(a1 + 296);
        v44 = v60[3];
        *v84 = 138544130;
        v85 = a1;
        v86 = 2112;
        v87 = v42;
        v88 = 2048;
        v89 = v43;
        v90 = 2048;
        v91 = v44;
        _os_log_debug_impl(&dword_228986000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ Finished fetching statistics for %@ with %ld cache hits and %ld cache misses.", v84, 0x2Au);
      }
    }

    if (v29)
    {
      *(a1 + 249) = 0;
      v33 = *(a1 + 288);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_408;
      v48[3] = &unk_2786130B0;
      v48[4] = a1;
      [v33 deleteCachesForIntervals:v25 completion:v48];
      (*(v27 + 2))(v27, 1);
    }

    else if (([v30 hk_isHealthKitErrorWithCode:128] & 1) == 0)
    {
      v36 = [a1 clientProxy];
      v37 = [a1 queryUUID];
      [v36 client_deliverError:v30 forQuery:v37];
    }

    _Block_object_dispose(&v59, 8);
    objc_destroyWeak(&v70);

    objc_destroyWeak(&v77);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v81, 8);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 280);
      v40 = v34;
      v41 = [v39 identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v41;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Failed to fetch persisted anchor date for cached query %@", &buf, 0xCu);
    }

    v24 = [a1 clientProxy];
    v35 = [a1 queryUUID];
    [v24 client_deliverError:v46 forQuery:v35];
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_395(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (*(v5 + 251) == 1)
  {
    [*(v5 + 240) removeAllObjects];
    v6 = [*(a1 + 32) sampleType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v8 = [v5 profile];
      v9 = [v8 dataManager];
      v10 = [v9 quantitySeriesManager];
      v11 = *(a1 + 32);
      v12 = [v11 quantityType];
      v13 = [*(a1 + 32) queryQueue];
      [v10 addObserver:v11 forType:v12 queue:v13];

      v5 = *(a1 + 32);
    }
  }

  v14 = *(v5 + 232);

  return [v14 queryForInitialStatisticsWithError:a3];
}

void __67__HDStatisticsCollectionQueryServer__queue_cacheStatistics_anchor___block_invoke(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v8 = [v5 clientProxy];
    v7 = [*(a1 + 32) queryUUID];
    [v8 client_deliverError:v6 forQuery:v7];
  }
}

uint64_t __103__HDStatisticsCollectionQueryServer__queue_cachingSessionWithPredicate_restrictedSourceEntities_error___block_invoke(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [[v5 alloc] initWithTimeIntervalSinceReferenceDate:a3];
  v8 = [v4 hk_indexForDate:v7 anchorDate:v6];

  return v8;
}

void __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1 && ([*(a1 + 32) hk_containsObjectsInArray:*(*(*(a1 + 48) + 8) + 40)] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
      [HDCloudSyncTapToRadar showTapToRadarRequestWithTitle:@"Cached query accuracy issue detected" message:@"Please file a radar." proceed:&__block_literal_global_182 disable:&__block_literal_global_424_0 completion:&__block_literal_global_428];
    }
  }

  v6 = [*(a1 + 32) objectsAtIndexes:*(a1 + 40)];
  v5 = objc_loadWeakRetained((a1 + 72));
  [(HDStatisticsCollectionQueryServer *)v5 _queue_sendAccumulatedStatistics:v6 cachedStatistics:a2 isFinal:(*(*(a1 + 56) + 8) + 24) statisticsCount:(*(*(a1 + 64) + 8) + 24) shouldResetStatistics:?];

  [*(a1 + 40) removeAllIndexes];
}

void __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v13 = v4;
  v6 = [v4 startDate];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v8 = [(HDStatisticsCollectionQueryServer *)WeakRetained _queue_accumulateUpdatedStatistics:v13 accumulatedStatistics:*(a1 + 40) sendHandler:*(a1 + 72)];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v13 startDate];
      [v9 addObject:v10];

      [*(a1 + 48) addIndex:{objc_msgSend(*(a1 + 40), "count") - 1}];
    }

    v11 = *(a1 + 56);
    v12 = [*(a1 + 64) dateIntervalAtIndex:{objc_msgSend(*(a1 + 40), "count") - 1}];
    [v11 removeObject:v12];
  }
}

uint64_t __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 288);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_4;
  v19[3] = &unk_2786278F8;
  v24 = *(a1 + 96);
  v5 = (a1 + 88);
  v17 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v16 = *(a1 + 32);
  *&v8 = v17;
  *(&v8 + 1) = *v5;
  v18 = v8;
  v9 = *(a1 + 56);
  *&v10 = v16;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v20 = v11;
  v21 = v10;
  v12 = *(a1 + 72);
  *&v13 = *(a1 + 64);
  *(&v13 + 1) = v12;
  v23 = v18;
  v22 = v13;
  v14 = [v4 activateWithError:a2 cacheHandler:v19];

  return v14;
}

uint64_t __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_4(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = v9;
  if ((a3 & 1) == 0)
  {
    if (!v9)
    {
LABEL_9:
      ++*(*(a1 + 48) + 296);
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (*(a1 + 96) == 1)
      {
        [*(*(*(a1 + 80) + 8) + 40) addObject:v10];
        v11 = [*(a1 + 32) dateIntervalAtIndex:a4];
        [*(a1 + 40) addObject:v11];
        [*(*(a1 + 48) + 232) invalidateInterval:v11 error:a5];
        ++*(*(*(a1 + 88) + 8) + 24);
      }

      else
      {
        [(HDStatisticsCollectionQueryServer *)*(a1 + 48) _queue_accumulateUpdatedStatistics:v10 accumulatedStatistics:*(a1 + 56) sendHandler:*(a1 + 72)];
        v13 = *(a1 + 64);
        v11 = [v10 startDate];
        [v13 addObject:v11];
      }

      goto LABEL_9;
    }
  }

  v12 = [*(a1 + 32) dateIntervalAtIndex:a4];
  [*(a1 + 40) addObject:v12];
  [*(*(a1 + 48) + 232) invalidateInterval:v12 error:a5];
  ++*(*(*(a1 + 88) + 8) + 24);

LABEL_10:
  return 1;
}

void __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_408(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v8 = [v5 clientProxy];
    v7 = [*(a1 + 32) queryUUID];
    [v8 client_deliverError:v6 forQuery:v7];
  }
}

- (id)_newCachingSessionWithProfile:(id)a3 cachingIdentifier:(id)a4 sourceEntity:(id)a5 queryDescriptor:(id)a6 cachedClass:(Class)a7 queryInterval:(id)a8 anchorDate:(id)a9 intervalComponents:(id)a10 timeIntervalToBucketIndex:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[HDSampleAggregateCachingSession alloc] initWithProfile:v24 cachingIdentifier:v23 sourceEntity:v22 queryDescriptor:v21 cachedClass:a7 queryInterval:v20 anchorDate:v19 intervalComponents:v18 timeIntervalToBucketIndex:v17];

  return v25;
}

void __57__HDStatisticsCollectionQueryServer__showTapToRadarAlert__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CCE378]];
  [v1 setBool:0 forKey:*MEMORY[0x277CCCD30]];
}

@end