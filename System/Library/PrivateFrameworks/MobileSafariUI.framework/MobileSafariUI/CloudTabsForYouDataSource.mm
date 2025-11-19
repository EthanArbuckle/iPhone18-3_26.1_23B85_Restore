@interface CloudTabsForYouDataSource
- (CloudTabsForYouDataSource)initWithTabStore:(id)a3;
- (void)_cloudTabsDidUpdate:(id)a3;
- (void)dealloc;
@end

@implementation CloudTabsForYouDataSource

- (CloudTabsForYouDataSource)initWithTabStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CloudTabsForYouDataSource;
  v6 = [(WBSForYouCloudTabsDataSource *)&v11 initWithTabStore:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudTabStore, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__cloudTabsDidUpdate_ name:@"CloudTabStoreDidUpdateNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CloudTabsForYouDataSource;
  [(CloudTabsForYouDataSource *)&v4 dealloc];
}

- (void)_cloudTabsDidUpdate:(id)a3
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