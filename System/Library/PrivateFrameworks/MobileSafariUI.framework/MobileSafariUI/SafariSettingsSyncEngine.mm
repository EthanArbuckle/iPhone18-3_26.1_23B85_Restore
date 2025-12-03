@interface SafariSettingsSyncEngine
- (BOOL)syncEnabled;
- (SafariSettingsSyncEngine)init;
- (id)_sectionIdentifierToSettingName:(id)name;
- (id)startPageSectionsManager;
- (void)_backgroundImageChanged:(id)changed;
- (void)_cloudBackgroundImageDidUpdateOnServer:(id)server;
- (void)_cloudBackgroundImageWasDeletedOnServer:(id)server;
- (void)_cloudSettingsDidUpdateOnServer:(id)server;
- (void)_customizationPaletteWasDismissed:(id)dismissed;
- (void)_didUpdateCloudTabsOnStartPageConsent:(id)consent;
- (void)_didUpdateDefaultBrowserState;
- (void)_didUpdateStartPageBackgroundImageVisibility;
- (void)_didUpdateStartPageSectionOrder:(id)order;
- (void)_didUpdateStartPageVisibility:(id)visibility;
@end

@implementation SafariSettingsSyncEngine

- (SafariSettingsSyncEngine)init
{
  v30.receiver = self;
  v30.super_class = SafariSettingsSyncEngine;
  v2 = [(WBSSafariSettingsSyncEngine *)&v30 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__cloudBackgroundImageDidUpdateOnServer_ name:*MEMORY[0x277D4A370] object:0];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__cloudBackgroundImageWasDeletedOnServer_ name:*MEMORY[0x277D4A368] object:0];

    defaultCenter3 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__cloudSettingsDidUpdateOnServer_ name:*MEMORY[0x277D4A380] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__backgroundImageChanged_ name:*MEMORY[0x277D4A978] object:0];
    [defaultCenter4 addObserver:v2 selector:sel__didUpdateStartPageVisibility_ name:*MEMORY[0x277D4A3B0] object:0];
    [defaultCenter4 addObserver:v2 selector:sel__didUpdateStartPageSectionOrder_ name:*MEMORY[0x277D4A4C8] object:0];
    [defaultCenter4 addObserver:v2 selector:sel__customizationPaletteWasDismissed_ name:*MEMORY[0x277D4A3B8] object:0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = *MEMORY[0x277D4A478];
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __32__SafariSettingsSyncEngine_init__block_invoke;
    v27[3] = &unk_2781D83F8;
    objc_copyWeak(&v28, &location);
    v11 = [standardUserDefaults safari_observeValueForKey:v8 onQueue:v9 notifyForInitialValue:0 handler:v27];
    wallpaperDefaultsObservation = v2->_wallpaperDefaultsObservation;
    v2->_wallpaperDefaultsObservation = v11;

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = SFDefaultBrowserSelectionStateKey();
    v15 = [standardUserDefaults2 integerForKey:v14];

    if (!v15)
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v17 = SFDefaultBrowserSelectionStateKey();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __32__SafariSettingsSyncEngine_init__block_invoke_2;
      v25[3] = &unk_2781D83F8;
      objc_copyWeak(&v26, &location);
      v18 = [standardUserDefaults3 safari_observeValueForKey:v17 onQueue:MEMORY[0x277D85CD0] notifyForInitialValue:0 handler:v25];
      defaultBrowserSelectionObservation = v2->_defaultBrowserSelectionObservation;
      v2->_defaultBrowserSelectionObservation = v18;

      objc_destroyWeak(&v26);
    }

    [defaultCenter4 safari_addObserver:v2 selector:sel__didUpdateCloudTabsOnStartPageConsent_ forUserDefaultKey:*MEMORY[0x277D4A160]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__SafariSettingsSyncEngine_init__block_invoke_3;
    v23[3] = &unk_2781D8420;
    v20 = v2;
    v24 = v20;
    [(WBSSafariSettingsSyncEngine *)v20 registerDiagnosticWithPayloadProvider:v23];
    v21 = v20;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__SafariSettingsSyncEngine_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _didUpdateStartPageBackgroundImageVisibility];
  }
}

void __32__SafariSettingsSyncEngine_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _didUpdateDefaultBrowserState];
  }
}

id __32__SafariSettingsSyncEngine_init__block_invoke_3(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"Start Page Section Order";
  v2 = [*(a1 + 32) startPageSectionsManager];
  v3 = [v2 sectionIdentifiers];
  v12[0] = v3;
  v11[1] = @"Start Page Enabled Sections";
  v4 = [*(a1 + 32) startPageSectionsManager];
  v5 = [v4 enabledSectionIdentifiers];
  v12[1] = v5;
  v11[2] = @"Background Image Exist";
  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v6 numberWithBool:{objc_msgSend(v7, "BOOLForKey:", *MEMORY[0x277D4A268])}];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (BOOL)syncEnabled
{
  v2 = +[FeatureManager sharedFeatureManager];
  isCloudSyncAvailable = [v2 isCloudSyncAvailable];

  if ((isCloudSyncAvailable & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x277D49A08];

  return [v4 isStartPageSettingSyncEnabled];
}

- (id)startPageSectionsManager
{
  lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  if (!lazyStartPageSectionsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A080]);
    v5 = self->_lazyStartPageSectionsManager;
    self->_lazyStartPageSectionsManager = v4;

    lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  }

  return lazyStartPageSectionsManager;
}

