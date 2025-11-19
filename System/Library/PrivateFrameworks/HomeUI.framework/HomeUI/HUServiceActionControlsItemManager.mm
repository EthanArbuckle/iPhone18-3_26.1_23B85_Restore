@interface HUServiceActionControlsItemManager
- (HUServiceActionControlsItemManager)initWithServiceActionItem:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)_sectionIdentifiers;
- (id)_titleForSectionWithIdentifier:(id)a3;
- (unint64_t)_numberOfSections;
@end

@implementation HUServiceActionControlsItemManager

- (HUServiceActionControlsItemManager)initWithServiceActionItem:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 containingItem];
  v11 = [v10 copy];
  v14.receiver = self;
  v14.super_class = HUServiceActionControlsItemManager;
  v12 = [(HFItemManager *)&v14 initWithDelegate:v9 sourceItem:v11];

  if (v12)
  {
    [(HUServiceActionControlsItemManager *)v12 setServiceActionItem:v8];
    v12->_mode = a4;
  }

  return v12;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D145D8]);
  v6 = [(HUServiceActionControlsItemManager *)self serviceActionItem];
  v7 = [(HUServiceActionControlsItemManager *)self serviceActionItem];
  v8 = [v7 valueSource];
  v9 = [v5 initWithItem:v6 valueSource:v8];
  [(HUServiceActionControlsItemManager *)self setControlPanelItemProvider:v9];

  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v10 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider:v14];
  [v10 setFilter:&v14];

  v11 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

uint64_t __65__HUServiceActionControlsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained serviceActionItem];
  v6 = [v5 services];
  if ([v6 count] > 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = [WeakRetained _actionControlsDelegate];
    v8 = [v7 itemManager:WeakRetained shouldShowControlPanelItem:v3];
  }

  return v8;
}

- (id)_itemsToHideInSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUServiceActionControlsItemManager;
  v3 = [(HFItemManager *)&v6 _itemsToHideInSet:a3];
  v4 = [v3 mutableCopy];

  return v4;
}

- (unint64_t)_numberOfSections
{
  v2 = [(HUServiceActionControlsItemManager *)self _sectionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HUServiceActionControlsItemManager *)self _sectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"HUServiceActionControlsRemoveFromTriggerSectionIdentifier"])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
    v7 = [v6 items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HUServiceActionControlsItemManager__titleForSectionWithIdentifier___block_invoke;
    v13[3] = &unk_277DB85D8;
    v14 = v4;
    v8 = [v7 na_firstObjectPassingTest:v13];

    v9 = [(HUServiceActionControlsItemManager *)self _actionControlsDelegate];
    v10 = [v9 itemManager:self shouldShowSectionTitleForControlPanelItem:v8];

    if (v10)
    {
      v11 = [v8 latestResults];
      v5 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __69__HUServiceActionControlsItemManager__titleForSectionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 uniqueIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_sectionIdentifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  v5 = [v4 items];
  v6 = [v5 allObjects];

  v7 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  v8 = [v7 controlPanelItemComparator];
  v9 = [v6 sortedArrayUsingComparator:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 latestResults];

        if (v16)
        {
          v17 = [(HUServiceActionControlsItemManager *)self _sectionIdentifierForControlPanelItem:v15];
          [v3 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [v3 addObject:@"HUServiceActionControlsRemoveFromTriggerSectionIdentifier"];

  return v3;
}

@end