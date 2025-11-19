@interface NTKCUpNextDataSourcesViewController
- (NTKCUpNextDataSourcesViewController)init;
- (id)_dataSourceEnabled:(id)a3;
- (id)specifiers;
- (void)_disabledDataSourcesDidChange;
- (void)_setAndResizeIconImage:(id)a3 forSpecifier:(id)a4;
- (void)_setDataSourceEnabled:(id)a3 withSpecifier:(id)a4;
- (void)dealloc;
- (void)manager:(id)a3 didUpdateDataSourceEntries:(id)a4;
@end

@implementation NTKCUpNextDataSourcesViewController

- (NTKCUpNextDataSourcesViewController)init
{
  v10.receiver = self;
  v10.super_class = NTKCUpNextDataSourcesViewController;
  v2 = [(NTKCUpNextDataSourcesViewController *)&v10 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _disabledDataSourcesDidChange, @"com.apple.NanoTimeKit.NPS.NTKSiriDefaultsDisabledDataSourcesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = [MEMORY[0x277CBBAE8] currentDevice];
    v5 = [v4 pdrDeviceVersion];

    v9[0] = HIWORD(v5);
    v9[1] = BYTE1(v5);
    v9[2] = v5;
    v6 = [[NTKCUpNextDataSourcesManager alloc] initWatchVersion:v9];
    dataSourcesManager = v2->_dataSourcesManager;
    v2->_dataSourcesManager = v6;

    [(NTKCUpNextDataSourcesManager *)v2->_dataSourcesManager setFirstPartyIdentifiersDelegate:v2];
    [(NTKCUpNextDataSourcesManager *)v2->_dataSourcesManager setSportsIdentifiersDelegate:v2];
    [(NTKCUpNextDataSourcesManager *)v2->_dataSourcesManager setThirdPartyIdentifiersDelegate:v2];
    [(NTKCUpNextDataSourcesManager *)v2->_dataSourcesManager fetchIdentifiers];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = NTKCUpNextDataSourcesViewController;
  [(NTKCUpNextDataSourcesViewController *)&v4 dealloc];
}

- (id)specifiers
{
  v104 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v76 = *MEMORY[0x277D3FC48];
    val = self;
    v4 = +[NTKRelevanceEngineCache sharedCache];
    v5 = [v4 canonicalRelevanceEngine];
    v79 = [v5 dataSourceCatalog];

    objc_initWeak(&location, val);
    v80 = [MEMORY[0x277CBEB18] array];
    v6 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v7 = [v6 count];

    if (v7)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = NTKCCustomizationLocalizedString(@"DATA_SOURCES_TITLE", @"sources of data that are fed into the new Up Next clock face", v8);
      v11 = [v9 groupSpecifierWithID:@"FirstPartySources" name:v10];
      [v80 addObject:v11];
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v12 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v13 = [v12 countByEnumeratingWithState:&v96 objects:v103 count:16];
    if (v13)
    {
      v14 = *v97;
      obj = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v97 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v96 + 1) + 8 * i);
          v17 = MEMORY[0x277D3FAD8];
          v18 = [v16 localizedName];
          v19 = [v17 preferenceSpecifierNamed:v18 target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v19 setProperty:v16 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          v20 = [v16 identifiers];
          v21 = [v20 anyObject];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke;
          v93[3] = &unk_2787842A0;
          objc_copyWeak(&v95, &location);
          v22 = v19;
          v94 = v22;
          [v79 imageForDataSourceWithIdentifier:v21 completion:v93];

          [v80 addObject:v22];
          objc_destroyWeak(&v95);
        }

        v12 = obj;
        v13 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
      }

      while (v13);
    }

    v23 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v24 = [v23 count];

    if (v24)
    {
      v26 = MEMORY[0x277D3FAD8];
      v27 = NTKCCustomizationLocalizedString(@"SPORTS_DATA_SOURCE_TITLE", @"Favorite sports teams that show up Up Next clock face", v25);
      v28 = [v26 groupSpecifierWithID:@"SportsPartySources" name:v27];

      v30 = NTKCCustomizationLocalizedString(@"SPORTS_HELPER_TEXT", @"You can select your favorite teams in the TV app.", v29);
      v31 = [v30 mutableCopy];

      [v31 appendString:@" "];
      v33 = NTKCCustomizationLocalizedString(@"SPORTS_OPEN_TITLE", @"Open TV app", v32);
      [v31 appendString:v33];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      [v28 setProperty:v35 forKey:*MEMORY[0x277D3FF48]];

      [v28 setProperty:v31 forKey:*MEMORY[0x277D3FF70]];
      v106.location = [v31 rangeOfString:v33];
      v36 = NSStringFromRange(v106);
      [v28 setProperty:v36 forKey:*MEMORY[0x277D3FF58]];

      v37 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.tv://tv.apple.com/sportsfavorites"];
      [v28 setProperty:v37 forKey:*MEMORY[0x277D3FF78]];

      [v80 addObject:v28];
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v38 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v39 = [v38 countByEnumeratingWithState:&v89 objects:v102 count:16];
    if (v39)
    {
      v40 = *v90;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v90 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v89 + 1) + 8 * j);
          v43 = MEMORY[0x277D3FAD8];
          v44 = [v42 localizedName];
          v45 = [v43 preferenceSpecifierNamed:v44 target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v45 setProperty:v42 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          [v80 addObject:v45];
        }

        v39 = [v38 countByEnumeratingWithState:&v89 objects:v102 count:16];
      }

      while (v39);
    }

    v46 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v47 = [v46 count];

    if (v47)
    {
      v49 = MEMORY[0x277D3FAD8];
      v50 = NTKCCustomizationLocalizedString(@"OTHER_DATA_SOURCES_TITLE", @"additional data that is fed into the new Up Next clock face", v48);
      v51 = [v49 groupSpecifierWithID:@"ThirdPartySources" name:v50];
      [v80 addObject:v51];
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v52 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v53 = [v52 countByEnumeratingWithState:&v85 objects:v101 count:16];
    if (v53)
    {
      v54 = *v86;
      obja = v52;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v86 != v54)
          {
            objc_enumerationMutation(obja);
          }

          v56 = *(*(&v85 + 1) + 8 * k);
          v57 = MEMORY[0x277D3FAD8];
          v58 = [v56 localizedName];
          v59 = [v57 preferenceSpecifierNamed:v58 target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v59 setProperty:v56 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          v60 = [v56 identifiers];
          v61 = [v60 anyObject];
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke_2;
          v82[3] = &unk_2787842A0;
          objc_copyWeak(&v84, &location);
          v62 = v59;
          v83 = v62;
          [v79 imageForApplicationWithIdentifier:v61 completion:v82];

          [v80 addObject:v62];
          objc_destroyWeak(&v84);
        }

        v52 = obja;
        v53 = [obja countByEnumeratingWithState:&v85 objects:v101 count:16];
      }

      while (v53);
    }

    v63 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v64 = [v63 count];
    v65 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v66 = [v65 count];
    v67 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v68 = v66 + v64 + [v67 count] == 0;

    if (v68)
    {
      v70 = MEMORY[0x277D3FAD8];
      v71 = NTKCCustomizationLocalizedString(@"LOADING_DATA_SOURCES_TITLE", @"Shown when the list of sources is still loading and as yet, unavailable", v69);
      v72 = [v70 preferenceSpecifierNamed:v71 target:val set:0 get:0 detail:0 cell:15 edit:0];
      [v80 addObject:v72];
    }

    v73 = [v80 copy];
    v74 = *(&val->super.super.super.super.super.isa + v76);
    *(&val->super.super.super.super.super.isa + v76) = v73;

    objc_destroyWeak(&location);
    v3 = *(&val->super.super.super.super.super.isa + v76);
  }

  return v3;
}

