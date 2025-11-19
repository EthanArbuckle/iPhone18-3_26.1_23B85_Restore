@interface HUSoftwareUpdateItemModule
- (HUSoftwareUpdateItemModule)initWithItemUpdater:(id)a3;
- (HUSoftwareUpdateItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)_reloadItemProviders;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation HUSoftwareUpdateItemModule

- (HUSoftwareUpdateItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_sourceItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateItemModule.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUSoftwareUpdateItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HUSoftwareUpdateItemModule;
  v11 = [(HFItemModule *)&v18 initWithItemUpdater:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a4);
    objc_storeStrong(&v12->_sourceItem, a5);
    if ([v10 conformsToProtocol:&unk_28251AF08])
    {
      v13 = [v10 accessories];
      v14 = [v13 na_filter:&__block_literal_global_73];
      accessories = v12->_accessories;
      v12->_accessories = v14;
    }

    else
    {
      v16 = [v9 accessoriesSupportingSoftwareUpdate];
      v13 = v12->_accessories;
      v12->_accessories = v16;
    }
  }

  return v12;
}

BOOL __66__HUSoftwareUpdateItemModule_initWithItemUpdater_home_sourceItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsSoftwareUpdateV2])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 softwareUpdateController];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)_reloadItemProviders
{
  v4 = [(HFItemModule *)self itemProviders];

  if (v4)
  {
    v9 = [(HFItemModule *)self itemUpdater];
    v5 = MEMORY[0x277D14788];
    v6 = [(HFItemModule *)self itemProviders];
    v7 = [v5 requestToReloadItemProviders:v6 senderSelector:a2];
    v8 = [v9 performItemUpdateRequest:v7];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"hideSectionHeaders"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"hideAppleUpdates") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"hideThirdPartyUpdates"))
  {
    v8 = [v6 BOOLValue];
    v9 = [(HUSoftwareUpdateItemModule *)self valueForKey:v7];
    v10 = [v9 BOOLValue];

    if (v8 != v10)
    {
      v11.receiver = self;
      v11.super_class = HUSoftwareUpdateItemModule;
      [(HUSoftwareUpdateItemModule *)&v11 setValue:v6 forKey:v7];
      [(HUSoftwareUpdateItemModule *)self _reloadItemProviders];
    }
  }
}

- (id)buildItemProviders
{
  v3 = [HUSoftwareUpdateInfoItemProvider alloc];
  v4 = [(HUSoftwareUpdateItemModule *)self home];
  v5 = [(HUSoftwareUpdateInfoItemProvider *)v3 initWithHome:v4];
  [(HUSoftwareUpdateItemModule *)self setSoftwareUpdateInfoItemProvider:v5];

  v6 = [(HUSoftwareUpdateItemModule *)self accessories];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HUSoftwareUpdateItemModule_buildItemProviders__block_invoke;
  v13[3] = &unk_277DB83E8;
  v14 = v6;
  v7 = v6;
  v8 = [(HUSoftwareUpdateItemModule *)self softwareUpdateInfoItemProvider];
  [v8 setFilter:v13];

  v9 = MEMORY[0x277CBEB98];
  v10 = [(HUSoftwareUpdateItemModule *)self softwareUpdateInfoItemProvider];
  v11 = [v9 na_setWithSafeObject:v10];

  return v11;
}

uint64_t __48__HUSoftwareUpdateItemModule_buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) containsObject:v6];
  return v7;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_84];
  v28[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_86_0];
  v28[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_88_1];
  v28[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];

  v10 = [(HUSoftwareUpdateItemModule *)self softwareUpdateInfoItemProvider];
  v11 = [v10 items];
  v12 = [v11 allObjects];
  v13 = [v12 sortedArrayUsingDescriptors:v9];

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __62__HUSoftwareUpdateItemModule_buildSectionsWithDisplayedItems___block_invoke_4;
  v25 = &unk_277DBB990;
  v16 = v14;
  v26 = v16;
  v17 = v15;
  v27 = v17;
  [v13 na_each:&v22];
  if (!-[HUSoftwareUpdateItemModule hideAppleUpdates](self, "hideAppleUpdates", v22, v23, v24, v25) && [v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSoftwareUpdateAppleUpdatesSectionIdentifier"];
    [v18 setItems:v16];
    [v5 addObject:v18];
  }

  if (!-[HUSoftwareUpdateItemModule hideThirdPartyUpdates](self, "hideThirdPartyUpdates") && [v17 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSoftwareUpdateThirdPartyUpdatesSectionIdentifier"];
    [v19 setItems:v17];
    [v5 addObject:v19];
  }

  v20 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v20;
}

uint64_t __62__HUSoftwareUpdateItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 accessories];
  v6 = [v5 anyObject];
  v7 = [v6 manufacturer];
  v8 = [v4 accessories];

  v9 = [v8 anyObject];
  v10 = [v9 manufacturer];
  v11 = [v7 compare:v10];

  return v11;
}

uint64_t __62__HUSoftwareUpdateItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 accessories];
  v6 = [v5 anyObject];
  v7 = [v6 hf_userFriendlyLocalizedCapitalizedDescription];
  v8 = [v4 accessories];

  v9 = [v8 anyObject];
  v10 = [v9 hf_userFriendlyLocalizedCapitalizedDescription];
  v11 = [v7 compare:v10];

  return v11;
}

uint64_t __62__HUSoftwareUpdateItemModule_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 accessories];
  v6 = [v5 anyObject];
  v7 = [v6 hf_softwareUpdateVersion];
  v8 = [v7 versionString];
  v9 = [v4 accessories];

  v10 = [v9 anyObject];
  v11 = [v10 hf_softwareUpdateVersion];
  v12 = [v11 versionString];
  v13 = [v8 compare:v12];

  return v13;
}

void __62__HUSoftwareUpdateItemModule_buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 accessories];
  v4 = [v3 anyObject];
  v5 = [v4 hf_isHomePod];

  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

@end