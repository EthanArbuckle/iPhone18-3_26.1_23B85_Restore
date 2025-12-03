@interface HDClientDataCollectionTaskServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (HDClientDataCollectionTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (NSString)description;
- (id)_loggingClientProxy;
- (id)identifierForDataAggregator:(id)aggregator;
- (void)beginCollectionForDataAggregator:(id)aggregator lastPersistedSensorDatum:(id)datum;
- (void)connectionConfigured;
- (void)connectionInvalidated;
- (void)dataAggregator:(id)aggregator didPersistDatums:(id)datums success:(BOOL)success error:(id)error;
- (void)dataAggregator:(id)aggregator requestsCollectionThroughDate:(id)date completion:(id)completion;
- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration;
- (void)remote_insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options batchUUID:(id)d registrationUUID:(id)iD completion:(id)completion;
- (void)remote_registerWithCompletion:(id)completion;
- (void)remote_setCollectionState:(id)state completion:(id)completion;
@end

@implementation HDClientDataCollectionTaskServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDClientDataCollectionTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDClientDataCollectionTaskServer.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v33.receiver = self;
  v33.super_class = HDClientDataCollectionTaskServer;
  v15 = [(HDStandardTaskServer *)&v33 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  if (v15)
  {
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_configuration, configuration);
    v18 = objc_alloc(MEMORY[0x277CCD298]);
    quantityType = [(HKDataCollectorTaskServerConfiguration *)v15->_configuration quantityType];
    [quantityType code];
    HKDefaultAggregationIntervalForType();
    v21 = v20;
    quantityType2 = [(HKDataCollectorTaskServerConfiguration *)v15->_configuration quantityType];
    [quantityType2 code];
    HKDefaultCollectionLatencyForType();
    v24 = [v18 initWithCollectionInterval:1 collectionLatency:v21 collectionType:v23];
    collectionConfiguration = v15->_collectionConfiguration;
    v15->_collectionConfiguration = v24;

    v26 = MEMORY[0x277CCDA00];
    client = [(HDStandardTaskServer *)v15 client];
    bundleIdentifier = [configurationCopy bundleIdentifier];
    v29 = [v26 hd_sourceForClient:client bundleIdentifier:bundleIdentifier];
    clientSource = v15->_clientSource;
    v15->_clientSource = v29;
  }

  return v15;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  if (!configuration)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"HKDataCollectorTaskServerConfiguration is nil"];
  }

  return configuration != 0;
}

- (void)connectionConfigured
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDClientDataCollectionTaskServer_connectionConfigured__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __56__HDClientDataCollectionTaskServer_connectionConfigured__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) profile];
  v3 = [v2 dataCollectionManager];
  v4 = [*(*(a1 + 32) + 72) quantityType];
  v5 = [v3 aggregatorForType:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = v5;

  v8 = *(*(a1 + 32) + 88);
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC298];
  v10 = *MEMORY[0x277CCC298];
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 88);
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering aggregator for client data collection: %@", &v18, 0x16u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = v13;

    [*(*(a1 + 32) + 88) registerDataCollector:*(a1 + 32) state:*(*(a1 + 32) + 48)];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    v18 = 138543362;
    v19 = v17;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: No aggregator available for data collection.", &v18, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remote_setCollectionState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDClientDataCollectionTaskServer_remote_setCollectionState_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = stateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = stateCopy;
  dispatch_sync(queue, block);
}

uint64_t __73__HDClientDataCollectionTaskServer_remote_setCollectionState_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  [*(*(a1 + 32) + 88) dataCollector:*(a1 + 32) didChangeState:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)remote_insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options batchUUID:(id)d registrationUUID:(id)iD completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  datumsCopy = datums;
  deviceCopy = device;
  metadataCopy = metadata;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  _HKInitializeLogging();
  v21 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_insertDatums:device:... called.", buf, 0xCu);
  }

  queue = self->_queue;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __118__HDClientDataCollectionTaskServer_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion___block_invoke;
  v30[3] = &unk_27862DA68;
  v30[4] = self;
  v31 = datumsCopy;
  v32 = deviceCopy;
  v33 = metadataCopy;
  v34 = dCopy;
  v35 = iDCopy;
  v36 = completionCopy;
  optionsCopy = options;
  v23 = completionCopy;
  v24 = iDCopy;
  v25 = dCopy;
  v26 = metadataCopy;
  v27 = deviceCopy;
  v28 = datumsCopy;
  dispatch_sync(queue, v30);

  v29 = *MEMORY[0x277D85DE8];
}

