@interface HFServiceItemProvider
- (HFCharacteristicValueSource)valueSource;
- (HFServiceItemProvider)initWithHome:(id)home serviceTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFServiceItemProvider

- (HFServiceItemProvider)initWithHome:(id)home serviceTypes:(id)types
{
  homeCopy = home;
  typesCopy = types;
  v17.receiver = self;
  v17.super_class = HFServiceItemProvider;
  v9 = [(HFItemProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    hf_standardServiceTypes = &OBJC_IVAR___HFServiceItemProvider__home;
    objc_storeStrong(&v9->_home, home);
    v12 = [MEMORY[0x277CBEB58] set];
    serviceItems = v10->_serviceItems;
    v10->_serviceItems = v12;

    v14 = [typesCopy copy];
    allObjects = v14;
    if (!v14)
    {
      hf_standardServiceTypes = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
      allObjects = [hf_standardServiceTypes allObjects];
    }

    objc_storeStrong(&v10->_serviceTypes, allObjects);
    if (!v14)
    {
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFServiceItemProvider *)self home];
  serviceTypes = [(HFServiceItemProvider *)self serviceTypes];
  v7 = [v4 initWithHome:home serviceTypes:serviceTypes];

  return v7;
}

- (id)reloadItems
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__HFServiceItemProvider_reloadItems__block_invoke;
  v14[3] = &unk_277DF7D00;
  v14[4] = self;
  v3 = __36__HFServiceItemProvider_reloadItems__block_invoke(v14);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__HFServiceItemProvider_reloadItems__block_invoke_2;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v12, &location);
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__HFServiceItemProvider_reloadItems__block_invoke_4;
  v8[3] = &unk_277DF95A0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [v3 flatMap:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

id __36__HFServiceItemProvider_reloadItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceServiceGenerator];

  if (v2)
  {
    v3 = [*(a1 + 32) sourceServiceGenerator];
    v4 = [*(a1 + 32) home];
    (v3)[2](v3, v4);
  }

  else
  {
    v5 = MEMORY[0x277D2C900];
    v3 = [*(a1 + 32) home];
    v4 = [v3 hf_allVisibleServices];
    [v5 futureWithResult:v4];
  }
  v6 = ;

  return v6;
}

id __36__HFServiceItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  v6 = [HFServiceItem itemClassForService:v5];
  v7 = [WeakRetained serviceTypes];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __36__HFServiceItemProvider_reloadItems__block_invoke_3;
  v18 = &unk_277DF3130;
  v8 = v5;
  v19 = v8;
  v9 = [v7 na_any:&v15];

  if (v6)
  {
    if (v9)
    {
LABEL_3:
      v10 = [v6 alloc];
      v11 = [WeakRetained valueSource];
      v12 = [v10 initWithValueSource:v11 service:v8];

      goto LABEL_6;
    }
  }

  else
  {
    v13 = [v8 serviceType];
    NSLog(&cfstr_NoHfserviceite.isa, v13, v15, v16, v17, v18);

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:

  return v12;
}

uint64_t __36__HFServiceItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceType];
  v5 = [v4 isEqualToString:v3];

  return v5;
}

id __36__HFServiceItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allObjects];
  v6 = [*(a1 + 32) filter];
  v7 = [v4 reloadItemsWithHomeKitObjects:v5 filter:v6 itemMap:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HFServiceItemProvider_reloadItems__block_invoke_5;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, (a1 + 48));
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  return v8;
}

id __36__HFServiceItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained serviceItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained serviceItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFServiceItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"service";
  v8[1] = @"accessory";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HFCharacteristicValueSource)valueSource
{
  overrideValueSource = [(HFServiceItemProvider *)self overrideValueSource];

  if (overrideValueSource)
  {
    overrideValueSource2 = [(HFServiceItemProvider *)self overrideValueSource];
  }

  else
  {
    home = [(HFServiceItemProvider *)self home];
    overrideValueSource2 = [home hf_characteristicValueManager];
  }

  return overrideValueSource2;
}

@end