@interface HFHomeItemProvider
- (HFHomeItemProvider)initWithHomeManager:(id)manager;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFHomeItemProvider

- (HFHomeItemProvider)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HFHomeItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeManager, manager);
    v8 = [MEMORY[0x277CBEB58] set];
    homeItems = v7->_homeItems;
    v7->_homeItems = v8;
  }

  return v7;
}

- (id)reloadItems
{
  homeManager = [(HFHomeItemProvider *)self homeManager];
  homes = [homeManager homes];

  objc_initWeak(&location, self);
  filter = [(HFHomeItemProvider *)self filter];
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:homes filter:filter itemMap:&__block_literal_global_202];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HFHomeItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DF30B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HFHomeItem *__33__HFHomeItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFHomeItem alloc] initWithHome:v2];

  return v3;
}

id __33__HFHomeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained homeItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained homeItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFHomeItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"home"];

  return v3;
}

@end