void __118__HDClientDataCollectionTaskServer_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion___block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v64 = *(a1 + 40);
  v59 = v3;
  v60 = v2;
  v61 = v4;
  v63 = v5;
  v62 = v6;
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    if ([v63 isEqual:*(v1 + 80)])
    {
      v55 = v3;
      v57 = v7;
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = HKDiagnosticStringFromUUID();
        *buf = 138543874;
        v84 = v1;
        v85 = 2114;
        v86 = v10;
        v87 = 2048;
        v88 = [v64 count];
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Received %ld datums.", buf, 0x20u);
      }

      if ([v64 count])
      {
        v11 = v60;
        if (v60)
        {
          v76 = 0;
          v12 = v60;
          v13 = [v1 client];
          v14 = [v12 hd_validateMetadataKeysAndValuesWithClient:v13 error:&v76];

          v15 = v76;
          v56 = v15;
          if ((v14 & 1) == 0)
          {
            if (!v15)
            {
              v56 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ format:@"Failed to validate provided metadata"];
            }

            v21 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
            [v21 clientRemote_receivedBatch:v61 error:v56];

            v62[2](v62, 1, 0);
LABEL_40:

            goto LABEL_41;
          }

          v16 = v59;
          v11 = v60;
        }

        else
        {
          v56 = 0;
          v16 = v59;
        }

        if (v16)
        {
          v20 = [*(v1 + 104) objectForKeyedSubscript:?];
          v11 = v60;
        }

        else
        {
          v20 = *(v1 + 112);
        }

        v65 = v20;
        if (v20)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          obj = v64;
          v22 = [obj countByEnumeratingWithState:&v72 objects:buf count:16];
          if (v22)
          {
            v23 = *v73;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v73 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v72 + 1) + 8 * i);
                v26 = [v25 dateInterval];
                v27 = [v26 endDate];
                v28 = [v65 dateInterval];
                v29 = [v28 endDate];
                v30 = [v27 hk_isBeforeOrEqualToDate:v29];

                if (v30)
                {
                  v36 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
                  v37 = MEMORY[0x277CCA9B8];
                  v38 = objc_opt_class();
                  v39 = [v25 dateInterval];
                  v40 = [v39 endDate];
                  v41 = [v65 dateInterval];
                  v42 = [v41 endDate];
                  v43 = [v37 hk_errorForInvalidArgument:@"@" class:v38 selector:sel__queue_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ format:{@"Out-of-order data received: got an end date of %@ but our last datum was %@", v40, v42}];
                  [v36 clientRemote_receivedBatch:v61 error:v43];

                  v62[2](v62, 1, 0);
                  v44 = obj;
                  goto LABEL_39;
                }
              }

              v22 = [obj countByEnumeratingWithState:&v72 objects:buf count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v11 = v60;
        }

        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __118__HDClientDataCollectionTaskServer__queue_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion___block_invoke;
        v70[3] = &unk_27862DA90;
        v71 = v11;
        v31 = [v64 hk_map:v70];
        if (!*(v1 + 104))
        {
          v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v33 = *(v1 + 104);
          *(v1 + 104) = v32;
        }

        v34 = [v31 lastObject];
        v35 = v34;
        if (v59)
        {
          [*(v1 + 104) setObject:v34 forKeyedSubscript:v59];
        }

        else
        {
          v45 = *(v1 + 112);
          *(v1 + 112) = v34;
          v35 = v45;
        }

        objc_initWeak(&location, v1);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __118__HDClientDataCollectionTaskServer__queue_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion___block_invoke_2;
        v66[3] = &unk_27862DAB8;
        objc_copyWeak(&v68, &location);
        v46 = v61;
        v67 = v46;
        v47 = [v31 lastObject];
        [v47 setSaveCompletion:v66];

        objc_storeStrong((v1 + 56), v55);
        [*(v1 + 88) dataCollector:v1 didCollectSensorData:v31 device:v59 options:v57];
        v48 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
        [v48 clientRemote_receivedBatch:v46 error:0];

        if (v57)
        {
          _HKInitializeLogging();
          v49 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = HKDiagnosticStringFromUUID();
            v51 = [*(v1 + 72) quantityType];
            v52 = [v51 identifier];
            *v77 = 138543874;
            v78 = v1;
            v79 = 2114;
            v80 = v50;
            v81 = 2114;
            v82 = v52;
            _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Was transient data collection for type %{public}@", v77, 0x20u);
          }

          v53 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
          [v53 clientRemote_finishedPersistenceForBatch:v46 error:0];
        }

        v62[2](v62, 1, 0);

        objc_destroyWeak(&v68);
        objc_destroyWeak(&location);

        v44 = v71;
