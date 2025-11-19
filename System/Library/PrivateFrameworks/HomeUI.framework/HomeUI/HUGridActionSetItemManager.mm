@interface HUGridActionSetItemManager
- (BOOL)isItemReorderableAtIndex:(id)a3;
- (HFReorderableHomeKitItemList)reorderableActionSetList;
- (HUGridActionSetItemManager)initWithDelegate:(id)a3;
- (HUGridActionSetItemManager)initWithDelegate:(id)a3 actionSetStyle:(unint64_t)a4 room:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)actionSetItemAssociatedWithActionSet:(id)a3;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
- (void)_updateFilters;
- (void)setOnlyShowsFavorites:(BOOL)a3;
- (void)setRoom:(id)a3;
@end

@implementation HUGridActionSetItemManager

- (HUGridActionSetItemManager)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUGridActionSetItemManager;
  result = [(HFItemManager *)&v4 initWithDelegate:a3];
  if (result)
  {
    result->_actionSetStyle = 1;
  }

  return result;
}

- (HUGridActionSetItemManager)initWithDelegate:(id)a3 actionSetStyle:(unint64_t)a4 room:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUGridActionSetItemManager;
  v10 = [(HFItemManager *)&v13 initWithDelegate:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_room, a5);
    v11->_actionSetStyle = a4;
  }

  return v11;
}

- (id)actionSetItemAssociatedWithActionSet:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HFItemManager *)self allItems];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 actionSet];

          if (v12 == v4)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)setRoom:(id)a3
{
  v5 = a3;
  if (self->_room != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_room, a3);
    [(HUGridActionSetItemManager *)self _updateFilters];
    v5 = v6;
  }
}

- (void)setOnlyShowsFavorites:(BOOL)a3
{
  if (self->_onlyShowsFavorites != a3)
  {
    self->_onlyShowsFavorites = a3;
    [(HUGridActionSetItemManager *)self _updateFilters];
  }
}

- (HFReorderableHomeKitItemList)reorderableActionSetList
{
  v3 = [(HUGridActionSetItemManager *)self clientReorderableActionSetList];

  if (v3)
  {
    v4 = [(HUGridActionSetItemManager *)self clientReorderableActionSetList];
  }

  else
  {
    v5 = [(HFItemManager *)self sourceItem];
    v6 = [v5 latestResults];
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13ED0]];
  }

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUGridActionSetItemManager *)self room];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D149E0]);
    v7 = [(HUGridActionSetItemManager *)self room];
    v8 = [v6 initWithHome:v4 room:v7];
    [(HFItemManager *)self setSourceItem:v8];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v7 = [objc_alloc(MEMORY[0x277D146D0]) initWithHome:v4];
    [(HFItemManager *)self setSourceItem:v7];
  }

LABEL_6:
  v9 = [objc_alloc(MEMORY[0x277D143A8]) initWithHome:v4 actionSetItemStyle:{-[HUGridActionSetItemManager actionSetStyle](self, "actionSetStyle")}];
  [(HUGridActionSetItemManager *)self setActionSetItemProvider:v9];

  v10 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_86];
  [(HUGridActionSetItemManager *)self setActionSetPlaceholderItem:v10];

  v11 = objc_alloc(MEMORY[0x277D14B40]);
  v12 = MEMORY[0x277CBEB98];
  v13 = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
  v14 = [v12 setWithObject:v13];
  v15 = [v11 initWithItems:v14];
  [(HUGridActionSetItemManager *)self setActionSetPlaceholderItemProvider:v15];

  [(HUGridActionSetItemManager *)self _updateFilters];
  v16 = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  v20[0] = v16;
  v17 = [(HUGridActionSetItemManager *)self actionSetPlaceholderItemProvider];
  v20[1] = v17;
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

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUGridActionSetSectionIdentifier"];
  v7 = [v4 allObjects];
  v8 = [v6 identifier];
  v9 = [(HUGridActionSetItemManager *)self _comparatorForSectionIdentifier:v8];
  v10 = [v7 sortedArrayUsingComparator:v9];
  [v6 setItems:v10];

  v11 = _HULocalizedStringWithDefaultValue(@"HUGridScenesSectionTitle", @"HUGridScenesSectionTitle", 1);
  [v6 setHeaderTitle:v11];

  [v5 addObject:v6];
  v12 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v12;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUGridActionSetItemManager *)self reorderableActionSetList];
  v6 = [v5 sortedHomeKitItemComparator];
  v7 = v6;
  if (v6)
  {
    v8 = _Block_copy(v6);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUGridActionSetItemManager;
    v9 = [(HFItemManager *)&v11 _comparatorForSectionIdentifier:v4];
    v8 = _Block_copy(v9);
  }

  return v8;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUGridActionSetItemManager;
  v4 = a3;
  [(HFItemManager *)&v7 _didFinishUpdateTransactionWithAffectedItems:v4];
  v5 = [(HFItemManager *)self sourceItem:v7.receiver];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    [(HUGridActionSetItemManager *)self setReorderableActionSetList:0];
  }
}

- (id)_itemsToHideInSet:(id)a3
{
  v11.receiver = self;
  v11.super_class = HUGridActionSetItemManager;
  v4 = [(HFItemManager *)&v11 _itemsToHideInSet:a3];
  v5 = [v4 mutableCopy];

  if (-[HUGridActionSetItemManager hideActionSetPlaceholderItem](self, "hideActionSetPlaceholderItem") || (-[HUGridActionSetItemManager actionSetItemProvider](self, "actionSetItemProvider"), v6 = objc_claimAutoreleasedReturnValue(), [v6 items], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hmf_isEmpty"), v7, v6, (v8 & 1) == 0))
  {
    v9 = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
    [v5 na_safeAddObject:v9];
  }

  return v5;
}

- (void)_updateFilters
{
  v3 = [(HUGridActionSetItemManager *)self room];
  v4 = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  [v4 setRoom:v3];

  v5 = [(HUGridActionSetItemManager *)self onlyShowsFavorites];
  v6 = [(HUGridActionSetItemManager *)self actionSetItemProvider];
  [v6 setOnlyShowsFavorites:v5];
}

- (BOOL)isItemReorderableAtIndex:(id)a3
{
  v4 = [(HFItemManager *)self displayedItemAtIndexPath:a3];
  v5 = [(HUGridActionSetItemManager *)self actionSetPlaceholderItem];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    return 0;
  }

  v8 = [(HUGridActionSetItemManager *)self reorderableActionSetList];
  v7 = v8 != 0;

  return v7;
}

@end