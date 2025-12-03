@interface HUTriggerActionSetsItemModule
- (BOOL)prioritizedAccessoriesContainsMediaProfiles:(id)profiles;
- (BOOL)prioritizedAccessoriesContainsServices:(id)services;
- (BOOL)shouldShowPrioritizedActions;
- (HUTriggerActionSetsItemModule)initWithTriggerBuilder:(id)builder flow:(id)flow itemUpdater:(id)updater;
- (id)_buildItemProviders;
- (id)_itemsToHideForStandardTriggerInSet:(id)set;
- (id)_itemsToHideInSet:(id)set;
- (id)_staticItems;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
@end

@implementation HUTriggerActionSetsItemModule

- (HUTriggerActionSetsItemModule)initWithTriggerBuilder:(id)builder flow:(id)flow itemUpdater:(id)updater
{
  builderCopy = builder;
  flowCopy = flow;
  v14.receiver = self;
  v14.super_class = HUTriggerActionSetsItemModule;
  v11 = [(HFItemModule *)&v14 initWithItemUpdater:updater];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_triggerBuilder, builder);
    objc_storeStrong(&v12->_flow, flow);
  }

  return v12;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    _buildItemProviders = [(HUTriggerActionSetsItemModule *)self _buildItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = _buildItemProviders;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D14B40]);
  _staticItems = [(HUTriggerActionSetsItemModule *)self _staticItems];
  v5 = [v3 initWithItems:_staticItems];

  v6 = [MEMORY[0x277CBEB98] setWithObject:v5];

  return v6;
}

- (id)_staticItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v5 = MEMORY[0x277CBEC10];
  v6 = [v4 initWithResults:MEMORY[0x277CBEC10]];
  [(HUTriggerActionSetsItemModule *)self setActionSetsGridItem:v6];

  actionSetsGridItem = [(HUTriggerActionSetsItemModule *)self actionSetsGridItem];
  [v3 na_safeAddObject:actionSetsGridItem];

  v8 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v5];
  [(HUTriggerActionSetsItemModule *)self setServiceActionsGridItem:v8];

  serviceActionsGridItem = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
  [v3 na_safeAddObject:serviceActionsGridItem];

  v10 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v5];
  [(HUTriggerActionSetsItemModule *)self setPrioritizedServiceActionsGridItem:v10];

  prioritizedServiceActionsGridItem = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
  [v3 na_safeAddObject:prioritizedServiceActionsGridItem];

  triggerBuilder = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
  LODWORD(serviceActionsGridItem) = [triggerBuilder isShortcutOwned];

  if (serviceActionsGridItem)
  {
    flow = [(HUTriggerActionSetsItemModule *)self flow];
    v14 = [flow flowState] == 3;

    v15 = [HUShortcutItem alloc];
    triggerBuilder2 = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
    v17 = [(HUShortcutItem *)v15 initWithTriggerBuilder:triggerBuilder2 selectable:v14];
    [(HUTriggerActionSetsItemModule *)self setShortcutItem:v17];

    shortcutItem = [(HUTriggerActionSetsItemModule *)self shortcutItem];
    [v3 addObject:shortcutItem];
  }

  return v3;
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  v5 = [MEMORY[0x277CBEB58] set];
  triggerBuilder = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
  isShortcutOwned = [triggerBuilder isShortcutOwned];

  if (isShortcutOwned)
  {
    actionSetsGridItem = [(HUTriggerActionSetsItemModule *)self actionSetsGridItem];
    [v5 addObject:actionSetsGridItem];

    serviceActionsGridItem = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
    [v5 addObject:serviceActionsGridItem];

    prioritizedServiceActionsGridItem = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
    [v5 addObject:prioritizedServiceActionsGridItem];
  }

  else
  {
    v11 = [(HUTriggerActionSetsItemModule *)self _itemsToHideForStandardTriggerInSet:setCopy];
    [v5 unionSet:v11];

    prioritizedServiceActionsGridItem = [(HUTriggerActionSetsItemModule *)self shortcutItem];
    [v5 na_safeAddObject:prioritizedServiceActionsGridItem];
  }

  if (![(HUTriggerActionSetsItemModule *)self shouldShowPrioritizedActions])
  {
    prioritizedServiceActionsGridItem2 = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
    [v5 addObject:prioritizedServiceActionsGridItem2];
  }

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HUTriggerActionSetsItemModuleSectionIdentifierActionSets"];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionSetsItemModuleSectionIdentifierPrioritizedServiceActions"];
  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionSetsItemModuleSectionIdentifierServiceActions"];
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerActionSetsItemModuleSectionIdentifierShortcuts"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryActionSetsInstructionTitle", @"HUTriggerSummaryActionSetsInstructionTitle", 1);
  [v6 setHeaderTitle:v10];

  v11 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryActionSetsInstructionDescription", @"HUTriggerSummaryActionSetsInstructionDescription", 1);
  [v6 setHeaderSecondaryText:v11];

  v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryPrioritizedServiceActionsInstructionTitle_Single", @"HUTriggerSummaryPrioritizedServiceActionsInstructionTitle_Single", 1);
  [v7 setHeaderTitle:v12];

  if ([(HUTriggerActionSetsItemModule *)self shouldShowPrioritizedActions])
  {
    v13 = @"HUTriggerSummaryOtherServiceActionsInstructionTitle";
  }

  else
  {
    v13 = @"HUTriggerSummaryServiceActionsInstructionTitle";
  }

  v14 = _HULocalizedStringWithDefaultValue(v13, v13, 1);
  [v8 setHeaderTitle:v14];

  v15 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryShortcutsInstructionTitle", @"HUTriggerSummaryShortcutsInstructionTitle", 1);
  [v9 setHeaderTitle:v15];

  actionSetsGridItem = [(HUTriggerActionSetsItemModule *)self actionSetsGridItem];
  v32[0] = actionSetsGridItem;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v6 setItems:v17];

  prioritizedServiceActionsGridItem = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
  v31 = prioritizedServiceActionsGridItem;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [v7 setItems:v19];

  serviceActionsGridItem = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
  v30 = serviceActionsGridItem;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v8 setItems:v21];

  v22 = MEMORY[0x277CBEA60];
  shortcutItem = [(HUTriggerActionSetsItemModule *)self shortcutItem];
  v24 = [v22 na_arrayWithSafeObject:shortcutItem];
  [v9 setItems:v24];

  v25 = MEMORY[0x277D14778];
  v29[0] = v6;
  v29[1] = v7;
  v29[2] = v8;
  v29[3] = v9;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v27 = [v25 filterSections:v26 toDisplayedItems:itemsCopy];

  return v27;
}

