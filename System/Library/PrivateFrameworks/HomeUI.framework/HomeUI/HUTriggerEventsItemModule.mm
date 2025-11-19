@interface HUTriggerEventsItemModule
- (HUTriggerEventsItemModule)initWithTriggerBuilder:(id)a3 itemUpdater:(id)a4;
- (id)_buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUTriggerEventsItemModule

- (HUTriggerEventsItemModule)initWithTriggerBuilder:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUTriggerEventsItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, a3);
    v9->_hideAddEventButton = 0;
  }

  return v9;
}

- (id)_buildItemProviders
{
  v3 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  v4 = [(HUTriggerEventsItemModule *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (_os_feature_enabled_impl() && v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D14660]) initWithTriggerBuilder:v6];
    [(HUTriggerEventsItemModule *)self setTriggerEventsItemProvider:v7];

    v8 = [(HUTriggerEventsItemModule *)self triggerEventsItemProvider];
    [v8 setNameType:1];
  }

  else
  {
    v9 = [HUTriggerBuilderItem alloc];
    v10 = [(HUTriggerEventsItemModule *)self triggerBuilder];
    v11 = [(HUTriggerBuilderItem *)v9 initWithTriggerBuilder:v10 nameType:1];
    triggerBuilderItem = self->_triggerBuilderItem;
    self->_triggerBuilderItem = v11;

    v8 = [(HUTriggerEventsItemModule *)self triggerBuilderItem];
    [v3 addObject:v8];
  }

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__HUTriggerEventsItemModule__buildItemProviders__block_invoke;
  v22[3] = &unk_277DB7478;
  v22[4] = self;
  v14 = [v13 initWithResultsBlock:v22];
  [(HUTriggerEventsItemModule *)self setAddEventButtonItem:v14];

  v15 = [(HUTriggerEventsItemModule *)self addEventButtonItem];
  [v3 addObject:v15];

  v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v3];
  [(HUTriggerEventsItemModule *)self setStaticItemProvider:v16];

  v17 = MEMORY[0x277CBEB98];
  v18 = [(HUTriggerEventsItemModule *)self staticItemProvider];
  v19 = [(HUTriggerEventsItemModule *)self triggerEventsItemProvider];
  v20 = [v17 setWithObjects:{v18, v19, 0}];

  return v20;
}

id __48__HUTriggerEventsItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v3 = 1;
  v4 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryTriggerNewEventButtonTitle", @"HUTriggerSummaryTriggerNewEventButtonTitle", 1);
  v10[1] = *MEMORY[0x277D13FB8];
  v11[0] = v4;
  v5 = MEMORY[0x277CCABB0];
  if (([*(a1 + 32) hideAddEventButton] & 1) == 0)
  {
    v3 = _os_feature_enabled_impl() ^ 1;
  }

  v6 = [v5 numberWithInt:v3];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v2 futureWithResult:v7];

  return v8;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = [(HUTriggerEventsItemModule *)self _buildItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = v4;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"triggerEventsSection"];
  v7 = [(HUTriggerEventsItemModule *)self triggerEventsItemProvider];

  if (v7)
  {
    v8 = [(HUTriggerEventsItemModule *)self triggerEventsItemProvider];
    v9 = [v8 items];
    v10 = [v9 allObjects];
    [v6 setItems:v10];
  }

  else
  {
    v11 = MEMORY[0x277CBEA60];
    v8 = [(HUTriggerEventsItemModule *)self triggerBuilderItem];
    v9 = [v11 na_arrayWithSafeObject:v8];
    [v6 setItems:v9];
  }

  v12 = [v6 items];
  v13 = [(HUTriggerEventsItemModule *)self addEventButtonItem];
  v14 = [v12 arrayByAddingObject:v13];
  [v6 setItems:v14];

  v15 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryTriggersInstructionTitle", @"HUTriggerSummaryTriggersInstructionTitle", 1);
  [v6 setHeaderTitle:v15];

  v16 = MEMORY[0x277D14778];
  v20[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 filterSections:v17 toDisplayedItems:v5];

  return v18;
}

@end