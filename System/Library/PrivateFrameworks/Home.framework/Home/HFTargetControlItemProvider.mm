@interface HFTargetControlItemProvider
- (HFTargetControlItemProvider)init;
- (HFTargetControlItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFTargetControlItemProvider

- (HFTargetControlItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFTargetControlItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = objc_opt_new();
    remoteControlAccessoryItems = v7->_remoteControlAccessoryItems;
    v7->_remoteControlAccessoryItems = v8;
  }

  return v7;
}

- (HFTargetControlItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTargetControlItemProvider.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HFTargetControlItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFTargetControlItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  home = [(HFTargetControlItemProvider *)self home];
  hf_allTargetControlAccessories = [home hf_allTargetControlAccessories];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HFTargetControlItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5828;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  filter = [(HFTargetControlItemProvider *)self filter];
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:hf_allTargetControlAccessories filter:filter itemMap:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HFTargetControlItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v8;
}

HFTargetControlAccessoryItem *__42__HFTargetControlItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFTargetControlAccessoryItem alloc];
  v5 = [*(a1 + 32) home];
  v6 = [v5 hf_characteristicValueManager];
  v7 = [(HFTargetControlAccessoryItem *)v4 initWithAccessory:v3 valueSource:v6];

  return v7;
}

id __42__HFTargetControlItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained remoteControlAccessoryItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained remoteControlAccessoryItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)items
{
  remoteControlAccessoryItems = [(HFTargetControlItemProvider *)self remoteControlAccessoryItems];
  v3 = [remoteControlAccessoryItems copy];

  return v3;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFTargetControlItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"accessory"];

  return v3;
}

@end