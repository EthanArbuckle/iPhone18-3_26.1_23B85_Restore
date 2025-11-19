@interface HDWorkoutBuilderSampleQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDWorkoutBuilderSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (_BYTE)_queue_scheduleHistoricalQuery;
- (id)_workoutBuilderSampleQueryClientWithErrorHandler:(id)a1;
- (void)_queue_performHistoricalQuery;
- (void)_queue_start;
- (void)didCreateTaskServer:(id)a3;
- (void)workoutBuilderServer:(id)a3 addedQuantities:(id)a4;
- (void)workoutBuilderServer:(id)a3 addedSamples:(id)a4;
@end

@implementation HDWorkoutBuilderSampleQueryServer

- (HDWorkoutBuilderSampleQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = HDWorkoutBuilderSampleQueryServer;
  v12 = [(HDQueryServer *)&v21 initWithUUID:a3 configuration:v10 client:v11 delegate:a6];
  if (v12)
  {
    v12->_hasFinishedHistoricalFetch = [v10 needsHistoricalData] ^ 1;
    v13 = [v10 workoutBuilderIdentifier];
    workoutBuilderIdentifier = v12->_workoutBuilderIdentifier;
    v12->_workoutBuilderIdentifier = v13;

    v12->_deliverQuantities = [v10 deliverQuantities];
    v15 = [v11 profile];
    v16 = [v15 daemon];
    v17 = [v16 taskServerRegistry];
    v18 = v12->_workoutBuilderIdentifier;
    v19 = [(HDQueryServer *)v12 queryQueue];
    [v17 addObserver:v12 forTaskServerUUID:v18 queue:v19];
  }

  return v12;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 hk_assignError:a5 code:3 format:{@"Invalid configuration class %@.", v13}];

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v7 = [v6 workoutBuilderIdentifier];

  if (!v7)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Missing workout builder identifier.";
LABEL_9:
    [v14 hk_assignError:a5 code:3 description:v15];
    goto LABEL_10;
  }

  if ([v6 deliverQuantities])
  {
    v8 = [v6 objectType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = @"Attempt to request quantities for a non-quantity type.";
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)_workoutBuilderSampleQueryClientWithErrorHandler:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 clientProxy];
    v2 = [v4 remoteObjectProxyWithErrorHandler:v3];
  }

  return v2;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_queue_start
{
  v4.receiver = self;
  v4.super_class = HDWorkoutBuilderSampleQueryServer;
  [(HDQueryServer *)&v4 _queue_start];
  WeakRetained = objc_loadWeakRetained(&self->_workoutBuilderServer);

  if (WeakRetained)
  {
    [(HDWorkoutBuilderSampleQueryServer *)self _queue_performHistoricalQuery];
  }
}

- (void)_queue_performHistoricalQuery
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 224));

    if (WeakRetained)
    {
      if ((*(a1 + 208) & 1) == 0)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke;
        v35[3] = &unk_2786138D0;
        v35[4] = a1;
        v3 = [(HDWorkoutBuilderSampleQueryServer *)a1 _workoutBuilderSampleQueryClientWithErrorHandler:v35];
        if (*(a1 + 211) == 1)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v37 = __Block_byref_object_copy__31;
          v38 = __Block_byref_object_dispose__31;
          v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v4 = objc_loadWeakRetained((a1 + 224));
          v5 = [a1 sampleType];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke_309;
          v30[3] = &unk_278617BA0;
          v33 = buf;
          v34 = 0;
          v6 = v3;
          v31 = v6;
          v32 = a1;
          v7 = [v4 enumerateQuantitiesOfType:v5 error:&v34 handler:v30];
          v8 = v34;

          if ([*(*&buf[8] + 40) count] || (*(a1 + 209) & 1) == 0)
          {
            v9 = *(*&buf[8] + 40);
            v10 = *(a1 + 208);
            v11 = [a1 queryUUID];
            [v6 client_deliverQuantities:v9 hasFinishedHistoricalFetch:v10 queryUUID:v11];

            *(a1 + 209) = 1;
          }

          _Block_object_dispose(buf, 8);
          if (v7)
          {
LABEL_13:
            *(a1 + 208) = 1;
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v37 = __Block_byref_object_copy__31;
          v38 = __Block_byref_object_dispose__31;
          v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v13 = objc_loadWeakRetained((a1 + 224));
          v14 = MEMORY[0x277CBEB98];
          v15 = [a1 sampleType];
          v16 = [v14 setWithObject:v15];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke_2;
          v25[3] = &unk_278617BC8;
          v28 = buf;
          v29 = 0;
          v17 = v3;
          v26 = v17;
          v27 = a1;
          v18 = [v13 enumerateSamplesOfTypes:v16 error:&v29 handler:v25];
          v19 = v29;

          if ([*(*&buf[8] + 40) count] || (*(a1 + 209) & 1) == 0)
          {
            v20 = *(*&buf[8] + 40);
            v21 = *(a1 + 208);
            v22 = [a1 queryUUID];
            [v17 client_deliverSamples:v20 hasFinishedHistoricalFetch:v21 queryUUID:v22];

            *(a1 + 209) = 1;
          }

          _Block_object_dispose(buf, 8);
          v8 = 0;
          if (v18)
          {
            goto LABEL_13;
          }
        }

        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC308];
        if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = a1;
          *&buf[12] = 2114;
          *&buf[14] = v8;
          _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to complete historical fetch: %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = a1;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to perform historical query: no workout builder server has been found yet.", buf, 0xCu);
      }
    }
  }

