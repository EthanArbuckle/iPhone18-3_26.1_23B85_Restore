@interface RMConfigurationsSpecifierProvider
- (RMConfigurationsSpecifierProvider)initWithAccount:(id)account rmDataProvider:(id)provider;
- (id)_bundleIDForPluginViewModel:(id)model;
- (id)_isActivatedProfileText:(id)text;
- (id)_pluginSpecifiers;
- (id)_profileSpecifiers;
- (id)specifiers;
- (id)tableSectionCellsForSpecifiersInTableView:(id)view;
- (void)_setIconForSpecifier:(id)specifier symbol:(signed __int16)symbol viewModel:(id)model;
@end

@implementation RMConfigurationsSpecifierProvider

- (RMConfigurationsSpecifierProvider)initWithAccount:(id)account rmDataProvider:(id)provider
{
  providerCopy = provider;
  v8 = *MEMORY[0x277D46100];
  v16.receiver = self;
  v16.super_class = RMConfigurationsSpecifierProvider;
  v9 = [(DMCSpecifierProvider *)&v16 initWithAccount:account reloadNotification:v8 isLocalNotification:0 reloadIfMissingRMAccount:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rmDataProvider, provider);
    v11 = objc_opt_new();
    sectionTitles = v10->_sectionTitles;
    v10->_sectionTitles = v11;

    v13 = objc_opt_new();
    sectionedSpecifiers = v10->_sectionedSpecifiers;
    v10->_sectionedSpecifiers = v13;
  }

  return v10;
}

- (id)specifiers
{
  v14.receiver = self;
  v14.super_class = RMConfigurationsSpecifierProvider;
  specifiers = [(DMCSpecifierProvider *)&v14 specifiers];

  if (specifiers)
  {
    v13.receiver = self;
    v13.super_class = RMConfigurationsSpecifierProvider;
    specifiers2 = [(DMCSpecifierProvider *)&v13 specifiers];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    sectionTitles = self->_sectionTitles;
    self->_sectionTitles = v6;

    v8 = objc_opt_new();
    sectionedSpecifiers = self->_sectionedSpecifiers;
    self->_sectionedSpecifiers = v8;

    _profileSpecifiers = [(RMConfigurationsSpecifierProvider *)self _profileSpecifiers];
    [v5 addObjectsFromArray:_profileSpecifiers];

    _pluginSpecifiers = [(RMConfigurationsSpecifierProvider *)self _pluginSpecifiers];
    [v5 addObjectsFromArray:_pluginSpecifiers];

    specifiers2 = [(DMCSpecifierProvider *)self cachedSpecifiers:v5];
  }

  return specifiers2;
}

