@interface HFAccessoryItemProvider
- (HFAccessoryItemProvider)init;
- (HFAccessoryItemProvider)initWithHome:(id)home;
- (HFCharacteristicValueSource)valueSource;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFAccessoryItemProvider

- (HFAccessoryItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFAccessoryItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    accessoryItems = v7->_accessoryItems;
    v7->_accessoryItems = v8;

    v7->_includesMatterOnlyAccessoryItems = 0;
  }

  return v7;
}

- (HFAccessoryItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryItemProvider.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFAccessoryItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__HFAccessoryItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v14, &location);
  v3 = _Block_copy(aBlock);
  home = [(HFAccessoryItemProvider *)self home];
  accessories = [home accessories];

  if (![(HFAccessoryItemProvider *)self includesMatterOnlyAccessoryItems])
  {
    v6 = [accessories na_filter:&__block_literal_global_32];

    accessories = v6;
  }

  filter = [(HFAccessoryItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:accessories filter:filter itemMap:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HFAccessoryItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

HFAccessoryItem *__38__HFAccessoryItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFAccessoryItem alloc];
  v6 = [WeakRetained valueSource];
  v7 = [(HFAccessoryItem *)v5 initWithAccessory:v3 valueSource:v6];

  return v7;
}

id __38__HFAccessoryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
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
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFAccessoryItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"service";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HFCharacteristicValueSource)valueSource
{
  overrideValueSource = [(HFAccessoryItemProvider *)self overrideValueSource];

  if (overrideValueSource)
  {
    overrideValueSource2 = [(HFAccessoryItemProvider *)self overrideValueSource];
  }

  else
  {
    home = [(HFAccessoryItemProvider *)self home];
    overrideValueSource2 = [home hf_characteristicValueManager];
  }

  return overrideValueSource2;
}

@end