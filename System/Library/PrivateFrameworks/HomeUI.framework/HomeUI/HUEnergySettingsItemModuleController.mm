@interface HUEnergySettingsItemModuleController
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUEnergySettingsItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  gridForecastItem = [v7 gridForecastItem];
  [itemCopy isEqual:gridForecastItem];

  v9 = objc_opt_class();

  return v9;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v41.receiver = self;
  v41.super_class = HUEnergySettingsItemModuleController;
  [(HUItemModuleController *)&v41 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  connectUtilityItem = [v10 connectUtilityItem];
  v12 = [itemCopy isEqual:connectUtilityItem];

  if (v12)
  {
    defaultContentConfiguration = [cellCopy defaultContentConfiguration];
    latestResults = [itemCopy latestResults];
    v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [defaultContentConfiguration setText:v15];

    v16 = MEMORY[0x277D755B8];
    latestResults2 = [itemCopy latestResults];
    v18 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
    v19 = [v16 systemImageNamed:v18];
    [defaultContentConfiguration setImage:v19];

    latestResults3 = [itemCopy latestResults];
    v21 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    LODWORD(v18) = [v21 BOOLValue];

    if (v18)
    {
      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setColor:systemGrayColor];

      systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
      imageProperties = [defaultContentConfiguration imageProperties];
      [imageProperties setTintColor:systemGrayColor2];
    }

    else
    {
      systemGrayColor2 = [MEMORY[0x277D75348] hf_keyColor];
      imageProperties = [defaultContentConfiguration textProperties];
      [imageProperties setColor:systemGrayColor2];
    }

    v37 = *MEMORY[0x277D76C88];
    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setReservedLayoutSize:{37.0, v37}];

    [cellCopy setContentConfiguration:defaultContentConfiguration];
    [cellCopy setAccessibilityIdentifier:@"Home.HomeSettings.ConnectUtility"];
  }

  else
  {
    ekAppsItems = [v10 ekAppsItems];
    v27 = [ekAppsItems containsObject:itemCopy];

    if (v27)
    {
      defaultContentConfiguration = [cellCopy defaultContentConfiguration];
      latestResults4 = [itemCopy latestResults];
      v29 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      [defaultContentConfiguration setText:v29];
      latestResults5 = [itemCopy latestResults];
      v31 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
      [defaultContentConfiguration setImage:v31];

      imageProperties3 = [defaultContentConfiguration imageProperties];
      [imageProperties3 setMaximumSize:{37.0, 37.0}];

      imageProperties4 = [defaultContentConfiguration imageProperties];
      [imageProperties4 setCornerRadius:8.325];

      v34 = *MEMORY[0x277D76C88];
      imageProperties5 = [defaultContentConfiguration imageProperties];
      [imageProperties5 setReservedLayoutSize:{37.0, v34}];

      [cellCopy setContentConfiguration:defaultContentConfiguration];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.HomeSettings.EnergyKitApps.%@", v29];
      [cellCopy setAccessibilityIdentifier:v36];
    }

    else
    {
      objc_opt_class();
      defaultContentConfiguration = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v39 = defaultContentConfiguration;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;

      if (v40)
      {
        [v40 setDelegate:self];
      }

      else
      {
        defaultContentConfiguration = 0;
      }
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v53 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v46.receiver = self;
  v46.super_class = HUEnergySettingsItemModuleController;
  [(HUItemModuleController *)&v46 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v12 = module;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  utilityDetailsItem = [v13 utilityDetailsItem];
  v15 = [itemCopy isEqual:utilityDetailsItem];

  if (v15)
  {
    defaultContentConfiguration = [cellCopy defaultContentConfiguration];
    latestResults = [itemCopy latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [defaultContentConfiguration setText:v18];

    latestResults2 = [itemCopy latestResults];
    v20 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
    [defaultContentConfiguration setSecondaryText:v20];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setColor:secondaryLabelColor];

    latestResults3 = [itemCopy latestResults];
    v24 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
    [defaultContentConfiguration setImage:v24];

    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setMaximumSize:{37.0, 37.0}];

    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setCornerRadius:8.325];

    v27 = *MEMORY[0x277D76C88];
    imageProperties3 = [defaultContentConfiguration imageProperties];
    [imageProperties3 setReservedLayoutSize:{37.0, v27}];

    latestResults4 = [itemCopy latestResults];
    v30 = [latestResults4 objectForKeyedSubscript:@"show-connect-utility-item"];
    bOOLValue = [v30 BOOLValue];

    if (bOOLValue)
    {
      v32 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:2];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setFont:v32];

      v34 = 0;
      v35 = 0;
    }

    else
    {
      v35 = 3;
      v34 = 1;
    }

    [cellCopy setAccessoryType:v34];
    [cellCopy setSelectionStyle:v35];
    [cellCopy setContentConfiguration:defaultContentConfiguration];
    [cellCopy setAccessibilityIdentifier:@"Home.HomeSettings.UtilityDetails"];
