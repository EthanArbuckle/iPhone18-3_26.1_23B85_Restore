@interface HUMatterConnectedHomeItemProvider
- (HUMatterConnectedHomeItemProvider)initWithAccessory:(id)a3;
- (NAFuture)accessoryConnectedHomeToCHIPAccessoryPairingFuture;
- (NAFuture)connectedCHIPAccessoryPairingsFuture;
- (NAFuture)connectedHomesFuture;
- (id)reloadItems;
@end

@implementation HUMatterConnectedHomeItemProvider

- (HUMatterConnectedHomeItemProvider)initWithAccessory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUMatterConnectedHomeItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    connectedHomeItems = v7->_connectedHomeItems;
    v7->_connectedHomeItems = v8;
  }

  return v7;
}

- (NAFuture)accessoryConnectedHomeToCHIPAccessoryPairingFuture
{
  accessoryConnectedHomeToCHIPAccessoryPairingFuture = self->_accessoryConnectedHomeToCHIPAccessoryPairingFuture;
  if (!accessoryConnectedHomeToCHIPAccessoryPairingFuture)
  {
    v4 = [(HUMatterConnectedHomeItemProvider *)self accessory];
    v5 = [v4 hf_allConnectedHomeToCHIPAccessoryPairingFuture];
    v6 = self->_accessoryConnectedHomeToCHIPAccessoryPairingFuture;
    self->_accessoryConnectedHomeToCHIPAccessoryPairingFuture = v5;

    accessoryConnectedHomeToCHIPAccessoryPairingFuture = self->_accessoryConnectedHomeToCHIPAccessoryPairingFuture;
  }

  return accessoryConnectedHomeToCHIPAccessoryPairingFuture;
}

- (NAFuture)connectedHomesFuture
{
  v2 = [(HUMatterConnectedHomeItemProvider *)self accessoryConnectedHomeToCHIPAccessoryPairingFuture];
  v3 = [v2 flatMap:&__block_literal_global_301];

  return v3;
}

id __57__HUMatterConnectedHomeItemProvider_connectedHomesFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 allKeys];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (NAFuture)connectedCHIPAccessoryPairingsFuture
{
  v2 = [(HUMatterConnectedHomeItemProvider *)self accessoryConnectedHomeToCHIPAccessoryPairingFuture];
  v3 = [v2 flatMap:&__block_literal_global_3_6];

  return v3;
}

id __73__HUMatterConnectedHomeItemProvider_connectedCHIPAccessoryPairingsFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 allValues];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HUMatterConnectedHomeItemProvider *)self accessoryConnectedHomeToCHIPAccessoryPairingFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke;
  v6[3] = &unk_277DBB720;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DBCDF8;
  v13 = v3;
  v5 = v3;
  v6 = _Block_copy(aBlock);
  v7 = [v5 allKeys];
  v8 = [WeakRetained reloadItemsWithHomeKitObjects:v7 filter:0 itemMap:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DB7F80;
  v11[4] = WeakRetained;
  v9 = [v8 flatMap:v11];

  return v9;
}

HUMatterConnectedHomeItem *__48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
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
  v8 = [[HUMatterConnectedHomeItem alloc] initWithConnectedHome:v6 accessoryPairing:v7];

  return v8;
}

id __48__HUMatterConnectedHomeItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connectedHomeItems];
  v6 = [v4 addedItems];
  [v5 unionSet:v6];

  v7 = [*(a1 + 32) connectedHomeItems];
  v8 = [v4 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

@end