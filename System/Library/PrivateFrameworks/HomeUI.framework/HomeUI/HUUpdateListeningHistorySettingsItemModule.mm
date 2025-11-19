@interface HUUpdateListeningHistorySettingsItemModule
- (HUUpdateListeningHistorySettingsItemModule)initWithItemUpdater:(id)a3;
- (HUUpdateListeningHistorySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 user:(id)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (id)setUpdateListeningHistorySetting:(BOOL)a3 forItem:(id)a4;
- (void)_buildItemProviders;
@end

@implementation HUUpdateListeningHistorySettingsItemModule

- (HUUpdateListeningHistorySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4 user:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUUpdateListeningHistorySettingsItemModule.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HUUpdateListeningHistorySettingsItemModule.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"user != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HUUpdateListeningHistorySettingsItemModule;
  v13 = [(HFItemModule *)&v18 initWithItemUpdater:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, a4);
    objc_storeStrong(&v14->_user, a5);
    [(HUUpdateListeningHistorySettingsItemModule *)v14 _buildItemProviders];
  }

  return v14;
}

- (HUUpdateListeningHistorySettingsItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUUpdateListeningHistorySettingsItemModule.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUUpdateListeningHistorySettingsItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUUpdateListeningHistorySettingsItemModule *)self mediaDeviceItemProvider];
  v5 = [(HUUpdateListeningHistorySettingsItemModule *)self otherDeviceItemProvider];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUUpdateListeningHistoryDeviceItemSectionIdentifier"];
  v6 = objc_opt_new();
  v7 = [(HUUpdateListeningHistorySettingsItemModule *)self mediaDeviceItemProvider];
  v8 = [v7 items];
  v9 = [v8 allObjects];
  [v6 na_safeAddObjectsFromArray:v9];

  v10 = [(HUUpdateListeningHistorySettingsItemModule *)self otherDeviceItemProvider];
  v11 = [v10 items];
  v12 = [v11 allObjects];
  [v6 na_safeAddObjectsFromArray:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUUpdateListeningHistoryDeviceSectionTitle", @"HUUpdateListeningHistoryDeviceSectionTitle", 1);
  [v5 setHeaderTitle:v13];

  v14 = HFLocalizedString();
  v15 = HFLocalizedString();
  v16 = objc_alloc(MEMORY[0x277CCAB48]);
  v17 = [v14 stringByAppendingString:@" "];
  v18 = [v16 initWithString:v17];

  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v32 = *MEMORY[0x277D740E8];
  v20 = [MEMORY[0x277D14C80] musicPrivacyURL];
  v33[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v22 = [v19 initWithString:v15 attributes:v21];
  [v18 appendAttributedString:v22];

  [v5 setAttributedFooterTitle:v18];
  v23 = [v6 copy];
  v24 = [objc_opt_class() _ulhDeviceItemComparator];
  v25 = [v23 sortedArrayUsingComparator:v24];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __78__HUUpdateListeningHistorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v30[3] = &unk_277DB85D8;
  v31 = v4;
  v26 = v4;
  v27 = [v25 na_filter:v30];
  [v5 setItems:v27];

  [v29 addObject:v5];

  return v29;
}

- (id)setUpdateListeningHistorySetting:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HUUpdateListeningHistorySettingsItemModule *)self user];
    *buf = 67109634;
    *v41 = v4;
    *&v41[4] = 2112;
    *&v41[6] = v6;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "setUpdateListeningHistorySetting enable? %{BOOL}d for item %@ user %@", buf, 0x1Cu);
  }

  objc_opt_class();
  v9 = [v6 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [v6 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HUUpdateListeningHistorySettingsItemModule *)self user];
  v16 = [(HUUpdateListeningHistorySettingsItemModule *)self home];
  v17 = [v15 userListeningHistoryUpdateControlForHome:v16];

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 accessories];
    *buf = 138412290;
    *v41 = v19;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "updateListeningHistoryUpdateControl accessories %@", buf, 0xCu);
  }

  v20 = [v17 mutableCopy];
  if (v14)
  {
    v21 = [v14 accessory];
    if (v4)
    {
      [v20 addAccessory:v21];
    }

    else
    {
      [v20 removeAccessory:v21];
    }

LABEL_27:

    v27 = MEMORY[0x277D2C900];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__HUUpdateListeningHistorySettingsItemModule_setUpdateListeningHistorySetting_forItem___block_invoke;
    v32[3] = &unk_277DB8200;
    v33 = v20;
    v34 = self;
    v28 = [v27 futureWithBlock:v32];

    goto LABEL_28;
  }

  if (v11)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = [v11 accessories];
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v31 = v11;
      v24 = *v36;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v35 + 1) + 8 * i);
          if (v4)
          {
            [v20 addAccessory:v26];
          }

          else
          {
            [v20 removeAccessory:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v23);
      v11 = v31;
    }

    goto LABEL_27;
  }

  v30 = HFLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "Unable to find accessory to update user listening history setting", buf, 2u);
  }

  v28 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_28:

  return v28;
}

