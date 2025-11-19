@interface HDValueHistogramCollectionQueryServer
- (HDValueHistogramCollectionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDValueHistogramCollectionQueryServer

- (HDValueHistogramCollectionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDValueHistogramCollectionQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    valueHistogramCollectionQueryServerConfiguration = v11->_valueHistogramCollectionQueryServerConfiguration;
    v11->_valueHistogramCollectionQueryServerConfiguration = v12;
  }

  return v11;
}

- (void)_queue_start
{
  v52 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = HDValueHistogramCollectionQueryServer;
  [(HDQueryServer *)&v42 _queue_start];
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [v3 remoteObjectProxy];

  v5 = [(HDQueryServer *)self quantityType];
  v41 = 0;
  v6 = [(HDQueryServer *)self authorizationStatusRecordForType:v5 error:&v41];
  v7 = v41;

  if (v6)
  {
    if ([v6 canRead])
    {
      v40 = v7;
      if (self)
      {
        v37 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration quantityRanges];
        v39 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration anchorDate];
        v38 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration intervalComponents];
        v36 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:v39 intervalComponents:v38];
        v8 = [HDValueHistogramCollectionCalculator alloc];
        v9 = [(HDQueryServer *)self quantityType];
        v10 = [(HDValueHistogramCollectionCalculator *)v8 initWithQuantityType:v9 quantityRanges:v37 intervalCollection:v36];

        v11 = [(HDQueryServer *)self filter];
        v12 = [(HDQueryServer *)self profile];
        v35 = [v11 predicateWithProfile:v12];

        v13 = [(HDQueryServer *)self objectType];
        v14 = HDSampleEntityPredicateForDataType(v13);

        v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v35 otherPredicate:v14];
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        v16 = [(HDQueryServer *)self profile];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __87__HDValueHistogramCollectionQueryServer__queue_fetchValueHistogramCollectionWithError___block_invoke;
        v48 = &unk_278622A70;
        v17 = v10;
        v49 = v17;
        v50 = self;
        v51 = &v43;
        [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v15 profile:v16 options:0 error:&v40 handler:buf];

        if (*(v44 + 24) == 1)
        {
          v18 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Query stopped before completing sample enumeration"];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
            v40 = v19;
          }

          v21 = 0;
        }

        else
        {
          v21 = [(HDValueHistogramCollectionCalculator *)v17 result];
        }

        _Block_object_dispose(&v43, 8);
        v31 = v40;
      }

      else
      {
        v21 = 0;
        v31 = v7;
      }

      v32 = v31;

      v33 = [(HDQueryServer *)self queryUUID];
      if (v32)
      {
        [v4 client_deliverError:v32 forQuery:v33];
      }

      else
      {
        [v4 client_deliverValueHistogramCollection:v21 forQuery:v33];
      }

      v7 = v32;
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        v25 = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
      }

      v21 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration quantityRanges];
      v26 = objc_alloc(MEMORY[0x277CCDB90]);
      v27 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration anchorDate];
      v28 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration intervalComponents];
      v29 = [v26 initWithQuantityRanges:v21 valueHistogramsByDateIntervalIndex:MEMORY[0x277CBEC10] anchorDate:v27 intervalComponents:v28];

      v30 = [(HDQueryServer *)self queryUUID];
      [v4 client_deliverValueHistogramCollection:v29 forQuery:v30];
    }
  }

  else
  {
    v21 = [(HDQueryServer *)self queryUUID];
    [v4 client_deliverError:v7 forQuery:v21];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HDValueHistogramCollectionQueryServer__queue_fetchValueHistogramCollectionWithError___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  [*(a1 + 32) addSampleValue:a4 startTime:a2];
  v5 = [*(a1 + 40) _shouldStopProcessingQuery];
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v5 ^ 1u;
}

@end