LABEL_17:

    goto LABEL_18;
  }

  gridForecastItem = [v13 gridForecastItem];
  v37 = [itemCopy isEqual:gridForecastItem];

  if (v37)
  {
    objc_opt_class();
    defaultContentConfiguration = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v38 = defaultContentConfiguration;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    if (v39)
    {
      module2 = [(HUItemModuleController *)self module];
      home = [module2 home];
      hf_isGridForecastEnabled = [home hf_isGridForecastEnabled];

      v43 = HFLogForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy = self;
        v49 = 2112;
        v50 = v44;
        v51 = 1024;
        v52 = hf_isGridForecastEnabled;
        _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "%@:%@ Update switch cell (Show Grid Forecast? --> %{BOOL}d)", buf, 0x1Cu);
      }

      [v39 setOn:hf_isGridForecastEnabled];
      [v39 setAccessibilityIdentifier:@"Home.HomeSettings.ShowGridForecast"];
      accessoryView = [v39 accessoryView];
      [accessoryView setAccessibilityIdentifier:@"Home.HomeSettings.ShowGridForecastSwitch"];
    }

    else
    {
      defaultContentConfiguration = 0;
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)canSelectItem:(id)item
{
  latestResults = [item latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (unint64_t)didSelectItem:(id)item
{
  v35[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  connectUtilityItem = [v7 connectUtilityItem];
  v9 = [itemCopy isEqual:connectUtilityItem];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "didSelectItem: connectUtilityItem", v32, 2u);
    }

    module2 = [(HUItemModuleController *)self module];
    home = [module2 home];
    v35[0] = *MEMORY[0x277D13928];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    host = [(HUItemModuleController *)self host];
    v33 = @"OnboardingDisplayOption_OnboardingFromUserInput";
    v34 = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v16 = [HUHomeFeatureOnboardingUtilities home:home onboardFeaturesForKeyPaths:v13 presentingViewController:host usageOptions:v15];

    +[HUHomeEnergyAnalyticsHelper sendUtilityOnboardingEntryPointInSettingsTappedEvent];
  }

  utilityDetailsItem = [v7 utilityDetailsItem];
  v18 = [itemCopy isEqual:utilityDetailsItem];

  if (v18 && ([itemCopy latestResults], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"show-connect-utility-item"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, v19, (v21 & 1) == 0))
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "didSelectItem: utilityDetailsItem", v32, 2u);
    }

    v24 = [_TtC6HomeUI28UtilityDetailsViewController alloc];
    home2 = [v7 home];
    detailsDict = [v7 detailsDict];
    v27 = [(UtilityDetailsViewController *)v24 initWithHome:home2 details:detailsDict];

    v28 = [HUViewControllerPresentationRequest requestWithViewController:v27];
    v22 = 1;
    [v28 setAnimated:1];
    [v28 setPreferredPresentationType:1];
    host2 = [(HUItemModuleController *)self host];
    v30 = [host2 moduleController:self presentViewControllerForRequest:v28];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v29 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  item = [cellCopy item];

  gridForecastItem = [v10 gridForecastItem];
  v13 = [item isEqual:gridForecastItem];

  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v23 = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v15;
      v27 = 1024;
      v28 = onCopy;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ User toggled switch. Show Grid Forecast? --> %{BOOL}d", &v23, 0x1Cu);
    }

    module2 = [(HUItemModuleController *)self module];
    home = [module2 home];
    [home hf_setIsGridForecastEnabled:onCopy];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      module3 = [(HUItemModuleController *)self module];
      home2 = [module3 home];
      hf_isGridForecastEnabled = [home2 hf_isGridForecastEnabled];
      v23 = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = hf_isGridForecastEnabled;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Updated user defaults %{BOOL}d ", &v23, 0x1Cu);
    }
  }
}

@end