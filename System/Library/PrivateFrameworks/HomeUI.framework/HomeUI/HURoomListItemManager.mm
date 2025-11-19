@interface HURoomListItemManager
- (HFReorderableHomeKitItemList)reorderableRoomList;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
@end

@implementation HURoomListItemManager

- (HFReorderableHomeKitItemList)reorderableRoomList
{
  v3 = [(HURoomListItemManager *)self clientReorderableRoomList];

  if (v3)
  {
    v4 = [(HURoomListItemManager *)self clientReorderableRoomList];
  }

  else
  {
    v5 = [(HFItemManager *)self sourceItem];
    v6 = [v5 latestResults];
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13EE0]];
  }

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D149E8];
  v5 = a3;
  v6 = [[v4 alloc] initWithHome:v5];
  v7 = [v5 hf_currentUserIsAdministrator];

  if (v7)
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
  v14 = [(HURoomListItemManager *)self addRoomItem];
  v15 = [v13 na_setWithSafeObject:v14];
  v16 = [v12 initWithItems:v15];

  v19[0] = v6;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  return v17;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HURoomListItemManager;
  v4 = [(HFItemManager *)&v13 _comparatorForSectionIdentifier:a3];
  v5 = [(HURoomListItemManager *)self reorderableRoomList];
  v6 = [v5 sortedHomeKitItemComparator];
  v7 = v6;
  if (!v6)
  {
    v6 = v4;
  }

  v8 = _Block_copy(v6);

  v9 = MEMORY[0x277D14CE8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v9 comparatorWithSortedClasses:v10 secondaryComparator:v8];

  return v11;
}

@end