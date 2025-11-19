@interface HUSafetyAndSecuritySettingsItemModule
- (HUSafetyAndSecuritySettingsItemModule)initWithItemUpdater:(id)a3;
- (HUSafetyAndSecuritySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)enableUserPermissionSetting:(BOOL)a3 forItem:(id)a4;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HUSafetyAndSecuritySettingsItemModule

- (HUSafetyAndSecuritySettingsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUSafetyAndSecuritySettingsItemModule.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HUSafetyAndSecuritySettingsItemModule;
  v9 = [(HFItemModule *)&v18 initWithItemUpdater:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    objc_initWeak(&location, v10);
    v11 = [MEMORY[0x277D146E8] sharedDispatcher];
    v12 = [v11 homeManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__HUSafetyAndSecuritySettingsItemModule_initWithItemUpdater_home___block_invoke;
    v15[3] = &unk_277DBD078;
    objc_copyWeak(&v16, &location);
    [v12 fetchDevicesWithCompletionHandler:v15];

    [(HUSafetyAndSecuritySettingsItemModule *)v10 _buildItemProviders];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __66__HUSafetyAndSecuritySettingsItemModule_initWithItemUpdater_home___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Fetched devices:[%@] Error:[%@]", &v9, 0x16u);
  }

  [WeakRetained setDevices:v5];
}

- (HUSafetyAndSecuritySettingsItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUSafetyAndSecuritySettingsItemModule.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUSafetyAndSecuritySettingsItemModule initWithItemUpdater:]", v6}];

  return 0;
}

