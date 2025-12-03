@interface HUSideBarItemManager
- (HUSideBarItemManager)initWithDelegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)allItems;
- (id)categoryItemForCategory:(id)category;
- (id)roomItemForRoom:(id)room;
- (id)sortedCategoryItems;
- (id)sortedRoomItems;
@end

@implementation HUSideBarItemManager

- (HUSideBarItemManager)initWithDelegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = HUSideBarItemManager;
  v3 = [(HFItemManager *)&v15 initWithDelegate:delegate];
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

- (id)roomItemForRoom:(id)room
{
  roomCopy = room;
  roomItemProvider = [(HUSideBarItemManager *)self roomItemProvider];
  items = [roomItemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HUSideBarItemManager_roomItemForRoom___block_invoke;
  v10[3] = &unk_277DBC3C0;
  v11 = roomCopy;
  v7 = roomCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __40__HUSideBarItemManager_roomItemForRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)categoryItemForCategory:(id)category
{
  categoryCopy = category;
  categoryItemProvider = [(HUSideBarItemManager *)self categoryItemProvider];
  items = [categoryItemProvider items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HUSideBarItemManager_categoryItemForCategory___block_invoke;
  v10[3] = &unk_277DBC3E8;
  v11 = categoryCopy;
  v7 = categoryCopy;
  v8 = [items na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __48__HUSideBarItemManager_categoryItemForCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryTypeGroup];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  v31.receiver = self;
  v31.super_class = HUSideBarItemManager;
  v7 = [(HFItemManager *)&v31 _itemsToHideInSet:setCopy];
  v8 = [v7 mutableCopy];

  home = [(HFItemManager *)self home];
  hf_hasAnyVisibleTriggers = [home hf_hasAnyVisibleTriggers];
  if (hf_hasAnyVisibleTriggers)
  {
    v11 = 0;
  }

  else
  {
    home2 = [(HFItemManager *)self home];
    if ([home2 hf_userCanCreateTrigger] & 1) != 0 || (HFForceAllowAutomationCreation())
    {
      v11 = 0;
    }

    else
    {
      home3 = [(HFItemManager *)self home];
      if (([home3 hf_userIsAllowedToCreateTrigger] & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isRunningInStoreDemoMode") & 1) == 0 && (objc_msgSend(MEMORY[0x277D14CE8], "isPressDemoModeEnabled") & 1) == 0)
      {

        goto LABEL_12;
      }

      v11 = 1;
    }
  }

  home4 = [(HFItemManager *)self home];
  hf_shouldBlockCurrentUserFromHome = [home4 hf_shouldBlockCurrentUserFromHome];

  if (v11)
  {
  }

  if ((hf_hasAnyVisibleTriggers & 1) == 0)
  {

    if ((hf_shouldBlockCurrentUserFromHome & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (hf_shouldBlockCurrentUserFromHome)
  {
LABEL_12:
    automationItem = [(HUSideBarItemManager *)self automationItem];
    [v8 addObject:automationItem];
  }

LABEL_13:
  discoverContentAvailabilityDictionary = [(HUSideBarItemManager *)self discoverContentAvailabilityDictionary];
  if (discoverContentAvailabilityDictionary)
  {
    home5 = [(HFItemManager *)self home];
    hf_shouldBlockCurrentUserFromHome2 = [home5 hf_shouldBlockCurrentUserFromHome];
  }

  else
  {
    hf_shouldBlockCurrentUserFromHome2 = 1;
  }

  home6 = [(HFItemManager *)self home];
  hf_currentUserIsRestrictedGuest = [home6 hf_currentUserIsRestrictedGuest];

  if ((hf_currentUserIsRestrictedGuest & 1) != 0 || hf_shouldBlockCurrentUserFromHome2)
  {
    discoverItem = [(HUSideBarItemManager *)self discoverItem];
    [v8 addObject:discoverItem];
  }

  home7 = [(HFItemManager *)self home];
  hf_currentUserIsRestrictedGuest2 = [home7 hf_currentUserIsRestrictedGuest];

  if (hf_currentUserIsRestrictedGuest2)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__HUSideBarItemManager__itemsToHideInSet___block_invoke;
    v29[3] = &unk_277DBC410;
    v29[4] = self;
    v30 = v8;
    [setCopy na_each:v29];
  }

  home8 = [(HFItemManager *)self home];
  accessories = [home8 accessories];
  v25 = [accessories count];

  if (!v25)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__HUSideBarItemManager__itemsToHideInSet___block_invoke_2;
    v27[3] = &unk_277DBC410;
    v27[4] = self;
    v28 = v8;
    [setCopy na_each:v27];
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

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  v5 = [objc_alloc(MEMORY[0x277D149E8]) initWithHome:homeCopy];
  [(HUSideBarItemManager *)self setRoomItemProvider:v5];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HUSideBarItemManager__buildItemProvidersForHome___block_invoke;
  v19[3] = &unk_277DB83E8;
  v20 = homeCopy;
  v6 = homeCopy;
  roomItemProvider = [(HUSideBarItemManager *)self roomItemProvider];
  [roomItemProvider setFilter:v19];

  hf_reorderableRoomsList = [v6 hf_reorderableRoomsList];
  [(HUSideBarItemManager *)self setReorderableRoomList:hf_reorderableRoomsList];

  v9 = MEMORY[0x277CBEB18];
  staticItemProvider = [(HUSideBarItemManager *)self staticItemProvider];
  roomItemProvider2 = [(HUSideBarItemManager *)self roomItemProvider];
  v12 = [v9 arrayWithObjects:{staticItemProvider, roomItemProvider2, 0}];

  getAvailabilityDictionary = [MEMORY[0x277D14B68] getAvailabilityDictionary];
  [(HUSideBarItemManager *)self setDiscoverContentAvailabilityDictionary:getAvailabilityDictionary];

  v14 = objc_alloc(MEMORY[0x277D142A0]);
  v15 = objc_alloc_init(MEMORY[0x277D148D0]);
  v16 = [v14 initWithHome:v6 room:0 overrideValueSource:v15];
  [(HUSideBarItemManager *)self setCategoryItemProvider:v16];

  categoryItemProvider = [(HUSideBarItemManager *)self categoryItemProvider];
  [v12 addObject:categoryItemProvider];

  return v12;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v21[3] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"home"];
  homeItem = [(HUSideBarItemManager *)self homeItem];
  automationItem = [(HUSideBarItemManager *)self automationItem];
  v21[1] = automationItem;
  discoverItem = [(HUSideBarItemManager *)self discoverItem];
  v21[2] = discoverItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v6 setItems:v10];

  [array addObject:v6];
  v11 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"category"];
  sortedCategoryItems = [(HUSideBarItemManager *)self sortedCategoryItems];
  [v11 setItems:sortedCategoryItems];

  v13 = _HULocalizedStringWithDefaultValue(@"HUSideBarCategorySectionTitle", @"HUSideBarCategorySectionTitle", 1);
  [v11 setHeaderTitle:v13];

  home = [(HFItemManager *)self home];
  LOBYTE(discoverItem) = [home hf_currentUserIsRestrictedGuest];

  if ((discoverItem & 1) == 0)
  {
    [array addObject:v11];
  }

  v15 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"room"];
  sortedRoomItems = [(HUSideBarItemManager *)self sortedRoomItems];
  [v15 setItems:sortedRoomItems];

  v17 = _HULocalizedStringWithDefaultValue(@"HURoomSectionTitle", @"HURoomSectionTitle", 1);
  [v15 setHeaderTitle:v17];

  home2 = [(HFItemManager *)self home];
  LOBYTE(v17) = [home2 hf_shouldBlockCurrentRestrictedGuestFromHome];

  if ((v17 & 1) == 0)
  {
    [array addObject:v15];
  }

  v19 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v19;
}

- (id)allItems
{
  itemProviders = [(HFItemManager *)self itemProviders];
  v3 = [itemProviders na_flatMap:&__block_literal_global_92];

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
  roomItemProvider = [(HUSideBarItemManager *)self roomItemProvider];
  items = [roomItemProvider items];
  allObjects = [items allObjects];
  home = [(HFItemManager *)self home];
  hf_dashboardSectionReorderableItemComparator = [home hf_dashboardSectionReorderableItemComparator];
  if (hf_dashboardSectionReorderableItemComparator)
  {
    v8 = [allObjects sortedArrayUsingComparator:hf_dashboardSectionReorderableItemComparator];
  }

  else
  {
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v8 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  }

  return v8;
}

- (id)sortedCategoryItems
{
  categoryItemProvider = [(HUSideBarItemManager *)self categoryItemProvider];
  items = [categoryItemProvider items];
  allObjects = [items allObjects];
  home = [(HFItemManager *)self home];
  hf_accessoryCategoriesReorderableItemComparator = [home hf_accessoryCategoriesReorderableItemComparator];
  if (hf_accessoryCategoriesReorderableItemComparator)
  {
    v8 = [allObjects sortedArrayUsingComparator:hf_accessoryCategoriesReorderableItemComparator];
  }

  else
  {
    defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
    v8 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  }

  return v8;
}

@end