- (id)_itemsToHideForStandardTriggerInSet:(id)set
{
  setCopy = set;
  v5 = [MEMORY[0x277CBEB58] set];
  triggerBuilder = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  namedActionSets = [triggerActionSets namedActionSets];

  v9 = [namedActionSets na_filter:&__block_literal_global_36];

  if (![v9 count])
  {
    actionSetsGridItem = [(HUTriggerActionSetsItemModule *)self actionSetsGridItem];
    v11 = [setCopy containsObject:actionSetsGridItem];

    if (v11)
    {
      actionSetsGridItem2 = [(HUTriggerActionSetsItemModule *)self actionSetsGridItem];
      [v5 addObject:actionSetsGridItem2];
    }
  }

  triggerBuilder2 = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
  triggerActionSets2 = [triggerBuilder2 triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets2 anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];
  if ([actions count])
  {
  }

  else
  {
    serviceActionsGridItem = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
    v18 = [setCopy containsObject:serviceActionsGridItem];

    if (!v18)
    {
      goto LABEL_9;
    }

    triggerBuilder2 = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
    [v5 addObject:triggerBuilder2];
  }

LABEL_9:
  if ([(HUTriggerActionSetsItemModule *)self shouldShowPrioritizedActions])
  {
    triggerBuilder3 = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
    triggerActionSets3 = [triggerBuilder3 triggerActionSets];
    anonymousActionSetBuilder2 = [triggerActionSets3 anonymousActionSetBuilder];
    actions2 = [anonymousActionSetBuilder2 actions];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __69__HUTriggerActionSetsItemModule__itemsToHideForStandardTriggerInSet___block_invoke_2;
    v29[3] = &unk_277DB96C8;
    v29[4] = self;
    v23 = [actions2 na_any:v29];

    if (v23)
    {
      goto LABEL_15;
    }

    serviceActionsGridItem2 = [(HUTriggerActionSetsItemModule *)self serviceActionsGridItem];
  }

  else
  {
    prioritizedServiceActionsGridItem = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
    v26 = [setCopy containsObject:prioritizedServiceActionsGridItem];

    if (!v26)
    {
      goto LABEL_15;
    }

    serviceActionsGridItem2 = [(HUTriggerActionSetsItemModule *)self prioritizedServiceActionsGridItem];
  }

  v27 = serviceActionsGridItem2;
  [v5 addObject:serviceActionsGridItem2];

LABEL_15:

  return v5;
}

