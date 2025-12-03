@interface HDStatisticsCollectionQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDStatisticsCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1;
- (uint64_t)_queue_accumulateUpdatedStatistics:(void *)statistics accumulatedStatistics:(void *)accumulatedStatistics sendHandler:;
- (void)_queue_deliverUpdatedStatistics:(void *)statistics error:;
- (void)_queue_fetchAndDeliverAllStatistics;
- (void)_queue_scheduleUpdate;
- (void)_queue_sendAccumulatedStatistics:(void *)statistics cachedStatistics:(uint64_t)cachedStatistics isFinal:(void *)final statisticsCount:(_BYTE *)count shouldResetStatistics:;
- (void)_queue_start;
- (void)_queue_updateStatistics;
- (void)_queue_useCachedStatistics;
- (void)profile:(id)profile didDiscardSeriesOfType:(id)type;
@end

@implementation HDStatisticsCollectionQueryServer

- (HDStatisticsCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v52.receiver = self;
  v52.super_class = HDStatisticsCollectionQueryServer;
  v11 = [(HDQueryServer *)&v52 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (!v11)
  {
    goto LABEL_14;
  }

  intervalComponents = [configurationCopy intervalComponents];
  calendar = [intervalComponents calendar];

  if (!calendar)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    intervalComponents2 = [configurationCopy intervalComponents];
    [intervalComponents2 setCalendar:currentCalendar];
  }

  v16 = objc_alloc(MEMORY[0x277CCDD78]);
  anchorDate = [configurationCopy anchorDate];
  intervalComponents3 = [configurationCopy intervalComponents];
  v19 = [v16 initWithAnchorDate:anchorDate intervalComponents:intervalComponents3];
  intervalCollection = v11->_intervalCollection;
  v11->_intervalCollection = v19;

  v51.receiver = v11;
  v51.super_class = HDStatisticsCollectionQueryServer;
  quantityType = [(HDQueryServer *)&v51 quantityType];
  quantityType = v11->_quantityType;
  v11->_quantityType = quantityType;

  if (!v11->_quantityType)
  {
    sampleType = [(HDQueryServer *)v11 sampleType];
    v24 = [sampleType conformsToProtocol:&unk_283D0AD30];

    if (v24)
    {
      sampleType2 = [(HDQueryServer *)v11 sampleType];
      v26 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithConfigurationProviding:sampleType2];
      countUnit = v11->_quantityType;
      v11->_quantityType = v26;
    }

    else
    {
      if (v11->_quantityType)
      {
        goto LABEL_10;
      }

      sampleType3 = [(HDQueryServer *)v11 sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_10;
      }

      sampleType2 = [(HDQueryServer *)v11 sampleType];
      countUnit = [MEMORY[0x277CCDAB0] countUnit];
      v49 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:sampleType2 aggregationStyle:1 canonicalUnit:countUnit];
      v50 = v11->_quantityType;
      v11->_quantityType = v49;
    }
  }

LABEL_10:
  v30 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
  profile = [(HDQueryServer *)v11 profile];
  v32 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v30 initWithProfile:profile quantityType:v11->_quantityType];
  sourceOrderProvider = v11->_sourceOrderProvider;
  v11->_sourceOrderProvider = v32;

  v34 = +[HDStatisticsCollectionCalculator calculatorForQuantityType:intervalCollection:options:mergeStrategy:](HDStatisticsCollectionCalculator, "calculatorForQuantityType:intervalCollection:options:mergeStrategy:", v11->_quantityType, v11->_intervalCollection, [configurationCopy options], objc_msgSend(configurationCopy, "mergeStrategy"));
  calculator = v11->_calculator;
  v11->_calculator = v34;

  [(HDStatisticsCollectionCalculator *)v11->_calculator setSourceOrderProvider:v11->_sourceOrderProvider];
  anchorDate2 = [configurationCopy anchorDate];
  anchorDate = v11->_anchorDate;
  v11->_anchorDate = anchorDate2;

  v11->_statisticsOptions = [configurationCopy options];
  v11->_deliversUpdates = [configurationCopy shouldDeactivateAfterInitialResults] ^ 1;
  dateInterval = [configurationCopy dateInterval];
  resultsDateInterval = v11->_resultsDateInterval;
  v11->_resultsDateInterval = dateInterval;

  v11->_mergeStrategy = [configurationCopy mergeStrategy];
  statisticsOptions = v11->_statisticsOptions;
  if ((_HKStatisticsOptionBaselineRelativeQuantities() & statisticsOptions) == 0)
  {
    profile2 = [(HDQueryServer *)v11 profile];
    daemon = [profile2 daemon];
    behavior = [daemon behavior];
    supportsCachedStatisticsCollectionQueries = [behavior supportsCachedStatisticsCollectionQueries];

    if (supportsCachedStatisticsCollectionQueries)
    {
      cacheSettings = [configurationCopy cacheSettings];
      v46 = [cacheSettings copy];
      cacheSettings = v11->_cacheSettings;
      v11->_cacheSettings = v46;
    }
  }

  v11->_requiresFetch = 1;