uint64_t __60__HUSafetyAndSecuritySettingsItemModule__userItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D14120];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  if ([v8 type] || !objc_msgSend(v10, "type"))
  {
    if ([v8 type] && !objc_msgSend(v10, "type"))
    {
      v12 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277D14778] defaultItemComparator];
      v12 = (v11)[2](v11, v4, v5);
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)_buildItemProviders
{
  v41[4] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __60__HUSafetyAndSecuritySettingsItemModule__buildItemProviders__block_invoke;
  v36 = &unk_277DB7448;
  objc_copyWeak(&v37, &location);
  v4 = [v3 initWithResultsBlock:&v33];
  [(HUSafetyAndSecuritySettingsItemModule *)self setHomeUpgradeBannerItem:v4, v33, v34, v35, v36];

  v5 = [HUSoundRecognitionItem alloc];
  v6 = [(HUSafetyAndSecuritySettingsItemModule *)self home];
  v7 = [(HUSoundRecognitionItem *)v5 initWithHome:v6];
  [(HUSafetyAndSecuritySettingsItemModule *)self setListenForSoundsItem:v7];

  v8 = [(HUSafetyAndSecuritySettingsItemModule *)self home];
  v9 = [v8 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v40[0] = *MEMORY[0x277D13F60];
  v11 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettings_Notifications_Title", @"HUSafetyAndSecuritySettings_Notifications_Title", 1);
  v12 = *MEMORY[0x277D13F68];
  v41[0] = v11;
  v41[1] = @"HUSafetyAndSecuritySettings_Notifications_Title";
  v13 = *MEMORY[0x277D13FB8];
  v40[1] = v12;
  v40[2] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
  v40[3] = *MEMORY[0x277D13F10];
  v41[2] = v14;
  v41[3] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v16 = [v10 initWithResults:v15];
  [(HUSafetyAndSecuritySettingsItemModule *)self setNotificationsItem:v16];

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = [(HUSafetyAndSecuritySettingsItemModule *)self listenForSoundsItem];
  v39[0] = v18;
  v19 = [(HUSafetyAndSecuritySettingsItemModule *)self notificationsItem];
  v39[1] = v19;
  v20 = [(HUSafetyAndSecuritySettingsItemModule *)self homeUpgradeBannerItem];
  v39[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v22 = [v17 initWithArray:v21];

  v23 = objc_alloc(MEMORY[0x277D14B40]);
  v24 = [MEMORY[0x277CBEB98] setWithArray:v22];
  v25 = [v23 initWithItems:v24];
  [(HUSafetyAndSecuritySettingsItemModule *)self setStaticItemProvider:v25];

  v26 = objc_alloc(MEMORY[0x277D14CA0]);
  v27 = [(HUSafetyAndSecuritySettingsItemModule *)self home];
  v28 = [v26 initWithHome:v27];
  [(HUSafetyAndSecuritySettingsItemModule *)self setUserItemProvider:v28];

  v29 = [(HUSafetyAndSecuritySettingsItemModule *)self userItemProvider];
  [v29 setIncludeCurrentUser:1];

  v30 = [(HUSafetyAndSecuritySettingsItemModule *)self home];
  v31 = [v30 hf_currentUserIsAdministrator];
  v32 = [(HUSafetyAndSecuritySettingsItemModule *)self userItemProvider];
  [v32 setIncludeOtherUsers:v31];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

id __60__HUSafetyAndSecuritySettingsItemModule__buildItemProviders__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = [v3 allHomesFuture];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__HUSafetyAndSecuritySettingsItemModule__buildItemProviders__block_invoke_2;
  v12 = &unk_277DB9620;
  objc_copyWeak(&v14, (a1 + 32));
  v5 = v2;
  v13 = v5;
  v6 = [v4 addSuccessBlock:&v9];

  v7 = [MEMORY[0x277D2C900] futureWithResult:{v5, v9, v10, v11, v12}];

  objc_destroyWeak(&v14);

  return v7;
}

void __60__HUSafetyAndSecuritySettingsItemModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 na_filter:&__block_literal_global_32_2];

  [WeakRetained setOwnerHomes:v4];
  v5 = [WeakRetained home];
  v6 = [v5 hf_homeHubMigrationBannerTitle];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = [WeakRetained home];
  v8 = [v7 hf_homeHubMigrationBannerDescription];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v9 = [WeakRetained home];
  v10 = [v9 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];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  v11 = MEMORY[0x277D755D0];
  v12 = [MEMORY[0x277D75348] hf_keyColor];
  v13 = [v11 configurationWithHierarchicalColor:v12];

  v14 = [MEMORY[0x277D755D0] configurationWithScale:0];
  v15 = [v14 configurationByApplyingConfiguration:v13];
  v16 = [objc_alloc(MEMORY[0x277D14B78]) initWithSystemImageName:@"homekit" configuration:v15];
  v17 = [objc_alloc(MEMORY[0x277D14728]) initWithSymbolIconConfiguration:v16];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:*MEMORY[0x277D13E88]];
  v18 = MEMORY[0x277CCABB0];
  v19 = [WeakRetained home];
  v20 = [v18 numberWithInt:{objc_msgSend(v19, "hf_isHomeHubMigrationBannerVisible") ^ 1}];
  [*(a1 + 32) setObject:v20 forKeyedSubscript:*MEMORY[0x277D13FB8]];
}

uint64_t __60__HUSafetyAndSecuritySettingsItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentUser];
  v4 = [v2 hf_userIsOwner:v3];

  return v4;
}

