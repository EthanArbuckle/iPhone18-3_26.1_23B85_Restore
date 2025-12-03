@interface HUMatterAccessoryConnectedEcosystemItemProvider
- (HUMatterAccessoryConnectedEcosystemItemProvider)initWithAccessory:(id)accessory;
- (NAFuture)connectedEcosystemsFuture;
- (id)reloadItems;
@end

@implementation HUMatterAccessoryConnectedEcosystemItemProvider

- (HUMatterAccessoryConnectedEcosystemItemProvider)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v13.receiver = self;
  v13.super_class = HUMatterAccessoryConnectedEcosystemItemProvider;
  v6 = [(HFItemProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, accessory);
    v8 = [[HUMatterConnectedHomeItemProvider alloc] initWithAccessory:accessoryCopy];
    connectedHomeItemProvider = v7->_connectedHomeItemProvider;
    v7->_connectedHomeItemProvider = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    connectedEcosystemItems = v7->_connectedEcosystemItems;
    v7->_connectedEcosystemItems = v10;
  }

  return v7;
}

- (NAFuture)connectedEcosystemsFuture
{
  connectedHomeItemProvider = [(HUMatterAccessoryConnectedEcosystemItemProvider *)self connectedHomeItemProvider];
  connectedCHIPAccessoryPairingsFuture = [connectedHomeItemProvider connectedCHIPAccessoryPairingsFuture];
  v4 = [connectedCHIPAccessoryPairingsFuture flatMap:&__block_literal_global_153];

  return v4;
}

id __76__HUMatterAccessoryConnectedEcosystemItemProvider_connectedEcosystemsFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HUMatterAccessoryConnectedEcosystemItemProvider_connectedEcosystemsFuture__block_invoke_2;
  v8[3] = &unk_277DBF940;
  v9 = v4;
  v5 = v4;
  [v3 na_each:v8];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v6;
}

void __76__HUMatterAccessoryConnectedEcosystemItemProvider_connectedEcosystemsFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 home];
  v4 = [v3 ecosystem];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
    }

    [v5 addObject:v6];
  }
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  connectedEcosystemsFuture = [(HUMatterAccessoryConnectedEcosystemItemProvider *)self connectedEcosystemsFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke;
  v6[3] = &unk_277DBB720;
  objc_copyWeak(&v7, &location);
  v4 = [connectedEcosystemsFuture flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DBCDF8;
  v13 = v3;
  v5 = v3;
  v6 = _Block_copy(aBlock);
  v7 = [v5 allKeys];
  v8 = [WeakRetained reloadItemsWithHomeKitObjects:v7 filter:0 itemMap:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DB7F80;
  v11[4] = WeakRetained;
  v9 = [v8 flatMap:v11];

  return v9;
}

HUMatterAccessoryConnectedEcosystemItem *__62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
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
  v8 = [[HUMatterAccessoryConnectedEcosystemItem alloc] initWithConnectedEcosystem:v6 chipAccessoryPairings:v7];

  return v8;
}

id __62__HUMatterAccessoryConnectedEcosystemItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
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