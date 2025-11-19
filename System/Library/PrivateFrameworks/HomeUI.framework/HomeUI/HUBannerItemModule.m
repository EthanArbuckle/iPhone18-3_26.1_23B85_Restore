@interface HUBannerItemModule
+ (Class)_statusBannerItemClassForStatusItemClass:(Class)a3;
- (HUBannerItemModule)initWithContext:(id)a3 itemUpdater:(id)a4;
- (id)_itemsToHideInSet:(id)a3;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)didUpdateDropInAvailability:(id)a3;
- (void)didUpdateNoInternetOnPhoneStatus:(id)a3;
@end

@implementation HUBannerItemModule

- (HUBannerItemModule)initWithContext:(id)a3 itemUpdater:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUBannerItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
  }

  return v9;
}

+ (Class)_statusBannerItemClassForStatusItemClass:(Class)a3
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) == 0 && (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0 || [(objc_class *)a3 isEqual:objc_opt_class()]))
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
  v5 = [(HUBannerItemModule *)self context];
  v6 = [v5 home];
  v7 = [(HUBannerItemProvider *)v4 initWithHome:v6];
  [(HUBannerItemModule *)self setBannerItemProvider:v7];

  if ([(HUBannerItemModule *)self forceShowBanners])
  {
    v8 = [(HUBannerItemModule *)self bannerItemProvider];
    v9 = [v8 reloadItems];

    v10 = [(HUBannerItemModule *)self bannerItemProvider];
    v11 = [v10 items];
    [v11 na_each:&__block_literal_global_146];
  }

  v12 = [(HUBannerItemModule *)self bannerItemProvider];
  [v3 na_safeAddObject:v12];

  v13 = [HUDropInBannerItemProvider alloc];
  v14 = [(HUBannerItemModule *)self context];
  v15 = [v14 home];
  v16 = [(HUDropInBannerItemProvider *)v13 initWithHome:v15 delegate:self];
  [(HUBannerItemModule *)self setDropInBannerItemProvider:v16];

  v17 = [(HUBannerItemModule *)self dropInBannerItemProvider];
  [v3 na_safeAddObject:v17];

  v18 = [HUNoInternetOnPhoneBannerItemProvider alloc];
  v19 = [(HUBannerItemModule *)self context];
  v20 = [v19 home];
  v21 = [(HUNoInternetOnPhoneBannerItemProvider *)v18 initWithHome:v20 delegate:self];
  [(HUBannerItemModule *)self setNoInternetOnPhoneBannerItemProvider:v21];

  v22 = [(HUBannerItemModule *)self noInternetOnPhoneBannerItemProvider];
  [v3 na_safeAddObject:v22];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HUBannerItemModule_buildItemProviders__block_invoke_2;
  aBlock[3] = &unk_277DBF620;
  objc_copyWeak(&v37, &location);
  v23 = _Block_copy(aBlock);
  v24 = objc_alloc(MEMORY[0x277D14B60]);
  v25 = [(HUBannerItemModule *)self context];
  v26 = [v25 home];
  v27 = [(HUBannerItemModule *)self context];
  v28 = [v27 room];
  v29 = [v24 initWithHome:v26 room:v28 filter:v23];

  v30 = objc_alloc(MEMORY[0x277D14C38]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __40__HUBannerItemModule_buildItemProviders__block_invoke_3;
  v34[3] = &unk_277DBF648;
  objc_copyWeak(&v35, &location);
  v31 = [v30 initWithSourceProvider:v29 transformationBlock:v34];
  [(HUBannerItemModule *)self setStatusBannerItemProvider:v31];

  v32 = [(HUBannerItemModule *)self statusBannerItemProvider];
  [v3 na_safeAddObject:v32];

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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"bannersSection"];
  v25 = self;
  v5 = [(HFItemModule *)self allItems];
  v28 = v4;
  v6 = [v5 na_setByIntersectingWithSet:v4];

  v26 = v6;
  v7 = [v6 allObjects];
  v8 = +[HUBannerItemProvider bannerItemComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];

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
        v17 = [v16 latestResults];
        v18 = [v17 objectForKeyedSubscript:@"bannerItemCategory"];
        v19 = [v18 unsignedIntegerValue];

        if (v19)
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
  [(HUBannerItemModule *)v25 setHiddenBanners:v21];

  [v27 setItems:v10];
  v22 = [v27 items];
  if ([v22 count])
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

- (id)_itemsToHideInSet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D14CE8] shouldHideBanners];
  v6 = [(HUBannerItemModule *)self context];
  v7 = [v6 home];
  v8 = [v7 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HUBannerItemModule *)self context];
      v11 = [v10 home];
      v12 = [v11 uniqueIdentifier];
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "<HUBannerItemModule:_itemsToHideInSet> Hiding all banners because roarBlockView is visible. home.uniqueIdentifier = %{public}@", &v16, 0xCu);
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v13 = [(HFItemModule *)self allItems];
    v14 = [v13 mutableCopy];

    [v14 intersectSet:v4];
    goto LABEL_8;
  }

  v14 = [MEMORY[0x277CBEB98] set];
LABEL_8:

  return v14;
}

- (void)didUpdateDropInAvailability:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v20 = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", &v20, 0x16u);
  }

  v8 = [(HFItemModule *)self itemUpdater];
  v9 = MEMORY[0x277D14788];
  v10 = MEMORY[0x277CBEB98];
  v11 = [(HUBannerItemModule *)self dropInBannerItemProvider];
  v12 = [v10 setWithObject:v11];
  v13 = [v9 requestToReloadItemProviders:v12 senderSelector:a2];
  v14 = [v8 performItemUpdateRequest:v13];

  v15 = [v5 items];

  v16 = [v15 na_any:&__block_literal_global_118_0];
  if (v16)
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v20 = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@: %@ Posting banner size has updated notification...", &v20, 0x16u);
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 postNotificationName:@"HUBannerSizeHasUpdatedNotification" object:self];
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

- (void)didUpdateNoInternetOnPhoneStatus:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: [HUBannerItemModule didUpdateNoInternetOnPhoneStatus]", &v13, 0xCu);
  }

  v6 = [(HFItemModule *)self itemUpdater];
  v7 = MEMORY[0x277D14788];
  v8 = MEMORY[0x277CBEB98];
  v9 = [(HUBannerItemModule *)self noInternetOnPhoneBannerItemProvider];
  v10 = [v8 setWithObject:v9];
  v11 = [v7 requestToReloadItemProviders:v10 senderSelector:a2];
  v12 = [v6 performItemUpdateRequest:v11];
}

@end