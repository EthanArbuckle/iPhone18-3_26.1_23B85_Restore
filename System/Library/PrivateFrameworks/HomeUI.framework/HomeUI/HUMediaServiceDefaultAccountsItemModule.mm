@interface HUMediaServiceDefaultAccountsItemModule
- (BOOL)containsItem:(id)a3;
- (HUMediaServiceDefaultAccountsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)updateDefaultAccount:(id)a3;
- (void)mediaServiceItemProviderDidUpdateServices:(id)a3;
- (void)registerForExternalUpdates;
- (void)unregisterForExternalUpdates;
@end

@implementation HUMediaServiceDefaultAccountsItemModule

- (HUMediaServiceDefaultAccountsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HUMediaServiceDefaultAccountsItemModule;
  v8 = [(HFItemModule *)&v13 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = [[HUMediaServiceItemProvider alloc] initWithHome:v7 delegate:v9];
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
    v6 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
    [(NSSet *)v5 na_safeAddObject:v6];

    v7 = self->_itemProviders;
    self->_itemProviders = v5;
    v8 = v5;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  v7 = [v6 items];

  if ([v7 intersectsSet:v4])
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HomeMediaServicesDefaultAccountsSection"];
    v9 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
    v10 = [v9 items];
    v11 = [v10 allObjects];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__HUMediaServiceDefaultAccountsItemModule_buildSectionsWithDisplayedItems___block_invoke;
    v17[3] = &unk_277DB85D8;
    v18 = v4;
    v12 = [v11 na_filter:v17];
    [v8 setItems:v12];

    v13 = [v8 items];
    v14 = +[HUMediaServiceItemProvider itemComparator];
    v15 = [v13 sortedArrayUsingComparator:v14];
    [v8 setItems:v15];

    [v5 addObject:v8];
  }

  return v5;
}

- (BOOL)containsItem:(id)a3
{
  v4 = a3;
  v5 = [(HUMediaServiceDefaultAccountsItemModule *)self itemProviders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUMediaServiceDefaultAccountsItemModule_containsItem___block_invoke;
  v9[3] = &unk_277DBC9C8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

uint64_t __56__HUMediaServiceDefaultAccountsItemModule_containsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)updateDefaultAccount:(id)a3
{
  v4 = MEMORY[0x277D14820];
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = [(HUMediaServiceDefaultAccountsItemModule *)self home];
  v8 = [v6 updateDefaultMediaService:v5 forHome:v7];

  return v8;
}

- (void)registerForExternalUpdates
{
  v2 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  [v2 registerForExternalUpdates];
}

- (void)unregisterForExternalUpdates
{
  v2 = [(HUMediaServiceDefaultAccountsItemModule *)self mediaServiceItemProvider];
  [v2 unregisterForExternalUpdates];
}

- (void)mediaServiceItemProviderDidUpdateServices:(id)a3
{
  v9 = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  v6 = [(HUMediaServiceDefaultAccountsItemModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];
  v8 = [v9 performItemUpdateRequest:v7];
}

@end