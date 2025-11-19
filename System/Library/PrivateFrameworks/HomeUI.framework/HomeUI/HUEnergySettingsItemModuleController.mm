@interface HUEnergySettingsItemModuleController
- (BOOL)canSelectItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUEnergySettingsItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 gridForecastItem];
  [v4 isEqual:v8];

  v9 = objc_opt_class();

  return v9;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = HUEnergySettingsItemModuleController;
  [(HUItemModuleController *)&v41 setupCell:v6 forItem:v7];
  objc_opt_class();
  v8 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 connectUtilityItem];
  v12 = [v7 isEqual:v11];

  if (v12)
  {
    v13 = [v6 defaultContentConfiguration];
    v14 = [v7 latestResults];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v13 setText:v15];

    v16 = MEMORY[0x277D755B8];
    v17 = [v7 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
    v19 = [v16 systemImageNamed:v18];
    [v13 setImage:v19];

    v20 = [v7 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    LODWORD(v18) = [v21 BOOLValue];

    if (v18)
    {
      v22 = [MEMORY[0x277D75348] systemGrayColor];
      v23 = [v13 textProperties];
      [v23 setColor:v22];

      v24 = [MEMORY[0x277D75348] systemGrayColor];
      v25 = [v13 imageProperties];
      [v25 setTintColor:v24];
    }

    else
    {
      v24 = [MEMORY[0x277D75348] hf_keyColor];
      v25 = [v13 textProperties];
      [v25 setColor:v24];
    }

    v37 = *MEMORY[0x277D76C88];
    v38 = [v13 imageProperties];
    [v38 setReservedLayoutSize:{37.0, v37}];

    [v6 setContentConfiguration:v13];
    [v6 setAccessibilityIdentifier:@"Home.HomeSettings.ConnectUtility"];
  }

  else
  {
    v26 = [v10 ekAppsItems];
    v27 = [v26 containsObject:v7];

    if (v27)
    {
      v13 = [v6 defaultContentConfiguration];
      v28 = [v7 latestResults];
      v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      [v13 setText:v29];
      v30 = [v7 latestResults];
      v31 = [v30 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
      [v13 setImage:v31];

      v32 = [v13 imageProperties];
      [v32 setMaximumSize:{37.0, 37.0}];

      v33 = [v13 imageProperties];
      [v33 setCornerRadius:8.325];

      v34 = *MEMORY[0x277D76C88];
      v35 = [v13 imageProperties];
      [v35 setReservedLayoutSize:{37.0, v34}];

      [v6 setContentConfiguration:v13];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.HomeSettings.EnergyKitApps.%@", v29];
      [v6 setAccessibilityIdentifier:v36];
    }

    else
    {
      objc_opt_class();
      v13 = v6;
      if (objc_opt_isKindOfClass())
      {
        v39 = v13;
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
        v13 = 0;
      }
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v46.receiver = self;
  v46.super_class = HUEnergySettingsItemModuleController;
  [(HUItemModuleController *)&v46 updateCell:v9 forItem:v10 animated:v5];
  objc_opt_class();
  v11 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 utilityDetailsItem];
  v15 = [v10 isEqual:v14];

  if (v15)
  {
    v16 = [v9 defaultContentConfiguration];
    v17 = [v10 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v16 setText:v18];

    v19 = [v10 latestResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
    [v16 setSecondaryText:v20];

    v21 = [MEMORY[0x277D75348] secondaryLabelColor];
    v22 = [v16 secondaryTextProperties];
    [v22 setColor:v21];

    v23 = [v10 latestResults];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
    [v16 setImage:v24];

    v25 = [v16 imageProperties];
    [v25 setMaximumSize:{37.0, 37.0}];

    v26 = [v16 imageProperties];
    [v26 setCornerRadius:8.325];

    v27 = *MEMORY[0x277D76C88];
    v28 = [v16 imageProperties];
    [v28 setReservedLayoutSize:{37.0, v27}];

    v29 = [v10 latestResults];
    v30 = [v29 objectForKeyedSubscript:@"show-connect-utility-item"];
    v31 = [v30 BOOLValue];

    if (v31)
    {
      v32 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:2];
      v33 = [v16 textProperties];
      [v33 setFont:v32];

      v34 = 0;
      v35 = 0;
    }

    else
    {
      v35 = 3;
      v34 = 1;
    }

    [v9 setAccessoryType:v34];
    [v9 setSelectionStyle:v35];
    [v9 setContentConfiguration:v16];
    [v9 setAccessibilityIdentifier:@"Home.HomeSettings.UtilityDetails"];
LABEL_17:

    goto LABEL_18;
  }

  v36 = [v13 gridForecastItem];
  v37 = [v10 isEqual:v36];

  if (v37)
  {
    objc_opt_class();
    v16 = v9;
    if (objc_opt_isKindOfClass())
    {
      v38 = v16;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    if (v39)
    {
      v40 = [(HUItemModuleController *)self module];
      v41 = [v40 home];
      v42 = [v41 hf_isGridForecastEnabled];

      v43 = HFLogForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = NSStringFromSelector(a2);
        *buf = 138412802;
        v48 = self;
        v49 = 2112;
        v50 = v44;
        v51 = 1024;
        v52 = v42;
        _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "%@:%@ Update switch cell (Show Grid Forecast? --> %{BOOL}d)", buf, 0x1Cu);
      }

      [v39 setOn:v42];
      [v39 setAccessibilityIdentifier:@"Home.HomeSettings.ShowGridForecast"];
      v45 = [v39 accessoryView];
      [v45 setAccessibilityIdentifier:@"Home.HomeSettings.ShowGridForecastSwitch"];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)canSelectItem:(id)a3
{
  v3 = [a3 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  v5 = [v4 BOOLValue];

  return v5 ^ 1;
}

- (unint64_t)didSelectItem:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 connectUtilityItem];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "didSelectItem: connectUtilityItem", v32, 2u);
    }

    v11 = [(HUItemModuleController *)self module];
    v12 = [v11 home];
    v35[0] = *MEMORY[0x277D13928];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v14 = [(HUItemModuleController *)self host];
    v33 = @"OnboardingDisplayOption_OnboardingFromUserInput";
    v34 = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v16 = [HUHomeFeatureOnboardingUtilities home:v12 onboardFeaturesForKeyPaths:v13 presentingViewController:v14 usageOptions:v15];

    +[HUHomeEnergyAnalyticsHelper sendUtilityOnboardingEntryPointInSettingsTappedEvent];
  }

  v17 = [v7 utilityDetailsItem];
  v18 = [v4 isEqual:v17];

  if (v18 && ([v4 latestResults], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"show-connect-utility-item"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, v19, (v21 & 1) == 0))
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "didSelectItem: utilityDetailsItem", v32, 2u);
    }

    v24 = [_TtC6HomeUI28UtilityDetailsViewController alloc];
    v25 = [v7 home];
    v26 = [v7 detailsDict];
    v27 = [(UtilityDetailsViewController *)v24 initWithHome:v25 details:v26];

    v28 = [HUViewControllerPresentationRequest requestWithViewController:v27];
    v22 = 1;
    [v28 setAnimated:1];
    [v28 setPreferredPresentationType:1];
    v29 = [(HUItemModuleController *)self host];
    v30 = [v29 moduleController:self presentViewControllerForRequest:v28];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  v8 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 item];

  v12 = [v10 gridForecastItem];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = self;
      v25 = 2112;
      v26 = v15;
      v27 = 1024;
      v28 = v4;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ User toggled switch. Show Grid Forecast? --> %{BOOL}d", &v23, 0x1Cu);
    }

    v16 = [(HUItemModuleController *)self module];
    v17 = [v16 home];
    [v17 hf_setIsGridForecastEnabled:v4];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [(HUItemModuleController *)self module];
      v21 = [v20 home];
      v22 = [v21 hf_isGridForecastEnabled];
      v23 = 138412802;
      v24 = self;
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = v22;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Updated user defaults %{BOOL}d ", &v23, 0x1Cu);
    }
  }
}

@end