- (id)tableSectionCellsForSpecifiersInTableView:(id)view
{
  v31 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  specifiers = [(RMConfigurationsSpecifierProvider *)self specifiers];

  if (specifiers)
  {
    v20 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(RMConfigurationsSpecifierProvider *)self sectionedSpecifiers];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v19 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = objc_opt_new();
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [DMCSpecifierProvider cellForSpecifier:*(*(&v21 + 1) + 8 * j) inTableView:viewCopy];
                [v10 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v13);
          }

          [v20 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)_profileSpecifiers
{
  v31 = *MEMORY[0x277D85DE8];
  rmDataProvider = [(RMConfigurationsSpecifierProvider *)self rmDataProvider];
  profileViewModels = [rmDataProvider profileViewModels];

  if ([profileViewModels count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(profileViewModels, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = profileViewModels;
    obj = profileViewModels;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          isInteractiveProfile = [v10 isInteractiveProfile];
          v12 = objc_opt_class();
          if (isInteractiveProfile)
          {
            v13 = sel__isActivatedProfileText_;
          }

          else
          {
            v13 = 0;
          }

          v14 = MEMORY[0x277D3FAD8];
          title = [v10 title];
          v16 = [v14 preferenceSpecifierNamed:title target:self set:0 get:v13 detail:v12 cell:2 edit:0];

          if ([v10 symbol] == 1)
          {
            [DMCIconFactory setGearIconForSpecifier:v16];
          }

          v28[0] = @"RMConfigurationViewModelKey";
          v28[1] = @"RMConfigurationDataProviderKey";
          v29[0] = v10;
          rmDataProvider2 = [(RMConfigurationsSpecifierProvider *)self rmDataProvider];
          v29[1] = rmDataProvider2;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
          [v16 setUserInfo:v18];

          [v5 addObject:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

    sectionTitles = self->_sectionTitles;
    v20 = DMCEnrollmentLocalizedString(@"DMC_CONFIGURATIONS_SECTION_PROFILES");
    [(NSMutableArray *)sectionTitles addObject:v20];

    [(NSMutableArray *)self->_sectionedSpecifiers addObject:v5];
    profileViewModels = v22;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)_pluginSpecifiers
{
  v43 = *MEMORY[0x277D85DE8];
  rmDataProvider = [(RMConfigurationsSpecifierProvider *)self rmDataProvider];
  pluginSectionViewModels = [rmDataProvider pluginSectionViewModels];

  if ([pluginSectionViewModels count])
  {
    v27 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = pluginSectionViewModels;
    obj = pluginSectionViewModels;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v28)
    {
      v26 = *v36;
      do
      {
        v5 = 0;
        do
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v5;
          v6 = *(*(&v35 + 1) + 8 * v5);
          v7 = MEMORY[0x277CBEB18];
          viewModels = [v6 viewModels];
          v9 = [v7 arrayWithCapacity:{objc_msgSend(viewModels, "count")}];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = v6;
          viewModels2 = [v6 viewModels];
          v11 = [viewModels2 countByEnumeratingWithState:&v31 objects:v41 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v32;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v32 != v13)
                {
                  objc_enumerationMutation(viewModels2);
                }

                v15 = *(*(&v31 + 1) + 8 * i);
                v16 = MEMORY[0x277D3FAD8];
                title = [v15 title];
                v18 = [v16 preferenceSpecifierNamed:title target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

                -[RMConfigurationsSpecifierProvider _setIconForSpecifier:symbol:viewModel:](self, "_setIconForSpecifier:symbol:viewModel:", v18, [v15 symbol], v15);
                v39[0] = @"RMConfigurationViewModelKey";
                v39[1] = @"RMConfigurationDataProviderKey";
                v40[0] = v15;
                rmDataProvider2 = [(RMConfigurationsSpecifierProvider *)self rmDataProvider];
                v40[1] = rmDataProvider2;
                v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
                [v18 setUserInfo:v20];

                [v9 addObject:v18];
              }

              v12 = [viewModels2 countByEnumeratingWithState:&v31 objects:v41 count:16];
            }

            while (v12);
          }

          [v27 addObjectsFromArray:v9];
          sectionTitles = self->_sectionTitles;
          heading = [v29 heading];
          [(NSMutableArray *)sectionTitles addObject:heading];

          [(NSMutableArray *)self->_sectionedSpecifiers addObject:v9];
          v5 = v30 + 1;
        }

        while (v30 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v28);
    }

    pluginSectionViewModels = v24;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  return v27;
}

- (id)_isActivatedProfileText:(id)text
{
  userInfo = [text userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"RMConfigurationViewModelKey"];
  value = [v4 value];

  return value;
}

- (void)_setIconForSpecifier:(id)specifier symbol:(signed __int16)symbol viewModel:(id)model
{
  symbolCopy = symbol;
  specifierCopy = specifier;
  modelCopy = model;
  if (symbolCopy > 2)
  {
    if (symbolCopy == 3)
    {
      [DMCIconFactory setAccountIconForSpecifier:specifierCopy];
      goto LABEL_12;
    }

    v10 = specifierCopy;
    if (symbolCopy == 4)
    {
      v11 = [(RMConfigurationsSpecifierProvider *)self _bundleIDForPluginViewModel:modelCopy];
      [DMCIconFactory setAppIcon:v11 forSpecifier:specifierCopy];

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (symbolCopy >= 2)
  {
    v10 = specifierCopy;
    if (symbolCopy == 2)
    {
      [DMCIconFactory setPasscodeIconForSpecifier:specifierCopy];
      goto LABEL_12;
    }

LABEL_10:
    v9 = v10;
    goto LABEL_11;
  }

  v9 = specifierCopy;
LABEL_11:
  [DMCIconFactory setGearIconForSpecifier:v9];
LABEL_12:
}

- (id)_bundleIDForPluginViewModel:(id)model
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  hiddenDetails = [modelCopy hiddenDetails];
  v5 = [hiddenDetails objectForKeyedSubscript:*MEMORY[0x277D460D8]];

  if (v5)
  {
    value = v5;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    detailViewModels = [modelCopy detailViewModels];
    v8 = [detailViewModels countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(detailViewModels);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          title = [v12 title];
          v14 = [title isEqualToString:@"Bundle ID"];

          if (v14)
          {
            value = [v12 value];

            goto LABEL_13;
          }
        }

        v9 = [detailViewModels countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    value = &stru_2859FB650;
  }

LABEL_13:

  return value;
}

@end