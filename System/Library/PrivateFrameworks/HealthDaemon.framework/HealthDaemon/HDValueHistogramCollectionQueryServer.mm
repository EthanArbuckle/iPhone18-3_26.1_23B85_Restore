@interface HDValueHistogramCollectionQueryServer
- (HDValueHistogramCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDValueHistogramCollectionQueryServer

- (HDValueHistogramCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDValueHistogramCollectionQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
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
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  quantityType = [(HDQueryServer *)self quantityType];
  v41 = 0;
  v6 = [(HDQueryServer *)self authorizationStatusRecordForType:quantityType error:&v41];
  v7 = v41;

  if (v6)
  {
    if ([v6 canRead])
    {
      v40 = v7;
      if (self)
      {
        quantityRanges = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration quantityRanges];
        anchorDate = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration anchorDate];
        intervalComponents = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration intervalComponents];
        v36 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:anchorDate intervalComponents:intervalComponents];
        v8 = [HDValueHistogramCollectionCalculator alloc];
        quantityType2 = [(HDQueryServer *)self quantityType];
        v10 = [(HDValueHistogramCollectionCalculator *)v8 initWithQuantityType:quantityType2 quantityRanges:quantityRanges intervalCollection:v36];

        filter = [(HDQueryServer *)self filter];
        profile = [(HDQueryServer *)self profile];
        v35 = [filter predicateWithProfile:profile];

        objectType = [(HDQueryServer *)self objectType];
        v14 = HDSampleEntityPredicateForDataType(objectType);

        v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v35 otherPredicate:v14];
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 0;
        profile2 = [(HDQueryServer *)self profile];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __87__HDValueHistogramCollectionQueryServer__queue_fetchValueHistogramCollectionWithError___block_invoke;
        v48 = &unk_278622A70;
        v17 = v10;
        v49 = v17;
        selfCopy = self;
        v51 = &v43;
        [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v15 profile:profile2 options:0 error:&v40 handler:buf];

        if (*(v44 + 24) == 1)
        {
          v18 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Query stopped before completing sample enumeration"];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
            v40 = v19;
          }

          result = 0;
        }

        else
        {
          result = [(HDValueHistogramCollectionCalculator *)v17 result];
        }

        _Block_object_dispose(&v43, 8);
        v31 = v40;
      }

      else
      {
        result = 0;
        v31 = v7;
      }

      v32 = v31;

      queryUUID = [(HDQueryServer *)self queryUUID];
      if (v32)
      {
        [remoteObjectProxy client_deliverError:v32 forQuery:queryUUID];
      }

      else
      {
        [remoteObjectProxy client_deliverValueHistogramCollection:result forQuery:queryUUID];
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

      result = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration quantityRanges];
      v26 = objc_alloc(MEMORY[0x277CCDB90]);
      anchorDate2 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration anchorDate];
      intervalComponents2 = [(HKValueHistogramCollectionQueryServerConfiguration *)self->_valueHistogramCollectionQueryServerConfiguration intervalComponents];
      v29 = [v26 initWithQuantityRanges:result valueHistogramsByDateIntervalIndex:MEMORY[0x277CBEC10] anchorDate:anchorDate2 intervalComponents:intervalComponents2];

      queryUUID2 = [(HDQueryServer *)self queryUUID];
      [remoteObjectProxy client_deliverValueHistogramCollection:v29 forQuery:queryUUID2];
    }
  }

  else
  {
    result = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v7 forQuery:result];
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