BOOL __69__HUTriggerActionSetsItemModule__itemsToHideForStandardTriggerInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t __69__HUTriggerActionSetsItemModule__itemsToHideForStandardTriggerInSet___block_invoke_2(uint64_t a1, void *a2)
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
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBEB98];
    v9 = [v6 characteristic];
    v10 = [v9 service];
    v11 = [v8 setWithObject:v10];
    v12 = [v7 prioritizedAccessoriesContainsServices:v11] ^ 1;
  }

  else
  {
    objc_opt_class();
    v13 = v4;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = [v15 mediaProfiles];
      v12 = [v16 prioritizedAccessoriesContainsMediaProfiles:v17] ^ 1;
    }

    else
    {
      objc_opt_class();
      v18 = v13;
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v17 = v19;

      if (v17)
      {
        v20 = [*(a1 + 32) prioritizedAccessories];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __69__HUTriggerActionSetsItemModule__itemsToHideForStandardTriggerInSet___block_invoke_3;
        v22[3] = &unk_277DB96A0;
        v23 = v17;
        v12 = [v20 na_any:v22] ^ 1;
      }

      else
      {
        v12 = 1;
      }
    }
  }

  return v12;
}

uint64_t __69__HUTriggerActionSetsItemModule__itemsToHideForStandardTriggerInSet___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 hf_associatedAccessories];
  v4 = [*(a1 + 32) accessory];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)prioritizedAccessoriesContainsServices:(id)services
{
  servicesCopy = services;
  prioritizedAccessories = [(HUTriggerActionSetsItemModule *)self prioritizedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsServices___block_invoke;
  v9[3] = &unk_277DB96A0;
  v10 = servicesCopy;
  v6 = servicesCopy;
  v7 = [prioritizedAccessories na_any:v9];

  return v7;
}

uint64_t __72__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_containedServices];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (BOOL)prioritizedAccessoriesContainsMediaProfiles:(id)profiles
{
  profilesCopy = profiles;
  prioritizedAccessories = [(HUTriggerActionSetsItemModule *)self prioritizedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsMediaProfiles___block_invoke;
  v9[3] = &unk_277DB96A0;
  v10 = profilesCopy;
  v6 = profilesCopy;
  v7 = [prioritizedAccessories na_any:v9];

  return v7;
}

uint64_t __77__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsMediaProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsMediaProfiles___block_invoke_2;
  v8[3] = &unk_277DB95F8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __77__HUTriggerActionSetsItemModule_prioritizedAccessoriesContainsMediaProfiles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hf_containedProfiles];
  v5 = [v3 mediaProfiles];

  v6 = [v4 intersectsSet:v5];
  return v6;
}

- (BOOL)shouldShowPrioritizedActions
{
  prioritizedAccessories = [(HUTriggerActionSetsItemModule *)self prioritizedAccessories];
  if ([prioritizedAccessories count])
  {
    triggerBuilder = [(HUTriggerActionSetsItemModule *)self triggerBuilder];
    triggerActionSets = [triggerBuilder triggerActionSets];
    anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];
    actions = [anonymousActionSetBuilder actions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__HUTriggerActionSetsItemModule_shouldShowPrioritizedActions__block_invoke;
    v10[3] = &unk_277DB96C8;
    v10[4] = self;
    v8 = [actions na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __61__HUTriggerActionSetsItemModule_shouldShowPrioritizedActions__block_invoke(uint64_t a1, void *a2)
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
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBEB98];
    v9 = [v6 characteristic];
    v10 = [v9 service];
    v11 = [v8 setWithObject:v10];
    v12 = [v7 prioritizedAccessoriesContainsServices:v11];
  }

  else
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v9 = 0;
      v12 = 0;
      goto LABEL_12;
    }

    v15 = *(a1 + 32);
    v10 = [v14 mediaProfiles];
    v12 = [v15 prioritizedAccessoriesContainsMediaProfiles:v10];
  }

LABEL_12:
  return v12;
}

@end