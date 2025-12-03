@interface HUAirPlaySettingsDetailsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUAirPlaySettingsDetailsViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (id)itemModuleControllers;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUAirPlaySettingsDetailsViewController

- (HUAirPlaySettingsDetailsViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  v6 = [[HUAirPlaySettingsDetailsItemManager alloc] initWithDelegate:self module:moduleCopy];

  [(HUAirPlaySettingsDetailsViewController *)self setAirPlaySettingsDetailsItemManager:v6];
  airPlaySettingsDetailsItemManager = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
  v13.receiver = self;
  v13.super_class = HUAirPlaySettingsDetailsViewController;
  v8 = [(HUItemTableViewController *)&v13 initWithItemManager:airPlaySettingsDetailsItemManager tableViewStyle:1];

  if (v8)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v8->_cellToItemMap;
    v8->_cellToItemMap = weakToWeakObjectsMapTable;

    v11 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpointSetting_AirPlay_Title", @"HUSiriEndpointSetting_AirPlay_Title", 1);
    [(HUAirPlaySettingsDetailsViewController *)v8 setTitle:v11];

    [(HUItemTableViewController *)v8 setAutomaticallyUpdatesViewControllerTitle:0];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v38.receiver = self;
  v38.super_class = HUAirPlaySettingsDetailsViewController;
  itemModuleControllers = [(HUItemTableViewController *)&v38 itemModuleControllers];
  [v3 unionSet:itemModuleControllers];

  airPlaySettingsDetailsItemManager = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
  homeKitAccessorySettingsModules = [airPlaySettingsDetailsItemManager homeKitAccessorySettingsModules];

  if (homeKitAccessorySettingsModules)
  {
    v33 = v3;
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      airPlaySettingsDetailsItemManager2 = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
      homeKitAccessorySettingsModules2 = [airPlaySettingsDetailsItemManager2 homeKitAccessorySettingsModules];
      *buf = 138412290;
      v40 = homeKitAccessorySettingsModules2;
      _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "Creating Item Module Controllers from  homeKitAccessorySettingsModules = [%@]", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    airPlaySettingsDetailsItemManager3 = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
    homeKitAccessorySettingsModules3 = [airPlaySettingsDetailsItemManager3 homeKitAccessorySettingsModules];

    v10 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        v13 = 0;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(homeKitAccessorySettingsModules3);
          }

          v14 = *(*(&v34 + 1) + 8 * v13);
          objc_opt_class();
          v15 = v14;
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            moduleToModuleControllerMap = [(HUAirPlaySettingsDetailsViewController *)self moduleToModuleControllerMap];
            v19 = [moduleToModuleControllerMap objectForKey:v17];

            if (!v19)
            {
              v20 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v17 delegate:self];
              moduleToModuleControllerMap2 = [(HUAirPlaySettingsDetailsViewController *)self moduleToModuleControllerMap];

              if (!moduleToModuleControllerMap2)
              {
                strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                [(HUAirPlaySettingsDetailsViewController *)self setModuleToModuleControllerMap:strongToStrongObjectsMapTable];
              }

              v23 = HFLogForCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v40 = v20;
                v41 = 2112;
                v42 = v17;
                _os_log_debug_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEBUG, "Setting moduleController = [%@] for Module = [%@] in moduleToModuleControllerMap", buf, 0x16u);
              }

              moduleToModuleControllerMap3 = [(HUAirPlaySettingsDetailsViewController *)self moduleToModuleControllerMap];
              [moduleToModuleControllerMap3 setObject:v20 forKey:v17];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v11);
    }

    moduleToModuleControllerMap4 = [(HUAirPlaySettingsDetailsViewController *)self moduleToModuleControllerMap];
    objectEnumerator = [moduleToModuleControllerMap4 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    v3 = v33;
    if (nextObject)
    {
      v28 = nextObject;
      do
      {
        [v33 na_safeAddObject:v28];
        nextObject2 = [objectEnumerator nextObject];

        v28 = nextObject2;
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
  v29.receiver = self;
  v29.super_class = HUAirPlaySettingsDetailsViewController;
  [(HUItemTableViewController *)&v29 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
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
    settingKeyPath = [v14 settingKeyPath];
    v23 = [settingKeyPath isEqualToString:*MEMORY[0x277D133A0]];

    if (!v23)
    {
LABEL_18:

      goto LABEL_19;
    }

    detailTextLabel = [v17 detailTextLabel];
    [detailTextLabel setText:0];
LABEL_16:

    goto LABEL_18;
  }

  if (v20)
  {
    settingDict = [v14 settingDict];
    settingKeyPath2 = [v14 settingKeyPath];
    settingValue = [settingDict objectForKeyedSubscript:settingKeyPath2];

    v27 = [settingValue objectForKeyedSubscript:*MEMORY[0x277D13838]];
    LOBYTE(settingKeyPath2) = [v27 BOOLValue];

    if ((settingKeyPath2 & 1) == 0)
    {
      [v20 setValueText:0];
      goto LABEL_18;
    }

    detailTextLabel = [v12 latestResults];
    v28 = [detailTextLabel objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    [v20 setValueText:v28];

    goto LABEL_16;
  }

LABEL_19:
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUAirPlaySettingsDetailsViewController *)self tableView];
  v9 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v11 = [itemManager displayedItemAtIndexPath:v9];

  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  airPlaySettingsDetailsItemManager = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
  v17 = [airPlaySettingsDetailsItemManager updateSettingItem:v14 withValue:v16];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__HUAirPlaySettingsDetailsViewController_switchCell_didTurnOn___block_invoke;
  v28[3] = &unk_277DBC4D8;
  v29 = cellCopy;
  v31 = onCopy;
  v18 = v12;
  v30 = v18;
  v19 = cellCopy;
  v20 = [v17 addFailureBlock:v28];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__HUAirPlaySettingsDetailsViewController_switchCell_didTurnOn___block_invoke_17;
  v23[3] = &unk_277DBBDB8;
  v27 = onCopy;
  v24 = v18;
  selfCopy = self;
  v26 = a2;
  v21 = v18;
  v22 = [v17 addSuccessBlock:v23];
}

void __63__HUAirPlaySettingsDetailsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
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

void __63__HUAirPlaySettingsDetailsViewController_switchCell_didTurnOn___block_invoke_17(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Setting [%@] Successfully updated with value %{BOOL}d.", &v7, 0x12u);
  }

  v5 = [*(a1 + 40) airPlaySettingsDetailsItemManager];
  v6 = [v5 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HUAirPlaySettingsDetailsViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v30.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "User tapped item [%@]", buf, 0xCu);
  }

  objc_opt_class();
  v14 = v9;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  settingKeyPath = [v16 settingKeyPath];
  settingDict = [v16 settingDict];
  v19 = [settingDict objectForKeyedSubscript:settingKeyPath];

  if (!v12)
  {
    v20 = MEMORY[0x277D14160];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277D14160]];

    if (v21)
    {
      v22 = [v19 objectForKeyedSubscript:*v20];
      v23 = NSClassFromString(v22);

      v24 = [v23 alloc];
      airPlaySettingsDetailsItemManager = [(HUAirPlaySettingsDetailsViewController *)self airPlaySettingsDetailsItemManager];
      module = [airPlaySettingsDetailsItemManager module];
      v27 = [v24 initWithAccessorySettingItem:v14 module:module];

      navigationController = [(HUAirPlaySettingsDetailsViewController *)self navigationController];
      v29 = [navigationController hu_pushPreloadableViewController:v27 animated:1];
    }
  }
}

@end