LABEL_19:
  v24 = *MEMORY[0x277D85DE8];
}

void __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send historical samples to client: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke_309(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a3;
  v7 = a2;
  if ([v5 count] >= 0x190)
  {
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) queryUUID];
    [v9 client_deliverQuantities:v8 hasFinishedHistoricalFetch:0 queryUUID:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  v15 = [objc_alloc(MEMORY[0x277CCDC08]) initWithQuantity:v7 dateInterval:v6];

  [v14 addObject:v15];
}

void __66__HDWorkoutBuilderSampleQueryServer__queue_performHistoricalQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(*(*(a1 + 48) + 8) + 40) count] >= 0x190)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) queryUUID];
    [v4 client_deliverSamples:v3 hasFinishedHistoricalFetch:0 queryUUID:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
}

- (_BYTE)_queue_scheduleHistoricalQuery
{
  if (result)
  {
    if ((result[208] & 1) == 0)
    {
      v1[0] = MEMORY[0x277D85DD0];
      v1[1] = 3221225472;
      v1[2] = __67__HDWorkoutBuilderSampleQueryServer__queue_scheduleHistoricalQuery__block_invoke;
      v1[3] = &unk_278613968;
      v1[4] = result;
      return [result scheduleDatabaseAccessOnQueueWithBlock:v1];
    }
  }

  return result;
}

- (void)didCreateTaskServer:(id)a3
{
  obj = a3;
  v4 = [(HDQueryServer *)self queryQueue];
  dispatch_assert_queue_V2(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_storeWeak(&self->_workoutBuilderServer, obj);
    [obj addSampleObserver:self];

    [(HDWorkoutBuilderSampleQueryServer *)self _queue_scheduleHistoricalQuery];
  }
}

- (void)workoutBuilderServer:(id)a3 addedSamples:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_deliverQuantities)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(HDQueryServer *)self sampleType];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedSamples___block_invoke;
    v14[3] = &unk_278617BF0;
    v15 = v8;
    v9 = v8;
    v7 = [v6 hk_filter:v14];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedSamples___block_invoke_2;
    v13[3] = &unk_2786138D0;
    v13[4] = self;
    v10 = [(HDWorkoutBuilderSampleQueryServer *)self _workoutBuilderSampleQueryClientWithErrorHandler:v13];
    if ([v7 count] || !self->_hasNotifiedFinishedHistoricalFetch)
    {
      hasFinishedHistoricalFetch = self->_hasFinishedHistoricalFetch;
      v12 = [(HDQueryServer *)self queryUUID];
      [v10 client_deliverSamples:v7 hasFinishedHistoricalFetch:hasFinishedHistoricalFetch queryUUID:v12];
    }

    if (self->_hasFinishedHistoricalFetch)
    {
      self->_hasNotifiedFinishedHistoricalFetch = 1;
    }
  }
}

uint64_t __71__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sampleType];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __71__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedSamples___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send added samples to client: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)workoutBuilderServer:(id)a3 addedQuantities:(id)a4
{
  if (self->_deliverQuantities)
  {
    v5 = a4;
    v6 = [(HDQueryServer *)self sampleType];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedQuantities___block_invoke;
    v13[3] = &unk_278617C18;
    v14 = v6;
    v7 = v6;
    v8 = [v5 hk_map:v13];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedQuantities___block_invoke_2;
    v12[3] = &unk_2786138D0;
    v12[4] = self;
    v9 = [(HDWorkoutBuilderSampleQueryServer *)self _workoutBuilderSampleQueryClientWithErrorHandler:v12];
    if ([v8 count] || !self->_hasNotifiedFinishedHistoricalFetch)
    {
      hasFinishedHistoricalFetch = self->_hasFinishedHistoricalFetch;
      v11 = [(HDQueryServer *)self queryUUID];
      [v9 client_deliverQuantities:v8 hasFinishedHistoricalFetch:hasFinishedHistoricalFetch queryUUID:v11];
    }

    if (self->_hasFinishedHistoricalFetch)
    {
      self->_hasNotifiedFinishedHistoricalFetch = 1;
    }
  }
}

id __74__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedQuantities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hdw_type];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v5 = objc_alloc(MEMORY[0x277CCDC08]);
    v6 = [v3 hdw_quantity];
    v7 = [v3 hdw_dateInterval];
    v8 = [v5 initWithQuantity:v6 dateInterval:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __74__HDWorkoutBuilderSampleQueryServer_workoutBuilderServer_addedQuantities___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send added quantities to client: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end