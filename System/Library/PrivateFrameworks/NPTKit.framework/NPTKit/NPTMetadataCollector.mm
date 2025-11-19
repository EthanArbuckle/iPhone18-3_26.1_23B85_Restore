@interface NPTMetadataCollector
+ (id)fetch;
+ (id)fetchCellularData;
+ (id)fetchDeviceData;
+ (id)fetchWRMMetrics;
+ (void)fetch;
- (BOOL)knownCollectionType:(Class)a3;
- (NPTMetadataCollector)init;
- (NPTMetadataCollector)initWithCollectorTypes:(id)a3;
- (void)startCollectingWithCompletion:(id)a3;
- (void)stopCollecting;
@end

@implementation NPTMetadataCollector

+ (id)fetch
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [a1 fetchDeviceData];
  v6 = [a1 fetchCellularData];
  [v4 addEntriesFromDictionary:v5];
  [v4 addEntriesFromDictionary:v6];
  [v3 setValue:v4 forKey:@"metadata"];
  v7 = [MEMORY[0x277D7BB68] sharedClient];
  v36 = 0;
  v8 = [v7 queryStatusForPeer:0 error:&v36];
  v9 = v36;
  v10 = objc_alloc_init(MEMORY[0x277D02B18]);
  [v10 activate];
  v11 = [v10 currentKnownNetworkProfile];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 CCA];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    [v4 setValue:v13 forKey:@"wifi_cwf_cca"];
  }

  [v10 invalidate];
  if (v11)
  {
    v14 = [v11 dictionary];
    [v4 addEntriesFromDictionary:v14];
  }

  if (v9)
  {
    v15 = +[NPTLogger wifiVelocity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[(NPTMetadataCollector *)v9];
    }

    v16 = v3;
  }

  else
  {
    v35 = v5;
    v17 = [v8 wifi];

    if (v17)
    {
      v18 = [v8 wifi];
      v19 = [v18 dictionary];
      [v4 addEntriesFromDictionary:v19];
    }

    v20 = [v8 bluetooth];

    if (v20)
    {
      v21 = [v8 bluetooth];
      v22 = [v21 dictionary];
      [v4 addEntriesFromDictionary:v22];
    }

    v23 = [v8 awdl];
    if (v23)
    {
      v24 = v23;
      has_internal_content = os_variant_has_internal_content();

      if (has_internal_content)
      {
        v26 = [v8 awdl];
        v27 = [v26 dictionary];
        [v4 addEntriesFromDictionary:v27];
      }
    }

    v28 = [v8 network];

    if (v28)
    {
      v29 = [v8 network];
      v30 = [v29 dictionary];
      [v4 addEntriesFromDictionary:v30];
    }

    v31 = [v8 power];

    if (v31)
    {
      v32 = [v8 power];
      v33 = [v32 dictionary];
      [v4 addEntriesFromDictionary:v33];
    }

    [v3 setValue:v4 forKey:@"metadata"];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
    v5 = v35;
  }

  return v16;
}

