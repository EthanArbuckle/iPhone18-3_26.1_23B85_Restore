@interface HDWorkoutTrainingLoadCollectionQueryServer
+ (id)requiredEntitlements;
- (HDWorkoutTrainingLoadCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_queue_fetchTrainingLoadCollectionWithError:(id *)error;
- (void)_queue_start;
@end

@implementation HDWorkoutTrainingLoadCollectionQueryServer

- (HDWorkoutTrainingLoadCollectionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDWorkoutTrainingLoadCollectionQueryServer;
  v11 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
    trainingLoadCollectionQueryServerConfiguration = v11->_trainingLoadCollectionQueryServerConfiguration;
    v11->_trainingLoadCollectionQueryServerConfiguration = v12;
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
  v13.receiver = self;
  v13.super_class = HDWorkoutTrainingLoadCollectionQueryServer;
  [(HDQueryServer *)&v13 _queue_start];
  queryUUID = [(HDQueryServer *)self queryUUID];
  clientProxy = [(HDQueryServer *)self clientProxy];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v12 = 0;
  v6 = [(HDQueryServer *)self authorizationStatusRecordForType:workoutType error:&v12];
  v7 = v12;

  if (v6)
  {
    if ([v6 canRead])
    {
      v11 = 0;
      v8 = [(HDWorkoutTrainingLoadCollectionQueryServer *)self _queue_fetchTrainingLoadCollectionWithError:&v11];
      v9 = v11;
      queryUUID2 = [(HDQueryServer *)self queryUUID];
      if (v8 || !v9)
      {
        [clientProxy client_deliverTrainingLoadCollection:v8 forQuery:queryUUID2];
      }

      else
      {
        [clientProxy client_deliverError:v9 forQuery:queryUUID2];
      }
    }

    else
    {
      [clientProxy client_deliverTrainingLoadCollection:0 forQuery:queryUUID];
    }
  }

  else
  {
    [clientProxy client_deliverError:v7 forQuery:queryUUID];
  }
}

- (id)_queue_fetchTrainingLoadCollectionWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__50;
  v28 = __Block_byref_object_dispose__50;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__50;
  v22 = __Block_byref_object_dispose__50;
  v23 = 0;
  options = [(_HKWorkoutTrainingLoadCollectionQueryServerConfiguration *)self->_trainingLoadCollectionQueryServerConfiguration options];
  anchorDate = [(_HKWorkoutTrainingLoadCollectionQueryServerConfiguration *)self->_trainingLoadCollectionQueryServerConfiguration anchorDate];
  intervalComponents = [(_HKWorkoutTrainingLoadCollectionQueryServerConfiguration *)self->_trainingLoadCollectionQueryServerConfiguration intervalComponents];
  v8 = [HDWorkoutTrainingLoadQueryHelper alloc];
  filter = [(HDQueryServer *)self filter];
  profile = [(HDQueryServer *)self profile];
  v11 = [(HDWorkoutTrainingLoadQueryHelper *)v8 initWithFilter:filter options:options anchorDate:anchorDate intervalComponents:intervalComponents profile:profile];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HDWorkoutTrainingLoadCollectionQueryServer__queue_fetchTrainingLoadCollectionWithError___block_invoke;
  v17[3] = &unk_27861AC00;
  v17[4] = self;
  v17[5] = &v18;
  v17[6] = &v24;
  [(HDWorkoutTrainingLoadQueryHelper *)v11 fetchTrainingLoadCollectionWithCompletion:v17];
  v12 = v19[5];
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v15 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __90__HDWorkoutTrainingLoadCollectionQueryServer__queue_fetchTrainingLoadCollectionWithError___block_invoke(void *a1, void *a2, void *a3)
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
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch training load collection: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end