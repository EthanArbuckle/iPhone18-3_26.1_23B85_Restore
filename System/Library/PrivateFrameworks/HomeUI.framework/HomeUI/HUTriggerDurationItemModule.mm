@interface HUTriggerDurationItemModule
- (BOOL)_shouldShowDurationItems;
- (HFItemManager)itemManager;
- (HUTriggerDurationItemModule)initWithTriggerBuilder:(id)builder itemUpdater:(id)updater;
- (id)_buildItemProviders;
- (id)_itemsToHideInSet:(id)set;
- (id)_staticItems;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)setDurationPickerShown:(BOOL)shown;
@end

@implementation HUTriggerDurationItemModule

- (HUTriggerDurationItemModule)initWithTriggerBuilder:(id)builder itemUpdater:(id)updater
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = HUTriggerDurationItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, builder);
  }

  return v9;
}

- (id)_staticItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc(MEMORY[0x277D14C50]);
  triggerBuilder = [(HUTriggerDurationItemModule *)self triggerBuilder];
  v6 = [v4 initWithTriggerBuilder:triggerBuilder];
  [(HUTriggerDurationItemModule *)self setDurationSummaryItem:v6];

  durationSummaryItem = [(HUTriggerDurationItemModule *)self durationSummaryItem];
  [v3 na_safeAddObject:durationSummaryItem];

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x277D14B38]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __43__HUTriggerDurationItemModule__staticItems__block_invoke;
  v15 = &unk_277DB7448;
  objc_copyWeak(&v16, &location);
  v9 = [v8 initWithResultsBlock:&v12];
  [(HUTriggerDurationItemModule *)self setDurationPickerItem:v9, v12, v13, v14, v15];

  durationPickerItem = [(HUTriggerDurationItemModule *)self durationPickerItem];
  [v3 na_safeAddObject:durationPickerItem];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

id __43__HUTriggerDurationItemModule__staticItems__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v9 = *MEMORY[0x277D13FB8];
  v3 = MEMORY[0x277CCABB0];
  if ([WeakRetained _shouldShowDurationItems])
  {
    v4 = [WeakRetained durationPickerShown] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v3 numberWithInt:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v2 futureWithResult:v6];

  return v7;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    _buildItemProviders = [(HUTriggerDurationItemModule *)self _buildItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = _buildItemProviders;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUTriggerDurationItemModuleSection"];
  durationSummaryItem = [(HUTriggerDurationItemModule *)self durationSummaryItem];
  v15[0] = durationSummaryItem;
  durationPickerItem = [(HUTriggerDurationItemModule *)self durationPickerItem];
  v15[1] = durationPickerItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v7 setItems:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HUTriggerDurationItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v14[3] = &unk_277DBA4B8;
  v14[4] = self;
  v11 = __63__HUTriggerDurationItemModule_buildSectionsWithDisplayedItems___block_invoke(v14);
  [v7 setFooterTitle:v11];

  [array addObject:v7];
  v12 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v12;
}

id __63__HUTriggerDurationItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerBuilder];
  v3 = [v2 home];
  v4 = [v3 hf_supportsSharedEventAutomation];

  if (v4)
  {
    v5 = [*(a1 + 32) triggerBuilder];
    v6 = [v5 designatedDurationEventBuilder];

    if (v6)
    {
      v7 = MEMORY[0x277CD19F8];
      v8 = MEMORY[0x277CCABB0];
      v9 = [*(a1 + 32) triggerBuilder];
      v10 = [v9 designatedDurationEventBuilder];
      [v10 duration];
      v11 = [v8 numberWithDouble:?];
      v12 = [v7 hf_naturalLanguageTurnOffAfterDuration:v11 style:2];

      v19 = HULocalizedStringWithFormat(@"HUTriggerSummaryDurationSetFooterFormat", @"%@", v13, v14, v15, v16, v17, v18, v12);

      goto LABEL_7;
    }

    v20 = @"HUTriggerSummaryDurationNotSetFooter";
  }

  else
  {
    v20 = @"HUTriggerSummaryDurationUpdateHomeHubFooter";
  }

  v19 = _HULocalizedStringWithDefaultValue(v20, v20, 1);
LABEL_7:

  return v19;
}

- (void)setDurationPickerShown:(BOOL)shown
{
  if (self->_durationPickerShown != shown)
  {
    self->_durationPickerShown = shown;
    allItems = [(HFItemModule *)self allItems];
    durationPickerItem = [(HUTriggerDurationItemModule *)self durationPickerItem];
    v7 = [allItems containsObject:durationPickerItem];

    if (v7)
    {
      v8 = MEMORY[0x277D14788];
      v9 = MEMORY[0x277CBEB98];
      durationPickerItem2 = [(HUTriggerDurationItemModule *)self durationPickerItem];
      v11 = [v9 setWithObject:durationPickerItem2];
      v14 = [v8 requestToUpdateItems:v11 senderSelector:a2];

      itemUpdater = [(HFItemModule *)self itemUpdater];
      v13 = [itemUpdater performItemUpdateRequest:v14];
    }
  }
}

- (id)_itemsToHideInSet:(id)set
{
  setCopy = set;
  v5 = [MEMORY[0x277CBEB58] set];
  if (![(HUTriggerDurationItemModule *)self durationPickerShown]|| ![(HUTriggerDurationItemModule *)self _shouldShowDurationItems])
  {
    durationPickerItem = [(HUTriggerDurationItemModule *)self durationPickerItem];
    if (durationPickerItem)
    {
      v7 = durationPickerItem;
      durationPickerItem2 = [(HUTriggerDurationItemModule *)self durationPickerItem];
      v9 = [setCopy containsObject:durationPickerItem2];

      if (v9)
      {
        durationPickerItem3 = [(HUTriggerDurationItemModule *)self durationPickerItem];
        [v5 addObject:durationPickerItem3];
      }
    }
  }

  return v5;
}

- (BOOL)_shouldShowDurationItems
{
  triggerBuilder = [(HUTriggerDurationItemModule *)self triggerBuilder];
  context = [triggerBuilder context];
  if ([context allowDurationEditing])
  {
    triggerBuilder2 = [(HUTriggerDurationItemModule *)self triggerBuilder];
    supportsEndEvents = [triggerBuilder2 supportsEndEvents];

    if (!supportsEndEvents)
    {
      return 0;
    }

    triggerBuilder = [(HUTriggerDurationItemModule *)self triggerBuilder];
    areActionsAffectedByEndEvents = [triggerBuilder areActionsAffectedByEndEvents];
  }

  else
  {

    areActionsAffectedByEndEvents = 0;
  }

  return areActionsAffectedByEndEvents;
}

- (id)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D14B40]);
  _staticItems = [(HUTriggerDurationItemModule *)self _staticItems];
  v5 = [v3 initWithItems:_staticItems];

  v6 = [MEMORY[0x277CBEB98] setWithObject:v5];

  return v6;
}

- (HFItemManager)itemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_itemManager);

  return WeakRetained;
}

@end