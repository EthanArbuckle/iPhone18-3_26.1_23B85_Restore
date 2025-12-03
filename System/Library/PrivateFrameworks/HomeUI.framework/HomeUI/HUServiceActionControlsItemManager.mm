@interface HUServiceActionControlsItemManager
- (HUServiceActionControlsItemManager)initWithServiceActionItem:(id)item mode:(unint64_t)mode delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_identifierForSection:(unint64_t)section;
- (id)_itemsToHideInSet:(id)set;
- (id)_sectionIdentifiers;
- (id)_titleForSectionWithIdentifier:(id)identifier;
- (unint64_t)_numberOfSections;
@end

@implementation HUServiceActionControlsItemManager

- (HUServiceActionControlsItemManager)initWithServiceActionItem:(id)item mode:(unint64_t)mode delegate:(id)delegate
{
  itemCopy = item;
  delegateCopy = delegate;
  containingItem = [itemCopy containingItem];
  v11 = [containingItem copy];
  v14.receiver = self;
  v14.super_class = HUServiceActionControlsItemManager;
  v12 = [(HFItemManager *)&v14 initWithDelegate:delegateCopy sourceItem:v11];

  if (v12)
  {
    [(HUServiceActionControlsItemManager *)v12 setServiceActionItem:itemCopy];
    v12->_mode = mode;
  }

  return v12;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v17[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D145D8]);
  serviceActionItem = [(HUServiceActionControlsItemManager *)self serviceActionItem];
  serviceActionItem2 = [(HUServiceActionControlsItemManager *)self serviceActionItem];
  valueSource = [serviceActionItem2 valueSource];
  v9 = [v5 initWithItem:serviceActionItem valueSource:valueSource];
  [(HUServiceActionControlsItemManager *)self setControlPanelItemProvider:v9];

  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v10 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider:v14];
  [v10 setFilter:&v14];

  controlPanelItemProvider = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  v17[0] = controlPanelItemProvider;
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

- (id)_itemsToHideInSet:(id)set
{
  v6.receiver = self;
  v6.super_class = HUServiceActionControlsItemManager;
  v3 = [(HFItemManager *)&v6 _itemsToHideInSet:set];
  v4 = [v3 mutableCopy];

  return v4;
}

- (unint64_t)_numberOfSections
{
  _sectionIdentifiers = [(HUServiceActionControlsItemManager *)self _sectionIdentifiers];
  v3 = [_sectionIdentifiers count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  _sectionIdentifiers = [(HUServiceActionControlsItemManager *)self _sectionIdentifiers];
  if ([_sectionIdentifiers count] <= section)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, section, [_sectionIdentifiers count]);
  }

  if ([_sectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_sectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"HUServiceActionControlsRemoveFromTriggerSectionIdentifier"])
  {
    v5 = 0;
  }

  else
  {
    controlPanelItemProvider = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
    items = [controlPanelItemProvider items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HUServiceActionControlsItemManager__titleForSectionWithIdentifier___block_invoke;
    v13[3] = &unk_277DB85D8;
    v14 = identifierCopy;
    v8 = [items na_firstObjectPassingTest:v13];

    _actionControlsDelegate = [(HUServiceActionControlsItemManager *)self _actionControlsDelegate];
    v10 = [_actionControlsDelegate itemManager:self shouldShowSectionTitleForControlPanelItem:v8];

    if (v10)
    {
      latestResults = [v8 latestResults];
      v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
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
  array = [MEMORY[0x277CBEB18] array];
  controlPanelItemProvider = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  items = [controlPanelItemProvider items];
  allObjects = [items allObjects];

  controlPanelItemProvider2 = [(HUServiceActionControlsItemManager *)self controlPanelItemProvider];
  controlPanelItemComparator = [controlPanelItemProvider2 controlPanelItemComparator];
  v9 = [allObjects sortedArrayUsingComparator:controlPanelItemComparator];

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
        latestResults = [v15 latestResults];

        if (latestResults)
        {
          v17 = [(HUServiceActionControlsItemManager *)self _sectionIdentifierForControlPanelItem:v15];
          [array addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [array addObject:@"HUServiceActionControlsRemoveFromTriggerSectionIdentifier"];

  return array;
}

@end