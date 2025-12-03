@interface HURoomListItemManager
- (HFReorderableHomeKitItemList)reorderableRoomList;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_comparatorForSectionIdentifier:(id)identifier;
@end

@implementation HURoomListItemManager

- (HFReorderableHomeKitItemList)reorderableRoomList
{
  clientReorderableRoomList = [(HURoomListItemManager *)self clientReorderableRoomList];

  if (clientReorderableRoomList)
  {
    clientReorderableRoomList2 = [(HURoomListItemManager *)self clientReorderableRoomList];
  }

  else
  {
    sourceItem = [(HFItemManager *)self sourceItem];
    latestResults = [sourceItem latestResults];
    clientReorderableRoomList2 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EE0]];
  }

  return clientReorderableRoomList2;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D149E8];
  homeCopy = home;
  v6 = [[v4 alloc] initWithHome:homeCopy];
  hf_currentUserIsAdministrator = [homeCopy hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    v8 = objc_alloc(MEMORY[0x277D14B38]);
    v20 = *MEMORY[0x277D13F60];
    v9 = _HULocalizedStringWithDefaultValue(@"HURoomListAddButtonTitle", @"HURoomListAddButtonTitle", 1);
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v8 initWithResults:v10];
    [(HURoomListItemManager *)self setAddRoomItem:v11];
  }

  v12 = objc_alloc(MEMORY[0x277D14B40]);
  v13 = MEMORY[0x277CBEB98];
  addRoomItem = [(HURoomListItemManager *)self addRoomItem];
  v15 = [v13 na_setWithSafeObject:addRoomItem];
  v16 = [v12 initWithItems:v15];

  v19[0] = v6;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  return v17;
}

- (id)_comparatorForSectionIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HURoomListItemManager;
  v4 = [(HFItemManager *)&v13 _comparatorForSectionIdentifier:identifier];
  reorderableRoomList = [(HURoomListItemManager *)self reorderableRoomList];
  sortedHomeKitItemComparator = [reorderableRoomList sortedHomeKitItemComparator];
  v7 = sortedHomeKitItemComparator;
  if (!sortedHomeKitItemComparator)
  {
    sortedHomeKitItemComparator = v4;
  }

  v8 = _Block_copy(sortedHomeKitItemComparator);

  v9 = MEMORY[0x277D14CE8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v9 comparatorWithSortedClasses:v10 secondaryComparator:v8];

  return v11;
}

@end