LABEL_39:

        goto LABEL_40;
      }

      v18 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
      [v18 clientRemote_receivedBatch:v61 error:0];

      v19 = [(HDClientDataCollectionTaskServer *)v1 _loggingClientProxy];
      [v19 clientRemote_finishedPersistenceForBatch:v61 error:0];

      v62[2](v62, 1, 0);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hk_error:114 format:{@"Server synchronization failed (expected %@, got %@)", *(v1 + 80), v63}];
      (v62)[2](v62, 0, v17);
    }
  }

LABEL_41:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)remote_registerWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDClientDataCollectionTaskServer_remote_registerWithCompletion___block_invoke;
  v9[3] = &unk_2786138D0;
  v9[4] = self;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HDClientDataCollectionTaskServer_remote_registerWithCompletion___block_invoke_312;
  v7[3] = &unk_2786173C8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 clientRemote_synchronizeWithCompletion:v7];
}

void __66__HDClientDataCollectionTaskServer_remote_registerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't flush data to client with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __66__HDClientDataCollectionTaskServer_remote_registerWithCompletion___block_invoke_312(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 daemon];
  v4 = [v3 contentProtectionManager];
  v5 = [v4 deviceUnlockedSinceBoot];

  if (v5)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 88))
    {
      v7 = *(*(a1 + 40) + 16);

      v7();
      return;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [*(v6 + 72) quantityType];
    v11 = [v9 hk_error:1301 format:{@"%@ does not appear to be a collectible type.", v10}];

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_databaseInaccessibleBeforeFirstUnlockError];
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)connectionInvalidated
{
  v19 = *MEMORY[0x277D85DE8];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  isTerminating = [daemon isTerminating];

  if ((isTerminating & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(HDClientDataCollectionTaskServer *)self description];
      bundleIdentifier = [(HKDataCollectorTaskServerConfiguration *)self->_configuration bundleIdentifier];
      v10 = [(HDDataAggregator *)self->_aggregator description];
      *buf = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = bundleIdentifier;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering data collector %{public}@ with bundle identifier %{public}@ from data aggregator: %{public}@", buf, 0x20u);
    }

    [(HDDataAggregator *)self->_aggregator unregisterDataCollector:self];
    v12.receiver = self;
    v12.super_class = HDClientDataCollectionTaskServer;
    [(HDStandardTaskServer *)&v12 connectionInvalidated];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_loggingClientProxy
{
  selfCopy = self;
  if (self)
  {
    client = [self client];
    connection = [client connection];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__HDClientDataCollectionTaskServer__loggingClientProxy__block_invoke;
    v5[3] = &unk_2786138D0;
    v5[4] = selfCopy;
    selfCopy = [connection remoteObjectProxyWithErrorHandler:v5];
  }

  return selfCopy;
}

void __118__HDClientDataCollectionTaskServer__queue_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = v4;
  if (WeakRetained)
  {
    v7 = WeakRetained[5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDClientDataCollectionTaskServer__didFinishPersistenceForBatch_error___block_invoke;
    block[3] = &unk_278613830;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

void __72__HDClientDataCollectionTaskServer__didFinishPersistenceForBatch_error___block_invoke(uint64_t a1)
{
  v2 = [(HDClientDataCollectionTaskServer *)*(a1 + 32) _loggingClientProxy];
  [v2 clientRemote_finishedPersistenceForBatch:*(a1 + 40) error:*(a1 + 48)];
}

void __55__HDClientDataCollectionTaskServer__loggingClientProxy__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
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

- (void)beginCollectionForDataAggregator:(id)aggregator lastPersistedSensorDatum:(id)datum
{
  aggregatorCopy = aggregator;
  datumCopy = datum;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HDClientDataCollectionTaskServer_beginCollectionForDataAggregator_lastPersistedSensorDatum___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v12 = aggregatorCopy;
  v13 = datumCopy;
  v9 = datumCopy;
  v10 = aggregatorCopy;
  dispatch_async(queue, block);
}

void __94__HDClientDataCollectionTaskServer_beginCollectionForDataAggregator_lastPersistedSensorDatum___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 80);
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC298];
  v4 = *MEMORY[0x277CCC298];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v15 = 138543362;
      v16 = v5;
      _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring duplicate registration request", &v15, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning collection for aggregator: %{public}@", &v15, 0x16u);
    }

    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    v11 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x277CCD7F0] quantityDatumWithHDQuantityDatum:*(a1 + 48)];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(HDClientDataCollectionTaskServer *)*(a1 + 32) _loggingClientProxy];
    [v13 clientRemote_beginCollectionWithConfiguration:*(*(a1 + 32) + 96) lastPersistedDatum:v12 registrationUUID:*(*(a1 + 32) + 80)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dataAggregator:(id)aggregator wantsCollectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HDClientDataCollectionTaskServer_dataAggregator_wantsCollectionWithConfiguration___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(queue, v8);
}

