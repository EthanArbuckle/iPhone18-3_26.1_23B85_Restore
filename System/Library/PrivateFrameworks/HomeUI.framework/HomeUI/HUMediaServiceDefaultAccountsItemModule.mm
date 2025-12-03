@interface HUMediaServiceDefaultAccountsItemModule
- (BOOL)containsItem:(id)item;
- (HUMediaServiceDefaultAccountsItemModule)initWithItemUpdater:(id)updater home:(id)home;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)updateDefaultAccount:(id)account;
- (void)mediaServiceItemProviderDidUpdateServices:(id)services;
- (void)registerForExternalUpdates;
- (void)unregisterForExternalUpdates;
@end

@implementation HUMediaServiceDefaultAccountsItemModule

- (HUMediaServiceDefaultAccountsItemModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HUMediaServiceDefaultAccountsItemModule;
  v8 = [(HFItemModule *)&v13 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v10 = [[HUMediaServiceItemProvider alloc] initWithHome:homeCopy delegate:v9];
    mediaServiceItemProvider = v9->_mediaServiceItemProvider;
    v9->_mediaServiceItemProvider = v10;
  }

  return v9;
}

- (NSSet)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    v5 = objc_opt_new();
    mediaServiceItemProvider = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
    [(NSSet *)v5 na_safeAddObject:mediaServiceItemProvider];

    v7 = self->_itemProviders;
    self->_itemProviders = v5;
    v8 = v5;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  mediaServiceItemProvider = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  items = [mediaServiceItemProvider items];

  if ([items intersectsSet:itemsCopy])
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HomeMediaServicesDefaultAccountsSection"];
    mediaServiceItemProvider2 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
    items2 = [mediaServiceItemProvider2 items];
    allObjects = [items2 allObjects];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__HUMediaServiceDefaultAccountsItemModule_buildSectionsWithDisplayedItems___block_invoke;
    v17[3] = &unk_277DB85D8;
    v18 = itemsCopy;
    v12 = [allObjects na_filter:v17];
    [v8 setItems:v12];

    items3 = [v8 items];
    v14 = +[HUMediaServiceItemProvider itemComparator];
    v15 = [items3 sortedArrayUsingComparator:v14];
    [v8 setItems:v15];

    [v5 addObject:v8];
  }

  return v5;
}

- (BOOL)containsItem:(id)item
{
  itemCopy = item;
  itemProviders = [(HUMediaServiceDefaultAccountsItemModule *)self itemProviders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUMediaServiceDefaultAccountsItemModule_containsItem___block_invoke;
  v9[3] = &unk_277DBC9C8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [itemProviders na_any:v9];

  return v7;
}

uint64_t __56__HUMediaServiceDefaultAccountsItemModule_containsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)updateDefaultAccount:(id)account
{
  v4 = MEMORY[0x277D14820];
  accountCopy = account;
  sharedManager = [v4 sharedManager];
  home = [(HUMediaServiceDefaultAccountsItemModule *)self home];
  v8 = [sharedManager updateDefaultMediaService:accountCopy forHome:home];

  return v8;
}

- (void)registerForExternalUpdates
{
  mediaServiceItemProvider = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  [mediaServiceItemProvider registerForExternalUpdates];
}

- (void)unregisterForExternalUpdates
{
  mediaServiceItemProvider = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  [mediaServiceItemProvider unregisterForExternalUpdates];
}

- (void)mediaServiceItemProviderDidUpdateServices:(id)services
{
  itemUpdater = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  itemProviders = [(HUMediaServiceDefaultAccountsItemModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v8 = [itemUpdater performItemUpdateRequest:v7];
}

@end