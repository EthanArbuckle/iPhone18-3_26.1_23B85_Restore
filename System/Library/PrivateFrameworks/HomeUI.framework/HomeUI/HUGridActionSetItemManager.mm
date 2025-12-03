@interface HUGridActionSetItemManager
- (BOOL)isItemReorderableAtIndex:(id)index;
- (HFReorderableHomeKitItemList)reorderableActionSetList;
- (HUGridActionSetItemManager)initWithDelegate:(id)delegate;
- (HUGridActionSetItemManager)initWithDelegate:(id)delegate actionSetStyle:(unint64_t)style room:(id)room;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_comparatorForSectionIdentifier:(id)identifier;
- (id)_itemsToHideInSet:(id)set;
- (id)actionSetItemAssociatedWithActionSet:(id)set;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)_updateFilters;
- (void)setOnlyShowsFavorites:(BOOL)favorites;
- (void)setRoom:(id)room;
@end

@implementation HUGridActionSetItemManager

- (HUGridActionSetItemManager)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = HUGridActionSetItemManager;
  result = [(HFItemManager *)&v4 initWithDelegate:delegate];
  if (result)
  {
    result->_actionSetStyle = 1;
  }

  return result;
}

- (HUGridActionSetItemManager)initWithDelegate:(id)delegate actionSetStyle:(unint64_t)style room:(id)room
{
  roomCopy = room;
  v13.receiver = self;
  v13.super_class = HUGridActionSetItemManager;
  v10 = [(HFItemManager *)&v13 initWithDelegate:delegate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_room, room);
    v11->_actionSetStyle = style;
  }

  return v11;
}

- (id)actionSetItemAssociatedWithActionSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allItems = [(HFItemManager *)self allItems];
  v6 = [allItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          actionSet = [v11 actionSet];

          if (actionSet == setCopy)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [allItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  if (self->_room != roomCopy)
  {
    v6 = roomCopy;
    objc_storeStrong(&self->_room, room);
    [(HUGridActionSetItemManager *)self _updateFilters];
    roomCopy = v6;
  }
}

- (void)setOnlyShowsFavorites:(BOOL)favorites
{
  if (self->_onlyShowsFavorites != favorites)
  {
    self->_onlyShowsFavorites = favorites;
    [(HUGridActionSetItemManager *)self _updateFilters];
  }
}

- (HFReorderableHomeKitItemList)reorderableActionSetList
{
  clientReorderableActionSetList = [(HUGridActionSetItemManager *)self clientReorderableActionSetList];

  if (clientReorderableActionSetList)
  {
    clientReorderableActionSetList2 = [(HUGridActionSetItemManager *)self clientReorderableActionSetList];
  }

  else
  {
    sourceItem = [(HFItemManager *)self sourceItem];
    latestResults = [sourceItem latestResults];
    clientReorderableActionSetList2 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13ED0]];
  }

  return clientReorderableActionSetList2;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v20[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  room = [(HUGridActionSetItemManager *)self room];

  if (room)
  {
    v6 = objc_alloc(MEMORY[0x277D149E0]);
    room2 = [(HUGridActionSetItemManager *)self room];
    v8 = [v6 initWithHome:homeCopy room:room2];
    [(HFItemManager *)self setSourceItem:v8];
  }

  else
  {
    if (!homeCopy)
    {
      goto LABEL_6;
    }

    room2 = [objc_alloc(MEMORY[0x277D146D0]) initWithHome:homeCopy];
    [(HFItemManager *)self setSourceItem:room2];
  }

LABEL_6:
  v9 = [objc_alloc(MEMORY[0x277D143A8]) initWithHome:homeCopy actionSetItemStyle:{-[HUGridActionSetItemManager actionSetStyle](self, "actionSetStyle")}];
  [(HUGridActionSetItemManager *)self setActionSetItemProvider:v9];

  v10 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_86];
  [(HUGridActionSetItemManager *)self setActionSetPlaceholderItem:v10];

  v11 = objc_alloc(MEMORY[0x277D14B40]);
  v12 = MEMORY[0x277CBEB98];
  actionSetPlaceholderItem = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
  v14 = [v12 setWithObject:actionSetPlaceholderItem];
  v15 = [v11 initWithItems:v14];
  [(HUGridActionSetItemManager *)self setActionSetPlaceholderItemProvider:v15];

  [(HUGridActionSetItemManager *)self _updateFilters];
  actionSetItemProvider = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  v20[0] = actionSetItemProvider;
  actionSetPlaceholderItemProvider = [(HUGridActionSetItemManager *)self actionSetPlaceholderItemProvider];
  v20[1] = actionSetPlaceholderItemProvider;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  return v18;
}

