@interface HDSeriesQuantityDataAggregator
- (BOOL)requiresNewSeriesForDatum:(id)datum lastDatum:(id)lastDatum seriesLength:(int64_t)length currentSeries:(id)series configuration:(id)configuration aggregationInterval:(double)interval;
- (id)_codableDatumsFromData:(id)data;
- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error;
- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager;
- (id)initialAggregationState;
- (uint64_t)_successForPersistenceError:(void *)error series:(void *)series error:;
@end

@implementation HDSeriesQuantityDataAggregator

- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = HDSeriesQuantityDataAggregator;
  result = [(HDActiveQuantityDataAggregator *)&v5 initForQuantityType:type dataCollectionManager:manager];
  if (result)
  {
    *(result + 26) = 0;
  }

  return result;
}

- (uint64_t)_successForPersistenceError:(void *)error series:(void *)series error:
{
  v7 = a2;
  errorCopy = error;
  if (self)
  {
    v9 = [v7 hk_isHealthKitErrorWithCode:3];
    if (v9)
    {
      uUID = [errorCopy UUID];
      os_unfair_lock_lock((self + 104));
      v11 = *(self + 112);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v13 = *(self + 112);
        *(self + 112) = v12;

        v11 = *(self + 112);
      }

      [v11 addObject:uUID];
      os_unfair_lock_unlock((self + 104));
    }

    else
    {
      uUID = v7;
      if (uUID)
      {
        if (series)
        {
          v14 = uUID;
          *series = uUID;
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
    v9 = 0;
  }

  return v9;
}

- (BOOL)requiresNewSeriesForDatum:(id)datum lastDatum:(id)lastDatum seriesLength:(int64_t)length currentSeries:(id)series configuration:(id)configuration aggregationInterval:(double)interval
{
  datumCopy = datum;
  lastDatumCopy = lastDatum;
  seriesCopy = series;
  configurationCopy = configuration;
  uUID = [seriesCopy UUID];
  if (self)
  {
    v19 = uUID;
    os_unfair_lock_lock(&self->_lock);
    v20 = [(NSMutableSet *)self->_lock_failedSeriesUUIDs containsObject:v19];

    os_unfair_lock_unlock(&self->_lock);
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  if (!lastDatumCopy)
  {
    if (length > 288)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  metadata = [lastDatumCopy metadata];
  metadata2 = [datumCopy metadata];
  v24 = metadata2;
  if (metadata == metadata2)
  {
  }

  else
  {
    metadata3 = [datumCopy metadata];
    if (!metadata3)
    {

      goto LABEL_3;
    }

    v26 = metadata3;
    metadata4 = [lastDatumCopy metadata];
    metadata5 = [datumCopy metadata];
    v46 = [metadata4 isEqual:metadata5];

    if (!v46)
    {
LABEL_3:
      v21 = 1;
      goto LABEL_16;
    }
  }

  dateInterval = [datumCopy dateInterval];
  startDate = [dateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v32 = v31;
  dateInterval2 = [lastDatumCopy dateInterval];
  endDate = [dateInterval2 endDate];
  [endDate timeIntervalSinceReferenceDate];
  v36 = v35;

  v21 = 1;
  if (length <= 288 && v32 - v36 <= fmax(interval, 120.0))
  {
LABEL_15:
    dateInterval3 = [datumCopy dateInterval];
    endDate2 = [dateInterval3 endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v40 = v39;
    startDate2 = [seriesCopy startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    v43 = v40 - v42;

    [configurationCopy maximumSeriesDuration];
    v21 = v43 > v44;
  }

LABEL_16:

  return v21;
}

- (id)_codableDatumsFromData:(id)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    quantityType = [dataCopy quantityType];
    canonicalUnit = [quantityType canonicalUnit];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HDSeriesQuantityDataAggregator__codableDatumsFromData___block_invoke;
    v8[3] = &unk_278614928;
    v9 = canonicalUnit;
    v6 = canonicalUnit;
    dataCopy = [v3 hk_map:v8];
  }

  return dataCopy;
}

id __57__HDSeriesQuantityDataAggregator__codableDatumsFromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD180];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 dateInterval];
  [v6 duration];
  *&v7 = v7;
  [v5 setDuration:v7];

  v8 = [v4 dateInterval];
  v9 = [v8 startDate];
  [v9 timeIntervalSinceReferenceDate];
  [v5 setTimeInterval:?];

  v10 = [v4 quantity];

  [v10 doubleValueForUnit:*(a1 + 32)];
  [v5 setValue:?];

  return v5;
}

- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error
{
  v159 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  deviceCopy = device;
  dateCopy = date;
  stateCopy = state;
  selfCopy = self;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      openSeries = [stateCopy openSeries];
      if (openSeries && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC298];
        v18 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT);
        v19 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        if (v18)
        {
          v85 = v17;
          v86 = objc_opt_class();
          v87 = NSStringFromClass(v86);
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = openSeries;
          *&buf[22] = 2114;
          v156 = v87;
          _os_log_fault_impl(&dword_228986000, v85, OS_LOG_TYPE_FAULT, "%{public}@: Saved state has unexpected open series %{public}@ (expected class %{public}@); resetting state.", buf, 0x20u);

          v19 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        }

        v20 = objc_alloc((v19 + 964));
        unaggregatedSensorData = [stateCopy unaggregatedSensorData];
        v98 = [v20 initWithRemainingSensorData:unaggregatedSensorData];
      }

      else
      {
        v98 = stateCopy;
      }
    }

    else
    {
      if (([(HDSeriesQuantityDataAggregator *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v80 = v15;
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          v83 = objc_opt_class();
          v84 = NSStringFromClass(v83);
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v82;
          *&buf[22] = 2114;
          v156 = v84;
          _os_log_fault_impl(&dword_228986000, v80, OS_LOG_TYPE_FAULT, "%{public}@: Received unexpected state object %{public}@ (expected class %{public}@); resetting state.", buf, 0x20u);
        }
      }

      v16 = [_HDSeriesQuantityDataAggregationState alloc];
      openSeries = [stateCopy unaggregatedSensorData];
      v98 = [(HDDataAggregationState *)v16 initWithRemainingSensorData:openSeries];
    }
  }

  else
  {
    v98 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v156 = __Block_byref_object_copy__9;
  v157 = __Block_byref_object_dispose__9;
  openSeries2 = [(HDDataAggregationState *)v98 openSeries];
  v148 = 0;
  v149 = &v148;
  v150 = 0x3032000000;
  v151 = __Block_byref_object_copy__9;
  v152 = __Block_byref_object_dispose__9;
  lastDatum = [(_HDSeriesQuantityDataAggregationState *)v98 lastDatum];
  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy__9;
  v146 = __Block_byref_object_dispose__9;
  [(_HDSeriesQuantityDataAggregationState *)v98 lastDatum];
  v147 = v22 = selfCopy;
  v138 = 0;
  v139 = &v138;
  v140 = 0x2020000000;
  v141 = [(_HDSeriesQuantityDataAggregationState *)v98 length];
  if (*(*&buf[8] + 40))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HDSeriesQuantityDataAggregator.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"currentSeries == nil || [currentSeries isKindOfClass:[HKQuantitySample class]]"}];

      v22 = selfCopy;
    }
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(HDActiveDataAggregator *)v22 aggregationIntervalForCollector:collectorCopy];
  v25 = v24;
  configuration = [(HDDataAggregator *)v22 configuration];
  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = __Block_byref_object_copy__9;
  v136 = __Block_byref_object_dispose__9;
  v137 = 0;
  dataCollectionManager = [(HDDataAggregator *)v22 dataCollectionManager];
  profile = [dataCollectionManager profile];
  dataManager = [profile dataManager];
  quantitySeriesManager = [dataManager quantitySeriesManager];

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke;
  aBlock[3] = &unk_278614978;
  v93 = v30;
  v123 = v93;
  v124 = selfCopy;
  v127 = &v132;
  v128 = &v138;
  v129 = &v142;
  v130 = buf;
  v131 = &v148;
  v92 = v23;
  v125 = v92;
  v91 = quantitySeriesManager;
  v126 = v91;
  v31 = _Block_copy(aBlock);
  if ([(HDSeriesQuantityDataAggregator *)selfCopy shouldAggregateToSeriesForState:v98 collector:collectorCopy device:deviceCopy requestedAggregationDate:dateCopy mode:mode options:options])
  {
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_313;
    v117[3] = &unk_2786149C8;
    v117[4] = selfCopy;
    v118 = deviceCopy;
    v120 = buf;
    v90 = v92;
    v119 = v90;
    v100 = _Block_copy(v117);
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    unaggregatedSensorData2 = [(HDDataAggregationState *)v98 unaggregatedSensorData];
    v33 = [unaggregatedSensorData2 countByEnumeratingWithState:&v113 objects:v154 count:16];
    if (v33)
    {
      v34 = *v114;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v114 != v34)
          {
            objc_enumerationMutation(unaggregatedSensorData2);
          }

          v36 = *(*(&v113 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"HDSeriesQuantityDataAggregator.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"[datum isKindOfClass:[HDQuantityDatum class]]"}];
          }

          if (*(*&buf[8] + 40))
          {
            v37 = v149[5];
            v38 = v139[3];
            v39 = [v133[5] count];
            if ([(HDSeriesQuantityDataAggregator *)selfCopy requiresNewSeriesForDatum:v36 lastDatum:v37 seriesLength:v39 + v38 currentSeries:*(*&buf[8] + 40) configuration:configuration aggregationInterval:v25])
            {
              v31[2](v31);
            }
          }

          if (!*(*&buf[8] + 40))
          {
            v100[2](v100, v36);
          }

          v40 = v133[5];
          if (!v40)
          {
            v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v42 = v133[5];
            v133[5] = v41;

            v40 = v133[5];
          }

          [(HDSeriesQuantityDataAggregator *)selfCopy addDatum:v36 toAccumulatedData:v40];
          objc_storeStrong(v149 + 5, v36);
          v43 = v139[3];
          if ([v133[5] count] + v43 == 289)
          {
            v31[2](v31);
          }
        }

        v33 = [unaggregatedSensorData2 countByEnumeratingWithState:&v113 objects:v154 count:16];
      }

      while (v33);
    }

    v45 = selfCopy;
    if ([v133[5] count])
    {
      date = [MEMORY[0x277CBEAA8] date];
      [configuration collectionLatency];
      v48 = v47;
      for (j = 0; j < [v133[5] count]; ++j)
      {
        v50 = [v133[5] objectAtIndexedSubscript:j];
        dateInterval = [v50 dateInterval];
        v52 = dateInterval;
        if (!dateCopy)
        {
          goto LABEL_44;
        }

        endDate = [dateInterval endDate];
        v54 = [endDate hk_isBeforeOrEqualToDate:dateCopy];

        if (v54 & 1) != 0 || !mode && ([v52 startDate], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "hk_isBeforeOrEqualToDate:", dateCopy), v55, (v56))
        {
        }

        else
        {
LABEL_44:
          endDate2 = [v52 endDate];
          [date timeIntervalSinceDate:endDate2];
          v59 = v58 < v48;

          if (v59)
          {
            break;
          }
        }
      }

      if (j)
      {
        v61 = [v133[5] subarrayWithRange:{0, j}];
        [v93 addObjectsFromArray:v61];
        lastObject = [v61 lastObject];
        v63 = v143[5];
        v143[5] = lastObject;

        v64 = [(HDSeriesQuantityDataAggregator *)selfCopy _codableDatumsFromData:v61];
        [v133[5] removeObjectsInRange:{0, j}];
        v139[3] += j;
        v65 = *(*&buf[8] + 40);
        if (!v65)
        {
          firstObject = [v61 firstObject];
          v100[2](v100, firstObject);

          v65 = *(*&buf[8] + 40);
        }

        v67 = v65;
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_3;
        v108[3] = &unk_2786149F0;
        v109 = v91;
        v68 = v64;
        v110 = v68;
        v69 = v67;
        v111 = v69;
        v112 = selfCopy;
        v70 = [v108 copy];
        v71 = _Block_copy(v70);
        [v90 addObject:v71];
      }

      v45 = selfCopy;
    }

    if ((options & 2) != 0)
    {
      v31[2](v31);
    }

    v72 = *(*&buf[8] + 40);
    if (v72 && [(HDSeriesQuantityDataAggregator *)v45 shouldFreezeCurrentSeries:v72 lastDatum:v149[5] seriesLength:v139[3] configuration:configuration aggregationInterval:v25])
    {
      v31[2](v31);
    }

    v73 = [_HDSeriesQuantityDataAggregationState alloc];
    v74 = v133[5];
    v75 = v74;
    if (!v74)
    {
      v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v76 = [(_HDSeriesQuantityDataAggregationState *)v73 initWithRemainingSensorData:v75 currentSeries:*(*&buf[8] + 40) lastDatum:v143[5] length:v139[3]];
    if (!v74)
    {
    }

    if ([v90 count])
    {
      v77 = [HDDataAggregationResult alloc];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_4;
      v103[3] = &unk_278614A18;
      v104 = v90;
      v105 = selfCopy;
      v107 = &v142;
      v106 = collectorCopy;
      v60 = [(HDDataAggregationResult *)v77 initWithResultingAggregationState:v76 consumedSensorData:v93 persistenceHandler:v103];
    }

    else
    {
      v60 = [[HDDataAggregationResult alloc] initWithResultingAggregationState:v76 consumedSensorData:0 persistenceHandler:0];
    }
  }

  else
  {
    v31[2](v31);
    v121.receiver = selfCopy;
    v121.super_class = HDSeriesQuantityDataAggregator;
    v60 = [(HDActiveQuantityDataAggregator *)&v121 aggregateForState:v98 collector:collectorCopy device:deviceCopy requestedAggregationDate:dateCopy mode:mode options:options error:error];
  }

  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(&v142, 8);

  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(buf, 8);

  v78 = *MEMORY[0x277D85DE8];

  return v60;
}

