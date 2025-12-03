@interface HUBannerItemModule
+ (Class)_statusBannerItemClassForStatusItemClass:(Class)class;
- (HUBannerItemModule)initWithContext:(id)context itemUpdater:(id)updater;
- (id)_itemsToHideInSet:(id)set;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (void)didUpdateDropInAvailability:(id)availability;
- (void)didUpdateNoInternetOnPhoneStatus:(id)status;
@end

@implementation HUBannerItemModule

- (HUBannerItemModule)initWithContext:(id)context itemUpdater:(id)updater
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HUBannerItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

+ (Class)_statusBannerItemClassForStatusItemClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) == 0 && (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0 || [(objc_class *)class isEqual:objc_opt_class()]))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildItemProviders
{
  v3 = objc_opt_new();
  v4 = [HUBannerItemProvider alloc];
  context = [(HUBannerItemModule *)self context];
  home = [context home];
  v7 = [(HUBannerItemProvider *)v4 initWithHome:home];
  [(HUBannerItemModule *)self setBannerItemProvider:v7];

  if ([(HUBannerItemModule *)self forceShowBanners])
  {
    bannerItemProvider = [(HUBannerItemModule *)self bannerItemProvider];
    reloadItems = [bannerItemProvider reloadItems];

    bannerItemProvider2 = [(HUBannerItemModule *)self bannerItemProvider];
    items = [bannerItemProvider2 items];
    [items na_each:&__block_literal_global_146];
  }

  bannerItemProvider3 = [(HUBannerItemModule *)self bannerItemProvider];
  [v3 na_safeAddObject:bannerItemProvider3];

  v13 = [HUDropInBannerItemProvider alloc];
  context2 = [(HUBannerItemModule *)self context];
  home2 = [context2 home];
  v16 = [(HUDropInBannerItemProvider *)v13 initWithHome:home2 delegate:self];
  [(HUBannerItemModule *)self setDropInBannerItemProvider:v16];

  dropInBannerItemProvider = [(HUBannerItemModule *)self dropInBannerItemProvider];
  [v3 na_safeAddObject:dropInBannerItemProvider];

  v18 = [HUNoInternetOnPhoneBannerItemProvider alloc];
  context3 = [(HUBannerItemModule *)self context];
  home3 = [context3 home];
  v21 = [(HUNoInternetOnPhoneBannerItemProvider *)v18 initWithHome:home3 delegate:self];
  [(HUBannerItemModule *)self setNoInternetOnPhoneBannerItemProvider:v21];

  noInternetOnPhoneBannerItemProvider = [(HUBannerItemModule *)self noInternetOnPhoneBannerItemProvider];
  [v3 na_safeAddObject:noInternetOnPhoneBannerItemProvider];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HUBannerItemModule_buildItemProviders__block_invoke_2;
  aBlock[3] = &unk_277DBF620;
  objc_copyWeak(&v37, &location);
  v23 = _Block_copy(aBlock);
  v24 = objc_alloc(MEMORY[0x277D14B60]);
  context4 = [(HUBannerItemModule *)self context];
  home4 = [context4 home];
  context5 = [(HUBannerItemModule *)self context];
  room = [context5 room];
  v29 = [v24 initWithHome:home4 room:room filter:v23];

  v30 = objc_alloc(MEMORY[0x277D14C38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __40__HUBannerItemModule_buildItemProviders__block_invoke_3;
  v34[3] = &unk_277DBF648;
  objc_copyWeak(&v35, &location);
  v31 = [v30 initWithSourceProvider:v29 transformationBlock:v34];
  [(HUBannerItemModule *)self setStatusBannerItemProvider:v31];

  statusBannerItemProvider = [(HUBannerItemModule *)self statusBannerItemProvider];
  [v3 na_safeAddObject:statusBannerItemProvider];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v3;
}

void __40__HUBannerItemModule_buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v5 = v2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 setForceShowBanner:1];
}

BOOL __40__HUBannerItemModule_buildItemProviders__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [objc_opt_class() _statusBannerItemClassForStatusItemClass:a2] != 0;

  return v4;
}

id __40__HUBannerItemModule_buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_class();
  v6 = [v5 _statusBannerItemClassForStatusItemClass:objc_opt_class()];

  if (v6)
  {
    v7 = [[v6 alloc] initWithSourceItem:v3];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D14C30]) initWithSourceItem:v3 transformationBlock:&__block_literal_global_107_3];
  }

  v8 = v7;

  return v8;
}

