@interface HUMatterHomeConnectedEcosystemItemProvider
- (HUMatterHomeConnectedEcosystemItemProvider)initWithHome:(id)home;
- (NAFuture)ecosystemAccessoryUUIDMapFuture;
- (id)reloadItems;
@end

@implementation HUMatterHomeConnectedEcosystemItemProvider

- (HUMatterHomeConnectedEcosystemItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUMatterHomeConnectedEcosystemItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    connectedEcosystemItems = v7->_connectedEcosystemItems;
    v7->_connectedEcosystemItems = v8;
  }

  return v7;
}

- (NAFuture)ecosystemAccessoryUUIDMapFuture
{
  ecosystemAccessoryUUIDMapFuture = self->_ecosystemAccessoryUUIDMapFuture;
  if (!ecosystemAccessoryUUIDMapFuture)
  {
    home = [(HUMatterHomeConnectedEcosystemItemProvider *)self home];
    hf_ecosystemAccessoryUUIDMapFuture = [home hf_ecosystemAccessoryUUIDMapFuture];
    v6 = self->_ecosystemAccessoryUUIDMapFuture;
    self->_ecosystemAccessoryUUIDMapFuture = hf_ecosystemAccessoryUUIDMapFuture;

    ecosystemAccessoryUUIDMapFuture = self->_ecosystemAccessoryUUIDMapFuture;
  }

  return ecosystemAccessoryUUIDMapFuture;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  ecosystemAccessoryUUIDMapFuture = [(HUMatterHomeConnectedEcosystemItemProvider *)self ecosystemAccessoryUUIDMapFuture];
  v4 = [(HUMatterConnectedEcosystemItemProvider *)self futureFilteringOutSystemCommissionerEcosystem:ecosystemAccessoryUUIDMapFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DBB720;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DBCDF8;
  v13 = v3;
  v5 = v3;
  v6 = _Block_copy(aBlock);
  v7 = [v5 allKeys];
  v8 = [WeakRetained reloadItemsWithHomeKitObjects:v7 filter:0 itemMap:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DB7F80;
  v11[4] = WeakRetained;
  v9 = [v8 flatMap:v11];

  return v9;
}

HUMatterHomeConnectedEcosystemItem *__57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [[HUMatterHomeConnectedEcosystemItem alloc] initWithConnectedEcosystem:v6 accessoryUUIDs:v7];

  return v8;
}

id __57__HUMatterHomeConnectedEcosystemItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connectedEcosystemItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) connectedEcosystemItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

@end