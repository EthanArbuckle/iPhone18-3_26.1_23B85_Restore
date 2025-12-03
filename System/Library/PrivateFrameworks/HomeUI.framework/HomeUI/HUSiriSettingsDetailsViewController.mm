@interface HUSiriSettingsDetailsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUSiriSettingsDetailsViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (id)itemModuleControllers;
- (void)_preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion;
- (void)_updateSwitchSettingItem:(id)item forCell:(id)cell withValue:(BOOL)value;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUSiriSettingsDetailsViewController

- (HUSiriSettingsDetailsViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  v6 = [[HUSiriSettingsDetailsItemManager alloc] initWithDelegate:self module:moduleCopy];
  [(HUSiriSettingsDetailsViewController *)self setSiriSettingsDetailsItemManager:v6];

  siriSettingsDetailsItemManager = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v16.receiver = self;
  v16.super_class = HUSiriSettingsDetailsViewController;
  v8 = [(HUItemTableViewController *)&v16 initWithItemManager:siriSettingsDetailsItemManager tableViewStyle:1];

  if (v8)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v8->_cellToItemMap;
    v8->_cellToItemMap = weakToWeakObjectsMapTable;

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
    settingGroupKeyPath = [moduleCopy settingGroupKeyPath];
    v14 = [accessorySettingsDataSource hf_localizedTitleForKeyPath:settingGroupKeyPath];
    [(HUSiriSettingsDetailsViewController *)v8 setTitle:v14];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  siriSettingsDetailsItemManager = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  homeKitAccessorySettingsModules = [siriSettingsDetailsItemManager homeKitAccessorySettingsModules];

  if (homeKitAccessorySettingsModules)
  {
    v32 = v3;
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      siriSettingsDetailsItemManager2 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
      homeKitAccessorySettingsModules2 = [siriSettingsDetailsItemManager2 homeKitAccessorySettingsModules];
      *buf = 138412290;
      v38 = homeKitAccessorySettingsModules2;
      _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "Creating Item Module Controllers from  homeKitAccessorySettingsModules = [%@]", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    siriSettingsDetailsItemManager3 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
    homeKitAccessorySettingsModules3 = [siriSettingsDetailsItemManager3 homeKitAccessorySettingsModules];

    v9 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(homeKitAccessorySettingsModules3);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          objc_opt_class();
          v14 = v13;
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            moduleToModuleControllerMap = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
            v18 = [moduleToModuleControllerMap objectForKey:v16];

            if (!v18)
            {
              v19 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v16 delegate:self];
              moduleToModuleControllerMap2 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];

              if (!moduleToModuleControllerMap2)
              {
                strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                [(HUSiriSettingsDetailsViewController *)self setModuleToModuleControllerMap:strongToStrongObjectsMapTable];
              }

              v22 = HFLogForCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v38 = v19;
                v39 = 2112;
                v40 = v16;
                _os_log_debug_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEBUG, "Setting moduleController = [%@] for Module = [%@] in moduleToModuleControllerMap", buf, 0x16u);
              }

              moduleToModuleControllerMap3 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
              [moduleToModuleControllerMap3 setObject:v19 forKey:v16];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v10);
    }

    moduleToModuleControllerMap4 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
    objectEnumerator = [moduleToModuleControllerMap4 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    v3 = v32;
    if (nextObject)
    {
      v27 = nextObject;
      do
      {
        [v32 na_safeAddObject:v27];
        nextObject2 = [objectEnumerator nextObject];

        v27 = nextObject2;
      }

      while (nextObject2);
    }
  }

  return v3;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 userInterfaceType] != 8 && objc_msgSend(v7, "userInterfaceType") && objc_msgSend(v7, "userInterfaceType") != 4)
  {
    [v7 userInterfaceType];
  }

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  v9 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v21 = v9;
  if (objc_opt_isKindOfClass())
  {
    v12 = v21;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  settingDict = [v16 settingDict];
  settingKeyPath = [v16 settingKeyPath];
  v19 = [settingDict objectForKeyedSubscript:settingKeyPath];

  if (v11)
  {
    [v11 setDelegate:self];
  }

  else if (v13)
  {
    [v13 setHideIcon:1];
  }

  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D14160]];
  [v21 setAccessoryType:v20 != 0];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v27.receiver = self;
  v27.super_class = HUSiriSettingsDetailsViewController;
  [(HUItemTableViewController *)&v27 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  objc_opt_class();
  v12 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  objc_opt_class();
  v18 = v15;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v17)
  {
    settingValue = [v14 settingValue];
    [v17 setOn:{objc_msgSend(settingValue, "BOOLValue")}];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_13;
    }

    settingDict = [v14 settingDict];
    settingKeyPath = [v14 settingKeyPath];
    settingValue = [settingDict objectForKeyedSubscript:settingKeyPath];

    v24 = [settingValue objectForKeyedSubscript:*MEMORY[0x277D13838]];
    LOBYTE(settingKeyPath) = [v24 BOOLValue];

    if (settingKeyPath)
    {
      latestResults = [v12 latestResults];
      v26 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v20 setValueText:v26];
    }

    else
    {
      [v20 setValueText:0];
    }
  }

