@interface NPTBTCollector
- (void)startCollectingWithCompletion:(id)a3;
- (void)stopCollecting;
@end

@implementation NPTBTCollector

- (void)startCollectingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277D7BB68]);
  [(NPTBTCollector *)self setClient:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTBTCollector *)self setCachedMetadata:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(NPTBTCollector *)self cachedMetadata];
  [v10 setObject:v9 forKeyedSubscript:@"initial_state"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(NPTBTCollector *)self cachedMetadata];
  [v12 setObject:v11 forKeyedSubscript:@"events"];

  v13 = [(NPTBTCollector *)self client];
  v27 = 0;
  v14 = [v13 queryStatusForPeer:0 error:&v27];
  v15 = v27;

  v16 = [v14 bluetooth];

  if (v16)
  {
    v17 = [v14 bluetooth];
    v18 = [v17 dictionary];
    [v5 addEntriesFromDictionary:v18];
  }

  objc_initWeak(&location, self);
  v19 = [(NPTBTCollector *)self client];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__NPTBTCollector_startCollectingWithCompletion___block_invoke;
  v24[3] = &unk_2789D4360;
  objc_copyWeak(&v25, &location);
  [v19 setEventCallback:v24];

  [(NPTBTCollector *)self setEventsToMonitor:&unk_2848CF4F8];
  v20 = [(NPTBTCollector *)self client];
  v21 = [(NPTBTCollector *)self eventsToMonitor];
  [v20 startMonitoringEvents:v21];

  v22 = [(NPTBTCollector *)self cachedMetadata];
  [v22 setObject:v5 forKeyedSubscript:@"initial_state"];

  if (v15)
  {
    [v7 addObject:v15];
  }

  if (v4)
  {
    v23 = [v7 copy];
    v4[2](v4, v5, v23);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __48__NPTBTCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(NPTMetadataEvent);
  v6 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v5 setTimeStamp:v6];

  [(NPTMetadataEvent *)v5 setCollectorType:objc_opt_class()];
  [(NPTMetadataEvent *)v5 setEventType:7];
  v7 = objc_alloc_init(MEMORY[0x277D7BB68]);
  v18 = 0;
  v8 = [v7 queryStatusForPeer:0 error:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = [v8 bluetooth];
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
  v3 = [(NPTBTCollector *)self client];
  v4 = [(NPTBTCollector *)self eventsToMonitor];
  [v3 stopMonitoringEvents:v4];

  [(NPTBTCollector *)self setClient:0];
}

@end