void __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 64) + 8) + 40)];
  v2 = [(HDSeriesQuantityDataAggregator *)*(a1 + 40) _codableDatumsFromData:?];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = [v2 count];
  v5 = [*(a1 + 32) lastObject];
  v6 = *(*(a1 + 80) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 88) + 8) + 40);
  v9 = *(*(*(a1 + 96) + 8) + 40);
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 96) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  *(*(*(a1 + 72) + 8) + 24) = 0;
  if (v8)
  {
    v16 = v4 + v3;
    v17 = *(a1 + 48);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2;
    v25 = &unk_278614950;
    v26 = v2;
    v27 = *(a1 + 56);
    v18 = v8;
    v19 = *(a1 + 40);
    v28 = v18;
    v29 = v19;
    v30 = v9;
    v31 = v16;
    v20 = [&v22 copy];
    v21 = _Block_copy(v20);
    [v17 addObject:{v21, v22, v23, v24, v25}];
  }
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v83 = 0;
    v9 = [v6 insertValues:v7 series:v8 error:&v83];
    v10 = v83;
    v11 = v10;
    if (!v9)
    {
      v50 = [(HDSeriesQuantityDataAggregator *)*(a1 + 56) _successForPersistenceError:v10 series:*(a1 + 48) error:a3];
      goto LABEL_33;
    }
  }

  v80 = a3;
  v12 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = [*(a1 + 56) dataCollectionManager];
  v15 = [v14 profile];
  v16 = v13;
  v81 = v12;
  v17 = v5;
  v18 = v15;
  v79 = objc_opt_self();
  v19 = [v18 daemon];
  v20 = [v19 behavior];
  LOBYTE(v12) = [v20 isAppleInternalInstall];
  v21 = _HDIsUnitTesting;

  v22 = MEMORY[0x277CCC298];
  if ((v12 & 1) != 0 || v21)
  {
    v23 = [v16 sampleType];
    if ([v23 code] == 173)
    {
LABEL_26:

      goto LABEL_27;
    }

    v24 = [v16 sampleType];
    v25 = [v24 code];

    v26 = v25 == 172;
    v22 = MEMORY[0x277CCC298];
    if (!v26)
    {
      v84 = 0;
      v27 = v16;
      v75 = v17;
      v77 = v18;
      v28 = v81;
      objc_opt_self();
      v29 = MEMORY[0x277CBEAA8];
      v78 = v27;
      [v27 _startTimestamp];
      v31 = [v29 dateWithTimeIntervalSinceReferenceDate:v30 + 1.0];
      v32 = [v28 dateInterval];

      v33 = [v32 endDate];
      v34 = [v33 dateByAddingTimeInterval:-1.0];

      v35 = v77;
      v36 = 0;
      if (([v31 hk_isAfterOrEqualToDate:v34] & 1) == 0)
      {
        v73 = v31;
        v37 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v31 endDate:v34];
        v38 = [v78 quantityType];
        v72 = v37;
        v39 = v37;
        v35 = v77;
        v74 = HDSampleEntityPredicateForDateInterval(v39, v38);

        v40 = [v77 dataProvenanceManager];
        v41 = [v40 provenanceEntityForProvenance:v75 error:&v84];

        v42 = v41;
        if (v41)
        {
          v71 = v34;
          v43 = MEMORY[0x277D10B18];
          v70 = v41;
          v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v41, "persistentID")}];
          v45 = [v43 predicateWithProperty:@"provenance" equalToValue:v44];

          v46 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v74 otherPredicate:v45];
          v47 = [v78 quantityType];
          *buf = 0;
          v69 = v46;
          v36 = [HDSampleEntity anySampleOfType:v47 profile:v77 encodingOptions:0 predicate:v46 error:buf];
          v48 = *buf;

          if (v36)
          {
            v49 = v36;
          }

          else if (v48)
          {
            v51 = v48;
            v84 = v48;
          }

          v35 = v77;
          v31 = v73;
          v42 = v70;
          v34 = v71;
        }

        else
        {
          v36 = 0;
          v31 = v73;
        }
      }

      v23 = v84;
      if (v36)
      {
        v76 = v17;
        _HKInitializeLogging();
        v52 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = v79;
          v86 = 2114;
          v87 = v78;
          v88 = 2114;
          v89 = v36;
          _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: new series %{public}@ overlaps with %{public}@", buf, 0x20u);
        }

        [v77 daemon];
        v54 = v53 = v36;
        v55 = [v54 autoBugCaptureReporter];
        v56 = [v78 quantityType];
        [v55 reportDataCollectionSeriesProblem:@"overlap" quantityType:v56];

        v36 = v53;
        v17 = v76;
      }

      if (v23)
      {
        _HKInitializeLogging();
        v57 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          *&buf[4] = v79;
          v86 = 2114;
          v87 = v78;
          v88 = 2114;
          v89 = v23;
          _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_INFO, "%{public}@: error checking for overlap with %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v22 = MEMORY[0x277CCC298];
      goto LABEL_26;
    }
  }

