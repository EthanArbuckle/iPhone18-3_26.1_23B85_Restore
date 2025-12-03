@interface NPTNetworkCollector
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTNetworkCollector

- (void)startCollectingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277D7BB68]);
  [(NPTNetworkCollector *)self setClient:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTNetworkCollector *)self setCachedMetadata:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTNetworkCollector *)self cachedMetadata];
  [cachedMetadata setObject:v9 forKeyedSubscript:@"initial_state"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTNetworkCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v11 forKeyedSubscript:@"events"];

  client = [(NPTNetworkCollector *)self client];
  v27 = 0;
  v14 = [client queryStatusForPeer:0 error:&v27];
  v15 = v27;

  network = [v14 network];

  if (network)
  {
    network2 = [v14 network];
    dictionary = [network2 dictionary];
    [v5 addEntriesFromDictionary:dictionary];
  }

  objc_initWeak(&location, self);
  client2 = [(NPTNetworkCollector *)self client];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__NPTNetworkCollector_startCollectingWithCompletion___block_invoke;
  v24[3] = &unk_2789D4360;
  objc_copyWeak(&v25, &location);
  [client2 setEventCallback:v24];

  [(NPTNetworkCollector *)self setEventsToMonitor:&unk_2848CF4C8];
  client3 = [(NPTNetworkCollector *)self client];
  eventsToMonitor = [(NPTNetworkCollector *)self eventsToMonitor];
  [client3 startMonitoringEvents:eventsToMonitor];

  cachedMetadata3 = [(NPTNetworkCollector *)self cachedMetadata];
  [cachedMetadata3 setObject:v5 forKeyedSubscript:@"initial_state"];

  if (v15)
  {
    [v7 addObject:v15];
  }

  if (completionCopy)
  {
    v23 = [v7 copy];
    completionCopy[2](completionCopy, v5, v23);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __53__NPTNetworkCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(NPTMetadataEvent);
  v6 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v5 setTimeStamp:v6];

  [(NPTMetadataEvent *)v5 setCollectorType:objc_opt_class()];
  [(NPTMetadataEvent *)v5 setEventType:26];
  v7 = objc_alloc_init(MEMORY[0x277D7BB68]);
  v18 = 0;
  v8 = [v7 queryStatusForPeer:0 error:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = [v8 network];
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
  client = [(NPTNetworkCollector *)self client];
  eventsToMonitor = [(NPTNetworkCollector *)self eventsToMonitor];
  [client stopMonitoringEvents:eventsToMonitor];

  [(NPTNetworkCollector *)self setClient:0];
}

@end