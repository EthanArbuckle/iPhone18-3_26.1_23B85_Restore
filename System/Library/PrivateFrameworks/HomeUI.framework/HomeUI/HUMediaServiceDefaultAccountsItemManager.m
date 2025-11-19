@interface HUMediaServiceDefaultAccountsItemManager
- (HUMediaServiceDefaultAccountsItemManager)initWithHome:(id)a3 sourceItem:(id)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUMediaServiceDefaultAccountsItemManager

- (HUMediaServiceDefaultAccountsItemManager)initWithHome:(id)a3 sourceItem:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = HUMediaServiceDefaultAccountsItemManager;
  v9 = [(HFItemManager *)&v15 initWithDelegate:a5 sourceItem:a4];
  v10 = v9;
  if (v9)
  {
    [(HUMediaServiceDefaultAccountsItemManager *)v9 setHomeForUser:v8];
    v11 = [HUMediaServiceDefaultAccountsItemModule alloc];
    v12 = [(HUMediaServiceDefaultAccountsItemManager *)v10 homeForUser];
    v13 = [(HUMediaServiceDefaultAccountsItemModule *)v11 initWithItemUpdater:v10 home:v12];
    [(HUMediaServiceDefaultAccountsItemManager *)v10 setDefaultAccountsItemModule:v13];
  }

  return v10;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUMediaServiceDefaultAccountsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  [v3 registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUMediaServiceDefaultAccountsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  [v3 unregisterForExternalUpdates];
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v20 = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMediaServiceSettings_DefaultSectionFooterTitle", @"HUMediaServiceSettings_DefaultSectionFooterTitle", 1);
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v7 = [v4 initWithResults:v6];
  [(HUMediaServiceDefaultAccountsItemManager *)self setDefaultAccountsTitleItem:v7];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsTitleItem];
  v19 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v11 = [v8 initWithArray:v10];

  v12 = MEMORY[0x277CBEB58];
  v13 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v11];
  v14 = [v12 setWithObject:v13];

  v15 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  v16 = [v15 itemProviders];
  [v14 unionSet:v16];

  v17 = [v14 allObjects];

  return v17;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceDefaultAccountsTitleSectionIdentifier"];
  v8 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsTitleItem];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v7 setItems:v9];

  v10 = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  v11 = [v10 buildSectionsWithDisplayedItems:v5];

  [v6 addObject:v7];
  [v6 addObjectsFromArray:v11];

  return v6;
}

@end