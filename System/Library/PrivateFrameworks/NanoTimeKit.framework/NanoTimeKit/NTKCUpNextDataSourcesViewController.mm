@interface NTKCUpNextDataSourcesViewController
- (NTKCUpNextDataSourcesViewController)init;
- (id)_dataSourceEnabled:(id)enabled;
- (id)specifiers;
- (void)_disabledDataSourcesDidChange;
- (void)_setAndResizeIconImage:(id)image forSpecifier:(id)specifier;
- (void)_setDataSourceEnabled:(id)enabled withSpecifier:(id)specifier;
- (void)dealloc;
- (void)manager:(id)manager didUpdateDataSourceEntries:(id)entries;
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
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    pdrDeviceVersion = [currentDevice pdrDeviceVersion];

    v9[0] = HIWORD(pdrDeviceVersion);
    v9[1] = BYTE1(pdrDeviceVersion);
    v9[2] = pdrDeviceVersion;
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
    canonicalRelevanceEngine = [v4 canonicalRelevanceEngine];
    dataSourceCatalog = [canonicalRelevanceEngine dataSourceCatalog];

    objc_initWeak(&location, val);
    array = [MEMORY[0x277CBEB18] array];
    firstPartyDataSourceEntries = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v7 = [firstPartyDataSourceEntries count];

    if (v7)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = NTKCCustomizationLocalizedString(@"DATA_SOURCES_TITLE", @"sources of data that are fed into the new Up Next clock face", v8);
      v11 = [v9 groupSpecifierWithID:@"FirstPartySources" name:v10];
      [array addObject:v11];
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    firstPartyDataSourceEntries2 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v13 = [firstPartyDataSourceEntries2 countByEnumeratingWithState:&v96 objects:v103 count:16];
    if (v13)
    {
      v14 = *v97;
      obj = firstPartyDataSourceEntries2;
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
          localizedName = [v16 localizedName];
          v19 = [v17 preferenceSpecifierNamed:localizedName target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v19 setProperty:v16 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          identifiers = [v16 identifiers];
          anyObject = [identifiers anyObject];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke;
          v93[3] = &unk_2787842A0;
          objc_copyWeak(&v95, &location);
          v22 = v19;
          v94 = v22;
          [dataSourceCatalog imageForDataSourceWithIdentifier:anyObject completion:v93];

          [array addObject:v22];
          objc_destroyWeak(&v95);
        }

        firstPartyDataSourceEntries2 = obj;
        v13 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
      }

      while (v13);
    }

    sportsDataSourceEntries = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v24 = [sportsDataSourceEntries count];

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

      [array addObject:v28];
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    sportsDataSourceEntries2 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v39 = [sportsDataSourceEntries2 countByEnumeratingWithState:&v89 objects:v102 count:16];
    if (v39)
    {
      v40 = *v90;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v90 != v40)
          {
            objc_enumerationMutation(sportsDataSourceEntries2);
          }

          v42 = *(*(&v89 + 1) + 8 * j);
          v43 = MEMORY[0x277D3FAD8];
          localizedName2 = [v42 localizedName];
          v45 = [v43 preferenceSpecifierNamed:localizedName2 target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v45 setProperty:v42 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          [array addObject:v45];
        }

        v39 = [sportsDataSourceEntries2 countByEnumeratingWithState:&v89 objects:v102 count:16];
      }

      while (v39);
    }

    thirdPartyDataSourceEntries = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v47 = [thirdPartyDataSourceEntries count];

    if (v47)
    {
      v49 = MEMORY[0x277D3FAD8];
      v50 = NTKCCustomizationLocalizedString(@"OTHER_DATA_SOURCES_TITLE", @"additional data that is fed into the new Up Next clock face", v48);
      v51 = [v49 groupSpecifierWithID:@"ThirdPartySources" name:v50];
      [array addObject:v51];
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    thirdPartyDataSourceEntries2 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v53 = [thirdPartyDataSourceEntries2 countByEnumeratingWithState:&v85 objects:v101 count:16];
    if (v53)
    {
      v54 = *v86;
      obja = thirdPartyDataSourceEntries2;
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
          localizedName3 = [v56 localizedName];
          v59 = [v57 preferenceSpecifierNamed:localizedName3 target:val set:sel__setDataSourceEnabled_withSpecifier_ get:sel__dataSourceEnabled_ detail:0 cell:6 edit:0];

          [v59 setProperty:v56 forKey:@"NTKSiriSettingsSpecifierDataSource"];
          identifiers2 = [v56 identifiers];
          anyObject2 = [identifiers2 anyObject];
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __49__NTKCUpNextDataSourcesViewController_specifiers__block_invoke_2;
          v82[3] = &unk_2787842A0;
          objc_copyWeak(&v84, &location);
          v62 = v59;
          v83 = v62;
          [dataSourceCatalog imageForApplicationWithIdentifier:anyObject2 completion:v82];

          [array addObject:v62];
          objc_destroyWeak(&v84);
        }

        thirdPartyDataSourceEntries2 = obja;
        v53 = [obja countByEnumeratingWithState:&v85 objects:v101 count:16];
      }

      while (v53);
    }

    firstPartyDataSourceEntries3 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager firstPartyDataSourceEntries];
    v64 = [firstPartyDataSourceEntries3 count];
    sportsDataSourceEntries3 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager sportsDataSourceEntries];
    v66 = [sportsDataSourceEntries3 count];
    thirdPartyDataSourceEntries3 = [(NTKCUpNextDataSourcesManager *)val->_dataSourcesManager thirdPartyDataSourceEntries];
    v68 = v66 + v64 + [thirdPartyDataSourceEntries3 count] == 0;

    if (v68)
    {
      v70 = MEMORY[0x277D3FAD8];
      v71 = NTKCCustomizationLocalizedString(@"LOADING_DATA_SOURCES_TITLE", @"Shown when the list of sources is still loading and as yet, unavailable", v69);
      v72 = [v70 preferenceSpecifierNamed:v71 target:val set:0 get:0 detail:0 cell:15 edit:0];
      [array addObject:v72];
    }

    v73 = [array copy];
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

