@interface HUNetworkConfigurationSettingsModuleController
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUNetworkConfigurationSettingsModuleController)initWithModule:(id)module;
- (NSString)description;
- (unint64_t)didSelectItem:(id)item;
- (void)_presentNetworkConfigurationSettingsMismatchViewController;
- (void)tappableTextView:(id)view tappedAtIndex:(unint64_t)index withAttributes:(id)attributes;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUNetworkConfigurationSettingsModuleController

- (HUNetworkConfigurationSettingsModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v13.receiver = self;
  v13.super_class = HUNetworkConfigurationSettingsModuleController;
  v5 = [(HUItemModuleController *)&v13 initWithModule:moduleCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = moduleCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
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
  module = [(HUItemModuleController *)self module];
  group = [module group];
  hf_title = [group hf_title];
  v7 = [v3 stringWithFormat:@"<HUNetworkConfigurationSettingsModuleController %p (%@)>", self, hf_title];

  return v7;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkProtectionModeOptionItem:itemCopy];

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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v38 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v31.receiver = self;
  v31.super_class = HUNetworkConfigurationSettingsModuleController;
  [(HUItemModuleController *)&v31 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  module = [(HUItemModuleController *)self module];
  v11 = [module isItemNetworkProtectionModeOptionItem:itemCopy];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = objc_opt_class();
  v13 = cellCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

LABEL_8:
    v15 = 0;
  }

  latestResults = [itemCopy latestResults];
  v19 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v15 setTitleText:v19];

  latestResults2 = [itemCopy latestResults];
  v21 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v15 setDescriptionText:v21];

  latestResults3 = [itemCopy latestResults];
  v23 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  [v15 setChecked:{objc_msgSend(v23, "BOOLValue")}];

  if ([v15 checked])
  {
    latestResults4 = [itemCopy latestResults];
    v25 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    if ([v25 BOOLValue])
    {
      module2 = [(HUItemModuleController *)self module];
      [v15 setAnimating:{objc_msgSend(module2, "isUpdatingProtectionMode")}];
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
    module3 = [(HUItemModuleController *)self module];
    group = [module3 group];
    targetProtectionMode = [group targetProtectionMode];
    *buf = 138412802;
    selfCopy = self;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = targetProtectionMode;
    _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@: %@ (target mode %lu)", buf, 0x20u);
  }

LABEL_18:
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkProtectionModeOptionItem:itemCopy];

  return v6;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module isItemNetworkProtectionModeOptionItem:itemCopy];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = itemCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];
    }

    v10 = 0;
LABEL_9:

    module2 = [(HUItemModuleController *)self module];
    v14 = [module2 updateProtectionMode:{objc_msgSend(v10, "targetProtectionModeOption")}];
  }

  return 0;
}

- (void)tappableTextView:(id)view tappedAtIndex:(unint64_t)index withAttributes:(id)attributes
{
  v6 = [attributes objectForKeyedSubscript:{@"HUNetworkConfigurationSettingsMismatchLinkAttributeName", index}];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {

    [(HUNetworkConfigurationSettingsModuleController *)self _presentNetworkConfigurationSettingsMismatchViewController];
  }
}

- (void)_presentNetworkConfigurationSettingsMismatchViewController
{
  v3 = objc_alloc(MEMORY[0x277D757A0]);
  v4 = [HUNetworkConfigurationSettingsMismatchViewController alloc];
  v5 = MEMORY[0x277CBEB98];
  module = [(HUItemModuleController *)self module];
  group = [module group];
  hf_networkConfigurationProfiles = [group hf_networkConfigurationProfiles];
  v9 = [v5 setWithArray:hf_networkConfigurationProfiles];
  v10 = [(HUNetworkConfigurationSettingsMismatchViewController *)v4 initWithProfiles:v9];
  v14 = [v3 initWithRootViewController:v10];

  v11 = [HUViewControllerPresentationRequest requestWithViewController:v14];
  [v11 setPreferredPresentationType:0];
  [v11 setAnimated:1];
  host = [(HUItemModuleController *)self host];
  v13 = [host moduleController:self presentViewControllerForRequest:v11];
}

@end