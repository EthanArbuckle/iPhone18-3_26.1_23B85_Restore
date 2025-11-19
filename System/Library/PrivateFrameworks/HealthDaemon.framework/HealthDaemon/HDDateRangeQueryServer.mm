@interface HDDateRangeQueryServer
- (HDDateRangeQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (_BYTE)_queue_sendUpdatedResultsToClient;
- (void)_deliverErrorToClient:(void *)a1;
- (void)_queue_start;
- (void)_queue_updateTimePeriodsForSampleTypes:(id *)a1;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDDateRangeQueryServer

- (HDDateRangeQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HDDateRangeQueryServer;
  v11 = [(HDQueryServer *)&v18 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sampleTypesToReFetch = v11->_sampleTypesToReFetch;
    v11->_sampleTypesToReFetch = v12;

    v14 = [v10 profile];
    v15 = [v14 database];
    v16 = [(HDQueryServer *)v11 queryQueue];
    [v15 addProtectedDataObserver:v11 queue:v16];
  }

  return v11;
}

- (void)_queue_start
{
  v8.receiver = self;
  v8.super_class = HDDateRangeQueryServer;
  [(HDQueryServer *)&v8 _queue_start];
  v3 = [(HDQueryServer *)self profile];
  v7 = 0;
  v4 = [HDSampleEntity dateIntervalsForSampleTypes:0 profile:v3 error:&v7];
  v5 = v7;
  v6 = [v4 mutableCopy];

  if (v6)
  {
    objc_storeStrong(&self->_dateIntervalsBySampleType, v6);
    [(HDDateRangeQueryServer *)self _queue_sendUpdatedResultsToClient];
  }

  else
  {
    [(HDDateRangeQueryServer *)self _deliverErrorToClient:v5];
  }
}

- (void)_deliverErrorToClient:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = [a1 clientProxy];
    v4 = [a1 queryUUID];
    [v5 client_deliverError:v3 forQuery:v4];
  }
}

- (_BYTE)_queue_sendUpdatedResultsToClient
{
  if (result)
  {
    result[208] = 1;
    v1[0] = MEMORY[0x277D85DD0];
    v1[1] = 3221225472;
    v1[2] = __59__HDDateRangeQueryServer__queue_sendUpdatedResultsToClient__block_invoke;
    v1[3] = &unk_278613968;
    v1[4] = result;
    return [result onQueue:v1];
  }

  return result;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HDDateRangeQueryServer_samplesAdded_anchor___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(HDQueryServer *)self onQueue:v7];
}

void __46__HDDateRangeQueryServer_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v46 = v1;
  if (!v1)
  {
    goto LABEL_36;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = [v9 sampleType];
        v11 = [v3 objectForKeyedSubscript:v10];
        if (!v11 || ([v9 _startTimestamp], v13 = v12, objc_msgSend(v11, "_startTimestamp"), v13 < v14))
        {
          [v3 setObject:v9 forKeyedSubscript:v10];
        }

        v15 = [v51 objectForKeyedSubscript:v10];
        if (!v15 || ([v9 _endTimestamp], v17 = v16, objc_msgSend(v15, "_endTimestamp"), v17 > v18))
        {
          [v51 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = [v3 keyEnumerator];
  v50 = [v19 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (!v50)
  {

    goto LABEL_35;
  }

  v43 = v2;
  v20 = 0;
  v48 = *v53;
  v49 = v3;
  v21 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
  v22 = v46;
  obj = v19;
  do
  {
    for (j = 0; j != v50; ++j)
    {
      if (*v53 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v52 + 1) + 8 * j);
      v25 = [v3 objectForKeyedSubscript:v24];
      v26 = [v51 objectForKeyedSubscript:v24];
      v27 = [*&v22[v21[108]] objectForKeyedSubscript:v24];
      if (!v27)
      {
        v38 = objc_alloc(MEMORY[0x277CCA970]);
        v39 = [v25 startDate];
        v40 = [v26 endDate];
        v28 = [v38 initWithStartDate:v39 endDate:v40];

        [*&v22[v21[108]] setObject:v28 forKeyedSubscript:v24];
        v20 = 1;
        goto LABEL_30;
      }

      v28 = v27;
      v47 = v20;
      v29 = v21;
      v30 = [v27 startDate];
      v31 = [v25 startDate];
      v32 = [v30 earlierDate:v31];

      v33 = [v28 endDate];
      v34 = [v26 endDate];
      v35 = [v33 laterDate:v34];

      v36 = [v28 startDate];
      if ([v36 isEqualToDate:v32])
      {
        v37 = [v28 endDate];
        if ([v37 isEqualToDate:v35])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v22 = v46;
          v20 = v47;
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }
      }

      v22 = v46;
LABEL_28:
      v41 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v32 endDate:v35];
      [*&v22[v29[108]] setObject:v41 forKeyedSubscript:v24];

      v20 = 1;
LABEL_29:

      v21 = v29;
LABEL_30:

      v3 = v49;
    }

    v50 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  }

  while (v50);

  v2 = v43;
  if (v20)
  {
    [(HDDateRangeQueryServer *)v22 _queue_sendUpdatedResultsToClient];
  }

LABEL_35:

LABEL_36:
  v42 = *MEMORY[0x277D85DE8];
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDDateRangeQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(HDQueryServer *)self onQueue:v7];
}