- (void)manager:(id)manager didUpdateDataSourceEntries:(id)entries
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

- (void)_setDataSourceEnabled:(id)enabled withSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v6 = [specifier propertyForKey:@"NTKSiriSettingsSpecifierDataSource"];
  v7 = _NTKLoggingObjectForDomain(27, "NTKLoggingDomainUpNext");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ([enabledCopy BOOLValue])
    {
      v8 = @"Enabling";
    }

    else
    {
      v8 = @"Disabling";
    }

    localizedName = [v6 localizedName];
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = localizedName;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[Settings] %@ data source %@", &v16, 0x16u);
  }

  v10 = +[NTKSiriDefaults sharedInstance];
  disabledDataSources = [v10 disabledDataSources];
  v12 = [disabledDataSources mutableCopy];

  LODWORD(disabledDataSources) = [enabledCopy BOOLValue];
  identifiers = [v6 identifiers];
  if (disabledDataSources)
  {
    [v12 minusSet:identifiers];
  }

  else
  {
    [v12 unionSet:identifiers];
  }

  v14 = +[NTKSiriDefaults sharedInstance];
  v15 = [v12 copy];
  [v14 setDisabledDataSources:v15];
}

- (id)_dataSourceEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:@"NTKSiriSettingsSpecifierDataSource"];
  v4 = MEMORY[0x277CCABB0];
  v5 = +[NTKSiriDefaults sharedInstance];
  disabledDataSources = [v5 disabledDataSources];
  identifiers = [v3 identifiers];
  v8 = [v4 numberWithInt:{objc_msgSend(disabledDataSources, "intersectsSet:", identifiers) ^ 1}];

  return v8;
}

- (void)_setAndResizeIconImage:(id)image forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  image = [image image];
  [image size];
  if (v8 > 29.0 || ([image size], v9 > 29.0))
  {
    [image size];
    v11 = v10;
    [image size];
    v13 = v12;
    [image size];
    if (v11 <= v13)
    {
      v14 = v15;
    }

    v16 = 29.0 / v14;
    v17 = objc_alloc(MEMORY[0x277D75560]);
    defaultFormat = [MEMORY[0x277D75568] defaultFormat];
    v19 = [v17 initWithSize:defaultFormat format:{29.0, 29.0}];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__NTKCUpNextDataSourcesViewController__setAndResizeIconImage_forSpecifier___block_invoke;
    v23[3] = &unk_2787842C8;
    v24 = image;
    v25 = v16;
    image = [v19 imageWithActions:v23];
  }

  [specifierCopy setProperty:image forKey:*MEMORY[0x277D3FFC0]];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__NTKCUpNextDataSourcesViewController__setAndResizeIconImage_forSpecifier___block_invoke_2;
  v21[3] = &unk_27877E438;
  v21[4] = self;
  v22 = specifierCopy;
  v20 = specifierCopy;
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