LABEL_13:
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUSiriSettingsDetailsViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke;
  v16[3] = &unk_277DBDD10;
  v17 = cellCopy;
  v18 = v13;
  v20 = onCopy;
  selfCopy = self;
  v14 = v13;
  v15 = cellCopy;
  [(HUSiriSettingsDetailsViewController *)self _preflightCheckToAllowSwitchingForSettingItem:v14 changingToOn:onCopy withCompletion:v16];
}

void __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) '%@/%@' running preflight check before changing...", buf, 0x16u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke_14;
    v15[3] = &unk_277DBDCE8;
    v7 = *(a1 + 40);
    v19 = *(a1 + 56);
    v8 = *(a1 + 48);
    v16 = v7;
    v17 = v8;
    v18 = *(a1 + 32);
    v9 = [v3 addSuccessBlock:v15];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke_31;
    v11[3] = &unk_277DBC4D8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v10 = [v3 addFailureBlock:v11];
  }
}

void __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke_14(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if ([v3 BOOLValue])
    {
      v6 = @"passed";
    }

    else
    {
      v6 = @"failed";
    }

    v7 = [v3 BOOLValue];
    v8 = @"NOT CHANGING";
    v9 = *(a1 + 56);
    if (v7)
    {
      v8 = @"CHANGING";
    }

    v10 = @"OFF";
    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    if (v9)
    {
      v10 = @"ON";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) preflight returned check %@, %@ %@ to '%@'", &v11, 0x2Au);
  }

  if ([v3 BOOLValue])
  {
    [*(a1 + 40) _updateSwitchSettingItem:*(a1 + 32) forCell:*(a1 + 48) withValue:*(a1 + 56)];
  }
}

uint64_t __60__HUSiriSettingsDetailsViewController_switchCell_didTurnOn___block_invoke_31(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(Switch) preflight failed, NOT changing %@", &v5, 0xCu);
  }

  return [*(a1 + 40) setOn:(*(a1 + 48) & 1) == 0 animated:1];
}

- (void)_updateSwitchSettingItem:(id)item forCell:(id)cell withValue:(BOOL)value
{
  valueCopy = value;
  itemCopy = item;
  cellCopy = cell;
  siriSettingsDetailsItemManager = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
  v12 = [siriSettingsDetailsItemManager updateSettingItem:itemCopy withValue:v11];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke;
  v21[3] = &unk_277DBC4D8;
  v22 = cellCopy;
  v24 = valueCopy;
  v13 = itemCopy;
  v23 = v13;
  v14 = cellCopy;
  v15 = [v12 addFailureBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke_35;
  v18[3] = &unk_277DBDD38;
  v19 = v13;
  v20 = valueCopy;
  v16 = v13;
  v17 = [v12 addSuccessBlock:v18];
}

void __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setOn:(*(a1 + 48) & 1) == 0];
  }

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Setting [%@] FAILED to update with value %{BOOL}d. Reverting UI state.", &v7, 0x12u);
  }
}

void __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke_35(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Setting [%@] Successfully updated with value %{BOOL}d.", &v5, 0x12u);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HUSiriSettingsDetailsViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v27.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "User tapped item [%@]", buf, 0xCu);
  }

  objc_opt_class();
  v11 = v9;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  settingKeyPath = [v13 settingKeyPath];
  settingDict = [v13 settingDict];
  v16 = [settingDict objectForKeyedSubscript:settingKeyPath];

  v17 = MEMORY[0x277D14160];
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277D14160]];

  if (v18)
  {
    v19 = [v16 objectForKeyedSubscript:*v17];
    v20 = NSClassFromString(v19);

    v21 = [v20 alloc];
    siriSettingsDetailsItemManager = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
    module = [siriSettingsDetailsItemManager module];
    v24 = [v21 initWithAccessorySettingItem:v11 module:module];

    navigationController = [(HUSiriSettingsDetailsViewController *)self navigationController];
    v26 = [navigationController hu_pushPreloadableViewController:v24 animated:1];
  }
}

