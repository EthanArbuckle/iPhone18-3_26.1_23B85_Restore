@interface HFServiceGroupItemProvider
- (HFCharacteristicValueSource)valueSource;
- (HFServiceGroupItemProvider)init;
- (HFServiceGroupItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFServiceGroupItemProvider

- (HFServiceGroupItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFServiceGroupItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    serviceGroupItems = v7->_serviceGroupItems;
    v7->_serviceGroupItems = v8;
  }

  return v7;
}

- (HFServiceGroupItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceGroupItemProvider.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFServiceGroupItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFServiceGroupItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

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
  v4 = [(HFServiceGroupItemProvider *)self home];
  v5 = [v4 serviceGroups];
  v6 = [(HFServiceGroupItemProvider *)self filter];
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:v6 itemMap:v3];
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
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"serviceGroup"];

  return v3;
}

- (HFCharacteristicValueSource)valueSource
{
  v3 = [(HFServiceGroupItemProvider *)self overrideValueSource];

  if (v3)
  {
    v4 = [(HFServiceGroupItemProvider *)self overrideValueSource];
  }

  else
  {
    v5 = [(HFServiceGroupItemProvider *)self home];
    v4 = [v5 hf_characteristicValueManager];
  }

  return v4;
}

@end