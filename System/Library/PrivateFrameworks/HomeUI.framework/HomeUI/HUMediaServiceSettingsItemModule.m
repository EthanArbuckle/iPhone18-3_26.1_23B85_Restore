@interface HUMediaServiceSettingsItemModule
- (HUMediaServiceSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)_createItemProviders;
- (void)mediaServiceItemProviderDidUpdateServices:(id)a3;
- (void)registerForExternalUpdates;
- (void)unregisterForExternalUpdates;
@end

@implementation HUMediaServiceSettingsItemModule

- (HUMediaServiceSettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUMediaServiceSettingsItemModule.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v13.receiver = self;
  v13.super_class = HUMediaServiceSettingsItemModule;
  v9 = [(HFItemModule *)&v13 initWithItemUpdater:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    [(HUMediaServiceSettingsItemModule *)v10 _createItemProviders];
  }

  return v10;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUMediaServiceSettingsItemModule *)self mediaServiceItemProvider];
  v7 = [v6 items];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceSettingsItemModule_MediaServicesSectionIdentifier"];
    v10 = _HULocalizedStringWithDefaultValue(@"HUMediaServiceSettingsHeaderTitle_Updated", @"HUMediaServiceSettingsHeaderTitle_Updated", 1);
    [v9 setHeaderTitle:v10];

    v11 = _HULocalizedStringWithDefaultValue(@"HUMediaServiceSettingsFooterTitle", @"HUMediaServiceSettingsFooterTitle", 1);
    [v9 setFooterTitle:v11];

    v12 = [(HFItemModule *)self allItems];
    v13 = MEMORY[0x277CBEB98];
    v14 = [(HUMediaServiceSettingsItemModule *)self defaultAccountsItem];
    v24[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v16 = [v13 setWithArray:v15];
    v17 = [v12 na_setByRemovingObjectsFromSet:v16];
    v18 = [v17 allObjects];
    [v9 setItems:v18];

    v19 = [v9 items];
    v20 = +[HUMediaServiceItemProvider itemComparator];
    v21 = [v19 sortedArrayUsingComparator:v20];
    [v9 setItems:v21];

    [v5 addObject:v9];
  }

  v22 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v22;
}

- (void)registerForExternalUpdates
{
  v2 = [(HUMediaServiceSettingsItemModule *)self mediaServiceItemProvider];
  [v2 registerForExternalUpdates];
}

- (void)unregisterForExternalUpdates
{
  v2 = [(HUMediaServiceSettingsItemModule *)self mediaServiceItemProvider];
  [v2 unregisterForExternalUpdates];
}

- (void)_createItemProviders
{
  if (self->_itemProviders)
  {
    NSLog(&cfstr_Createitemprov_0.isa, a2);
  }

  else
  {
    v3 = [HUMediaServiceItemProvider alloc];
    v4 = [(HUMediaServiceSettingsItemModule *)self home];
    v5 = [(HUMediaServiceItemProvider *)v3 initWithHome:v4 delegate:self];
    mediaServiceItemProvider = self->_mediaServiceItemProvider;
    self->_mediaServiceItemProvider = v5;

    v7 = [MEMORY[0x277CBEB40] orderedSet];
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x277D14B38]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __56__HUMediaServiceSettingsItemModule__createItemProviders__block_invoke;
    v22 = &unk_277DB7448;
    objc_copyWeak(&v23, &location);
    v9 = [v8 initWithResultsBlock:&v19];
    defaultAccountsItem = self->_defaultAccountsItem;
    self->_defaultAccountsItem = v9;

    v11 = [(HUMediaServiceSettingsItemModule *)self defaultAccountsItem];
    [v7 addObject:v11];

    v12 = objc_alloc(MEMORY[0x277D14B40]);
    v13 = [v7 set];
    v14 = [v12 initWithItems:v13];

    v15 = MEMORY[0x277CBEB98];
    v16 = [(HUMediaServiceSettingsItemModule *)self mediaServiceItemProvider];
    v17 = [v15 setWithObjects:{v16, v14, 0, v19, v20, v21, v22}];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v17;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

id __56__HUMediaServiceSettingsItemModule__createItemProviders__block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v13[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUMediaServiceDefaultAccounts", @"HUMediaServiceDefaultAccounts", 1);
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D13E20];
  v4 = [MEMORY[0x277D14820] sharedManager];
  v5 = [WeakRetained home];
  v6 = [v4 defaultMediaServiceForHome:v5];
  v7 = [v6 serviceName];
  v8 = v7;
  v9 = &stru_2823E0EE8;
  if (v7)
  {
    v9 = v7;
  }

  v13[2] = *MEMORY[0x277D13F10];
  v14[1] = v9;
  v14[2] = MEMORY[0x277CBEC28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v11 = [v2 futureWithResult:v10];

  return v11;
}

- (void)mediaServiceItemProviderDidUpdateServices:(id)a3
{
  v9 = [(HFItemModule *)self itemUpdater];
  v5 = MEMORY[0x277D14788];
  v6 = [(HUMediaServiceSettingsItemModule *)self itemProviders];
  v7 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];
  v8 = [v9 performItemUpdateRequest:v7];
}

@end