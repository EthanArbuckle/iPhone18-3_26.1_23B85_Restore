@interface HDLiveWorkoutDataSource
- (HDLiveWorkoutDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (uint64_t)_lock_shouldAddSample:(uint64_t)sample;
- (void)_setDataSourceConfiguration:(uint64_t)configuration;
- (void)addMetadata:(id)metadata dataSource:(id)source;
- (void)addMetadataToWorkoutActivity:(id)activity withSampleStartDate:(id)date dataSource:(id)source;
- (void)addOtherSamples:(id)samples dataSource:(id)source;
- (void)addQuantities:(id)quantities dataSource:(id)source;
- (void)addWorkoutEvents:(id)events dataSource:(id)source;
- (void)remote_startTaskServerIfNeeded;
- (void)workoutDataDestination:(id)destination didAttachDataSourceToSessionIdentifer:(id)identifer;
- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration;
- (void)workoutDataDestination:(id)destination didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types didUpdateActivity:(BOOL)activity date:(id)date;
@end

@implementation HDLiveWorkoutDataSource

- (HDLiveWorkoutDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = HDLiveWorkoutDataSource;
  v12 = [(HDStandardTaskServer *)&v26 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    v14 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v12->_lock;
    v12->_lock = v14;

    _HKInitializeLogging();
    v16 = objc_alloc(MEMORY[0x277CCD2B0]);
    v17 = [v16 initWithProcessor:v12 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v12->_workoutDataFlowLink;
    v12->_workoutDataFlowLink = v17;

    v19 = [HDWorkoutBasicDataSource alloc];
    workoutConfiguration = [configurationCopy workoutConfiguration];
    v21 = [(HDWorkoutBasicDataSource *)v19 initWithConfiguration:workoutConfiguration client:clientCopy];
    basicDataSource = v12->_basicDataSource;
    v12->_basicDataSource = v21;

    v23 = v12->_workoutDataFlowLink;
    workoutDataFlowLink = [(HDWorkoutBasicDataSource *)v12->_basicDataSource workoutDataFlowLink];
    [(HKDataFlowLink *)v23 addSource:workoutDataFlowLink];

    [(HDLiveWorkoutDataSource *)v12 _setDataSourceConfiguration:configurationCopy];
  }

  return v12;
}

- (void)_setDataSourceConfiguration:(uint64_t)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    v5 = *(configuration + 72);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __55__HDLiveWorkoutDataSource__setDataSourceConfiguration___block_invoke;
    v10 = &unk_278613920;
    v11 = v3;
    configurationCopy = configuration;
    [v5 hk_withLock:&v7];
    sampleTypesToCollect = [*(configuration + 56) sampleTypesToCollect];
    [*(configuration + 64) setSampleTypesToCollect:sampleTypesToCollect];
  }
}

- (void)remote_startTaskServerIfNeeded
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HDLiveWorkoutDataSource_remote_startTaskServerIfNeeded__block_invoke;
  v6[3] = &unk_2786138D0;
  v6[4] = self;
  v5 = [connection remoteObjectProxyWithErrorHandler:v6];

  [v5 clientRemote_didUpdateDataSourceConfiguration:self->_dataSourceConfiguration shouldUpdateSampleTypesToCollect:0];
}

