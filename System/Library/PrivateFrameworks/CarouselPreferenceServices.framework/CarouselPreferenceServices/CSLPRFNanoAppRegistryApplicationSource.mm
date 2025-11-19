@interface CSLPRFNanoAppRegistryApplicationSource
- (CSLPRFNanoAppRegistryApplicationSource)init;
- (CSLPRFNanoAppRegistryApplicationSourceDelegate)delegate;
- (void)_appsDidChange;
- (void)allApplicationsWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation CSLPRFNanoAppRegistryApplicationSource

- (CSLPRFNanoAppRegistryApplicationSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_appsDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__CSLPRFNanoAppRegistryApplicationSource__appsDidChange__block_invoke;
  v2[3] = &unk_278744B88;
  v2[4] = self;
  [(CSLPRFNanoAppRegistryApplicationSource *)self allApplicationsWithCompletion:v2];
}

void __56__CSLPRFNanoAppRegistryApplicationSource__appsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  [WeakRetained nanoRegistrySource:*(a1 + 32) updatedWithAllApplications:v4];
}

- (void)allApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  workspace = self->_workspace;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CSLPRFNanoAppRegistryApplicationSource_allApplicationsWithCompletion___block_invoke;
  v7[3] = &unk_2787448B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NARApplicationWorkspace *)workspace getWorkspaceInfoIncludingHiddenApps:1 completion:v7];
}

void __72__CSLPRFNanoAppRegistryApplicationSource_allApplicationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applications];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CSLPRFNanoAppRegistryApplicationSource_allApplicationsWithCompletion___block_invoke_2;
  v6[3] = &unk_278744888;
  v6[4] = *(a1 + 32);
  v4 = [v3 bs_mapNoNulls:v6];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

id __72__CSLPRFNanoAppRegistryApplicationSource_allApplicationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (!v4)
  {
    goto LABEL_5;
  }

  v7 = [v5 isHidden];
  v8 = [v6 appTags];
  v9 = [v8 containsObject:@"showInDockSettings"];

  if (v7)
  {
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [v6 appState];
  v11 = [v10 isRestricted];

  if (v11)
  {
LABEL_5:
    v12 = 0;
    v13 = 0;
    v14 = v6;
LABEL_6:

    goto LABEL_7;
  }

  v16 = [v6 applicationIdentifier];
  if (_keyFor1stPartyWatchApplicationNameWithBundleIdentifier__onceToken != -1)
  {
    dispatch_once(&_keyFor1stPartyWatchApplicationNameWithBundleIdentifier__onceToken, &__block_literal_global_1081);
  }

  v17 = [_keyFor1stPartyWatchApplicationNameWithBundleIdentifier__bundleIDToLocalizationKeyMap objectForKey:v16];

  if (v17)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v18 localizedStringForKey:v17 value:&stru_28401BD18 table:@"CompanionDockSettings"];

    v19 = [v6 localizedDisplayNames];
    if (!v12)
    {
      v20 = [MEMORY[0x277CBEAF8] currentLocale];
      v21 = [v20 localeIdentifier];

      v12 = [v19 objectForKeyedSubscript:v21];

      if (!v12)
      {
        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v23 = [v22 preferredLocalizations];
        v24 = [v23 firstObject];

        v12 = [v19 objectForKeyedSubscript:v24];

        if (!v12)
        {
          v25 = [MEMORY[0x277CBEAF8] currentLocale];
          v26 = [v25 languageCode];

          v12 = [v19 objectForKeyedSubscript:v26];

          if (!v12)
          {
            v27 = [v6 localizedDisplayName];
            if (v27 || ([v6 bundleName], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v12 = v27;
            }

            else
            {
              v28 = [v16 componentsSeparatedByString:@"."];
              v12 = [v28 lastObject];
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [v6 applicationIdentifier];
    v13 = [CSLPRFApp appWithBundleID:v14 name:v12 sdkVersion:@"11.0" supportsAlwaysOnDisplay:0 defaultsToPrivateAlwaysOnDisplayTreatment:0];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

void __98__CSLPRFNanoAppRegistryApplicationSource__keyFor1stPartyWatchApplicationNameWithBundleIdentifier___block_invoke()
{
  v0 = _keyFor1stPartyWatchApplicationNameWithBundleIdentifier__bundleIDToLocalizationKeyMap;
  _keyFor1stPartyWatchApplicationNameWithBundleIdentifier__bundleIDToLocalizationKeyMap = &unk_284025338;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D2B8C8], 0);
  v4.receiver = self;
  v4.super_class = CSLPRFNanoAppRegistryApplicationSource;
  [(CSLPRFNanoAppRegistryApplicationSource *)&v4 dealloc];
}

- (CSLPRFNanoAppRegistryApplicationSource)init
{
  v7.receiver = self;
  v7.super_class = CSLPRFNanoAppRegistryApplicationSource;
  v2 = [(CSLPRFNanoAppRegistryApplicationSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2B8D0]);
    workspace = v2->_workspace;
    v2->_workspace = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, CDSNanoAppRegistryAppDataProviderAppsChanged, *MEMORY[0x277D2B8C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

@end