void __87__HUUpdateListeningHistorySettingsItemModule_setUpdateListeningHistorySetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) home];
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Updating user listening history setting %@ for home %@", buf, 0x16u);
  }

  v7 = [*(a1 + 40) user];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) home];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__HUUpdateListeningHistorySettingsItemModule_setUpdateListeningHistorySetting_forItem___block_invoke_42;
  v13[3] = &unk_277DBE710;
  v14 = v3;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = v10;
  v16 = v11;
  v12 = v3;
  [v7 updateUserListeningHistoryUpdateControl:v8 forHome:v9 completionHandler:v13];
}

void __87__HUUpdateListeningHistorySettingsItemModule_setUpdateListeningHistorySetting_forItem___block_invoke_42(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Failed to update user listening history setting with error : %@", &v8, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) home];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated user listening history setting %@ for home %@", &v8, 0x16u);
    }
  }
}

uint64_t __70__HUUpdateListeningHistorySettingsItemModule__ulhDeviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D14778];
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultItemComparator];
  v8 = (v7)[2](v7, v6, v5);

  return v8;
}

- (void)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D147F0]);
  v4 = [(HUUpdateListeningHistorySettingsItemModule *)self home];
  v5 = [v3 initWithHome:v4];

  v6 = [(HUUpdateListeningHistorySettingsItemModule *)self user];
  v7 = [(HUUpdateListeningHistorySettingsItemModule *)self home];
  v8 = [v6 userListeningHistoryUpdateControlForHome:v7];

  [v5 setFilter:&__block_literal_global_52];
  v9 = objc_alloc(MEMORY[0x277D14C38]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_3;
  v23[3] = &unk_277DC01A0;
  v10 = v8;
  v24 = v10;
  v11 = [v9 initWithSourceProvider:v5 transformationBlock:v23];
  [(HUUpdateListeningHistorySettingsItemModule *)self setMediaDeviceItemProvider:v11];

  v12 = objc_alloc(MEMORY[0x277D142F0]);
  v13 = [(HUUpdateListeningHistorySettingsItemModule *)self home];
  v14 = [v12 initWithHome:v13];

  [v14 setFilter:&__block_literal_global_329];
  v15 = objc_alloc(MEMORY[0x277D14C38]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_8;
  v21 = &unk_277DC0A98;
  v22 = v10;
  v16 = v10;
  v17 = [v15 initWithSourceProvider:v14 transformationBlock:&v18];
  [(HUUpdateListeningHistorySettingsItemModule *)self setOtherDeviceItemProvider:v17, v18, v19, v20, v21];
}

uint64_t __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2825BCB38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 accessories];
    v7 = [v6 na_all:&__block_literal_global_305];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v2 hf_supportsUserLevelUpdateListeningHistorySetting];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_4;
  v8[3] = &unk_277DBDC00;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 initWithSourceItem:v5 transformationBlock:v8];

  return v6;
}

id __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 accessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_5;
  v14[3] = &unk_277DB8EC0;
  v15 = *(a1 + 40);
  [v11 na_all:v14];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D14068]];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];

  return v6;
}

uint64_t __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_6;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

void *__65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_7(uint64_t a1, void *a2)
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

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 hf_siriEndpointProfile];
  if (v6)
  {
    v7 = [v5 hf_primaryService];

    if (v7)
    {
      v6 = [v5 hf_supportsUserLevelUpdateListeningHistorySetting];
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

id __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_9;
  v8[3] = &unk_277DBDC00;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 initWithSourceItem:v5 transformationBlock:v8];

  return v6;
}

id __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 accessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_10;
  v14[3] = &unk_277DB8EC0;
  v15 = *(a1 + 40);
  [v11 na_all:v14];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D14068]];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];

  return v6;
}

uint64_t __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_11;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __65__HUUpdateListeningHistorySettingsItemModule__buildItemProviders__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

@end