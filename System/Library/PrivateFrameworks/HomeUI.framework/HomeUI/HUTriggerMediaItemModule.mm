@interface HUTriggerMediaItemModule
- (HUTriggerMediaItemModule)initWithTriggerBuilder:(id)a3 itemUpdater:(id)a4;
- (id)_itemsToHideInSet:(id)a3;
- (id)_staticItems;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUTriggerMediaItemModule

- (HUTriggerMediaItemModule)initWithTriggerBuilder:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUTriggerMediaItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, a3);
  }

  return v9;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = objc_alloc(MEMORY[0x277D14B40]);
    v5 = [(HUTriggerMediaItemModule *)self _staticItems];
    v6 = [v4 initWithItems:v5];

    v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v8 = self->_itemProviders;
    self->_itemProviders = v7;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)_staticItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __40__HUTriggerMediaItemModule__staticItems__block_invoke;
  v11 = &unk_277DB7448;
  objc_copyWeak(&v12, &location);
  v5 = [v4 initWithResultsBlock:&v8];
  [(HUTriggerMediaItemModule *)self setMediaRowItem:v5, v8, v9, v10, v11];

  v6 = [(HUTriggerMediaItemModule *)self mediaRowItem];
  [v3 na_safeAddObject:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

id __40__HUTriggerMediaItemModule__staticItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [WeakRetained triggerBuilder];
  v4 = [v3 triggerActionSets];
  v5 = [v4 anonymousActionSetBuilder];
  v6 = [v5 mediaAction];

  v7 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryMediaButtonTitle", @"HUTriggerSummaryMediaButtonTitle", 1);
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v8 = [v6 localizedDescription];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 0];
  [v2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v10 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"HUTriggerMediaItemModuleSection"];
  v7 = [(HUTriggerMediaItemModule *)self mediaRowItem];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 setItems:v8];

  v9 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryMediaInstructionsTitle", @"HUTriggerSummaryMediaInstructionsTitle", 1);
  [v6 setHeaderTitle:v9];

  v10 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryMediaInstructionsDescription", @"HUTriggerSummaryMediaInstructionsDescription", 1);
  [v6 setHeaderSecondaryText:v10];

  v11 = MEMORY[0x277D14778];
  v15 = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [v11 filterSections:v12 toDisplayedItems:v5];

  return v13;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HUTriggerMediaItemModule *)self triggerBuilder];
  v7 = [v6 triggerActionSets];
  v8 = [v7 anonymousActionSetBuilder];
  v9 = [v8 mediaAction];

  if (!v9)
  {
    v10 = [(HUTriggerMediaItemModule *)self mediaRowItem];
    [v5 addObject:v10];
  }

  [v5 intersectSet:v4];

  return v5;
}

@end