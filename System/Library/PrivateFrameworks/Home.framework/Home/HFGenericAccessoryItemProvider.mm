@interface HFGenericAccessoryItemProvider
- (HFGenericAccessoryItemProvider)init;
- (HFGenericAccessoryItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFGenericAccessoryItemProvider

- (HFGenericAccessoryItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFGenericAccessoryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = objc_opt_new();
    genericItems = v7->_genericItems;
    v7->_genericItems = v8;
  }

  return v7;
}

- (HFGenericAccessoryItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFGenericAccessoryItemProvider.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFGenericAccessoryItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFGenericAccessoryItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  home = [(HFGenericAccessoryItemProvider *)self home];
  accessories = [home accessories];
  v5 = [accessories na_filter:&__block_literal_global_242];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HFGenericAccessoryItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DF5828;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  filter = [(HFGenericAccessoryItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:filter itemMap:v6];
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
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end