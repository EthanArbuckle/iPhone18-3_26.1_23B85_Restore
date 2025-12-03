@interface HFDataAnalyticsLogItemProvider
- (HFDataAnalyticsLogItemProvider)init;
- (HFDataAnalyticsLogItemProvider)initWithMediaProfileContainer:(id)container;
- (NAFuture)logFetchFuture;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFDataAnalyticsLogItemProvider

- (HFDataAnalyticsLogItemProvider)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItemProvider.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v15.receiver = self;
  v15.super_class = HFDataAnalyticsLogItemProvider;
  v7 = [(HFItemProvider *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, container);
    v9 = objc_opt_new();
    logItems = v8->_logItems;
    v8->_logItems = v9;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    logEntryUniqueIdentifierToLogItemMap = v8->_logEntryUniqueIdentifierToLogItemMap;
    v8->_logEntryUniqueIdentifierToLogItemMap = strongToWeakObjectsMapTable;
  }

  return v8;
}

- (HFDataAnalyticsLogItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItemProvider.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HFDataAnalyticsLogItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mediaProfileContainer = [(HFDataAnalyticsLogItemProvider *)self mediaProfileContainer];
  v6 = [v4 initWithMediaProfileContainer:mediaProfileContainer];

  return v6;
}

- (NAFuture)logFetchFuture
{
  logFetchFuture = self->_logFetchFuture;
  if (!logFetchFuture)
  {
    mediaProfileContainer = [(HFDataAnalyticsLogItemProvider *)self mediaProfileContainer];
    v5 = [mediaProfileContainer hf_fetchLogListWithTimeout:*&kHFDataAnalyticsFetchLogListTimeout];
    v6 = self->_logFetchFuture;
    self->_logFetchFuture = v5;

    logFetchFuture = self->_logFetchFuture;
  }

  v7 = logFetchFuture;

  return v7;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  logFetchFuture = [(HFDataAnalyticsLogItemProvider *)self logFetchFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke;
  v6[3] = &unk_277DFED88;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [logFetchFuture flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DFED40;
  objc_copyWeak(&v11, (a1 + 40));
  v4 = _Block_copy(aBlock);
  v5 = [*(a1 + 32) reloadItemsWithObjects:v3 keyAdaptor:&__block_literal_global_175 itemAdaptor:&__block_literal_global_19_8 filter:0 itemMap:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke_5;
  v8[3] = &unk_277DF30B8;
  objc_copyWeak(&v9, (a1 + 40));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);

  return v6;
}

HFDataAnalyticsLogItem *__45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained logEntryUniqueIdentifierToLogItemMap];
  v6 = [v5 objectForKey:v3];

  if (!v6)
  {
    v7 = [HFDataAnalyticsLogItem alloc];
    v8 = [WeakRetained mediaProfileContainer];
    v6 = [(HFDataAnalyticsLogItem *)v7 initWithMediaProfileContainer:v8 name:v3];
  }

  return v6;
}

id __45__HFDataAnalyticsLogItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained logItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained logItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  [WeakRetained setLogFetchFuture:0];
  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFDataAnalyticsLogItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"accessory"];

  return v3;
}

@end