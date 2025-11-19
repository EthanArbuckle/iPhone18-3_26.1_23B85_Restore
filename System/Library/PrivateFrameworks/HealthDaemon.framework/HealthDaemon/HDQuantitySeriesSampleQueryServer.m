@interface HDQuantitySeriesSampleQueryServer
- (HDQuantitySeriesSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_clientProxy;
- (uint64_t)_deliverEnumerationResults:(uint64_t)a1 latestUUID:(void *)a2 latestSampleStartTime:(void *)a3 sampleIDsToLookup:(void *)a4 isFinal:(unsigned int)a5 error:(double)a6;
- (void)_deliverEnumerationResults:(uint64_t)a3 isFinal:;
- (void)_deliverError:(void *)a1;
- (void)_deliverQuantitySeries:(uint64_t)a3 seriesAnchor:(uint64_t)a4 isFinal:;
- (void)_queue_start;
@end

@implementation HDQuantitySeriesSampleQueryServer

- (HDQuantitySeriesSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v21.receiver = self;
  v21.super_class = HDQuantitySeriesSampleQueryServer;
  v11 = [(HDQueryServer *)&v21 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 quantitySample];
    sample = v11->_sample;
    v11->_sample = v12;

    v11->_lastDatumIndex = [v10 seriesAnchor];
    v11->_mode = [v10 mode];
    v11->_options = [v10 options];
    v14 = [v10 maximumStartDate];
    maximumDeliveredStartDate = v11->_maximumDeliveredStartDate;
    v11->_maximumDeliveredStartDate = v14;

    v16 = [v10 latestUUID];
    latestDeliveredUUID = v11->_latestDeliveredUUID;
    v11->_latestDeliveredUUID = v16;

    v18 = [v10 latestSampleStartDate];
    latestDeliveredSampleStartDate = v11->_latestDeliveredSampleStartDate;
    v11->_latestDeliveredSampleStartDate = v18;

    v11->_batchThreshold = 400;
  }

  return v11;
}