- (void)_cloudSettingsDidUpdateOnServer:(id)server
{
  serverCopy = server;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = MEMORY[0x277CBEBD0];
  object = [serverCopy object];
  v6 = [v4 safari_notificationNameForUserDefaultsKey:object];
  [defaultCenter postNotificationName:v6 object:0];
}

- (void)_customizationPaletteWasDismissed:(id)dismissed
{
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {

    [(WBSSafariSettingsSyncEngine *)self triggerImmediateBackgroundImageSaveIfApplicable];
  }
}

- (void)_backgroundImageChanged:(id)changed
{
  changedCopy = changed;
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {
    userInfo = [changedCopy userInfo];
    v6 = *MEMORY[0x277D4A970];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4A970]];

    if ([v7 length])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SafariSettingsSyncEngine *)v6 _backgroundImageChanged:v8];
      }
    }

    else
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [standardUserDefaults integerForKey:*MEMORY[0x277D4A268]];

      if (v10)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        safari_startPageBackgroundImageFileURLForDefaultProfile = [defaultManager safari_startPageBackgroundImageFileURLForDefaultProfile];

        defaultManager2 = [MEMORY[0x277D4A820] defaultManager];
        -[WBSSafariSettingsSyncEngine scheduleCloudBackgroundImageSaveWithURL:isLightAppearance:successCompletionHandler:](self, "scheduleCloudBackgroundImageSaveWithURL:isLightAppearance:successCompletionHandler:", safari_startPageBackgroundImageFileURLForDefaultProfile, [defaultManager2 appearanceIfImageExists:1] == 1, &__block_literal_global_41);
      }

      else
      {
        [(WBSSafariSettingsSyncEngine *)self deleteBackgroundImageFromCloudKitWithCompletionHandler:&__block_literal_global_25];
      }
    }
  }
}

void __52__SafariSettingsSyncEngine__backgroundImageChanged___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 safari_privacyPreservingDescription];
      __52__SafariSettingsSyncEngine__backgroundImageChanged___block_invoke_cold_1(v4, v6, v3);
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "[StartPageBackground] Default profile image has been deleted in CloudKit.", v6, 2u);
    }
  }
}

void __52__SafariSettingsSyncEngine__backgroundImageChanged___block_invoke_38()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_215819000, v0, OS_LOG_TYPE_INFO, "[StartPageBackground] saved image for default profile in CloudKit", v1, 2u);
  }
}

- (void)_cloudBackgroundImageDidUpdateOnServer:(id)server
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D4A968] object:0];
}

- (void)_cloudBackgroundImageWasDeletedOnServer:(id)server
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D4A958] object:0];
}

- (void)_didUpdateStartPageBackgroundImageVisibility
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {
    v3 = *MEMORY[0x277D4A150];
    v13[0] = *MEMORY[0x277D4A3C0];
    v4 = *MEMORY[0x277D4A158];
    v12[0] = v3;
    v12[1] = v4;
    v5 = MEMORY[0x277CCABB0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v5 numberWithBool:{objc_msgSend(standardUserDefaults, "BOOLForKey:", *MEMORY[0x277D4A478])}];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__SafariSettingsSyncEngine__didUpdateStartPageBackgroundImageVisibility__block_invoke;
    v10[3] = &unk_2781D60B8;
    v11 = v8;
    v9 = v8;
    [(WBSSafariSettingsSyncEngine *)self saveSettingWithDictionaryRepresentation:v9 successCompletionHandler:v10];
  }
}

void __72__SafariSettingsSyncEngine__didUpdateStartPageBackgroundImageVisibility__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *MEMORY[0x277D4A3C0];
    v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D4A3C0]];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "[StartPageBackground] Set %{public}@ to %{public}@ in CloudKit successfully.", &v5, 0x16u);
  }
}

- (void)_didUpdateDefaultBrowserState
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {
    v9[0] = *MEMORY[0x277D4A150];
    v3 = SFDefaultBrowserSelectionStateKey();
    v10[0] = v3;
    v9[1] = *MEMORY[0x277D4A158];
    v4 = MEMORY[0x277CCABB0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = SFDefaultBrowserSelectionStateKey();
    v7 = [v4 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", v6)}];
    v10[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

    [(WBSSafariSettingsSyncEngine *)self saveSettingWithDictionaryRepresentation:v8 successCompletionHandler:&__block_literal_global_43];
  }
}

void __57__SafariSettingsSyncEngine__didUpdateDefaultBrowserState__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_215819000, v0, OS_LOG_TYPE_INFO, "Safari's default browser state has been updated in CloudKit", v1, 2u);
  }
}

