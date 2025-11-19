@interface HUNetworkConfigurationMismatchItemManager
- (BOOL)isItemNetworkConfigurationItem:(id)a3;
- (HUNetworkConfigurationMismatchItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUNetworkConfigurationMismatchItemManager)initWithProfiles:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)networkConfigurationItemForProfile:(id)a3;
@end

@implementation HUNetworkConfigurationMismatchItemManager

- (HUNetworkConfigurationMismatchItemManager)initWithProfiles:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (![v8 count])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchItemManager.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"profiles.count"}];
  }

  v17.receiver = self;
  v17.super_class = HUNetworkConfigurationMismatchItemManager;
  v10 = [(HFItemManager *)&v17 initWithDelegate:v9 sourceItem:0];
  if (v10)
  {
    v11 = [v8 anyObject];
    v12 = [v11 accessory];
    v13 = [v12 home];
    overrideHome = v10->_overrideHome;
    v10->_overrideHome = v13;

    objc_storeStrong(&v10->_profiles, a3);
  }

  return v10;
}

- (HUNetworkConfigurationMismatchItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithProfiles_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUNetworkConfigurationMismatchItemManager.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkConfigurationMismatchItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isItemNetworkConfigurationItem:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)networkConfigurationItemForProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUNetworkConfigurationMismatchItemManager_networkConfigurationItemForProfile___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __80__HUNetworkConfigurationMismatchItemManager_networkConfigurationItemForProfile___block_invoke(uint64_t a1, void *a2)
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

  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 profile];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 isEqual:v9];

  return v10;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D148A0]) initWithHome:v4];
  [(HUNetworkConfigurationMismatchItemManager *)self setNetworkConfigurationItemProvider:v5];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v12, &location);
  v6 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider:v11];
  v7 = [v6 filterOptions];
  [v7 setByFilter:&v11];

  v8 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

uint64_t __72__HUNetworkConfigurationMismatchItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained profiles];
  if ([v5 containsObject:v3])
  {
    v6 = [v3 hf_hasProtectionModeMismatch];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterMismatchSectionIdentifier"];
  v7 = [(HUNetworkConfigurationMismatchItemManager *)self networkConfigurationItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  v10 = [MEMORY[0x277D14898] defaultItemComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];
  [v6 setItems:v11 filteringToDisplayedItems:v4];

  [v5 addObject:v6];
  v12 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v12;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUNetworkConfigurationMismatchItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end