- (void)_preflightCheckToAllowSwitchingForSettingItem:(id)item changingToOn:(BOOL)on withCompletion:(id)completion
{
  onCopy = on;
  v74 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  selfCopy = self;
  siriSettingsDetailsItemManager = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  module = [siriSettingsDetailsItemManager module];
  sourceItem = [module sourceItem];
  v13 = &unk_28251B0C8;
  if ([sourceItem conformsToProtocol:v13])
  {
    v14 = sourceItem;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  accessories = [v15 accessories];
  anyObject = [accessories anyObject];

  mediaProfile = [anyObject mediaProfile];
  hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

  v20 = MEMORY[0x277D133B0];
  v21 = [hf_mediaAccessoryCommonSettingsManager settingValueForKeyPath:*MEMORY[0x277D133B0]];
  v61 = v21;
  if (onCopy && ([v21 BOOLValue] & 1) == 0)
  {
    settingKeyPath = [itemCopy settingKeyPath];
    v22 = [settingKeyPath isEqualToString:*MEMORY[0x277D14230]];
  }

  else
  {
    v22 = 0;
  }

  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    settingKeyPath2 = [itemCopy settingKeyPath];
    *buf = 138413058;
    v67 = v15;
    v68 = 1024;
    v69 = onCopy;
    v70 = 2112;
    v71 = settingKeyPath2;
    v72 = 1024;
    v73 = v22;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "sourceItem = %@, turningOnorOff = %{BOOL}d, settingItem.settingKeyPath = %@ , justTurningOnTapToAccess = %{BOOL}d", buf, 0x22u);
  }

  if (onCopy && ([itemCopy settingKeyPath], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", *v20) | v22, v26, (v27 & 1) != 0))
  {
    hf_siriEndpointProfile = [anyObject hf_siriEndpointProfile];
    currentAssistant = [hf_siriEndpointProfile currentAssistant];
    v30 = HFLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      isSiriAssistant = [currentAssistant isSiriAssistant];
      *buf = 138412546;
      v67 = currentAssistant;
      v68 = 1024;
      v69 = isSiriAssistant;
      _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "currentAssistant = %@, currentAssistant.isSiriAssistant = %{BOOL}d", buf, 0x12u);
    }

    if (currentAssistant && ([currentAssistant isSiriAssistant] & 1) == 0)
    {
      v33 = HFLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = currentAssistant;
        _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "Accessory has a different assistant = %@", buf, 0xCu);
      }

      name = [currentAssistant name];
      v58 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertTitle", @"%@", v35, v36, v37, v38, v39, v40, name);

      name2 = [currentAssistant name];
      v59 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertMessage", @"%@", v42, v43, v44, v45, v46, v47, name2);

      v57 = [MEMORY[0x277D75110] alertControllerWithTitle:v58 message:v59 preferredStyle:1];
      v48 = MEMORY[0x277D750F8];
      v49 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", @"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", 1);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __113__HUSiriSettingsDetailsViewController__preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke;
      v64[3] = &unk_277DBBA20;
      v56 = completionCopy;
      v65 = v56;
      v50 = v48;
      v51 = v49;
      v52 = [v50 actionWithTitle:v49 style:0 handler:v64];
      [v57 addAction:v52];

      v53 = MEMORY[0x277D750F8];
      v54 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __113__HUSiriSettingsDetailsViewController__preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_2;
      v62[3] = &unk_277DBBA20;
      v63 = v56;
      v55 = [v53 actionWithTitle:v54 style:1 handler:v62];
      [v57 addAction:v55];

      v32 = v58;
      [(HUSiriSettingsDetailsViewController *)selfCopy presentViewController:v57 animated:1 completion:0];
    }

    else
    {
      v32 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
      (*(completionCopy + 2))(completionCopy, v32);
    }
  }

  else
  {
    hf_siriEndpointProfile = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    (*(completionCopy + 2))(completionCopy, hf_siriEndpointProfile);
  }
}

void __113__HUSiriSettingsDetailsViewController__preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  (*(v1 + 16))(v1, v2);
}

void __113__HUSiriSettingsDetailsViewController__preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:37];
  v3 = [v2 futureWithError:v4];
  (*(v1 + 16))(v1, v3);
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  siriPrivacyURL = [MEMORY[0x277D14C80] siriPrivacyURL];
  v10 = [lCopy isEqual:siriPrivacyURL];

  if (v10)
  {
    navigationController = [(HUSiriSettingsDetailsViewController *)self navigationController];
    v12 = navigationController;
    if (navigationController)
    {
      selfCopy2 = navigationController;
    }

    else
    {
      selfCopy2 = self;
    }

    v14 = selfCopy2;

    v15 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376F0]];
    [v15 setPresentingViewController:v14];

    [v15 present];
  }

  return 0;
}

@end