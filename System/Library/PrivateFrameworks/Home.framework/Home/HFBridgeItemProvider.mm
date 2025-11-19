@interface HFBridgeItemProvider
- (HFBridgeItemProvider)initWithHome:(id)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFBridgeItemProvider

- (HFBridgeItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HFBridgeItemProvider;
  v6 = [(HFItemProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_opt_new();
    [(HFBridgeItemProvider *)v7 setAccessoryItems:v8];
  }

  return v7;
}

- (id)reloadItems
{
  v3 = [(HFBridgeItemProvider *)self home];
  v4 = [v3 hf_allBridgeAccessories];
  v5 = [v4 na_filter:&__block_literal_global_147];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFBridgeItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DF5828;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(HFBridgeItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:v7 itemMap:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__HFBridgeItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v9;
}

HFAccessoryItem *__35__HFBridgeItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFAccessoryItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [v5 hf_characteristicValueManager];
  v7 = [(HFAccessoryItem *)v4 initWithAccessory:v3 valueSource:v6];

  return v7;
}

id __35__HFBridgeItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained accessoryItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFBridgeItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"accessory"];

  return v3;
}

@end