@interface HUSafetyAndSecuritySettingsNotificationsItemModule
- (HUSafetyAndSecuritySettingsNotificationsItemModule)initWithItemUpdater:(id)a3;
- (HUSafetyAndSecuritySettingsNotificationsItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HUSafetyAndSecuritySettingsNotificationsItemModule

- (HUSafetyAndSecuritySettingsNotificationsItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUSafetyAndSecuritySettingsNotificationsItemModule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HUSafetyAndSecuritySettingsNotificationsItemModule;
  v9 = [(HFItemModule *)&v13 initWithItemUpdater:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    [(HUSafetyAndSecuritySettingsNotificationsItemModule *)v10 _buildItemProviders];
  }

  return v10;
}

- (HUSafetyAndSecuritySettingsNotificationsItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUSafetyAndSecuritySettingsNotificationsItemModule.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HUSafetyAndSecuritySettingsNotificationsItemModule initWithItemUpdater:]", v6}];

  return 0;
}

uint64_t __92__HUSafetyAndSecuritySettingsNotificationsItemModule__safetyAndSecurityDeviceItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D14778];
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultItemComparator];
  v8 = (v7)[2](v7, v6, v5);

  return v8;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUSafetyAndSecuritySettingsNotificationsItemModule *)self safetyAndSecurityDeviceItemProvider];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"notificationsSection"];
  v7 = _HULocalizedStringWithDefaultValue(@"HUSafetyAndSecuritySettingsNotificationsSection_Header", @"HUSafetyAndSecuritySettingsNotificationsSection_Header", 1);
  [v6 setHeaderTitle:v7];

  v8 = objc_opt_new();
  v9 = [(HUSafetyAndSecuritySettingsNotificationsItemModule *)self safetyAndSecurityDeviceItemProvider];
  v10 = [v9 items];
  v11 = [v10 allObjects];
  [v8 na_safeAddObjectsFromArray:v11];

  v12 = [v8 copy];
  v13 = [objc_opt_class() _safetyAndSecurityDeviceItemComparator];
  v14 = [v12 sortedArrayUsingComparator:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HUSafetyAndSecuritySettingsNotificationsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v18[3] = &unk_277DB85D8;
  v19 = v4;
  v15 = v4;
  v16 = [v14 na_filter:v18];
  [v6 setItems:v16];

  [v5 addObject:v6];

  return v5;
}

- (void)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D147F0]);
  v4 = [(HUSafetyAndSecuritySettingsNotificationsItemModule *)self home];
  v6 = [v3 initWithHome:v4];

  [v6 setFilter:&__block_literal_global_27_0];
  v5 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v6 transformationBlock:&__block_literal_global_285];
  [(HUSafetyAndSecuritySettingsNotificationsItemModule *)self setSafetyAndSecurityDeviceItemProvider:v5];
}

uint64_t __73__HUSafetyAndSecuritySettingsNotificationsItemModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
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
    v7 = [v6 na_all:&__block_literal_global_280];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v2 supportsAudioAnalysis];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

uint64_t __73__HUSafetyAndSecuritySettingsNotificationsItemModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isMediaAccessory])
  {
    v3 = [v2 supportsAudioAnalysis];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __73__HUSafetyAndSecuritySettingsNotificationsItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D14C30]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HUSafetyAndSecuritySettingsNotificationsItemModule__buildItemProviders__block_invoke_4;
  v7[3] = &unk_277DC0760;
  v8 = v2;
  v4 = v2;
  v5 = [v3 initWithSourceItem:v4 transformationBlock:v7];

  return v5;
}

id __73__HUSafetyAndSecuritySettingsNotificationsItemModule__buildItemProviders__block_invoke_4(uint64_t a1, void *a2)
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

  v7 = [*(a1 + 32) accessories];
  v8 = [v7 anyObject];
  if ([v8 conformsToProtocol:&unk_2825BD420])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 hf_userNotificationSettings];

  LODWORD(v10) = [v11 areNotificationsEnabled];
  if (v10)
  {
    v12 = @"HUSafetyAndSecuritySettingsNotifications_On";
  }

  else
  {
    v12 = @"HUSafetyAndSecuritySettingsNotifications_Off";
  }

  v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];

  return v6;
}

@end