- (void)_queue_start
{
  v94 = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = HDQuantitySeriesSampleQueryServer;
  [(HDQueryServer *)&v64 _queue_start];
  v3 = [(HDQueryServer *)self quantityType];
  v63 = 0;
  v4 = [(HDQueryServer *)self authorizationStatusRecordForType:v3 error:&v63];
  v5 = v63;

  if (!v4)
  {
    [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v5];
    goto LABEL_43;
  }

  if ([v4 canRead])
  {
    mode = self->_mode;
    if (mode != 1)
    {
      if (!mode)
      {
        if ([(HKQuantitySample *)self->_sample count]== 1)
        {
          v7 = objc_alloc_init(MEMORY[0x277CCD178]);
          v8 = objc_alloc_init(MEMORY[0x277CCD180]);
          v9 = [(HKQuantitySample *)self->_sample quantity];
          v10 = [(HKQuantitySample *)self->_sample quantity];
          v11 = [v10 _unit];
          [v9 doubleValueForUnit:v11];
          [v8 setValue:?];

          v12 = [(HKQuantitySample *)self->_sample startDate];
          [v12 timeIntervalSinceReferenceDate];
          [v8 setTimeInterval:?];

          [v7 addValues:v8];
          [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v7 seriesAnchor:self->_lastDatumIndex isFinal:1];
        }

        else
        {
          v71 = 0;
          v72 = &v71;
          v73 = 0x2020000000;
          v74 = 1;
          v67 = 0;
          v68 = &v67;
          v69 = 0x2020000000;
          v70 = 0;
          v88 = 0;
          v89 = &v88;
          v90 = 0x3032000000;
          v91 = __Block_byref_object_copy__137;
          v92 = __Block_byref_object_dispose__137;
          v93 = objc_alloc_init(MEMORY[0x277CCD178]);
          v27 = [(HKQuantitySample *)self->_sample UUID];
          v28 = [(HDQueryServer *)self profile];
          v75 = 0;
          v76 = MEMORY[0x277D85DD0];
          v77 = 3221225472;
          v78 = __65__HDQuantitySeriesSampleQueryServer__queue_startSingleSeriesMode__block_invoke;
          v79 = &unk_278625FE8;
          v80 = self;
          v81 = &v71;
          v82 = &v67;
          v83 = &v88;
          v29 = [HDQuantitySampleSeriesEntity enumerateDataWithIdentifier:v27 profile:v28 error:&v75 handler:&v76];
          v7 = v75;

          if (v29)
          {
            if (*(v72 + 24) == 1)
            {
              v30 = *(v68 + 3);
              self->_lastDatumIndex = v30;
              [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v30 seriesAnchor:1 isFinal:?];
            }
          }

          else
          {
            [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v7];
          }

          _Block_object_dispose(&v88, 8);

          _Block_object_dispose(&v67, 8);
          _Block_object_dispose(&v71, 8);
        }

        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v75 = 0;
    v14 = MEMORY[0x277CBEB18];
    v15 = [(HDQueryServer *)self quantityType];
    v16 = HDSampleEntityPredicateForDataType(v15);
    v17 = [v14 arrayWithObject:v16];

    v18 = [(HDQueryServer *)self filter];
    v19 = [(HDQueryServer *)self profile];
    v20 = [v18 predicateWithProfile:v19];

    if (v20)
    {
      [v17 addObject:v20];
    }

    v21 = [(HDQueryServer *)self client];
    v22 = [v21 authorizationOracle];
    v23 = [(HDQueryServer *)self objectType];
    v24 = [v22 additionalAuthorizationPredicateForObjectType:v23 error:&v75];

    if (!v24)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:&v75 code:3 description:@"Unable to determine authorization status."];
      v61 = 0;
LABEL_27:

      v41 = v75;
      if (v61)
      {
        v71 = 0;
        v72 = &v71;
        v73 = 0x2020000000;
        v74 = 1;
        options = self->_options;
        v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v44 = objc_alloc_init(MEMORY[0x277CCD190]);
        v88 = 0;
        v89 = &v88;
        v90 = 0x3032000000;
        v91 = __Block_byref_object_copy__137;
        v92 = __Block_byref_object_dispose__137;
        v93 = 0;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2020000000;
        v70 = 0;
        v45 = [(HDQueryServer *)self profile];
        v46 = options & 1;
        v47 = options & 2;
        v66 = v41;
        v76 = MEMORY[0x277D85DD0];
        v77 = 3221225472;
        v78 = __64__HDQuantitySeriesSampleQueryServer__queue_startEnumerationMode__block_invoke;
        v79 = &unk_278626010;
        v80 = self;
        v83 = &v71;
        v86 = v47 >> 1;
        v48 = v44;
        v81 = v48;
        v84 = &v88;
        v85 = &v67;
        v60 = v43;
        v82 = v60;
        v87 = v46;
        v49 = &v76;
        v50 = v45;
        v51 = v61;
        objc_opt_self();
        if (v47)
        {
          v52 = [HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v51 profile:v50 options:3 error:&v66 handler:v49];
        }

        else
        {
          v52 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v51 profile:v50 options:0 error:&v66 handler:v49];
        }

        v53 = v52;

        v54 = v66;
        if (!v53)
        {
          [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v54];
        }

        if (*(v72 + 24) == 1)
        {
          v55 = v89[5];
          v56 = v68[3];
          v65 = v54;
          v57 = [HDQuantitySeriesSampleQueryServer _deliverEnumerationResults:v48 latestUUID:v55 latestSampleStartTime:v60 sampleIDsToLookup:1u isFinal:v56 error:?];
          v41 = v65;

          if ((v57 & 1) == 0)
          {
            [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v41];
          }
        }

        else
        {
          v41 = v54;
        }

        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(&v88, 8);

        _Block_object_dispose(&v71, 8);
      }

      else
      {
        [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v41];
      }

      goto LABEL_43;
    }

    [v17 addObject:v24];
    v25 = 0x277D10000;
    if ((self->_options & 2) != 0)
    {
      if (self->_latestDeliveredSampleStartDate)
      {
        v26 = HDSampleEntityPredicateForStartDate(1);
        v31 = MEMORY[0x277D10B18];
        latestDeliveredUUID = self->_latestDeliveredUUID;
        v33 = _HDSQLiteValueForUUID();
        v62 = [v31 predicateWithProperty:@"uuid" greaterThanOrEqualToValue:v33];

        v34 = MEMORY[0x277D10B20];
        v76 = v26;
        v77 = v62;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:2];
        v59 = [v34 predicateMatchingAllPredicates:v35];

        latestDeliveredSampleStartDate = self->_latestDeliveredSampleStartDate;
        v37 = HDSampleEntityPredicateForStartDate(5);
        v38 = MEMORY[0x277D10B20];
        v88 = v37;
        v89 = v59;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:2];
        v40 = [v38 predicateMatchingAnyPredicates:v39];

        [v17 addObject:v40];
        goto LABEL_25;
      }
    }

    else if (self->_maximumDeliveredStartDate)
    {
      v26 = HDSampleEntityPredicateForEndDate(6);
      [v17 addObject:v26];
LABEL_25:

      v25 = 0x277D10000uLL;
    }

    v61 = [*(v25 + 2848) predicateMatchingAllPredicates:v17];
    goto LABEL_27;
  }

  if (self)
  {
    v13 = self->_mode;
    if (v13 == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x277CCD190]);
      [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverEnumerationResults:v7 isFinal:1];
    }

    else
    {
      if (v13)
      {
        goto LABEL_43;
      }

      v7 = objc_alloc_init(MEMORY[0x277CCD178]);
      [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v7 seriesAnchor:self->_lastDatumIndex isFinal:1];
    }