LABEL_14:

  return v11;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  v10 = configurationCopy;
  objc_opt_self();
  options = [v10 options];
  if ((_HKStatisticsOptionPercentile() & options) != 0 || (v12 = [v10 options], (_HKStatisticsOptionPresence() & v12) != 0) || (v13 = objc_msgSend(v10, "options"), (_HKStatisticOptionsAverageSampleDuration() & v13) != 0) || (v14 = objc_msgSend(v10, "options"), (_HKStatisticsOptionBaselineRelativeQuantities() & v14) != 0) || (v15 = objc_msgSend(v10, "options"), (_HKStatisticsOptionSleepStages() & v15) != 0))
  {
  }

  else
  {
    objectType = [v10 objectType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_8:
      options2 = [v10 options];
      if ((_HKStatisticsOptionBaselineRelativeQuantities() & options2) != 0)
      {
        objectType2 = [v10 objectType];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        if ((v18 & 1) == 0)
        {
          v21 = MEMORY[0x277CCA9B8];
          v22 = @"Only quantity types are supported for baseline relative calculations";
LABEL_15:
          [v21 hk_assignError:error code:3 format:v22];
          goto LABEL_16;
        }

        objectType3 = [v10 objectType];
        if (([objectType3 _supportsRelativeDataCalculation] & 1) == 0)
        {
          v25 = MEMORY[0x277CCA9B8];
          identifier = [objectType3 identifier];
          [v25 hk_assignError:error code:3 format:{@"%@ does not support baseline relative calculations", identifier}];

          goto LABEL_16;
        }
      }

      options3 = [v10 options];
      if ((_HKStatisticsOptionSleepStages() & options3) == 0)
      {
        v29.receiver = self;
        v29.super_class = &OBJC_METACLASS___HDStatisticsCollectionQueryServer;
        v23 = objc_msgSendSuper2(&v29, sel_validateConfiguration_client_error_, v10, clientCopy, error);
        goto LABEL_17;
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = @"This statistics option is currently only intended to be used via HDStatisticsCalculator directly.";
      goto LABEL_15;
    }
  }

  if ([clientCopy hasRequiredEntitlement:*MEMORY[0x277CCC8B0] error:error])
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
  if (self)
  {
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    if (([self _shouldStopProcessingQuery] & 1) == 0)
    {
      clientProxy = [self clientProxy];
      v110[0] = 0;
      v110[1] = v110;
      v110[2] = 0x2020000000;
      v111 = 1;
      v3 = *(self + 240);
      *(self + 240) = 0;

      sampleType = [self sampleType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        profile = [self profile];
        dataManager = [profile dataManager];
        quantitySeriesManager = [dataManager quantitySeriesManager];
        quantityType = [self quantityType];
        [quantitySeriesManager removeObserver:self forType:quantityType];
      }

      sampleType2 = [self sampleType];
      v109 = 0;
      v11 = [self authorizationStatusRecordForType:sampleType2 error:&v109];
      v89 = v109;

      if (!v11)
      {
        _HKInitializeLogging();
        queryUUID = HKLogAuthorization();
        if (os_log_type_enabled(queryUUID, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_228986000, queryUUID, OS_LOG_TYPE_ERROR, "Failed to retrieve authorization status; skipping statistics fetch: %{public}@", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (([v11 canRead] & 1) == 0)
      {
        queryUUID = [self queryUUID];
        [clientProxy client_deliverStatisticsBatch:MEMORY[0x277CBEBF8] resetStatistics:1 isFinal:1 anchor:0 query:queryUUID];
        goto LABEL_40;
      }

      queryUUID = [self filter];
      if (queryUUID)
      {
        profile2 = [self profile];
        v14 = [queryUUID predicateWithProfile:profile2];

        if (!v14)
        {
          clientProxy2 = [self clientProxy];
          v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_fetchAndDeliverAllStatistics format:@"Error building predicate for query"];
          queryUUID2 = [self queryUUID];
          [clientProxy2 client_deliverError:v15 forQuery:queryUUID2];

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
      authorizationPredicate = [v11 authorizationPredicate];
      v19 = [v17 compoundPredicateWithPredicate:v14 otherPredicate:authorizationPredicate];

      restrictedSourceEntities = [v11 restrictedSourceEntities];
      v87 = v19;
      v21 = restrictedSourceEntities;
      v84 = queryUUID;
      v22 = *(self + 312);
      if ((_HKStatisticsOptionBaselineRelativeQuantities() & v22) != 0)
      {
        v23 = [HDStatisticsCollectionCalculatorRelativeDataSource alloc];
        profile3 = [self profile];
        quantityType2 = [self quantityType];
        quantityType3 = [self quantityType];
        v27 = HKRollingBaselineConfigurationForQuantityType();
        date = [MEMORY[0x277CBEAA8] date];
        v29 = [(HDStatisticsCollectionCalculatorRelativeDataSource *)v23 initForProfile:profile3 quantityType:quantityType2 predicate:v87 restrictedSourceEntities:v21 configuration:v27 currentDate:date];
      }

      else
      {
        v30 = *(self + 312);
        if ((_HKStatisticsOptionAttenuateSamples() & v30) == 0)
        {
          goto LABEL_19;
        }

        quantityType4 = [self quantityType];
        v32 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
        v33 = [quantityType4 isEqual:v32];

        if (!v33)
        {
          goto LABEL_19;
        }

        v34 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
        v35 = [HDStatisticsCollectionCalculatorAttenuatedDataSource alloc];
        profile4 = [self profile];
        quantityType5 = [self quantityType];
        v29 = [(HDStatisticsCollectionCalculatorAttenuatedDataSource *)v35 initForProfile:profile4 quantityType:quantityType5 predicate:v87 restrictedSourceEntities:v21 attenuationType:v34];

        if (!v29)
        {
LABEL_19:
          v38 = [HDStatisticsCollectionCalculatorDefaultDataSource alloc];
          profile5 = [self profile];
          quantityType6 = [self quantityType];
          v29 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v38 initForProfile:profile5 quantityType:quantityType6 predicate:v87 restrictedSourceEntities:v21];
        }

        [v29 setIncludeUnfrozenSeries:1];
        [v29 setFilter:v84];
        [v29 setShouldContinueFrequency:1];
      }

      v41 = *(self + 216);
      *(self + 216) = v29;

      [*(self + 232) setDataSource:*(self + 216)];
      [*(self + 232) reset];
      objc_initWeak(&location, self);
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
      [*(self + 232) setStatisticsHandler:v98];
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
      [*(self + 216) setShouldContinueHandler:v94];
      [self setDataCount:0];
      if (*(self + 280))
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          v46 = v45;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            identifier = [*(self + 280) identifier];
            *buf = 138543618;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = identifier;
            _os_log_debug_impl(&dword_228986000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ Using cached statistics for %@.", buf, 0x16u);
          }
        }

        restrictedSourceEntities2 = [v11 restrictedSourceEntities];
        v93 = v89;
        v85 = restrictedSourceEntities2;
        v48 = v87;
        queryQueue2 = [self queryQueue];
        dispatch_assert_queue_V2(queryQueue2);

        v50 = [HDQueryDescriptor alloc];
        v51 = MEMORY[0x277CBEB98];
        quantityType7 = [self quantityType];
        v53 = [v51 setWithObject:quantityType7];
        v81 = [(HDQueryDescriptor *)v50 initWithSampleTypes:v53 encodingOptions:0 restrictedSourceEntities:v85 authorizationFilter:0 samplePredicate:v48];

        profile6 = [self profile];
        sourceManager = [profile6 sourceManager];
        v56 = [sourceManager localDeviceSourceWithError:&v93];

        if (v56)
        {
          intervalComponents = [*(self + 208) intervalComponents];
          v58 = [intervalComponents copy];

          profile7 = [self profile];
          identifier2 = [*(self + 280) identifier];
          v80 = objc_opt_class();
          v61 = *(self + 264);
          v62 = queryUUID;
          v63 = *(self + 304);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __103__HDStatisticsCollectionQueryServer__queue_cachingSessionWithPredicate_restrictedSourceEntities_error___block_invoke;
          v113 = &unk_2786163E8;
          v114 = v58;
          v64 = v58;
          v79 = v63;
          queryUUID = v62;
          v65 = profile7;
          v66 = [self _newCachingSessionWithProfile:profile7 cachingIdentifier:identifier2 sourceEntity:v56 queryDescriptor:v81 cachedClass:v80 queryInterval:v61 anchorDate:v79 intervalComponents:v64 timeIntervalToBucketIndex:buf];
        }

        else
        {
          v66 = 0;
        }

        v67 = v93;
        v68 = *(self + 288);
        *(self + 288) = v66;

        v69 = *(self + 288);
        if (!v69)
        {
          queryUUID3 = [self queryUUID];
          [clientProxy client_deliverError:v67 forQuery:queryUUID3];

          v89 = v67;
          goto LABEL_39;
        }

        v92 = v67;
        v70 = [v69 cachesExistWithError:&v92];
        v89 = v92;

        if (v70 == 1)
        {
          [(HDStatisticsCollectionQueryServer *)self _queue_useCachedStatistics];
          goto LABEL_39;
        }

        if (!v70)
        {
          queryUUID4 = [self queryUUID];
          [clientProxy client_deliverError:v89 forQuery:queryUUID4];

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

      profile8 = [self profile];
      database = [profile8 database];
      v90[4] = self;
      v91 = 0;
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __72__HDStatisticsCollectionQueryServer__queue_fetchAndDeliverAllStatistics__block_invoke_395;
      v90[3] = &unk_278616048;
      v74 = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:&v91 block:v90];
      v89 = v91;

      if (v74)
      {
        *(self + 249) = 0;
        (*(v83 + 2))(v83, 1);
      }

      else if (([v89 hk_isHealthKitErrorWithCode:128] & 1) == 0)
      {
        queryUUID5 = [self queryUUID];
        [clientProxy client_deliverError:v89 forQuery:queryUUID5];
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
  if (self)
  {
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    *(self + 248) = 0;
    if ([*(self + 240) count])
    {
      v3 = _Block_copy(*(self + 328));
      v4 = v3;
      if (v3)
      {
        (*(v3 + 2))(v3, self);
      }

      sampleType = [self sampleType];
      v34 = 0;
      v6 = [self authorizationStatusRecordForType:sampleType error:&v34];
      v7 = v34;

      if (v6)
      {
        if ([v6 canRead])
        {
          restrictedSourceEntities = [v6 restrictedSourceEntities];
          [*(self + 216) setRestrictedSourceEntities:restrictedSourceEntities];

          objc_initWeak(&location, self);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke;
          v31[3] = &unk_278627808;
          objc_copyWeak(&v32, &location);
          [*(self + 232) setStatisticsHandler:v31];

          v30 = 0;
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          client = [self client];
          authorizationOracle = [client authorizationOracle];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __75__HDStatisticsCollectionQueryServer__queue_filteredPendingSeriesWithError___block_invoke;
          v36 = &unk_2786277E0;
          selfCopy = self;
          v38 = v9;
          v12 = v9;
          LODWORD(v9) = [authorizationOracle performReadAuthorizationTransactionWithError:&v30 handler:buf];

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
              quantityType = [self quantityType];
              canonicalUnit = [quantityType canonicalUnit];

              v17 = *(self + 232);
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = __60__HDStatisticsCollectionQueryServer__queue_updateStatistics__block_invoke_378;
              v26[3] = &unk_27861A028;
              v27 = v14;
              selfCopy2 = self;
              v18 = canonicalUnit;
              v29 = v18;
              v25 = 0;
              LOBYTE(quantityType) = [v17 performAddSampleTransaction:v26 error:&v25];
              v7 = v25;
              [*(self + 232) setStatisticsHandler:0];
              if ((quantityType & 1) == 0)
              {
                if ([v7 hk_isDatabaseAccessibilityError])
                {
                  _HKInitializeLogging();
                  v19 = *MEMORY[0x277CCC308];
                  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    *&buf[4] = self;
                    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@: unable to update statistics because of database accessibility error", buf, 0xCu);
                  }

                  *(self + 248) = 1;
                  v20 = _Block_copy(*(self + 336));
                  v21 = v20;
                  if (v20)
                  {
                    (*(v20 + 2))(v20, self);
                  }
                }

                else
                {
                  [(HDStatisticsCollectionQueryServer *)self _queue_deliverUpdatedStatistics:v7 error:?];
                }
              }

              if ((*(self + 248) & 1) == 0)
              {
                [*(self + 240) removeAllObjects];
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
              *&buf[4] = self;
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
  if (self && ([*(self + 240) count] || *(self + 249) == 1) && (*(self + 250) & 1) == 0 && (objc_msgSend(self, "_shouldSuspendQuery") & 1) == 0)
  {
    *(self + 250) = 1;
    objc_initWeak(&location, self);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __58__HDStatisticsCollectionQueryServer__queue_scheduleUpdate__block_invoke;
    v2[3] = &unk_278616F38;
    objc_copyWeak(&v3, &location);
    [self scheduleDatabaseAccessOnQueueWithBlock:v2];
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

- (void)profile:(id)profile didDiscardSeriesOfType:(id)type
{
  v5 = [(HDQueryServer *)self queryQueue:profile];
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

- (void)_queue_deliverUpdatedStatistics:(void *)statistics error:
{
  v9 = a2;
  statisticsCopy = statistics;
  if (self)
  {
    queryQueue = [self queryQueue];
    dispatch_assert_queue_V2(queryQueue);

    clientProxy = [self clientProxy];
    if (statisticsCopy)
    {
      queryUUID = [self queryUUID];
      [clientProxy client_deliverError:statisticsCopy forQuery:queryUUID];
    }

    else
    {
      if (!v9)
      {
LABEL_7:

        goto LABEL_8;
      }

      queryUUID = [self queryUUID];
      [clientProxy client_deliverUpdatedStatistics:v9 anchor:0 query:queryUUID];
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

- (void)_queue_sendAccumulatedStatistics:(void *)statistics cachedStatistics:(uint64_t)cachedStatistics isFinal:(void *)final statisticsCount:(_BYTE *)count shouldResetStatistics:
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a2;
  statisticsCopy = statistics;
  if (self)
  {
    clientProxy = [self clientProxy];
    v13 = *(self + 280);
    if (v13)
    {
      finalCopy = final;
      identifier = [v13 identifier];
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
      {
        v33 = v15;
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = [statisticsCopy count];
        *&buf[22] = 2112;
        v42 = identifier;
        _os_log_debug_impl(&dword_228986000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ Updating %lu cached statistics for %@.", buf, 0x20u);
      }

      v16 = statisticsCopy;
      v17 = identifier;
      maxRowID = [*(self + 216) maxRowID];
      v34 = v16;
      v19 = v16;
      v20 = maxRowID;
      queryQueue = [self queryQueue];
      dispatch_assert_queue_V2(queryQueue);

      if (*(self + 280) && [v19 count] && objc_msgSend(*(self + 280), "mode") != 1)
      {
        v22 = *(self + 288);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __67__HDStatisticsCollectionQueryServer__queue_cacheStatistics_anchor___block_invoke;
        v42 = &unk_2786130B0;
        selfCopy = self;
        [v22 insertCaches:v19 anchor:v20 completion:buf];
      }

      final = finalCopy;
      if (cachedStatistics)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_debug_impl(&dword_228986000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ Finishing caching session for %@.", buf, 0x16u);
        }

        v24 = *(self + 296);
        v25 = *(self + 288);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __133__HDStatisticsCollectionQueryServer__queue_sendAccumulatedStatistics_cachedStatistics_isFinal_statisticsCount_shouldResetStatistics___block_invoke;
        v37[3] = &unk_278620658;
        v37[4] = self;
        v38 = v17;
        v39 = clientProxy;
        v40 = v24;
        [v25 finishWithCompletion:v37];
      }

      statisticsCopy = v34;
    }

    if ((cachedStatistics & 1) != 0 || [v10 count])
    {
      v26 = [v10 copy];
      [v10 removeAllObjects];
      v27 = *final;
      v28 = [v26 count] + v27;
      v29 = *(self + 320);
      if (v29)
      {
        (*(v29 + 16))(v29, self, v26, v28);
      }

      v30 = *count;
      queryUUID = [self queryUUID];
      [clientProxy client_deliverStatisticsBatch:v26 resetStatistics:v30 isFinal:cachedStatistics anchor:0 query:queryUUID];

      *count = 0;
      *final = v28;
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

- (uint64_t)_queue_accumulateUpdatedStatistics:(void *)statistics accumulatedStatistics:(void *)accumulatedStatistics sendHandler:
{
  v7 = a2;
  statisticsCopy = statistics;
  accumulatedStatisticsCopy = accumulatedStatistics;
  if (self)
  {
    if ([statisticsCopy count] >= 0x64)
    {
      accumulatedStatisticsCopy[2](accumulatedStatisticsCopy, 0);
    }

    v10 = v7;
    v11 = v10;
    v12 = *(self + 264);
    if (v12)
    {
      startDate = [v10 startDate];
      endDate = [v11 endDate];
      v15 = [v12 hk_intersectsDateIntervalWithStartDate:startDate endDate:endDate];

      if (!v15 || ([v11 endDate], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(self + 264), "startDate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToDate:", v17), v17, v16, v18))
      {

LABEL_8:
        self = 0;
        goto LABEL_11;
      }

      startDate2 = [v11 startDate];
      endDate2 = [*(self + 264) endDate];
      v22 = [startDate2 isEqualToDate:endDate2];

      if (v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [statisticsCopy addObject:v11];
    [self setDataCount:{objc_msgSend(self, "dataCount") + objc_msgSend(v11, "dataCount")}];
    self = 1;
  }

LABEL_11:

  return self;
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
  queryQueue = [self queryQueue];
  dispatch_assert_queue_V2(queryQueue);

  v3 = *(self + 288);
  v83 = 0;
  v47 = [v3 persistentAnchorDateWithError:&v83];
  v46 = v83;
  if (v47)
  {
    v4 = objc_alloc(MEMORY[0x277CCDD78]);
    intervalComponents = [*(self + 208) intervalComponents];
    v6 = [v4 initWithAnchorDate:v47 intervalComponents:intervalComponents];

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
    objc_initWeak(&location, self);
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
    [*(self + 232) setStatisticsHandler:v63];
    *(self + 296) = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v23 = *(self + 232);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_3;
    v50[3] = &unk_278627920;
    v58 = v8;
    v50[4] = self;
    v56 = &buf;
    clientProxy2 = v22;
    v51 = clientProxy2;
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
        identifier = [*(self + 280) identifier];
        v43 = *(self + 296);
        v44 = v60[3];
        *v84 = 138544130;
        selfCopy = self;
        v86 = 2112;
        v87 = identifier;
        v88 = 2048;
        v89 = v43;
        v90 = 2048;
        v91 = v44;
        _os_log_debug_impl(&dword_228986000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ Finished fetching statistics for %@ with %ld cache hits and %ld cache misses.", v84, 0x2Au);
      }
    }

    if (v29)
    {
      *(self + 249) = 0;
      v33 = *(self + 288);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __63__HDStatisticsCollectionQueryServer__queue_useCachedStatistics__block_invoke_408;
      v48[3] = &unk_2786130B0;
      v48[4] = self;
      [v33 deleteCachesForIntervals:v25 completion:v48];
      (*(v27 + 2))(v27, 1);
    }

    else if (([v30 hk_isHealthKitErrorWithCode:128] & 1) == 0)
    {
      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverError:v30 forQuery:queryUUID];
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
      v39 = *(self + 280);
      v40 = v34;
      identifier2 = [v39 identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifier2;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Failed to fetch persisted anchor date for cached query %@", &buf, 0xCu);
    }

    clientProxy2 = [self clientProxy];
    queryUUID2 = [self queryUUID];
    [clientProxy2 client_deliverError:v46 forQuery:queryUUID2];
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

- (id)_newCachingSessionWithProfile:(id)profile cachingIdentifier:(id)identifier sourceEntity:(id)entity queryDescriptor:(id)descriptor cachedClass:(Class)class queryInterval:(id)interval anchorDate:(id)date intervalComponents:(id)self0 timeIntervalToBucketIndex:(id)self1
{
  indexCopy = index;
  componentsCopy = components;
  dateCopy = date;
  intervalCopy = interval;
  descriptorCopy = descriptor;
  entityCopy = entity;
  identifierCopy = identifier;
  profileCopy = profile;
  v25 = [[HDSampleAggregateCachingSession alloc] initWithProfile:profileCopy cachingIdentifier:identifierCopy sourceEntity:entityCopy queryDescriptor:descriptorCopy cachedClass:class queryInterval:intervalCopy anchorDate:dateCopy intervalComponents:componentsCopy timeIntervalToBucketIndex:indexCopy];

  return v25;
}

void __57__HDStatisticsCollectionQueryServer__showTapToRadarAlert__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CCE378]];
  [v1 setBool:0 forKey:*MEMORY[0x277CCCD30]];
}

@end