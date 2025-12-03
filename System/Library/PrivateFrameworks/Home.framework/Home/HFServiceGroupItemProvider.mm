@interface HFServiceGroupItemProvider
- (HFCharacteristicValueSource)valueSource;
- (HFServiceGroupItemProvider)init;
- (HFServiceGroupItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFServiceGroupItemProvider

- (HFServiceGroupItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFServiceGroupItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    serviceGroupItems = v7->_serviceGroupItems;
    v7->_serviceGroupItems = v8;
  }

  return v7;
}

- (HFServiceGroupItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceGroupItemProvider.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFServiceGroupItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFServiceGroupItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__HFServiceGroupItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(aBlock);
  home = [(HFServiceGroupItemProvider *)self home];
  serviceGroups = [home serviceGroups];
  filter = [(HFServiceGroupItemProvider *)self filter];
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:serviceGroups filter:filter itemMap:v3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HFServiceGroupItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

HFServiceGroupItem *__41__HFServiceGroupItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFServiceGroupItem alloc];
  v6 = [WeakRetained valueSource];
  v7 = [(HFServiceGroupItem *)v5 initWithValueSource:v6 serviceGroup:v3];

  return v7;
}

id __41__HFServiceGroupItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained serviceGroupItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained serviceGroupItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFServiceGroupItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"serviceGroup"];

  return v3;
}

- (HFCharacteristicValueSource)valueSource
{
  overrideValueSource = [(HFServiceGroupItemProvider *)self overrideValueSource];

  if (overrideValueSource)
  {
    overrideValueSource2 = [(HFServiceGroupItemProvider *)self overrideValueSource];
  }

  else
  {
    home = [(HFServiceGroupItemProvider *)self home];
    overrideValueSource2 = [home hf_characteristicValueManager];
  }

  return overrideValueSource2;
}

@end