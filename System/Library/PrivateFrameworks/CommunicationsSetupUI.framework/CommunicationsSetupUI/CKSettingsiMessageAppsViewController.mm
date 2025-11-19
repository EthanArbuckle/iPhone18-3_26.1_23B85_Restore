@interface CKSettingsiMessageAppsViewController
- (BOOL)_canDeleteAppAtIndexPath:(id)a3;
- (CKSettingsiMessageAppsViewController)initWithAppManager:(id)a3;
- (id)_appsWithiMessageAppsSpecifiers;
- (id)_generateiMessageAppSpecifiers;
- (id)_iMessageOnlyAppsSpecifiers;
- (id)_specifierForApp:(id)a3;
- (id)getIsMessagesAppShownInSendMenuForSpecifier:(id)a3;
- (id)specifiers;
- (void)_deleteApp:(id)a3;
- (void)installediMessageAppsDidChange:(id)a3;
- (void)setIsMessagesAppShownInSendMenu:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation CKSettingsiMessageAppsViewController

- (CKSettingsiMessageAppsViewController)initWithAppManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKSettingsiMessageAppsViewController;
  v6 = [(CKSettingsiMessageAppsViewController *)&v9 init];
  if (v6)
  {
    v7 = MessagesSettingsLocalizedString(@"IMESSAGE_APPS_PAGE_TITLE");
    [(CKSettingsiMessageAppsViewController *)v6 setTitle:v7];
    objc_storeStrong(&v6->_appManager, a3);
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKSettingsiMessageAppsViewController;
  [(CKSettingsiMessageAppsViewController *)&v4 viewDidLoad];
  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) setEditing:1 animated:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_installediMessageAppsDidChange_ name:@"CKSettingsiMessageAppManagerInstalledAppsDidChange" object:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(CKSettingsiMessageAppsViewController *)self _generateiMessageAppSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_generateiMessageAppSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(CKSettingsiMessageAppsViewController *)self _iMessageOnlyAppsSpecifiers];
  [v3 addObjectsFromArray:v4];
  v5 = [(CKSettingsiMessageAppsViewController *)self _appsWithiMessageAppsSpecifiers];
  [v3 addObjectsFromArray:v5];
  v6 = [v3 copy];

  return v6;
}

- (id)_specifierForApp:(id)a3
{
  v4 = a3;
  if ([v4 isiMessageAppOnly])
  {
    v5 = [v4 extensionBundleID];
    v6 = [v4 extensionDisplayName];

    v7 = 4;
    v8 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:v6 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  }

  else
  {
    v5 = [v4 appBundleID];
    v6 = [v4 appDisplayName];

    v8 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:v6 target:self set:sel_setIsMessagesAppShownInSendMenu_specifier_ get:sel_getIsMessagesAppShownInSendMenuForSpecifier_ detail:0 cell:6 edit:0];
    v7 = 0;
  }

  [v8 setIdentifier:v5];
  [v8 setProperty:v5 forKey:*MEMORY[0x277D40008]];
  [v8 setProperty:@"YES" forKey:*MEMORY[0x277D40020]];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v8 setProperty:v9 forKey:*MEMORY[0x277D3FFD0]];

  return v8;
}

- (id)_iMessageOnlyAppsSpecifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(CKSettingsiMessageAppManager *)self->_appManager deletableiMessageOnlyApps];
  if ([v4 count])
  {
    v5 = MessagesSettingsLocalizedString(@"IMESSAGE_ONLY_APPS_SECTION_HEADER");
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMESSAGE_ONLY_APPS" name:v5];
    [v3 addObject:v6];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(CKSettingsiMessageAppsViewController *)self _specifierForApp:*(*(&v16 + 1) + 8 * i), v16];
          [v3 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_appsWithiMessageAppsSpecifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(CKSettingsiMessageAppManager *)self->_appManager deletableAppsWithiMessageApp];
  if ([v4 count])
  {
    v5 = MessagesSettingsLocalizedString(@"APPS_WITH_IMESSAGE_APPS_SECTION_HEADER");
    v6 = MessagesSettingsLocalizedString(@"APPS_WITH_IMESSAGE_APPS_SECTION_FOOTER");
    v17 = v5;
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_WITH_IMESSAGE_APPS" name:v5];
    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
    [v3 addObject:v7];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CKSettingsiMessageAppsViewController *)self _specifierForApp:*(*(&v18 + 1) + 8 * i)];
          [v3 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v14 = [v3 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_deleteApp:(id)a3
{
  v3 = [a3 appBundleID];
  v4 = CUTWeakLinkClass();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke;
  v6[3] = &unk_278DE8798;
  v7 = v3;
  v5 = v3;
  [v4 uninstallAppWithBundleID:v5 requestUserConfirmation:1 completion:v6];
}

void __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = csui_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Uninstalled app with bundleID: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)installediMessageAppsDidChange:(id)a3
{
  v4 = csui_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Apps view controller notified of installed apps change", buf, 2u);
  }

  v5 = [(CKSettingsiMessageAppsViewController *)self appManager];
  if ([v5 haveDeletableApps])
  {
    v6 = [(CKSettingsiMessageAppsViewController *)self _generateiMessageAppSpecifiers];
    [(CKSettingsiMessageAppsViewController *)self updateSpecifiers:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) withSpecifiers:v6];
  }

  else
  {
    v7 = csui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "There are no deletable apps remaining, popping the user back to Messages settings.", v9, 2u);
    }

    v6 = [(CKSettingsiMessageAppsViewController *)self navigationController];
    v8 = [v6 popViewControllerAnimated:1];
  }
}

- (void)setIsMessagesAppShownInSendMenu:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v8 = [a4 identifier];
  v7 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:v8];
  LODWORD(self) = [v6 BOOLValue];

  [v7 setHiddenInSendMenuByUserPreference:self ^ 1];
}

- (id)getIsMessagesAppShownInSendMenuForSpecifier:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:v4];
  v6 = [v5 isHiddenInSendMenuByUserPreference];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];

  return v7;
}

- (BOOL)_canDeleteAppAtIndexPath:(id)a3
{
  v4 = [(CKSettingsiMessageAppsViewController *)self specifierAtIndexPath:a3];
  v5 = [v4 identifier];
  v6 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:v5];
  v7 = [v6 isiMessageAppOnly];

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v6 = [(CKSettingsiMessageAppsViewController *)self specifierAtIndexPath:a5];
    v7 = [v6 identifier];
    v8 = csui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "User requested uninstall of app with bundleID: %@", &v11, 0xCu);
    }

    v9 = [(CKSettingsiMessageAppManager *)self->_appManager appWithBundleID:v7];
    [(CKSettingsiMessageAppsViewController *)self _deleteApp:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__CKSettingsiMessageAppsViewController__deleteApp___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_243BE5000, log, OS_LOG_TYPE_ERROR, "Error uninstalling app: %@. Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end