id __40__HUBannerItemModule_buildItemProviders__block_invoke_4()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D13FB8];
  v3[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"bannersSection"];
  selfCopy = self;
  allItems = [(HFItemModule *)self allItems];
  v28 = itemsCopy;
  v6 = [allItems na_setByIntersectingWithSet:itemsCopy];

  v26 = v6;
  allObjects = [v6 allObjects];
  v8 = +[HUBannerItemProvider bannerItemComparator];
  v9 = [allObjects sortedArrayUsingComparator:v8];

  v10 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        latestResults = [v16 latestResults];
        v18 = [latestResults objectForKeyedSubscript:@"bannerItemCategory"];
        unsignedIntegerValue = [v18 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          if ((v13 & 1) == 0)
          {
            [v10 addObject:v16];
          }

          goto LABEL_12;
        }

        [v10 addObject:v16];
        v13 = 1;
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v20 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v21 = [v26 na_setByRemovingObjectsFromSet:v20];
  [(HUBannerItemModule *)selfCopy setHiddenBanners:v21];

  [v27 setItems:v10];
  items = [v27 items];
  if ([items count])
  {
    v34 = v27;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

- (id)_itemsToHideInSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  setCopy = set;
  shouldHideBanners = [MEMORY[0x277D14CE8] shouldHideBanners];
  context = [(HUBannerItemModule *)self context];
  home = [context home];
  hf_shouldBlockCurrentUserFromHomeForRoarUpgrade = [home hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];

  if (hf_shouldBlockCurrentUserFromHomeForRoarUpgrade)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      context2 = [(HUBannerItemModule *)self context];
      home2 = [context2 home];
      uniqueIdentifier = [home2 uniqueIdentifier];
      v16 = 138543362;
      v17 = uniqueIdentifier;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "<HUBannerItemModule:_itemsToHideInSet> Hiding all banners because roarBlockView is visible. home.uniqueIdentifier = %{public}@", &v16, 0xCu);
    }

    goto LABEL_6;
  }

  if (shouldHideBanners)
  {
LABEL_6:
    allItems = [(HFItemModule *)self allItems];
    v14 = [allItems mutableCopy];

    [v14 intersectSet:setCopy];
    goto LABEL_8;
  }

  v14 = [MEMORY[0x277CBEB98] set];
LABEL_8:

  return v14;
}

- (void)didUpdateDropInAvailability:(id)availability
{
  v24 = *MEMORY[0x277D85DE8];
  availabilityCopy = availability;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v20 = 138412546;
    selfCopy2 = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", &v20, 0x16u);
  }

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v9 = MEMORY[0x277D14788];
  v10 = MEMORY[0x277CBEB98];
  dropInBannerItemProvider = [(HUBannerItemModule *)self dropInBannerItemProvider];
  v12 = [v10 setWithObject:dropInBannerItemProvider];
  v13 = [v9 requestToReloadItemProviders:v12 senderSelector:a2];
  v14 = [itemUpdater performItemUpdateRequest:v13];

  items = [availabilityCopy items];

  v16 = [items na_any:&__block_literal_global_118_0];
  if (v16)
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v20 = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@: %@ Posting banner size has updated notification...", &v20, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HUBannerSizeHasUpdatedNotification" object:self];
  }
}

uint64_t __50__HUBannerItemModule_didUpdateDropInAvailability___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v8 = [v7 BOOLValue];

  return v8 ^ 1u;
}

- (void)didUpdateNoInternetOnPhoneStatus:(id)status
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: [HUBannerItemModule didUpdateNoInternetOnPhoneStatus]", &v13, 0xCu);
  }

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v7 = MEMORY[0x277D14788];
  v8 = MEMORY[0x277CBEB98];
  noInternetOnPhoneBannerItemProvider = [(HUBannerItemModule *)self noInternetOnPhoneBannerItemProvider];
  v10 = [v8 setWithObject:noInternetOnPhoneBannerItemProvider];
  v11 = [v7 requestToReloadItemProviders:v10 senderSelector:a2];
  v12 = [itemUpdater performItemUpdateRequest:v11];
}

@end