id __57__HUGridActionSetItemManager__buildItemProvidersForHome___block_invoke()
{
  v0 = objc_opt_new();
  [v0 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FD8]];
  v1 = _HULocalizedStringWithDefaultValue(@"HUPlaceholderActionSetTitle", @"HUPlaceholderActionSetTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v2 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"plus.circle.fill"];
  [v0 setObject:v2 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v3 = MEMORY[0x277D2C900];
  v4 = [v0 copy];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUGridActionSetSectionIdentifier"];
  allObjects = [itemsCopy allObjects];
  identifier = [v6 identifier];
  v9 = [(HUGridActionSetItemManager *)self _comparatorForSectionIdentifier:identifier];
  v10 = [allObjects sortedArrayUsingComparator:v9];
  [v6 setItems:v10];

  v11 = _HULocalizedStringWithDefaultValue(@"HUGridScenesSectionTitle", @"HUGridScenesSectionTitle", 1);
  [v6 setHeaderTitle:v11];

  [v5 addObject:v6];
  v12 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v12;
}

- (id)_comparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reorderableActionSetList = [(HUGridActionSetItemManager *)self reorderableActionSetList];
  sortedHomeKitItemComparator = [reorderableActionSetList sortedHomeKitItemComparator];
  v7 = sortedHomeKitItemComparator;
  if (sortedHomeKitItemComparator)
  {
    v8 = _Block_copy(sortedHomeKitItemComparator);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUGridActionSetItemManager;
    v9 = [(HFItemManager *)&v11 _comparatorForSectionIdentifier:identifierCopy];
    v8 = _Block_copy(v9);
  }

  return v8;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  v7.receiver = self;
  v7.super_class = HUGridActionSetItemManager;
  itemsCopy = items;
  [(HFItemManager *)&v7 _didFinishUpdateTransactionWithAffectedItems:itemsCopy];
  v5 = [(HFItemManager *)self sourceItem:v7.receiver];
  v6 = [itemsCopy containsObject:v5];

  if (v6)
  {
    [(HUGridActionSetItemManager *)self setReorderableActionSetList:0];
  }
}

- (id)_itemsToHideInSet:(id)set
{
  v11.receiver = self;
  v11.super_class = HUGridActionSetItemManager;
  v4 = [(HFItemManager *)&v11 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  if (-[HUGridActionSetItemManager hideActionSetPlaceholderItem](self, "hideActionSetPlaceholderItem") || (-[HUGridActionSetItemManager actionSetItemProvider](self, "actionSetItemProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 items], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hmf_isEmpty"), v7, v6, (v8 & 1) == 0))
  {
    actionSetPlaceholderItem = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
    [v5 na_safeAddObject:actionSetPlaceholderItem];
  }

  return v5;
}

- (void)_updateFilters
{
  room = [(HUGridActionSetItemManager *)self room];
  actionSetItemProvider = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  [actionSetItemProvider setRoom:room];

  onlyShowsFavorites = [(HUGridActionSetItemManager *)self onlyShowsFavorites];
  actionSetItemProvider2 = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  [actionSetItemProvider2 setOnlyShowsFavorites:onlyShowsFavorites];
}

- (BOOL)isItemReorderableAtIndex:(id)index
{
  v4 = [(HFItemManager *)self displayedItemAtIndexPath:index];
  actionSetPlaceholderItem = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
  v6 = [v4 isEqual:actionSetPlaceholderItem];

  if (v6)
  {
    return 0;
  }

  reorderableActionSetList = [(HUGridActionSetItemManager *)self reorderableActionSetList];
  v7 = reorderableActionSetList != 0;

  return v7;
}

@end