LABEL_42:
  }

LABEL_43:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_deliverError:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = [(HDQuantitySeriesSampleQueryServer *)a1 _clientProxy];
    v4 = [a1 queryUUID];
    [v5 client_deliverError:v3 forQuery:v4];
  }
}

- (id)_clientProxy
{
  v2 = [a1 client];
  v3 = [v2 connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDQuantitySeriesSampleQueryServer__clientProxy__block_invoke;
  v6[3] = &unk_2786138D0;
  v6[4] = a1;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)_deliverQuantitySeries:(uint64_t)a3 seriesAnchor:(uint64_t)a4 isFinal:
{
  v7 = a2;
  if (a1)
  {
    v12 = v7;
    v8 = [(HDQuantitySeriesSampleQueryServer *)a1 _clientProxy];
    v9 = [a1 queryUUID];
    v10 = _Block_copy(a1[34]);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, a1);
    }

    [v8 client_deliverQuantitySeries:v12 seriesAnchor:a3 isFinal:a4 query:v9];

    v7 = v12;
  }
}

- (void)_deliverEnumerationResults:(uint64_t)a3 isFinal:
{
  v9 = a2;
  v5 = [(HDQuantitySeriesSampleQueryServer *)a1 _clientProxy];
  v6 = [a1 queryUUID];
  v7 = _Block_copy(a1[34]);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, a1);
  }

  [v5 client_deliverEnumerationResults:v9 isFinal:a3 query:v6];
}

void __49__HDQuantitySeriesSampleQueryServer__clientProxy__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Error during XPC call to client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HDQuantitySeriesSampleQueryServer__queue_startSingleSeriesMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    if (++*(*(*(a1 + 48) + 8) + 24) >= *(*(a1 + 32) + 224))
    {
      v5 = [*(*(*(a1 + 56) + 8) + 40) values];
      v6 = [v5 count];
      v7 = *(*(a1 + 32) + 216);

      if (v6 >= v7)
      {
        *(*(a1 + 32) + 224) = *(*(*(a1 + 48) + 8) + 24);
        [(HDQuantitySeriesSampleQueryServer *)*(a1 + 32) _deliverQuantitySeries:*(*(a1 + 32) + 224) seriesAnchor:0 isFinal:?];
        v8 = objc_alloc_init(MEMORY[0x277CCD178]);
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      [*(*(*(a1 + 56) + 8) + 40) addValues:v3];
    }

    v4 = 1;
  }

  return v4;
}