LABEL_27:

  _HKInitializeLogging();
  v58 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v60 = *(a1 + 48);
    v59 = *(a1 + 56);
    v62 = *(a1 + 64);
    v61 = *(a1 + 72);
    *buf = 138544130;
    *&buf[4] = v59;
    v86 = 2112;
    v87 = v60;
    v88 = 2048;
    v89 = v61;
    v90 = 2112;
    v91 = v62;
    _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Freezing series %@, length %ld, with final datum %@", buf, 0x2Au);
  }

  v63 = *(a1 + 40);
  v64 = *(a1 + 48);
  v65 = [*(a1 + 64) metadata];
  v82 = 0;
  v66 = [v63 freezeSeries:v64 metadata:v65 endDate:0 error:&v82];
  v11 = v82;

  if (v66)
  {
    v50 = 1;
  }

  else
  {
    v50 = [(HDSeriesQuantityDataAggregator *)*(a1 + 56) _successForPersistenceError:v11 series:*(a1 + 48) error:v80];
  }

LABEL_33:
  v67 = *MEMORY[0x277D85DE8];
  return v50;
}

void __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277CCD800];
    v6 = *(a1 + 40);
    v7 = a2;
    v8 = [v3 quantityType];
    v9 = [v7 quantity];
    v10 = [v7 dateInterval];

    v11 = [v10 startDate];
    v3 = [v5 _unfrozenQuantitySampleWithQuantityType:v8 quantity:v9 startDate:v11 device:v6];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  v12 = *(a1 + 48);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2_314;
  v19 = &unk_2786149A0;
  v20 = *(a1 + 32);
  v21 = v3;
  v13 = v3;
  v14 = [&v16 copy];
  v15 = _Block_copy(v14);
  [v12 addObject:{v15, v16, v17, v18, v19, v20}];
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2_314(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 dataCollectionManager];
  v8 = [v7 profile];
  v9 = [v8 dataManager];
  v14[0] = *(a1 + 40);
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 insertDataObjects:v10 withProvenance:v6 creationDate:1 skipInsertionFilter:a3 error:CFAbsoluteTimeGetCurrent()];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v12 = 0;
  v8 = [v5 insertValues:v6 series:v7 error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = [(HDSeriesQuantityDataAggregator *)a1[7] _successForPersistenceError:v9 series:a1[6] error:a3];
  }

  return v10;
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = MEMORY[0x277CCC298];
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = (*(*(*(&v20 + 1) + 8 * v10) + 16))();
        v12 = 0;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v13 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 40);
            *buf = 138543618;
            v25 = v14;
            v26 = 2114;
            v27 = v12;
            _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring failed persistence: %{public}@", buf, 0x16u);
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = [*(a1 + 40) didPersistObjects:0 lastDatum:v15 collector:*(a1 + 48) error:a3];
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)initialAggregationState
{
  v2 = [_HDSeriesQuantityDataAggregationState alloc];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(_HDSeriesQuantityDataAggregationState *)v2 initWithRemainingSensorData:v3 currentSeries:0 lastDatum:0 length:0];

  return v4;
}

@end