- (id)itemProviders
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HUSafetyAndSecuritySettingsItemModule *)self staticItemProvider];
  v5 = [(HUSafetyAndSecuritySettingsItemModule *)self userItemProvider];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  return v6;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUSafetyAndSecuritySettingsItemModule *)self homeUpgradeBannerItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSafetyAndSecurityBannerSectionIdentifier"];
    v9 = [(HUSafetyAndSecuritySettingsItemModule *)self homeUpgradeBannerItem];
    v42[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    [v8 setItems:v10];

    v11 = [(HUSafetyAndSecuritySettingsItemModule *)self ownerHomes];
    if ([v11 count] <= 1)
    {
      v12 = @"HUSafetyAndSecuritySoftwareUpdateFooter";
    }

    else
    {
      v12 = @"HUSafetyAndSecuritySoftwareUpdateFooterPlural";
    }

    v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
    [v8 setFooterTitle:v13];

    [v5 addObject:v8];
  }

  v14 = [(HUSafetyAndSecuritySettingsItemModule *)self listenForSoundsItem];
  v15 = [v4 containsObject:v14];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSafetyAndSecuritySettingsListenForSoundsSectionIdentifier"];
    v17 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettings_ListenForSoundsSection_Footer", @"HUSafetyAndSecuritySettings_ListenForSoundsSection_Footer", 1);
    [v16 setFooterTitle:v17];

    v18 = [(HUSafetyAndSecuritySettingsItemModule *)self listenForSoundsItem];
    v41 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [v16 setItems:v19];

    [v5 addObject:v16];
  }

  v20 = [(HUSafetyAndSecuritySettingsItemModule *)self notificationsItem];
  v21 = [v4 containsObject:v20];

  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSafetyAndSecuritySettingsNotificationsSectionIdentifier"];
    v23 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettings_Notifications_Footer", @"HUSafetyAndSecuritySettings_Notifications_Footer", 1);
    [v22 setFooterTitle:v23];

    v24 = [(HUSafetyAndSecuritySettingsItemModule *)self notificationsItem];
    v40 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [v22 setItems:v25];

    [v5 addObject:v22];
  }

  v26 = [(HUSafetyAndSecuritySettingsItemModule *)self home];
  v27 = [v26 hf_hasAtleastOneAudioAnalysisSupportedAccessory];

  if (v27)
  {
    v28 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSafetyAndSecuritySettingsUserItemSectionIdentifier"];
    v29 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettingsUserSection_Header", @"HUSafetyAndSecuritySettingsUserSection_Header", 1);
    [v28 setHeaderTitle:v29];

    v30 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettingsUserSection_Footer", @"HUSafetyAndSecuritySettingsUserSection_Footer", 1);
    [v28 setFooterTitle:v30];

    v31 = [(HUSafetyAndSecuritySettingsItemModule *)self userItemProvider];
    v32 = [v31 items];
    v33 = [v32 allObjects];
    v34 = [objc_opt_class() _userItemComparator];
    v35 = [v33 sortedArrayUsingComparator:v34];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __73__HUSafetyAndSecuritySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
    v38[3] = &unk_277DB85D8;
    v39 = v4;
    v36 = [v35 na_filter:v38];
    [v28 setItems:v36];

    [v5 addObject:v28];
  }

  return v5;
}

- (id)enableUserPermissionSetting:(BOOL)a3 forItem:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Attempting to update DropIn permission setting for item %@", buf, 0x20u);
  }

  objc_opt_class();
  v10 = v7;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12 && (-[HUSafetyAndSecuritySettingsItemModule userItemProvider](self, "userItemProvider"), v13 = objc_claimAutoreleasedReturnValue(), [v13 items], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v10), v14, v13, v15))
  {
    v16 = MEMORY[0x277D2C900];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke;
    v19[3] = &unk_277DBE6E8;
    v22 = a3;
    v19[4] = self;
    v20 = v12;
    v21 = a2;
    v17 = [v16 futureWithBlock:v19];
  }

  else
  {
    v17 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v17;
}

void __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(a1 + 32) home];
  v6 = [*(a1 + 40) user];
  v7 = [v5 homeAccessControlForUser:v6];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = NSStringFromSelector(*(a1 + 48));
    if (*(a1 + 56))
    {
      v11 = @"enable";
    }

    else
    {
      v11 = @"disable";
    }

    v12 = [*(a1 + 40) user];
    *buf = 138413058;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Will %@ DropIn permission setting for %@", buf, 0x2Au);
  }

  objc_initWeak(buf, *(a1 + 32));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke_81;
  v14[3] = &unk_277DBD050;
  objc_copyWeak(&v17, buf);
  v13 = v3;
  v15 = v13;
  v16 = *(a1 + 40);
  [v7 updateAudioAnalysisUserDropinAccessLevel:v4 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke_81(id *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = HFLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Error setting dropin access level setting: %@", buf, 0xCu);
    }

    [a1[4] finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Success in setting dropin access level setting", buf, 2u);
    }

    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke_82;
    v11 = &unk_277DB9920;
    v12 = WeakRetained;
    v13 = a1[5];
    [v7 dispatchHomeObserverMessage:&v8 sender:0];

    [a1[4] finishWithNoResult];
  }
}

void __77__HUSafetyAndSecuritySettingsItemModule_enableUserPermissionSetting_forItem___block_invoke_82(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 40) user];
    [v5 home:v3 didUpdateAccessControlForUser:v4];
  }
}

@end