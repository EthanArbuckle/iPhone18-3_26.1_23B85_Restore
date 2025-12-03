@interface CloudTabsForYouDataSource
- (CloudTabsForYouDataSource)initWithTabStore:(id)store;
- (void)_cloudTabsDidUpdate:(id)update;
- (void)dealloc;
@end

@implementation CloudTabsForYouDataSource

- (CloudTabsForYouDataSource)initWithTabStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CloudTabsForYouDataSource;
  v6 = [(WBSForYouCloudTabsDataSource *)&v11 initWithTabStore:storeCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudTabStore, store);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__cloudTabsDidUpdate_ name:@"CloudTabStoreDidUpdateNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CloudTabsForYouDataSource;
  [(CloudTabsForYouDataSource *)&v4 dealloc];
}

- (void)_cloudTabsDidUpdate:(id)update
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__CloudTabsForYouDataSource__cloudTabsDidUpdate___block_invoke;
  v3[3] = &unk_2781D5598;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__CloudTabsForYouDataSource__cloudTabsDidUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyContentsDidChangeFromSource:4];
}

@end