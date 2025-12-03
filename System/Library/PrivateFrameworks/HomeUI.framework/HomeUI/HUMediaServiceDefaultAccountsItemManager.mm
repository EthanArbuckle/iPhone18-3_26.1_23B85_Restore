@interface HUMediaServiceDefaultAccountsItemManager
- (HUMediaServiceDefaultAccountsItemManager)initWithHome:(id)home sourceItem:(id)item delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUMediaServiceDefaultAccountsItemManager

- (HUMediaServiceDefaultAccountsItemManager)initWithHome:(id)home sourceItem:(id)item delegate:(id)delegate
{
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HUMediaServiceDefaultAccountsItemManager;
  v9 = [(HFItemManager *)&v15 initWithDelegate:delegate sourceItem:item];
  v10 = v9;
  if (v9)
  {
    [(HUMediaServiceDefaultAccountsItemManager *)v9 setHomeForUser:homeCopy];
    v11 = [HUMediaServiceDefaultAccountsItemModule alloc];
    homeForUser = [(HUMediaServiceDefaultAccountsItemManager *)v10 homeForUser];
    v13 = [(HUMediaServiceDefaultAccountsItemModule *)v11 initWithItemUpdater:v10 home:homeForUser];
    [(HUMediaServiceDefaultAccountsItemManager *)v10 setDefaultAccountsItemModule:v13];
  }

  return v10;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUMediaServiceDefaultAccountsItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  defaultAccountsItemModule = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  [defaultAccountsItemModule registerForExternalUpdates];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUMediaServiceDefaultAccountsItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  defaultAccountsItemModule = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  [defaultAccountsItemModule unregisterForExternalUpdates];
}

- (id)_buildItemProvidersForHome:(id)home
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
  defaultAccountsTitleItem = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsTitleItem];
  v19 = defaultAccountsTitleItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v11 = [v8 initWithArray:v10];

  v12 = MEMORY[0x277CBEB58];
  v13 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v11];
  v14 = [v12 setWithObject:v13];

  defaultAccountsItemModule = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  itemProviders = [defaultAccountsItemModule itemProviders];
  [v14 unionSet:itemProviders];

  allObjects = [v14 allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceDefaultAccountsTitleSectionIdentifier"];
  defaultAccountsTitleItem = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsTitleItem];
  v13[0] = defaultAccountsTitleItem;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v7 setItems:v9];

  defaultAccountsItemModule = [(HUMediaServiceDefaultAccountsItemManager *)self defaultAccountsItemModule];
  v11 = [defaultAccountsItemModule buildSectionsWithDisplayedItems:itemsCopy];

  [v6 addObject:v7];
  [v6 addObjectsFromArray:v11];

  return v6;
}

@end