- (NPTMetadataCollector)init
{
  v7[8] = *MEMORY[0x277D85DE8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v4 = [(NPTMetadataCollector *)self initWithCollectorTypes:v3];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NPTMetadataCollector)initWithCollectorTypes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NPTMetadataCollector *)self setCollectors:v5];

  v6 = dispatch_queue_create("NPTMetadataCollector.backgroundQueue", 0);
  [(NPTMetadataCollector *)self setBackgroundQueue:v6];

  [(NPTMetadataCollector *)self setIsCollectingMetadata:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([(NPTMetadataCollector *)self knownCollectionType:v12, v17])
        {
          v13 = [(NPTMetadataCollector *)self collectors];
          v14 = objc_alloc_init(v12);
          [v13 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)knownCollectionType:(Class)a3
{
  v4 = objc_opt_class();
  if (v4)
  {

    LOBYTE(v4) = [(objc_class *)a3 conformsToProtocol:&unk_2848D1670];
  }

  return v4;
}

- (void)startCollectingWithCompletion:(id)a3
{
  v4 = a3;
  [(NPTMetadataCollector *)self setIsCollectingMetadata:1];
  v5 = [(NPTMetadataCollector *)self backgroundQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke;
  v7[3] = &unk_2789D3C70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEAA8] now];
  [*(a1 + 32) setStartDate:v1];

  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [*(a1 + 32) setCachedMetadata:v2];

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [*(a1 + 32) cachedMetadata];
  [v4 setObject:v3 forKeyedSubscript:@"device_states"];

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__0;
  v51[4] = __Block_byref_object_dispose__0;
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_initWeak(&location, *(a1 + 32));
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_86;
  v48[3] = &unk_2789D4508;
  objc_copyWeak(&v49, &location);
  [*(a1 + 32) setMetadataDidChangeHandlerForCollectors:v48];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [*(a1 + 32) collectors];
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v6)
  {
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_2848D1670])
        {
          v10 = [*(a1 + 32) metadataDidChangeHandlerForCollectors];
          [v9 setMetadataDidChangeHandler:v10];

          v11 = dispatch_semaphore_create(0);
          v12 = [objc_opt_class() collectorName];
          [v28 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v6);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [*(a1 + 32) collectors];
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v14)
  {
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v40 + 1) + 8 * j);
        if ([v17 conformsToProtocol:&unk_2848D1670])
        {
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_91;
          v37[3] = &unk_2789D4530;
          v18 = *(a1 + 32);
          v37[4] = v17;
          v37[5] = v18;
          v39 = v51;
          v38 = v28;
          [v17 startCollectingWithCompletion:v37];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v14);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [v28 allValues];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v20)
  {
    v21 = *v34;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v33 + 1) + 8 * k);
        v24 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v23, v24);
      }

      v20 = [v19 countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v20);
  }

  v25 = [*(a1 + 32) backgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_2;
  block[3] = &unk_2789D4558;
  v26 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v31 = v26;
  v32 = v51;
  dispatch_async(v25, block);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);

  _Block_object_dispose(v51, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v5 asDictionary];
  v9 = [v8 objectForKeyedSubscript:@"collector_type"];

  v10 = [WeakRetained startDate];
  [v10 timeIntervalSinceNow];
  [v5 setTimeSinceStart:-v11];

  if (([WeakRetained isCollectingMetadata] & 1) == 0)
  {
    v26 = +[NPTLogger metadata];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_86_cold_1(v26);
    }

    goto LABEL_13;
  }

  if (v6 || !v9)
  {
    v16 = +[NPTLogger metadata];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_86_cold_2(v5, v6, v16);
    }
  }

  else
  {
    v12 = [WeakRetained cachedMetadata];
    v13 = [v12 objectForKeyedSubscript:@"device_states"];
    v14 = [v13 objectForKeyedSubscript:v9];
    v15 = [v14 objectForKeyedSubscript:@"events"];

    if (!v15)
    {
      goto LABEL_11;
    }

    v16 = WeakRetained;
    objc_sync_enter(v16);
    v17 = [v16 cachedMetadata];
    v18 = [v17 objectForKeyedSubscript:@"device_states"];
    v19 = [v18 objectForKeyedSubscript:v9];
    v20 = [v19 objectForKeyedSubscript:@"events"];

    v21 = [v5 asDictionary];
    v22 = [v21 copy];
    [v20 addObject:v22];

    v23 = [v16 cachedMetadata];
    v24 = [v23 objectForKeyedSubscript:@"device_states"];
    v25 = [v24 objectForKeyedSubscript:v9];
    [v25 setObject:v20 forKeyedSubscript:@"events"];

    objc_sync_exit(v16);
  }

LABEL_11:
  v27 = [WeakRetained metadataDidChangeHandler];

  if (v27)
  {
    v26 = [WeakRetained metadataDidChangeHandler];
    (*(v26 + 16))(v26, v5, v6);
LABEL_13:
  }
}

void __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_91(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() collectorName];
  v9 = *(a1 + 40);
  objc_sync_enter(v9);
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v6];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [*(a1 + 40) cachedMetadata];
  v12 = [v11 objectForKeyedSubscript:@"device_states"];
  [v12 setObject:v10 forKeyedSubscript:v8];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [*(*(&v32 + 1) + 8 * v17) localizedDescription];
        [v13 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v19 = [v13 copy];
  v20 = [*(a1 + 40) cachedMetadata];
  v21 = [v20 objectForKeyedSubscript:@"device_states"];
  v22 = [v21 objectForKeyedSubscript:v8];
  [v22 setObject:v19 forKeyedSubscript:@"errors"];

  v23 = [*(a1 + 40) cachedMetadata];
  v24 = [v23 objectForKeyedSubscript:@"device_states"];
  v25 = [v24 objectForKeyedSubscript:v8];
  [v25 setObject:v5 forKeyedSubscript:@"initial_state"];

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = [*(a1 + 40) cachedMetadata];
  v28 = [v27 objectForKeyedSubscript:@"device_states"];
  v29 = [v28 objectForKeyedSubscript:v8];
  [v29 setObject:v26 forKeyedSubscript:@"events"];

  objc_sync_exit(v9);
  v30 = [*(a1 + 48) objectForKeyedSubscript:v8];
  dispatch_semaphore_signal(v30);

  v31 = *MEMORY[0x277D85DE8];
}