void __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setAndResizeIconImage:v3 forSpecifier:*(a1 + 32)];
}

void __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setAndResizeIconImage:v3 forSpecifier:*(a1 + 32)];
}

- (void)manager:(id)a3 didUpdateDataSourceEntries:(id)a4
{
  v5 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[Settings] Data source manager did update", v6, 2u);
  }

  [(NTKCUpNextDataSourcesViewController *)self reloadSpecifiers];
}

- (void)_disabledDataSourcesDidChange
{
  v3 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Settings did change. Reloading.", v4, 2u);
  }

  [(NTKCUpNextDataSourcesViewController *)self reloadSpecifiers];
}

- (void)_setDataSourceEnabled:(id)a3 withSpecifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"NTKSiriSettingsSpecifierDataSource"];
  v7 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ([v5 BOOLValue])
    {
      v8 = @"Enabling";
    }

    else
    {
      v8 = @"Disabling";
    }

    v9 = [v6 localizedName];
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[Settings] %@ data source %@", &v16, 0x16u);
  }

  v10 = +[NTKSiriDefaults sharedInstance];
  v11 = [v10 disabledDataSources];
  v12 = [v11 mutableCopy];

  LODWORD(v11) = [v5 BOOLValue];
  v13 = [v6 identifiers];
  if (v11)
  {
    [v12 minusSet:v13];
  }

  else
  {
    [v12 unionSet:v13];
  }

  v14 = +[NTKSiriDefaults sharedInstance];
  v15 = [v12 copy];
  [v14 setDisabledDataSources:v15];
}

- (id)_dataSourceEnabled:(id)a3
{
  v3 = [a3 propertyForKey:@"NTKSiriSettingsSpecifierDataSource"];
  v4 = MEMORY[0x277CCABB0];
  v5 = +[NTKSiriDefaults sharedInstance];
  v6 = [v5 disabledDataSources];
  v7 = [v3 identifiers];
  v8 = [v4 numberWithInt:{objc_msgSend(v6, "intersectsSet:", v7) ^ 1}];

  return v8;
}

- (void)_setAndResizeIconImage:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 image];
  [v7 size];
  if (v8 > 29.0 || ([v7 size], v9 > 29.0))
  {
    [v7 size];
    v11 = v10;
    [v7 size];
    v13 = v12;
    [v7 size];
    if (v11 <= v13)
    {
      v14 = v15;
    }

    v16 = 29.0 / v14;
    v17 = objc_alloc(MEMORY[0x277D75560]);
    v18 = [MEMORY[0x277D75568] defaultFormat];
    v19 = [v17 initWithSize:v18 format:{29.0, 29.0}];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__NTKCUpNextDataSourcesViewController__setAndResizeIconImage_forSpecifier___block_invoke;
    v23[3] = &unk_2787842C8;
    v24 = v7;
    v25 = v16;
    v7 = [v19 imageWithActions:v23];
  }

  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FFC0]];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__NTKCUpNextDataSourcesViewController__setAndResizeIconImage_forSpecifier___block_invoke_2;
  v21[3] = &unk_27877E438;
  v21[4] = self;
  v22 = v6;
  v20 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v21);
}

uint64_t __75__NTKCUpNextDataSourcesViewController__setAndResizeIconImage_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 size];
  v5 = v3 * v4;
  v6 = *(a1 + 40);
  [*(a1 + 32) size];

  return [v2 drawInRect:{0.0, 0.0, v5, v6 * v7}];
}

@end