@interface HDWorkoutTrainingLoadQueryServer
+ (id)requiredEntitlements;
- (HDWorkoutTrainingLoadQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_queue_fetchTrainingLoadWithError:(id *)a3;
- (void)_queue_start;
@end

@implementation HDWorkoutTrainingLoadQueryServer

- (HDWorkoutTrainingLoadQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDWorkoutTrainingLoadQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    trainingLoadQueryServerConfiguration = v11->_trainingLoadQueryServerConfiguration;
    v11->_trainingLoadQueryServerConfiguration = v12;
  }

  return v11;
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
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HDWorkoutTrainingLoadQueryServer;
  [(HDQueryServer *)&v17 _queue_start];
  v3 = [(HDQueryServer *)self queryUUID];
  v4 = [(HDQueryServer *)self clientProxy];
  v5 = [MEMORY[0x277CCD720] workoutType];
  v16 = 0;
  v6 = [(HDQueryServer *)self authorizationStatusRecordForType:v5 error:&v16];
  v7 = v16;

  if (v6)
  {
    if ([v6 canRead])
    {
      v15 = 0;
      v8 = [(HDWorkoutTrainingLoadQueryServer *)self _queue_fetchTrainingLoadWithError:&v15];
      v9 = v15;
      v10 = v9;
      if (v8 || !v9)
      {
        [v4 client_deliverTrainingLoadResults:v8 forQuery:v3];
      }

      else
      {
        [v4 client_deliverError:v9 forQuery:v3];
      }

      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v3 UUIDString];
        *buf = 138543618;
        v19 = self;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Completed %{public}@ request for query: %@", buf, 0x16u);
      }
    }

    else
    {
      [v4 client_deliverTrainingLoadResults:0 forQuery:v3];
    }
  }

  else
  {
    [v4 client_deliverError:v7 forQuery:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_queue_fetchTrainingLoadWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__88;
  v26 = __Block_byref_object_dispose__88;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__88;
  v20 = __Block_byref_object_dispose__88;
  v21 = 0;
  v5 = [(_HKWorkoutTrainingLoadQueryServerConfiguration *)self->_trainingLoadQueryServerConfiguration options];
  v6 = [HDWorkoutTrainingLoadQueryHelper alloc];
  v7 = [(HDQueryServer *)self filter];
  v8 = [(HDQueryServer *)self profile];
  v9 = [(HDWorkoutTrainingLoadQueryHelper *)v6 initWithFilter:v7 options:v5 profile:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HDWorkoutTrainingLoadQueryServer__queue_fetchTrainingLoadWithError___block_invoke;
  v15[3] = &unk_2786205E0;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  [(HDWorkoutTrainingLoadQueryHelper *)v9 fetchTrainingLoadWithCompletion:v15];
  v10 = v17[5];
  v11 = v10;
  if (v10)
  {
    if (a3)
    {
      v12 = v10;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __70__HDWorkoutTrainingLoadQueryServer__queue_fetchTrainingLoadWithError___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch training load: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end