void __84__HDClientDataCollectionTaskServer_dataAggregator_wantsCollectionWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [(HDClientDataCollectionTaskServer *)*(a1 + 32) _loggingClientProxy];
  [*(a1 + 40) collectionInterval];
  [*(*(a1 + 32) + 96) setCollectionInterval:?];
  [*(a1 + 40) collectionLatency];
  [*(*(a1 + 32) + 96) setCollectionLatency:?];
  [*(*(a1 + 32) + 96) setCollectionType:{objc_msgSend(*(a1 + 40), "collectionType")}];
  [v2 clientRemote_collectionConfigurationDidChange:*(*(a1 + 32) + 96)];
}

- (id)identifierForDataAggregator:(id)aggregator
{
  v4 = MEMORY[0x277CCACA8];
  bundleIdentifier = [(HKDataCollectorTaskServerConfiguration *)self->_configuration bundleIdentifier];
  quantityType = [(HKDataCollectorTaskServerConfiguration *)self->_configuration quantityType];
  v7 = [v4 stringWithFormat:@"%@%@", bundleIdentifier, quantityType];

  return v7;
}

- (void)dataAggregator:(id)aggregator didPersistDatums:(id)datums success:(BOOL)success error:(id)error
{
  datumsCopy = datums;
  errorCopy = error;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HDClientDataCollectionTaskServer_dataAggregator_didPersistDatums_success_error___block_invoke;
  v14[3] = &unk_278617A98;
  successCopy = success;
  v14[4] = self;
  v15 = datumsCopy;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = datumsCopy;
  dispatch_async(queue, v14);
}

