@interface CADSyntheticRouteHypothesizerCache
+ (CADSyntheticRouteHypothesizerCache)sharedInstance;
- (id)_init;
- (id)syntheticRouteHypothesizerForEventExternalURL:(id)a3;
- (void)addSyntheticRouteHypothesizer:(id)a3 forEventExternalURL:(id)a4;
- (void)removeSyntheticRouteHypothesizerForEventExternalURL:(id)a3;
@end

@implementation CADSyntheticRouteHypothesizerCache

+ (CADSyntheticRouteHypothesizerCache)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CADSyntheticRouteHypothesizerCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __52__CADSyntheticRouteHypothesizerCache_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = CADSyntheticRouteHypothesizerCache;
  v2 = [(CADSyntheticRouteHypothesizerCache *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.calendar.daemon.syntheticRouteHypothesizerCache", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventExternalURLToSyntheticRouteHypothesizerMap = v2->_eventExternalURLToSyntheticRouteHypothesizerMap;
    v2->_eventExternalURLToSyntheticRouteHypothesizerMap = v6;
  }

  return v2;
}

- (id)syntheticRouteHypothesizerForEventExternalURL:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  v5 = [(CADSyntheticRouteHypothesizerCache *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CADSyntheticRouteHypothesizerCache_syntheticRouteHypothesizerForEventExternalURL___block_invoke;
  block[3] = &unk_27851BB80;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __84__CADSyntheticRouteHypothesizerCache_syntheticRouteHypothesizerForEventExternalURL___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) eventExternalURLToSyntheticRouteHypothesizerMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addSyntheticRouteHypothesizer:(id)a3 forEventExternalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CADSyntheticRouteHypothesizerCache *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__CADSyntheticRouteHypothesizerCache_addSyntheticRouteHypothesizer_forEventExternalURL___block_invoke;
  block[3] = &unk_27851AFA8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __88__CADSyntheticRouteHypothesizerCache_addSyntheticRouteHypothesizer_forEventExternalURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) eventExternalURLToSyntheticRouteHypothesizerMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)removeSyntheticRouteHypothesizerForEventExternalURL:(id)a3
{
  v4 = a3;
  v5 = [(CADSyntheticRouteHypothesizerCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__CADSyntheticRouteHypothesizerCache_removeSyntheticRouteHypothesizerForEventExternalURL___block_invoke;
  v7[3] = &unk_27851AB28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __90__CADSyntheticRouteHypothesizerCache_removeSyntheticRouteHypothesizerForEventExternalURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventExternalURLToSyntheticRouteHypothesizerMap];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

@end