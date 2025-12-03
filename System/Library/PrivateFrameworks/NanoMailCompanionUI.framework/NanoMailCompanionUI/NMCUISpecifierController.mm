@interface NMCUISpecifierController
+ (id)settingSpecifierWithTarget:(id)target set:(SEL)set get:(SEL)get;
+ (id)titleSettingSpecifier;
- (BOOL)hasCloudNotificationAccounts;
- (PSListController)listController;
- (id)_cloudNotificationsEnabled:(id)enabled;
- (id)groupSpecifierForTinker:(BOOL)tinker;
- (id)specifierForAccount:(id)account onTap:(SEL)tap;
- (id)specifiers;
- (void)_accountSpecifierTapped:(id)tapped;
- (void)_setCloudNotificationsEnabled:(id)enabled withSpecifier:(id)specifier;
@end

@implementation NMCUISpecifierController

+ (id)settingSpecifierWithTarget:(id)target set:(SEL)set get:(SEL)get
{
  v7 = MEMORY[0x277D3FAD8];
  v8 = MEMORY[0x277CCA8D8];
  targetCopy = target;
  v10 = [v8 bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v11 = [v10 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v12 = [v7 preferenceSpecifierNamed:v11 target:targetCopy set:set get:get detail:0 cell:6 edit:0];

  return v12;
}

+ (id)titleSettingSpecifier
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v4 = [v3 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:4 edit:0];

  return v5;
}

- (id)groupSpecifierForTinker:(BOOL)tinker
{
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"cloud-notifications"];
  if (!tinker)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v7 = [v6 localizedStringForKey:@"STANDALONE_HEADER_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    [v5 setName:v7];
  }

  if ([(NMCUISpecifierController *)self hasCloudNotificationAccounts])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v9 = [v8 localizedStringForKey:@"CLOUD_NOTIFICATIONS_FOOTER_DESCRIPTION" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    [v5 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
  }

  return v5;
}

- (id)specifierForAccount:(id)account onTap:(SEL)tap
{
  accountCopy = account;
  v7 = MEMORY[0x277D3FAD8];
  displayName = [accountCopy displayName];
  v9 = [v7 preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v10 = *MEMORY[0x277D3FF38];
  [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  dataSource = [(NMCUISpecifierController *)self dataSource];
  v12 = [dataSource accountIsPending:accountCopy];

  if (v12)
  {
    v13 = @"MFNanoSettingsSpecifierLoadingKey";
    v14 = MEMORY[0x277CBEC38];
    v15 = v9;
LABEL_3:
    [v15 setObject:v14 forKeyedSubscript:v13];
    goto LABEL_7;
  }

  dataSource2 = [(NMCUISpecifierController *)self dataSource];
  if ([dataSource2 cloudNotificationsEnabled] && !+[NMCUICloudNotificationAccountDataSource accountHasCredentials:](NMCUICloudNotificationAccountDataSource, "accountHasCredentials:", accountCopy))
  {

    if (tap)
    {
      [v9 setButtonAction:tap];
      v19 = MEMORY[0x277CBEC38];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"MFNanoSettingsSpecifierWarningKey"];
      v15 = v9;
      v14 = v19;
      v13 = v10;
      goto LABEL_3;
    }
  }

  else
  {
  }

LABEL_7:
  username = [accountCopy username];
  [v9 setObject:username forKeyedSubscript:@"MFNanoSettingsSpecifierDetailKey"];

  [v9 setProperty:accountCopy forKey:@"NMCUISettingsSpecifierAccountKey"];

  return v9;
}

- (id)specifiers
{
  v29 = *MEMORY[0x277D85DE8];
  dataSource = [(NMCUISpecifierController *)self dataSource];
  showsAlerts = [dataSource showsAlerts];

  if (showsAlerts)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [(NMCUISpecifierController *)self groupSpecifierForTinker:[(NMCUISpecifierController *)self isTinker]];
    [v5 addObject:v7];

    if ([(NMCUISpecifierController *)self hasCloudNotificationAccounts])
    {
      [NMCUISpecifierController settingSpecifierWithTarget:self set:sel__setCloudNotificationsEnabled_withSpecifier_ get:sel__cloudNotificationsEnabled_];
    }

    else
    {
      +[NMCUISpecifierController titleSettingSpecifier];
    }
    v9 = ;
    v23 = v5;
    [v5 addObject:v9];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    dataSource2 = [(NMCUISpecifierController *)self dataSource];
    accounts = [dataSource2 accounts];

    v12 = [accounts countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(accounts);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([v16 directPushNotificationsSupported])
          {
            v17 = 0;
LABEL_13:
            dataSource3 = [(NMCUISpecifierController *)self specifierForAccount:v16 onTap:v17];
            [v6 addObject:dataSource3];
LABEL_17:

            continue;
          }

          dataSource3 = [(NMCUISpecifierController *)self dataSource];
          if (![dataSource3 deviceSupportsCloudNotifications])
          {
            goto LABEL_17;
          }

          v19 = [NMCUICloudNotificationAccountDataSource accountSupportsNotifications:v16];

          v17 = sel__accountSpecifierTapped_;
          if (v19)
          {
            goto LABEL_13;
          }
        }

        v13 = [accounts countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    if ([v6 count])
    {
      v20 = v23;
      v8 = [v23 arrayByAddingObjectsFromArray:v6];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
      v20 = v23;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)hasCloudNotificationAccounts
{
  v17 = *MEMORY[0x277D85DE8];
  dataSource = [(NMCUISpecifierController *)self dataSource];
  deviceSupportsCloudNotifications = [dataSource deviceSupportsCloudNotifications];

  if (deviceSupportsCloudNotifications)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    dataSource2 = [(NMCUISpecifierController *)self dataSource];
    accounts = [dataSource2 accounts];

    v7 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(accounts);
          }

          if ([NMCUICloudNotificationAccountDataSource accountSupportsNotifications:*(*(&v12 + 1) + 8 * i)])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_setCloudNotificationsEnabled:(id)enabled withSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  if ([enabledCopy BOOLValue])
  {
    objc_initWeak(&location, self);
    v8 = [NMCUICloudNotificationOnboardingViewController alloc];
    dataSource = [(NMCUISpecifierController *)self dataSource];
    accounts = [dataSource accounts];
    dataSource2 = [(NMCUISpecifierController *)self dataSource];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __72__NMCUISpecifierController__setCloudNotificationsEnabled_withSpecifier___block_invoke;
    v20 = &unk_2799348A8;
    objc_copyWeak(&v21, &location);
    v12 = [(NMCUICloudNotificationOnboardingViewController *)v8 initWithAccounts:accounts dataSource:dataSource2 completion:&v17];

    v13 = [(NMCUISpecifierController *)self listController:v17];
    [v13 presentViewController:v12 animated:1 completion:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    bOOLValue = [enabledCopy BOOLValue];
    dataSource3 = [(NMCUISpecifierController *)self dataSource];
    [dataSource3 setCloudNotificationsEnabled:bOOLValue];
  }

  listController = [(NMCUISpecifierController *)self listController];
  [listController reloadSpecifiers];
}

void __72__NMCUISpecifierController__setCloudNotificationsEnabled_withSpecifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NMCUISpecifierController__setCloudNotificationsEnabled_withSpecifier___block_invoke_2;
  block[3] = &unk_2799348A8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __72__NMCUISpecifierController__setCloudNotificationsEnabled_withSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained listController];
  [v1 reloadSpecifiers];
}

- (id)_cloudNotificationsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  dataSource = [(NMCUISpecifierController *)self dataSource];
  v5 = [v3 numberWithBool:{objc_msgSend(dataSource, "cloudNotificationsEnabled")}];

  return v5;
}

- (void)_accountSpecifierTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = [tappedCopy propertyForKey:@"NMCUISettingsSpecifierAccountKey"];
  if (v5)
  {
    objc_initWeak(&location, self);
    dataSource = [(NMCUISpecifierController *)self dataSource];
    listController = [(NMCUISpecifierController *)self listController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__NMCUISpecifierController__accountSpecifierTapped___block_invoke;
    v8[3] = &unk_2799348A8;
    objc_copyWeak(&v9, &location);
    [dataSource handleAccountAuthenication:v5 viewController:listController stateUpdateHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __52__NMCUISpecifierController__accountSpecifierTapped___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NMCUISpecifierController__accountSpecifierTapped___block_invoke_2;
  block[3] = &unk_2799348A8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __52__NMCUISpecifierController__accountSpecifierTapped___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained listController];
  [v1 reloadSpecifiers];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end