void __82__HDClientDataCollectionTaskServer_dataAggregator_didPersistDatums_success_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v23;
      v7 = MEMORY[0x277CCC298];
      *&v4 = 138543362;
      v21 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 saveCompletion];

            if (v11)
            {
              _HKInitializeLogging();
              v12 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(a1 + 32);
                *buf = v21;
                v28 = v13;
                _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling completion for datum(s) inserted via HKDataCollector", buf, 0xCu);
              }

              v14 = [v10 saveCompletion];
              v14[2](v14, *(a1 + 56), *(a1 + 48));
            }
          }

          ++v8;
        }

        while (v5 != v8);
        v5 = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC298];
    if (!os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v2 = v15;
    v19 = [v17 count];
    v20 = *(a1 + 48);
    *buf = 138543874;
    v28 = v18;
    v29 = 2048;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Failed persistence for %ld datums: %{public}@", buf, 0x20u);
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)dataAggregator:(id)aggregator requestsCollectionThroughDate:(id)date completion:(id)completion
{
  aggregatorCopy = aggregator;
  dateCopy = date;
  completionCopy = completion;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__191;
  v41 = __Block_byref_object_dispose__191;
  v42 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke;
  aBlock[3] = &unk_27862DAE0;
  aBlock[4] = self;
  v35 = v43;
  v36 = &v37;
  v11 = completionCopy;
  v34 = v11;
  v12 = _Block_copy(aBlock);
  client = [(HDStandardTaskServer *)self client];
  process = [client process];

  processIdentifier = [process processIdentifier];
  v16 = objc_alloc(MEMORY[0x277CEEEA8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_2;
  v27[3] = &unk_27862DB08;
  v17 = process;
  v32 = processIdentifier;
  v28 = v17;
  selfCopy = self;
  v18 = v12;
  v31 = v18;
  v19 = dateCopy;
  v30 = v19;
  v20 = [v16 initWithPID:processIdentifier flags:3 reason:4 name:@"HealthKit Background Data Collection Flush" withHandler:v27];
  v21 = v38[5];
  v38[5] = v20;

  v22 = dispatch_time(0, 2000000000);
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_4;
  v25[3] = &unk_278613658;
  v26 = v18;
  v24 = v18;
  dispatch_after(v22, queue, v25);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v43, 8);
}

void __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  dispatch_assert_queue_V2(*(a1[4] + 40));
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    [*(*(a1[7] + 8) + 40) invalidate];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    *(*(a1[6] + 8) + 24) = 1;
    (*(a1[5] + 16))();
  }
}

void __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_2(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC298];
  v5 = *MEMORY[0x277CCC298];
  if (!a2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v15 = *(a1 + 32);
    v7 = v4;
    v8 = [v15 bundleIdentifier];
    v16 = *(a1 + 64);
    *buf = 138543618;
    v22 = v8;
    v23 = 1024;
    v24 = v16;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to acquire data collection flush assertion for %{public}@ (%d)", buf, 0x12u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = [v6 bundleIdentifier];
    v9 = *(a1 + 64);
    *buf = 138543618;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "Acquired data collection flush assertion for %{public}@ (%d)", buf, 0x12u);
LABEL_4:
  }

LABEL_6:
  v10 = [*(a1 + 40) client];
  v11 = [v10 connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_347;
  v19[3] = &unk_27861A378;
  v19[4] = *(a1 + 40);
  v20 = *(a1 + 56);
  v12 = [v11 remoteObjectProxyWithErrorHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_2_349;
  v17[3] = &unk_2786173C8;
  v13 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = *(a1 + 56);
  [v12 clientRemote_collectThroughDate:v13 completion:v17];

  v14 = *MEMORY[0x277D85DE8];
}

void __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_347(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to request data collection flush from client: %{public}@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_348;
  v10[3] = &unk_278614008;
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  dispatch_sync(v5, v10);

  v8 = *MEMORY[0x277D85DE8];
}

void __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_2_349(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_3;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_sync(v6, block);
}

void __92__HDClientDataCollectionTaskServer_dataAggregator_requestsCollectionThroughDate_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hk_error:103 format:@"Failed to finish client-side flush in a timely fashion."];
  (*(v1 + 16))(v1, 0, v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(HKDataCollectorTaskServerConfiguration *)self->_configuration bundleIdentifier];
  quantityType = [(HKDataCollectorTaskServerConfiguration *)self->_configuration quantityType];
  v8 = [v3 stringWithFormat:@"<%@:%p %@: %@>", v5, self, bundleIdentifier, quantityType];

  return v8;
}

@end