@interface HFGenericAccessoryItemProvider
- (HFGenericAccessoryItemProvider)init;
- (HFGenericAccessoryItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFGenericAccessoryItemProvider

- (HFGenericAccessoryItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFGenericAccessoryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_opt_new();
    genericItems = v7->_genericItems;
    v7->_genericItems = v8;
  }

  return v7;
}

- (HFGenericAccessoryItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFGenericAccessoryItemProvider.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFGenericAccessoryItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFGenericAccessoryItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v3 = [(HFGenericAccessoryItemProvider *)self home];
  v4 = [v3 accessories];
  v5 = [v4 na_filter:&__block_literal_global_242];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HFGenericAccessoryItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DF5828;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(HFGenericAccessoryItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:v7 itemMap:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__HFGenericAccessoryItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v9;
}

HFGenericAccessoryItem *__45__HFGenericAccessoryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFGenericAccessoryItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [v5 hf_characteristicValueManager];
  v7 = [(HFGenericAccessoryItem *)v4 initWithAccessory:v3 valueSource:v6];

  return v7;
}

id __45__HFGenericAccessoryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained genericItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained genericItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFGenericAccessoryItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end