- (void)_didUpdateStartPageVisibility:(id)visibility
{
  visibilityCopy = visibility;
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    userInfo = [visibilityCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"section"];
    v8 = [(SafariSettingsSyncEngine *)self _sectionIdentifierToSettingName:v7];
    [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277D4A150]];

    userInfo2 = [visibilityCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"isEnabled"];
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D4A158]];

    if ([dictionary count])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__SafariSettingsSyncEngine__didUpdateStartPageVisibility___block_invoke;
      v11[3] = &unk_2781D60B8;
      v12 = visibilityCopy;
      [(WBSSafariSettingsSyncEngine *)self saveSettingWithDictionaryRepresentation:dictionary successCompletionHandler:v11];
    }
  }
}

void __58__SafariSettingsSyncEngine__didUpdateStartPageVisibility___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:@"section"];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Safari's %{public}@ has been updated in CloudKit", &v5, 0xCu);
  }
}

- (void)_didUpdateStartPageSectionOrder:(id)order
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ([(SafariSettingsSyncEngine *)self syncEnabled])
  {
    v4 = *MEMORY[0x277D4A150];
    v10[0] = *MEMORY[0x277D4A400];
    v5 = *MEMORY[0x277D4A158];
    v9[0] = v4;
    v9[1] = v5;
    startPageSectionsManager = [(SafariSettingsSyncEngine *)self startPageSectionsManager];
    cloudKitStartPageSectionOrder = [startPageSectionsManager cloudKitStartPageSectionOrder];
    v10[1] = cloudKitStartPageSectionOrder;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

    [(WBSSafariSettingsSyncEngine *)self saveSettingWithDictionaryRepresentation:v8 successCompletionHandler:&__block_literal_global_52];
  }
}

void __60__SafariSettingsSyncEngine__didUpdateStartPageSectionOrder___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_215819000, v0, OS_LOG_TYPE_INFO, "Safari's Start Page order has been updated in CloudKit", v1, 2u);
  }
}

- (id)_sectionIdentifierToSettingName:(id)name
{
  v22[10] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = *MEMORY[0x277D4A3C8];
  v5 = *MEMORY[0x277D4A500];
  v21[0] = *MEMORY[0x277D4A4A8];
  v21[1] = v5;
  v6 = *MEMORY[0x277D4A3F0];
  v22[0] = v4;
  v22[1] = v6;
  v7 = *MEMORY[0x277D4A408];
  v8 = *MEMORY[0x277D4A4E0];
  v21[2] = *MEMORY[0x277D4A510];
  v21[3] = v8;
  v9 = *MEMORY[0x277D4A3E8];
  v22[2] = v7;
  v22[3] = v9;
  v10 = *MEMORY[0x277D4A3D8];
  v11 = *MEMORY[0x277D4A4B0];
  v21[4] = *MEMORY[0x277D4A4B8];
  v21[5] = v11;
  v12 = *MEMORY[0x277D4A3D0];
  v22[4] = v10;
  v22[5] = v12;
  v13 = *MEMORY[0x277D4A3E0];
  v14 = *MEMORY[0x277D4A518];
  v21[6] = *MEMORY[0x277D4A4C0];
  v21[7] = v14;
  v15 = *MEMORY[0x277D4A410];
  v22[6] = v13;
  v22[7] = v15;
  v16 = *MEMORY[0x277D4A520];
  v21[8] = *MEMORY[0x277D4A508];
  v21[9] = v16;
  v17 = *MEMORY[0x277D4A418];
  v22[8] = *MEMORY[0x277D4A3F8];
  v22[9] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:10];
  v19 = [v18 objectForKeyedSubscript:nameCopy];

  return v19;
}

- (void)_didUpdateCloudTabsOnStartPageConsent:(id)consent
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D4A150];
  v11[0] = *MEMORY[0x277D4A3A8];
  v5 = *MEMORY[0x277D4A158];
  v10[0] = v4;
  v10[1] = v5;
  v6 = MEMORY[0x277CCABB0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v6 numberWithBool:{objc_msgSend(standardUserDefaults, "BOOLForKey:", *MEMORY[0x277D4A160])}];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(WBSSafariSettingsSyncEngine *)self saveSettingWithDictionaryRepresentation:v9 successCompletionHandler:&__block_literal_global_54];
}

void __66__SafariSettingsSyncEngine__didUpdateCloudTabsOnStartPageConsent___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_215819000, v0, OS_LOG_TYPE_INFO, "Cloud tabs on start page consent has been updated in CloudKit", v1, 2u);
  }
}

- (void)_backgroundImageChanged:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "[StartPageBackground] ImageChanged Notification did not have %{public}@", &v2, 0xCu);
}

void __52__SafariSettingsSyncEngine__backgroundImageChanged___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "[StartPageBackground] Deleting image for default profile from CloudKit failed with Error: %{public}@", buf, 0xCu);
}

@end