uint64_t __64__HDQuantitySeriesSampleQueryServer__queue_startEnumerationMode__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) == 0 && !objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    v23 = MEMORY[0x277CCDDB8];
    v24 = [*(a1 + 32) filter];
    LODWORD(v23) = [v23 filter:v24 acceptsDataObjectWithStartTimestamp:a6 endTimestamp:a7 valueInCanonicalUnit:a5];

    if (!v23)
    {
      return 1;
    }

    v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a9];
    v26 = *(a1 + 32);
    v27 = *(v26 + 248);
    v28 = *(v26 + 256);
    v29 = *(a1 + 80);
    obj = v25;
    v30 = v25;
    v31 = v27;
    v32 = v28;
    objc_opt_self();
    if (v31)
    {
      [v31 timeIntervalSinceReferenceDate];
      v34 = v33;
      if (v29)
      {
LABEL_8:
        if (v34 < a6 || ([v30 isEqual:v32] & 1) == 0)
        {
LABEL_18:

          v38 = [*(a1 + 40) results];
          v39 = [v38 count];
          v40 = *(*(a1 + 32) + 216);

          if (v39 >= v40)
          {
            v21 = 0;
            if (![HDQuantitySeriesSampleQueryServer _deliverEnumerationResults:*(a1 + 40) latestUUID:*(*(*(a1 + 64) + 8) + 40) latestSampleStartTime:*(a1 + 48) sampleIDsToLookup:0 isFinal:*(*(*(a1 + 72) + 8) + 24) error:?])
            {
LABEL_28:

              return v21;
            }

            [*(a1 + 48) removeAllObjects];
            v41 = [*(a1 + 40) results];
            [v41 removeAllObjects];

            v42 = *(*(a1 + 64) + 8);
            v43 = *(v42 + 40);
            *(v42 + 40) = 0;
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
          *(*(*(a1 + 72) + 8) + 24) = a3;
          if (*(a1 + 81))
          {
            v44 = v30;
          }

          else
          {
            v44 = 0;
          }

          v37 = [MEMORY[0x277CCD188] resultWithID:a2 UUID:v44 value:a11 count:a12 startTime:a5 endTime:a6 seriesIndex:a7];
          [*(a1 + 40) addResults:v37];
          if (*(a1 + 81) != 1)
          {
LABEL_27:

            v21 = 1;
            goto LABEL_28;
          }

          v45 = *(a1 + 48);
          v31 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
          [v45 addObject:v31];
LABEL_26:

          goto LABEL_27;
        }

LABEL_14:

        v37 = v30;
        goto LABEL_26;
      }
    }

    else
    {
      v35 = [MEMORY[0x277CBEAA8] distantPast];
      [v35 timeIntervalSinceReferenceDate];
      v34 = v36;

      if (v29)
      {
        goto LABEL_8;
      }
    }

    if (v34 <= a6 && (!v32 || v34 != a6 || [v30 hk_compare:v32] == 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v21 = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  return v21;
}

- (uint64_t)_deliverEnumerationResults:(uint64_t)a1 latestUUID:(void *)a2 latestSampleStartTime:(void *)a3 sampleIDsToLookup:(void *)a4 isFinal:(unsigned int)a5 error:(double)a6
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!a1)
  {
    goto LABEL_5;
  }

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v10 results];
  v15 = [v14 lastObject];
  [v15 startTime];
  v16 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
  v17 = *(a1 + 248);
  *(a1 + 248) = v16;

  objc_storeStrong((a1 + 256), a3);
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a6];
  v19 = *(a1 + 264);
  *(a1 + 264) = v18;

  v20 = [v11 hk_dataForUUIDBytes];
  v21 = [v10 results];
  v22 = [v21 lastObject];
  [v22 setUuid:v20];

  [v10 setLatestSampleStartTime:a6];
  if (![v12 count] || (v27 = v12, v28 = v10, v23 = HKWithAutoreleasePool(), v28, v27, v23))
  {
    [(HDQuantitySeriesSampleQueryServer *)a1 _deliverEnumerationResults:v10 isFinal:a5];
    v24 = 1;
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24;
}

uint64_t __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke(id *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a1[4] newDataEntityEnumerator];
  v5 = [a1[5] allObjects];
  v6 = HDDataEntityPredicateForRowIDs(v5);
  [v4 setPredicate:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke_2;
  v28[3] = &unk_2786204C8;
  v23 = v7;
  v29 = v23;
  if ([v4 enumerateWithError:a2 handler:v28])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [a1[6] results];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v4;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "persistentID")}];
          if (([v8 containsObject:v15] & 1) == 0)
          {
            [v8 addObject:v15];
            v16 = [v23 objectForKeyedSubscript:v15];
            v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:a2];
            if (!v17)
            {

              v19 = 0;
              goto LABEL_15;
            }

            v18 = v17;
            [v14 setQuantitySample:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_15:
      v4 = v22;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithLongLong:a3];
  [v4 setObject:v6 forKeyedSubscript:v7];

  return 1;
}

@end