void __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) collectors];

    if (v2)
    {
      v3 = MEMORY[0x277CBEAC0];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) cachedMetadata];
      v6 = [v3 dictionaryWithDictionary:v5];
      v7 = [*(*(*(a1 + 48) + 8) + 40) copy];
      (*(v4 + 16))(v4, v6, v7);
    }
  }

  objc_sync_exit(obj);
}

- (void)stopCollecting
{
  [(NPTMetadataCollector *)self setIsCollectingMetadata:0];
  v3 = [(NPTMetadataCollector *)self backgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NPTMetadataCollector_stopCollecting__block_invoke;
  block[3] = &unk_2789D3DF8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __38__NPTMetadataCollector_stopCollecting__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) collectors];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&unk_2848D1670])
        {
          [v7 stopCollecting];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) setCollectors:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)fetchWRMMetrics
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(NPTCellularCollector);
  v4 = [(NPTCellularCollector *)v3 wrmBasebandMetrics];
  [v2 addEntriesFromDictionary:v4];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v5;
}

+ (id)fetchDeviceData
{
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CCAC38]);
  v3 = MGCopyAnswer();
  v4 = v3;
  v5 = @"Unknown Version";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = MGCopyAnswer();
  v8 = v7;
  v9 = @"Unknown Model";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = MGCopyAnswer();
  v12 = v11;
  v13 = @"Unknown System";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v25 = MGCopyAnswer();
  v15 = MGCopyAnswer();
  IOPSGetPercentRemaining();
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:IOPSDrawingUnlimitedPower()];
  if (v17)
  {
    v18 = @"Unknown";
  }

  else
  {
    v18 = @"Unplugged";
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v19 setObject:v6 forKeyedSubscript:@"system_version"];

  [v19 setObject:v16 forKeyedSubscript:@"system_battery_level"];
  [v19 setObject:v10 forKeyedSubscript:@"system_device_model"];

  [v19 setObject:v14 forKeyedSubscript:@"system_name"];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "activeProcessorCount")}];
  [v19 setObject:v20 forKeyedSubscript:@"system_active_processor_count"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "isLowPowerModeEnabled")}];
  [v19 setObject:v21 forKeyedSubscript:@"system_low_power_mode_enabled"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "processorCount")}];
  [v19 setObject:v22 forKeyedSubscript:@"system_processor_count"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v2, "physicalMemory")}];
  [v19 setObject:v23 forKeyedSubscript:@"system_physical_memory"];

  [v19 setObject:v18 forKeyedSubscript:@"system_battery_state"];
  [v19 setObject:v25 forKeyedSubscript:@"system_os_variant"];
  [v19 setObject:v15 forKeyedSubscript:@"system_device_class"];
  [v19 setObject:v17 forKeyedSubscript:@"system_powersource_connected"];
  [v26 addEntriesFromDictionary:v19];

  return v26;
}

+ (id)fetchCellularData
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc_init(NPTCellularCollector);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __41__NPTMetadataCollector_fetchCellularData__block_invoke;
  v14 = &unk_2789D4580;
  v15 = v2;
  v16 = v3;
  v5 = v3;
  v6 = v2;
  [(NPTCellularCollector *)v4 startCollectingWithCompletion:&v11];
  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v7);
  [(NPTCellularCollector *)v4 stopCollecting:v11];
  v8 = [(NPTCellularCollector *)v4 fetchCellularTPutEstimates];
  [v6 addEntriesFromDictionary:v8];

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];

  return v9;
}

intptr_t __41__NPTMetadataCollector_fetchCellularData__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addEntriesFromDictionary:a2];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

+ (void)fetch
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_233421000, a2, OS_LOG_TYPE_ERROR, "Failed to create W5Status: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __54__NPTMetadataCollector_startCollectingWithCompletion___block_invoke_86_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_233421000, log, OS_LOG_TYPE_ERROR, "Failure: %@, Error %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end