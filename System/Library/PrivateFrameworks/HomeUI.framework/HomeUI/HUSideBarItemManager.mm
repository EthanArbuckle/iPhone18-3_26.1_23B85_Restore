@interface HUSideBarItemManager
- (HUSideBarItemManager)initWithDelegate:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)allItems;
- (id)categoryItemForCategory:(id)a3;
- (id)roomItemForRoom:(id)a3;
- (id)sortedCategoryItems;
- (id)sortedRoomItems;
@end

@implementation HUSideBarItemManager

- (HUSideBarItemManager)initWithDelegate:(id)a3
{
  v15.receiver = self;
  v15.super_class = HUSideBarItemManager;
  v3 = [(HFItemManager *)&v15 initWithDelegate:a3];
  if (v3)
  {
    v4 = [[HUSideBarStaticItem alloc] initWithSideBarStaticItemType:0];
    homeItem = v3->_homeItem;
    v3->_homeItem = v4;

    v6 = [[HUSideBarStaticItem alloc] initWithSideBarStaticItemType:1];
    automationItem = v3->_automationItem;
    v3->_automationItem = v6;

    v8 = [[HUSideBarStaticItem alloc] initWithSideBarStaticItemType:2];
    discoverItem = v3->_discoverItem;
    v3->_discoverItem = v8;

    v10 = objc_alloc(MEMORY[0x277D14B40]);
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{v3->_homeItem, v3->_automationItem, v3->_discoverItem, 0}];
    v12 = [v10 initWithItems:v11];
    staticItemProvider = v3->_staticItemProvider;
    v3->_staticItemProvider = v12;
  }

  return v3;
}

- (id)roomItemForRoom:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarItemManager *)self roomItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HUSideBarItemManager_roomItemForRoom___block_invoke;
  v10[3] = &unk_277DBC3C0;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __40__HUSideBarItemManager_roomItemForRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)categoryItemForCategory:(id)a3
{
  v4 = a3;
  v5 = [(HUSideBarItemManager *)self categoryItemProvider];
  v6 = [v5 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HUSideBarItemManager_categoryItemForCategory___block_invoke;
  v10[3] = &unk_277DBC3E8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __48__HUSideBarItemManager_categoryItemForCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryTypeGroup];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_itemsToHideInSet:(id)a3
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = HUSideBarItemManager;
  v7 = [(HFItemManager *)&v31 _itemsToHideInSet:v6];
  v8 = [v7 mutableCopy];

  v9 = [(HFItemManager *)self home];
  v10 = [v9 hf_hasAnyVisibleTriggers];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v3 = [(HFItemManager *)self home];
    if ([v3 hf_userCanCreateTrigger] & 1) != 0 || (HFForceAllowAutomationCreation())
    {
      v11 = 0;
    }

    else
    {
      v4 = [(HFItemManager *)self home];
      if (([v4 hf_userIsAllowedToCreateTrigger] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isRunningInStoreDemoMode") & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isPressDemoModeEnabled") & 1) == 0)
      {

        goto LABEL_12;
      }

      v11 = 1;
    }
  }

  v12 = [(HFItemManager *)self home];
  v13 = [v12 hf_shouldBlockCurrentUserFromHome];

  if (v11)
  {
  }

  if ((v10 & 1) == 0)
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v13)
  {
LABEL_12:
    v14 = [(HUSideBarItemManager *)self automationItem];
    [v8 addObject:v14];
  }

LABEL_13:
  v15 = [(HUSideBarItemManager *)self discoverContentAvailabilityDictionary];
  if (v15)
  {
    v16 = [(HFItemManager *)self home];
    v17 = [v16 hf_shouldBlockCurrentUserFromHome];
  }

  else
  {
    v17 = 1;
  }

  v18 = [(HFItemManager *)self home];
  v19 = [v18 hf_currentUserIsRestrictedGuest];

  if ((v19 & 1) != 0 || v17)
  {
    v20 = [(HUSideBarItemManager *)self discoverItem];
    [v8 addObject:v20];
  }

  v21 = [(HFItemManager *)self home];
  v22 = [v21 hf_currentUserIsRestrictedGuest];

  if (v22)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__HUSideBarItemManager__itemsToHideInSet___block_invoke;
    v29[3] = &unk_277DBC410;
    v29[4] = self;
    v30 = v8;
    [v6 na_each:v29];
  }

  v23 = [(HFItemManager *)self home];
  v24 = [v23 accessories];
  v25 = [v24 count];

  if (!v25)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__HUSideBarItemManager__itemsToHideInSet___block_invoke_2;
    v27[3] = &unk_277DBC410;
    v27[4] = self;
    v28 = v8;
    [v6 na_each:v27];
  }

  return v8;
}