void __57__HDLiveWorkoutDataSource_remote_startTaskServerIfNeeded__block_invoke(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify live workout data source client of new collected types with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __55__HDLiveWorkoutDataSource__setDataSourceConfiguration___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) filtersBySampleType];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v8 = [*(a1 + 40) client];
        v9 = [*(a1 + 32) filtersBySampleType];
        v10 = [v9 objectForKeyedSubscript:v7];
        v11 = [v8 filterWithQueryFilter:v10 objectType:v7];
        [v2 setObject:v11 forKeyedSubscript:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  v12 = objc_alloc(MEMORY[0x277CCDC50]);
  v13 = [*(a1 + 32) workoutConfiguration];
  v14 = [*(a1 + 32) sampleTypesToCollect];
  v15 = [*(a1 + 32) eventTypesToCollect];
  v16 = [v12 initWithWorkoutConfiguration:v13 sampleTypesToCollect:v14 filters:v2 eventTypesToCollect:v15 collectsDefaultTypes:{objc_msgSend(*(a1 + 32), "collectsDefaultTypes")}];
  v17 = *(a1 + 40);
  v18 = *(v17 + 56);
  *(v17 + 56) = v16;

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_shouldAddSample:(uint64_t)sample
{
  v3 = a2;
  v4 = v3;
  if (sample)
  {
    sampleType = [v3 sampleType];
    sampleTypesToCollect = [*(sample + 56) sampleTypesToCollect];
    v7 = [sampleTypesToCollect containsObject:sampleType];

    if (v7)
    {
      filtersBySampleType = [*(sample + 56) filtersBySampleType];
      v9 = [filtersBySampleType objectForKeyedSubscript:sampleType];

      if (v9)
      {
        sample = [v9 acceptsDataObject:v4];
      }

      else
      {
        sample = 1;
      }
    }

    else
    {
      sample = 0;
    }
  }

  return sample;
}

- (void)workoutDataDestination:(id)destination didUpdateConfiguration:(id)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  [(HDWorkoutBasicDataSource *)self->_basicDataSource setWorkoutConfiguration:configuration];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@:Updated workout configuration", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)destination didAttachDataSourceToSessionIdentifer:(id)identifer
{
  v20 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    uUIDString = [identiferCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = uUIDString;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering for session: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  workoutManager = [WeakRetained workoutManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HDLiveWorkoutDataSource_workoutDataDestination_didAttachDataSourceToSessionIdentifer___block_invoke;
  v13[3] = &unk_278613858;
  v14 = identiferCopy;
  selfCopy2 = self;
  v11 = identiferCopy;
  [workoutManager sessionServerFromSessionIdentifier:v11 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __88__HDLiveWorkoutDataSource_workoutDataDestination_didAttachDataSourceToSessionIdentifer___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 40) + 64);
    v4 = *MEMORY[0x277D85DE8];

    [v3 setSessionServer:a2];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 UUIDString];
      v10 = 138543362;
      v11 = v9;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to link data source to session %{public}@", &v10, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)addQuantities:(id)quantities dataSource:(id)source
{
  v29 = *MEMORY[0x277D85DE8];
  quantitiesCopy = quantities;
  sourceCopy = source;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__79;
  v23[4] = __Block_byref_object_dispose__79;
  v24 = 0;
  client = [(HDStandardTaskServer *)self client];
  authorizationOracle = [client authorizationOracle];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke;
  v19[3] = &unk_27861F0F0;
  v21 = v23;
  v22 = 0;
  v10 = quantitiesCopy;
  v20 = v10;
  v11 = [authorizationOracle performReadAuthorizationTransactionWithError:&v22 handler:v19];
  v12 = v22;

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__79;
    v27 = __Block_byref_object_dispose__79;
    v28 = 0;
    lock = self->_lock;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_416;
    v18[3] = &unk_27861F140;
    v18[5] = buf;
    v18[6] = v23;
    v18[4] = self;
    [(NSLock *)lock hk_withLock:v18];
    if ([*(*&buf[8] + 40) count])
    {
      workoutDataFlowLink = self->_workoutDataFlowLink;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_3;
      v17[3] = &unk_27861F168;
      v17[4] = self;
      v17[5] = buf;
      [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v17];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter objects for read authorization: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(v23, 8);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_2;
  v10[3] = &unk_27861F0C8;
  v11 = v3;
  v5 = v3;
  v6 = [v4 hk_filter:v10];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

uint64_t __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hdw_sample];
  v6 = 0;
  v4 = (*(v2 + 16))(v2, v3, 0, &v6);

  return v4;
}

void __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_416(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_2_417;
  v6[3] = &unk_27861F118;
  v6[4] = a1[4];
  v3 = [v2 hk_filter:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __52__HDLiveWorkoutDataSource_addQuantities_dataSource___block_invoke_2_417(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hdw_sample];
  v4 = [(HDLiveWorkoutDataSource *)v2 _lock_shouldAddSample:v3];

  return v4;
}

- (void)addOtherSamples:(id)samples dataSource:(id)source
{
  v26 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  samplesCopy = samples;
  client = [(HDStandardTaskServer *)self client];
  authorizationOracle = [client authorizationOracle];
  v21 = 0;
  v10 = [authorizationOracle filteredObjectsForReadAuthorization:samplesCopy anchor:0 error:&v21];

  v11 = v21;
  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__79;
    v24 = __Block_byref_object_dispose__79;
    v25 = 0;
    lock = self->_lock;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__HDLiveWorkoutDataSource_addOtherSamples_dataSource___block_invoke;
    v17[3] = &unk_27861F190;
    v20 = buf;
    v18 = v10;
    selfCopy = self;
    [(NSLock *)lock hk_withLock:v17];
    if ([*(*&buf[8] + 40) count])
    {
      workoutDataFlowLink = self->_workoutDataFlowLink;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__HDLiveWorkoutDataSource_addOtherSamples_dataSource___block_invoke_3;
      v16[3] = &unk_27861F168;
      v16[4] = self;
      v16[5] = buf;
      [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v16];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to filter objects for read authorization: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HDLiveWorkoutDataSource_addOtherSamples_dataSource___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HDLiveWorkoutDataSource_addOtherSamples_dataSource___block_invoke_2;
  v6[3] = &unk_278617BF0;
  v6[4] = a1[5];
  v3 = [v2 hk_filter:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addWorkoutEvents:(id)events dataSource:(id)source
{
  eventsCopy = events;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDLiveWorkoutDataSource_addWorkoutEvents_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = eventsCopy;
  selfCopy = self;
  v7 = eventsCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addMetadata:(id)metadata dataSource:(id)source
{
  metadataCopy = metadata;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HDLiveWorkoutDataSource_addMetadata_dataSource___block_invoke;
  v8[3] = &unk_278613880;
  v9 = metadataCopy;
  selfCopy = self;
  v7 = metadataCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v8];
}

- (void)addMetadataToWorkoutActivity:(id)activity withSampleStartDate:(id)date dataSource:(id)source
{
  activityCopy = activity;
  dateCopy = date;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDLiveWorkoutDataSource_addMetadataToWorkoutActivity_withSampleStartDate_dataSource___block_invoke;
  v12[3] = &unk_2786138A8;
  v13 = activityCopy;
  v14 = dateCopy;
  selfCopy = self;
  v10 = dateCopy;
  v11 = activityCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v12];
}

void __87__HDLiveWorkoutDataSource_addMetadataToWorkoutActivity_withSampleStartDate_dataSource___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 addMetadataToWorkoutActivity:a1[4] withSampleStartDate:a1[5] dataSource:a1[6]];
  }
}

- (void)workoutDataDestination:(id)destination didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types didUpdateActivity:(BOOL)activity date:(id)date
{
  activityCopy = activity;
  v43 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  dateCopy = date;
  configurationCopy = configuration;
  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC330];
  v14 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v41 = 2114;
    v42 = typesCopy;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Generated samples types updated to: %{public}@", buf, 0x16u);
  }

  [(NSLock *)self->_lock lock];
  filtersBySampleType = [configurationCopy filtersBySampleType];

  v16 = typesCopy;
  v17 = filtersBySampleType;
  if (![(HKWorkoutDataSourceConfiguration *)self->_dataSourceConfiguration collectsDefaultTypes])
  {
    goto LABEL_6;
  }

  sampleTypesToCollect = [(HKWorkoutDataSourceConfiguration *)self->_dataSourceConfiguration sampleTypesToCollect];
  if ([v16 isEqualToSet:sampleTypesToCollect])
  {
    filtersBySampleType2 = [(HKWorkoutDataSourceConfiguration *)self->_dataSourceConfiguration filtersBySampleType];
    v20 = [v17 isEqualToDictionary:filtersBySampleType2];

    if (v20)
    {
LABEL_6:

      [(NSLock *)self->_lock unlock];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v21 = objc_alloc(MEMORY[0x277CCDC50]);
  workoutConfiguration = [(HKWorkoutDataSourceConfiguration *)self->_dataSourceConfiguration workoutConfiguration];
  eventTypesToCollect = [(HKWorkoutDataSourceConfiguration *)self->_dataSourceConfiguration eventTypesToCollect];
  v24 = [v21 initWithWorkoutConfiguration:workoutConfiguration sampleTypesToCollect:v16 filters:v17 eventTypesToCollect:eventTypesToCollect collectsDefaultTypes:{-[HKWorkoutDataSourceConfiguration collectsDefaultTypes](self->_dataSourceConfiguration, "collectsDefaultTypes")}];
  dataSourceConfiguration = self->_dataSourceConfiguration;
  self->_dataSourceConfiguration = v24;

  [(NSLock *)self->_lock unlock];
  _HKInitializeLogging();
  v26 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v41 = 2114;
    v42 = v16;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Collected samples updated. Notifying client with types: %{public}@", buf, 0x16u);
  }

  [(HDWorkoutBasicDataSource *)self->_basicDataSource setSampleTypesToCollect:v16];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v38 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __126__HDLiveWorkoutDataSource_workoutDataDestination_didUpdateGeneratedTypesWithConfiguration_sampleTypes_didUpdateActivity_date___block_invoke;
  v36[3] = &unk_278613218;
  v36[4] = self;
  v37 = dateCopy;
  [(HDHealthEntity *)HDSampleEntity performWriteTransactionWithHealthDatabase:database error:&v38 block:v36];
  v29 = v38;

  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __126__HDLiveWorkoutDataSource_workoutDataDestination_didUpdateGeneratedTypesWithConfiguration_sampleTypes_didUpdateActivity_date___block_invoke_2;
  v35[3] = &unk_2786138D0;
  v35[4] = self;
  v32 = [connection remoteObjectProxyWithErrorHandler:v35];

  [v32 clientRemote_didUpdateDataSourceConfiguration:self->_dataSourceConfiguration shouldUpdateSampleTypesToCollect:activityCopy];
LABEL_11:

  v33 = *MEMORY[0x277D85DE8];
}

void __126__HDLiveWorkoutDataSource_workoutDataDestination_didUpdateGeneratedTypesWithConfiguration_sampleTypes_didUpdateActivity_date___block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify live workout data source client of new collected types with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  v2 = [(HKDataFlowLink *)self->_workoutDataFlowLink destinationProcessorsConformingToProtocol:&unk_283D234A0];
  firstObject = [v2 firstObject];

  return firstObject;
}

@end