void __59__HDDateRangeQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v1)
  {
    v2 = [v1 profile];
    v3 = [v2 database];
    v4 = [v3 isProtectedDataAvailable];

    if (v4)
    {
      [(HDDateRangeQueryServer *)v1 _queue_updateTimePeriodsForSampleTypes:v5];
    }

    else
    {
      [v1[28] addObjectsFromArray:v5];
    }
  }
}

- (void)_queue_updateTimePeriodsForSampleTypes:(id *)a1
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC308];
  v5 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v35 = a1;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Updating periods for sample types", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [a1[27] removeObjectForKey:*(*(&v29 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v8);
  }

  v11 = [a1 profile];
  v28 = 0;
  v12 = [HDSampleEntity dateIntervalsForSampleTypes:v6 profile:v11 error:&v28];
  v13 = v28;

  if (v12)
  {
    v23 = v13;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v12 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * j);
          v20 = [v12 objectForKeyedSubscript:v19];
          [a1[27] setObject:v20 forKeyedSubscript:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v16);
    }

    [(HDDateRangeQueryServer *)a1 _queue_sendUpdatedResultsToClient];
    v13 = v23;
  }

  else
  {
    _HKInitializeLogging();
    v21 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = a1;
      v36 = 2114;
      v37 = v13;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Error reading intervals from sample types: %{public}@", buf, 0x16u);
    }

    if ([v13 hk_isDatabaseAccessibilityError])
    {
      [a1[28] addObjectsFromArray:v6];
    }

    else
    {
      [(HDDateRangeQueryServer *)a1 _deliverErrorToClient:v13];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __59__HDDateRangeQueryServer__queue_sendUpdatedResultsToClient__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 208) == 1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 216);
      v10 = v2;
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = [v9 count];
      _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Sending %lu updated results to client", &v11, 0x16u);
    }

    v3 = [*(a1 + 32) clientProxy];
    v4 = *(a1 + 32);
    v5 = v4[27];
    v6 = [v4 queryUUID];
    [v3 client_deliverDateIntervals:v5 forQuery:v6];

    *(*(a1 + 32) + 208) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  v6 = [(HDQueryServer *)self queryQueue];
  dispatch_assert_queue_V2(v6);

  if (self && v4 && [(NSMutableSet *)self->_sampleTypesToReFetch count])
  {
    v7 = [(NSMutableSet *)self->_sampleTypesToReFetch allObjects];
    [(NSMutableSet *)self->_sampleTypesToReFetch removeAllObjects];
    [(HDDateRangeQueryServer *)&self->super.super.isa _queue_updateTimePeriodsForSampleTypes:v7];
  }
}

@end