@interface NPTSystemCollector
- (id)fetchDeviceData;
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTSystemCollector

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277D7BB68]);
  [(NPTSystemCollector *)self setClient:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTSystemCollector *)self setCachedMetadata:v7];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTSystemCollector *)self cachedMetadata];
  [cachedMetadata setObject:v8 forKeyedSubscript:@"initial_state"];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTSystemCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v10 forKeyedSubscript:@"events"];

  fetchDeviceData = [(NPTSystemCollector *)self fetchDeviceData];
  [v5 addEntriesFromDictionary:?];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  client = [(NPTSystemCollector *)self client];
  v28 = 0;
  v14 = [client queryStatusForPeer:0 error:&v28];
  v15 = v28;

  power = [v14 power];

  if (power)
  {
    power2 = [v14 power];
    dictionary = [power2 dictionary];
    [v5 addEntriesFromDictionary:dictionary];
  }

  objc_initWeak(&location, self);
  client2 = [(NPTSystemCollector *)self client];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__NPTSystemCollector_startCollectingWithCompletion___block_invoke;
  v25[3] = &unk_2789D4360;
  objc_copyWeak(&v26, &location);
  [client2 setEventCallback:v25];

  [(NPTSystemCollector *)self setEventsToMonitor:&unk_2848CF510];
  client3 = [(NPTSystemCollector *)self client];
  eventsToMonitor = [(NPTSystemCollector *)self eventsToMonitor];
  [client3 startMonitoringEvents:eventsToMonitor];

  cachedMetadata3 = [(NPTSystemCollector *)self cachedMetadata];
  [cachedMetadata3 setObject:v5 forKeyedSubscript:@"initial_state"];

  if (v15)
  {
    [v12 addObject:v15];
  }

  if (completionCopy)
  {
    v23 = [v12 copy];
    completionCopy[2](completionCopy, v5, v23);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __52__NPTSystemCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(NPTMetadataEvent);
  v6 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v5 setTimeStamp:v6];

  [(NPTMetadataEvent *)v5 setCollectorType:objc_opt_class()];
  [(NPTMetadataEvent *)v5 setEventType:8];
  v7 = objc_alloc_init(MEMORY[0x277D7BB68]);
  v18 = 0;
  v8 = [v7 queryStatusForPeer:0 error:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = [v8 power];
    v11 = [v10 dictionary];
    [(NPTMetadataEvent *)v5 setData:v11];
  }

  v12 = WeakRetained;
  objc_sync_enter(v12);
  v13 = [v12 cachedMetadata];
  v14 = [v13 objectForKeyedSubscript:@"events"];
  v15 = [(NPTMetadataEvent *)v5 asDictionary];
  [v14 addObject:v15];

  objc_sync_exit(v12);
  v16 = [v12 metadataDidChangeHandler];

  if (v16)
  {
    v17 = [v12 metadataDidChangeHandler];
    (v17)[2](v17, v5, v9);
  }
}

- (void)stopCollecting
{
  client = [(NPTSystemCollector *)self client];
  eventsToMonitor = [(NPTSystemCollector *)self eventsToMonitor];
  [client stopMonitoringEvents:eventsToMonitor];

  [(NPTSystemCollector *)self setClient:0];
}

- (id)fetchDeviceData
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

@end