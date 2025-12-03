@interface HUNetworkRouterSettingsItemManager
- (BOOL)isItemNetworkRouterServiceItem:(id)item;
- (HUNetworkRouterSettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUNetworkRouterSettingsItemManager)initWithHome:(id)home delegate:(id)delegate;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)networkRouterServiceItemForAccessory:(id)accessory;
@end

@implementation HUNetworkRouterSettingsItemManager

- (HUNetworkRouterSettingsItemManager)initWithHome:(id)home delegate:(id)delegate
{
  homeCopy = home;
  delegateCopy = delegate;
  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsItemManager.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v14.receiver = self;
  v14.super_class = HUNetworkRouterSettingsItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:delegateCopy sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideHome, home);
  }

  return v11;
}

- (HUNetworkRouterSettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNetworkRouterSettingsItemManager.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUNetworkRouterSettingsItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (BOOL)isItemNetworkRouterServiceItem:(id)item
{
  itemCopy = item;
  networkRouterServiceItemProvider = [(HUNetworkRouterSettingsItemManager *)self networkRouterServiceItemProvider];
  items = [networkRouterServiceItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (id)networkRouterServiceItemForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  networkRouterServiceItemProvider = [(HUNetworkRouterSettingsItemManager *)self networkRouterServiceItemProvider];
  items = [networkRouterServiceItemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HUNetworkRouterSettingsItemManager_networkRouterServiceItemForAccessory___block_invoke;
  v10[3] = &unk_277DB85D8;
  v11 = accessoryCopy;
  v7 = accessoryCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __75__HUNetworkRouterSettingsItemManager_networkRouterServiceItemForAccessory___block_invoke(uint64_t a1, void *a2)
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

  v7 = [v6 service];
  v8 = [v7 accessory];
  v9 = [v8 uniqueIdentifier];
  v10 = [*(a1 + 32) uniqueIdentifier];
  v11 = [v9 isEqual:v10];

  return v11;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14AD0];
  homeCopy = home;
  v6 = [v4 alloc];
  v7 = *MEMORY[0x277CD0F50];
  v21[0] = *MEMORY[0x277CD0F48];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v9 = [v6 initWithHome:homeCopy serviceTypes:v8];
  [(HUNetworkRouterSettingsItemManager *)self setNetworkRouterServiceItemProvider:v9];

  v10 = [[HUNetworkRouterHomeProtectionItem alloc] initWithHome:homeCopy];
  [(HUNetworkRouterSettingsItemManager *)self setHomeProtectionItem:v10];

  homeProtectionItem = [(HUNetworkRouterSettingsItemManager *)self homeProtectionItem];
  v20 = homeProtectionItem;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = [MEMORY[0x277CBEB98] setWithArray:v12];
  v15 = [v13 initWithItems:v14];

  networkRouterServiceItemProvider = [(HUNetworkRouterSettingsItemManager *)self networkRouterServiceItemProvider];
  v19[0] = networkRouterServiceItemProvider;
  v19[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  return v17;
}

- (id)_buildItemModulesForHome:(id)home
{
  v9[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = [[HUNetworkConfigurationItemListModule alloc] initWithItemUpdater:self home:homeCopy];

  [(HUNetworkRouterSettingsItemManager *)self setNetworkConfigurationItemListModule:v5];
  networkConfigurationItemListModule = [(HUNetworkRouterSettingsItemManager *)self networkConfigurationItemListModule];
  v9[0] = networkConfigurationItemListModule;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterSettingsRouterListSectionIdentifier"];
  networkRouterServiceItemProvider = [(HUNetworkRouterSettingsItemManager *)self networkRouterServiceItemProvider];
  items = [networkRouterServiceItemProvider items];
  allObjects = [items allObjects];
  _networkRouterServiceItemComparator = [objc_opt_class() _networkRouterServiceItemComparator];
  v11 = [allObjects sortedArrayUsingComparator:_networkRouterServiceItemComparator];
  [v6 setItems:v11 filteringToDisplayedItems:itemsCopy];

  v12 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterSettingsRouterListSectionTitle", @"HUNetworkRouterSettingsRouterListSectionTitle", 1);
  [v6 setHeaderTitle:v12];

  [v5 addObject:v6];
  v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUNetworkRouterSettingsHomeProtectionSectionIdentifier"];
  homeProtectionItem = [(HUNetworkRouterSettingsItemManager *)self homeProtectionItem];
  v23[0] = homeProtectionItem;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v13 setItems:v15];

  homeProtectionItem2 = [(HUNetworkRouterSettingsItemManager *)self homeProtectionItem];
  latestResults = [homeProtectionItem2 latestResults];
  v18 = [latestResults objectForKeyedSubscript:@"HFResultNetworkRouterHomeProtectionDescriptionKey"];
  [v13 setFooterTitle:v18];

  [v5 addObject:v13];
  networkConfigurationItemListModule = [(HUNetworkRouterSettingsItemManager *)self networkConfigurationItemListModule];
  v20 = [networkConfigurationItemListModule buildSectionsWithDisplayedItems:itemsCopy];

  [v5 addObjectsFromArray:v20];
  v21 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v21;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUNetworkRouterSettingsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

uint64_t __73__HUNetworkRouterSettingsItemManager__networkRouterServiceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = objc_opt_class();
  v13 = v5;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    if (v14)
    {
      goto LABEL_15;
    }

    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];
  }

  v15 = 0;
LABEL_15:

  v18 = [v9 service];
  v19 = [v18 hf_isNetworkRouterSatellite];

  v20 = [v15 service];
  v21 = [v20 hf_isNetworkRouterSatellite];

  if ((v19 & 1) != 0 || !v21)
  {
    if (v21 & 1 | ((v19 & 1) == 0))
    {
      v23 = [MEMORY[0x277D14778] defaultItemComparator];
      v22 = (v23)[2](v23, v7, v13);
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = -1;
  }

  return v22;
}

@end