@interface HUMatterConnectedEcosystemDetailItemProvider
- (HUMatterConnectedEcosystemDetailItemProvider)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider home:(id)home;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUMatterConnectedEcosystemDetailItemProvider

- (HUMatterConnectedEcosystemDetailItemProvider)initWithConnectedEcosystem:(id)ecosystem connectedEcosystemItemProvider:(id)provider home:(id)home
{
  ecosystemCopy = ecosystem;
  providerCopy = provider;
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HUMatterConnectedEcosystemDetailItemProvider;
  v12 = [(HFItemProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_home, home);
    objc_storeStrong(&v13->_connectedEcosystem, ecosystem);
    objc_storeStrong(&v13->_connectedEcosystemItemProvider, provider);
    v14 = [MEMORY[0x277CBEB58] set];
    allItems = v13->_allItems;
    v13->_allItems = v14;
  }

  return v13;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DB7F08;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  connectedEcosystemItemProvider = [(HUMatterConnectedEcosystemDetailItemProvider *)self connectedEcosystemItemProvider];
  reloadItems = [connectedEcosystemItemProvider reloadItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_2;
  v13[3] = &unk_277DB7F80;
  v13[4] = self;
  v6 = [reloadItems flatMap:v13];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_5;
  v10[3] = &unk_277DB7FD0;
  v10[4] = self;
  v7 = v3;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [v6 flatMap:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

id __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_characteristicValueManager];

  v7 = [objc_alloc(MEMORY[0x277D142E8]) initWithAccessory:v3 valueSource:v6];

  return v7;
}

id __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_3;
  v10[3] = &unk_277DB7F30;
  v10[4] = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v10];

  v5 = [v4 accessoryUUIDs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_4;
  v9[3] = &unk_277DB7F58;
  v9[4] = *(a1 + 32);
  v6 = [v5 na_map:v9];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v6];

  return v7;
}

BOOL __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 connectedEcosystem];
  v5 = [v3 connectedEcosystem];

  return v4 == v5;
}

id __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_accessoryWithIdentifier:v3];

  return v5;
}

id __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allObjects];
  v6 = [v4 reloadItemsWithHomeKitObjects:v5 filter:0 itemMap:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_6;
  v9[3] = &unk_277DB7FA8;
  objc_copyWeak(&v10, (a1 + 48));
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  return v7;
}

id __59__HUMatterConnectedEcosystemDetailItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained allItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained allItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUMatterConnectedEcosystemDetailItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B48];
  v8[0] = *MEMORY[0x277D13B28];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

@end