void __42__HUSideBarItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
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

  if (v6)
  {
    v7 = [*(a1 + 32) home];
    v8 = [v7 hf_shouldBlockCurrentRestrictedGuestFromHome];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v11 = v4;
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ((v8 & 1) != 0 || v10)
  {
    [*(a1 + 40) addObject:v11];
  }
}

void __42__HUSideBarItemManager__itemsToHideInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 room];
    v7 = [*(a1 + 32) home];
    v8 = [v7 roomForEntireHome];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D149E8]) initWithHome:v4];
  [(HUSideBarItemManager *)self setRoomItemProvider:v5];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HUSideBarItemManager__buildItemProvidersForHome___block_invoke;
  v19[3] = &unk_277DB83E8;
  v20 = v4;
  v6 = v4;
  v7 = [(HUSideBarItemManager *)self roomItemProvider];
  [v7 setFilter:v19];

  v8 = [v6 hf_reorderableRoomsList];
  [(HUSideBarItemManager *)self setReorderableRoomList:v8];

  v9 = MEMORY[0x277CBEB18];
  v10 = [(HUSideBarItemManager *)self staticItemProvider];
  v11 = [(HUSideBarItemManager *)self roomItemProvider];
  v12 = [v9 arrayWithObjects:{v10, v11, 0}];

  v13 = [MEMORY[0x277D14B68] getAvailabilityDictionary];
  [(HUSideBarItemManager *)self setDiscoverContentAvailabilityDictionary:v13];

  v14 = objc_alloc(MEMORY[0x277D142A0]);
  v15 = objc_alloc_init(MEMORY[0x277D148D0]);
  v16 = [v14 initWithHome:v6 room:0 overrideValueSource:v15];
  [(HUSideBarItemManager *)self setCategoryItemProvider:v16];

  v17 = [(HUSideBarItemManager *)self categoryItemProvider];
  [v12 addObject:v17];

  return v12;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"home"];
  v7 = [(HUSideBarItemManager *)self homeItem];
  v8 = [(HUSideBarItemManager *)self automationItem];
  v21[1] = v8;
  v9 = [(HUSideBarItemManager *)self discoverItem];
  v21[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v6 setItems:v10];

  [v5 addObject:v6];
  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"category"];
  v12 = [(HUSideBarItemManager *)self sortedCategoryItems];
  [v11 setItems:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUSideBarCategorySectionTitle", @"HUSideBarCategorySectionTitle", 1);
  [v11 setHeaderTitle:v13];

  v14 = [(HFItemManager *)self home];
  LOBYTE(v9) = [v14 hf_currentUserIsRestrictedGuest];

  if ((v9 & 1) == 0)
  {
    [v5 addObject:v11];
  }

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"room"];
  v16 = [(HUSideBarItemManager *)self sortedRoomItems];
  [v15 setItems:v16];

  v17 = _HULocalizedStringWithDefaultValue(@"HURoomSectionTitle", @"HURoomSectionTitle", 1);
  [v15 setHeaderTitle:v17];

  v18 = [(HFItemManager *)self home];
  LOBYTE(v17) = [v18 hf_shouldBlockCurrentRestrictedGuestFromHome];

  if ((v17 & 1) == 0)
  {
    [v5 addObject:v15];
  }

  v19 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v19;
}

- (id)allItems
{
  v2 = [(HFItemManager *)self itemProviders];
  v3 = [v2 na_flatMap:&__block_literal_global_92];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

id __32__HUSideBarItemManager_allItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 items];
  v3 = [v2 allObjects];

  return v3;
}

- (id)sortedRoomItems
{
  v3 = [(HUSideBarItemManager *)self roomItemProvider];
  v4 = [v3 items];
  v5 = [v4 allObjects];
  v6 = [(HFItemManager *)self home];
  v7 = [v6 hf_dashboardSectionReorderableItemComparator];
  if (v7)
  {
    v8 = [v5 sortedArrayUsingComparator:v7];
  }

  else
  {
    v9 = [MEMORY[0x277D14778] defaultItemComparator];
    v8 = [v5 sortedArrayUsingComparator:v9];
  }

  return v8;
}

- (id)sortedCategoryItems
{
  v3 = [(HUSideBarItemManager *)self categoryItemProvider];
  v4 = [v3 items];
  v5 = [v4 allObjects];
  v6 = [(HFItemManager *)self home];
  v7 = [v6 hf_accessoryCategoriesReorderableItemComparator];
  if (v7)
  {
    v8 = [v5 sortedArrayUsingComparator:v7];
  }

  else
  {
    v9 = [MEMORY[0x277D14778] defaultItemComparator];
    v8 = [v5 sortedArrayUsingComparator:v9];
  }

  return v8;
}

@end