@interface HUNetworkConfigurationSettingsModuleController
- (BOOL)canSelectItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUNetworkConfigurationSettingsModuleController)initWithModule:(id)a3;
- (NSString)description;
- (unint64_t)didSelectItem:(id)a3;
- (void)_presentNetworkConfigurationSettingsMismatchViewController;
- (void)tappableTextView:(id)a3 tappedAtIndex:(unint64_t)a4 withAttributes:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUNetworkConfigurationSettingsModuleController

- (HUNetworkConfigurationSettingsModuleController)initWithModule:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HUNetworkConfigurationSettingsModuleController;
  v5 = [(HUItemModuleController *)&v13 initWithModule:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = v4;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7;
      if (v8)
      {
        goto LABEL_9;
      }

      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
    }

    v9 = 0;
LABEL_9:

    [v9 setNetworkConfigurationSettingsModuleDelegate:v5];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 group];
  v6 = [v5 hf_title];
  v7 = [v3 stringWithFormat:@"<HUNetworkConfigurationSettingsModuleController %p (%@)>", self, v6];

  return v7;
}

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 isItemNetworkProtectionModeOptionItem:v4];

  if (v6)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = HUNetworkConfigurationSettingsModuleController;
  [(HUItemModuleController *)&v31 updateCell:v8 forItem:v9 animated:v5];
  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 isItemNetworkProtectionModeOptionItem:v9];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = objc_opt_class();
  v13 = v8;
  if (!v13)
  {
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

LABEL_8:
    v15 = 0;
  }

  v18 = [v9 latestResults];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v15 setTitleText:v19];

  v20 = [v9 latestResults];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v15 setDescriptionText:v21];

  v22 = [v9 latestResults];
  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  [v15 setChecked:{objc_msgSend(v23, "BOOLValue")}];

  if ([v15 checked])
  {
    v24 = [v9 latestResults];
    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    if ([v25 BOOLValue])
    {
      v26 = [(HUItemModuleController *)self module];
      [v15 setAnimating:{objc_msgSend(v26, "isUpdatingProtectionMode")}];
    }

    else
    {
      [v15 setAnimating:0];
    }
  }

  else
  {
    [v15 setAnimating:0];
  }

  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(HUItemModuleController *)self module];
    v29 = [v28 group];
    v30 = [v29 targetProtectionMode];
    *buf = 138412802;
    v33 = self;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = v30;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@: %@ (target mode %lu)", buf, 0x20u);
  }

LABEL_18:
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 isItemNetworkProtectionModeOptionItem:v4];

  return v6;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 isItemNetworkProtectionModeOptionItem:v4];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = v4;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v8;
      if (v9)
      {
        goto LABEL_9;
      }

      v11 = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];
    }

    v10 = 0;
LABEL_9:

    v13 = [(HUItemModuleController *)self module];
    v14 = [v13 updateProtectionMode:{objc_msgSend(v10, "targetProtectionModeOption")}];
  }

  return 0;
}

- (void)tappableTextView:(id)a3 tappedAtIndex:(unint64_t)a4 withAttributes:(id)a5
{
  v6 = [a5 objectForKeyedSubscript:{@"HUNetworkConfigurationSettingsMismatchLinkAttributeName", a4}];
  v7 = [v6 BOOLValue];

  if (v7)
  {

    [(HUNetworkConfigurationSettingsModuleController *)self _presentNetworkConfigurationSettingsMismatchViewController];
  }
}

- (void)_presentNetworkConfigurationSettingsMismatchViewController
{
  v3 = objc_alloc(MEMORY[0x277D757A0]);
  v4 = [HUNetworkConfigurationSettingsMismatchViewController alloc];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 group];
  v8 = [v7 hf_networkConfigurationProfiles];
  v9 = [v5 setWithArray:v8];
  v10 = [(HUNetworkConfigurationSettingsMismatchViewController *)v4 initWithProfiles:v9];
  v14 = [v3 initWithRootViewController:v10];

  v11 = [HUViewControllerPresentationRequest requestWithViewController:v14];
  [v11 setPreferredPresentationType:0];
  [v11 setAnimated:1];
  v12 = [(HUItemModuleController *)self host];
  v13 = [v12 moduleController:self presentViewControllerForRequest:v11];
}

@end