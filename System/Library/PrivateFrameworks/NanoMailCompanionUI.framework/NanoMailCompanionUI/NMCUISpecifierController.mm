@interface NMCUISpecifierController
+ (id)settingSpecifierWithTarget:(id)a3 set:(SEL)a4 get:(SEL)a5;
+ (id)titleSettingSpecifier;
- (BOOL)hasCloudNotificationAccounts;
- (PSListController)listController;
- (id)_cloudNotificationsEnabled:(id)a3;
- (id)groupSpecifierForTinker:(BOOL)a3;
- (id)specifierForAccount:(id)a3 onTap:(SEL)a4;
- (id)specifiers;
- (void)_accountSpecifierTapped:(id)a3;
- (void)_setCloudNotificationsEnabled:(id)a3 withSpecifier:(id)a4;
@end

@implementation NMCUISpecifierController

+ (id)settingSpecifierWithTarget:(id)a3 set:(SEL)a4 get:(SEL)a5
{
  v7 = MEMORY[0x277D3FAD8];
  v8 = MEMORY[0x277CCA8D8];
  v9 = a3;
  v10 = [v8 bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v11 = [v10 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v12 = [v7 preferenceSpecifierNamed:v11 target:v9 set:a4 get:a5 detail:0 cell:6 edit:0];

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

- (id)groupSpecifierForTinker:(BOOL)a3
{
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"cloud-notifications"];
  if (!a3)
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

- (id)specifierForAccount:(id)a3 onTap:(SEL)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D3FAD8];
  v8 = [v6 displayName];
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v9 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v10 = *MEMORY[0x277D3FF38];
  [v9 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  v11 = [(NMCUISpecifierController *)self dataSource];
  v12 = [v11 accountIsPending:v6];

  if (v12)
  {
    v13 = @"MFNanoSettingsSpecifierLoadingKey";
    v14 = MEMORY[0x277CBEC38];
    v15 = v9;
LABEL_3:
    [v15 setObject:v14 forKeyedSubscript:v13];
    goto LABEL_7;
  }

  v16 = [(NMCUISpecifierController *)self dataSource];
  if ([v16 cloudNotificationsEnabled] && !+[NMCUICloudNotificationAccountDataSource accountHasCredentials:](NMCUICloudNotificationAccountDataSource, "accountHasCredentials:", v6))
  {

    if (a4)
    {
      [v9 setButtonAction:a4];
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
  v17 = [v6 username];
  [v9 setObject:v17 forKeyedSubscript:@"MFNanoSettingsSpecifierDetailKey"];

  [v9 setProperty:v6 forKey:@"NMCUISettingsSpecifierAccountKey"];

  return v9;
}

- (id)specifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(NMCUISpecifierController *)self dataSource];
  v4 = [v3 showsAlerts];

  if (v4)
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
    v10 = [(NMCUISpecifierController *)self dataSource];
    v11 = [v10 accounts];

    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([v16 directPushNotificationsSupported])
          {
            v17 = 0;
LABEL_13:
            v18 = [(NMCUISpecifierController *)self specifierForAccount:v16 onTap:v17];
            [v6 addObject:v18];
LABEL_17:

            continue;
          }

          v18 = [(NMCUISpecifierController *)self dataSource];
          if (![v18 deviceSupportsCloudNotifications])
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

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v3 = [(NMCUISpecifierController *)self dataSource];
  v4 = [v3 deviceSupportsCloudNotifications];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NMCUISpecifierController *)self dataSource];
    v6 = [v5 accounts];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([NMCUICloudNotificationAccountDataSource accountSupportsNotifications:*(*(&v12 + 1) + 8 * i)])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_setCloudNotificationsEnabled:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 BOOLValue])
  {
    objc_initWeak(&location, self);
    v8 = [NMCUICloudNotificationOnboardingViewController alloc];
    v9 = [(NMCUISpecifierController *)self dataSource];
    v10 = [v9 accounts];
    v11 = [(NMCUISpecifierController *)self dataSource];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __72__NMCUISpecifierController__setCloudNotificationsEnabled_withSpecifier___block_invoke;
    v20 = &unk_2799348A8;
    objc_copyWeak(&v21, &location);
    v12 = [(NMCUICloudNotificationOnboardingViewController *)v8 initWithAccounts:v10 dataSource:v11 completion:&v17];

    v13 = [(NMCUISpecifierController *)self listController:v17];
    [v13 presentViewController:v12 animated:1 completion:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [v6 BOOLValue];
    v15 = [(NMCUISpecifierController *)self dataSource];
    [v15 setCloudNotificationsEnabled:v14];
  }

  v16 = [(NMCUISpecifierController *)self listController];
  [v16 reloadSpecifiers];
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

- (id)_cloudNotificationsEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(NMCUISpecifierController *)self dataSource];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "cloudNotificationsEnabled")}];

  return v5;
}

- (void)_accountSpecifierTapped:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"NMCUISettingsSpecifierAccountKey"];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(NMCUISpecifierController *)self dataSource];
    v7 = [(NMCUISpecifierController *)self listController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__NMCUISpecifierController__accountSpecifierTapped___block_invoke;
    v8[3] = &unk_2799348A8;
    objc_copyWeak(&v9, &location);
    [v6 handleAccountAuthenication:v5 viewController:v7 stateUpdateHandler:v8];

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