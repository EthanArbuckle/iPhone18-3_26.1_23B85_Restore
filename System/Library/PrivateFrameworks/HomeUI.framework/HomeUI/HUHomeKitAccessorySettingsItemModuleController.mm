@interface HUHomeKitAccessorySettingsItemModuleController
- (Class)cellClassForItem:(id)item;
- (HUHomeKitAccessorySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate;
- (HUHomeKitAccessorySettingsItemModuleControllerDelegate)delegate;
- (unint64_t)didSelectItem:(id)item;
- (void)_updateSwitchSettingItem:(id)item forCell:(id)cell withValue:(BOOL)value;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUHomeKitAccessorySettingsItemModuleController

- (HUHomeKitAccessorySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HUHomeKitAccessorySettingsItemModuleController;
  v7 = [(HUItemModuleController *)&v12 initWithModule:module];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v8->_cellToItemMap;
    v8->_cellToItemMap = weakToWeakObjectsMapTable;
  }

  return v8;
}

- (Class)cellClassForItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
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

  if (v7 && ([v10 isCollapsed] & 1) == 0)
  {
    if ([v7 userInterfaceType] != 8 && objc_msgSend(v7, "userInterfaceType") && objc_msgSend(v7, "userInterfaceType") != 4)
    {
      [v7 userInterfaceType];
    }
  }

  else if ([v10 isCollapsed])
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Module [%@] is asked to be configured as Collapsed, hence we will configure this cell as HUTitleValueCell", &v14, 0xCu);
    }
  }

  v12 = objc_opt_class();

  return v12;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = HUHomeKitAccessorySettingsItemModuleController;
  [(HUItemModuleController *)&v25 setupCell:cellCopy forItem:itemCopy];
  cellToItemMap = [(HUHomeKitAccessorySettingsItemModuleController *)self cellToItemMap];
  [cellToItemMap setObject:itemCopy forKey:cellCopy];

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
  v12 = v9;
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
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v16 = module;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  objc_opt_class();
  v18 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  settingDict = [v20 settingDict];
  settingKeyPath = [v20 settingKeyPath];
  v23 = [settingDict objectForKeyedSubscript:settingKeyPath];

  if (v11)
  {
    [v11 setDelegate:self];
  }

  else if (v14)
  {
    [v14 setHideIcon:1];
  }

  if ([v17 isCollapsed])
  {
    [v12 setAccessoryType:1];
  }

  else
  {
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D14160]];
    [v12 setAccessoryType:v24 != 0];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = HUHomeKitAccessorySettingsItemModuleController;
  [(HUItemModuleController *)&v25 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  objc_opt_class();
  v16 = v13;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v15)
  {
    settingValue = [v12 settingValue];
    [v15 setOn:{objc_msgSend(settingValue, "BOOLValue")}];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_13;
    }

    settingDict = [v12 settingDict];
    settingKeyPath = [v12 settingKeyPath];
    settingValue = [settingDict objectForKeyedSubscript:settingKeyPath];

    v22 = [settingValue objectForKeyedSubscript:*MEMORY[0x277D13838]];
    LOBYTE(settingKeyPath) = [v22 BOOLValue];

    if (settingKeyPath)
    {
      latestResults = [v10 latestResults];
      v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v18 setValueText:v24];
    }

    else
    {
      [v18 setValueText:0];
    }
  }

LABEL_13:
}

- (unint64_t)didSelectItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User tapped item [%@]", &v32, 0xCu);
  }

  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v7 = module;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  settingKeyPath = [v11 settingKeyPath];
  settingDict = [v11 settingDict];
  v14 = [settingDict objectForKeyedSubscript:settingKeyPath];

  latestResults = [v11 latestResults];
  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v16 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v18 = MEMORY[0x277D14160];
    v19 = [v14 objectForKeyedSubscript:*MEMORY[0x277D14160]];
    if (v19)
    {
      v20 = v19;
      delegate = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [v14 objectForKeyedSubscript:*v18];
        v24 = NSClassFromString(v23);

        v25 = [v24 alloc];
        module2 = [(HUItemModuleController *)self module];
        delegate4 = [v25 initWithAccessorySettingItem:v9 module:module2];

        delegate2 = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
        [delegate2 moduleController:self presentSettingDetailsViewController:delegate4];

LABEL_17:
        goto LABEL_18;
      }
    }

    if (v8)
    {
      if ([v8 isCollapsed])
      {
        delegate3 = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          delegate4 = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
          [delegate4 moduleController:self expandModule:v8];
          goto LABEL_17;
        }
      }
    }
  }

LABEL_18:

  return 0;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  objc_opt_class();
  cellToItemMap = [(HUHomeKitAccessorySettingsItemModuleController *)self cellToItemMap];
  v8 = [cellToItemMap objectForKey:cellCopy];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  delegate = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(HUHomeKitAccessorySettingsItemModuleController *)self delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v14[3] = &unk_277DBDD10;
    v15 = cellCopy;
    v18 = onCopy;
    v16 = v10;
    selfCopy = self;
    [delegate2 moduleController:self preflightCheckToAllowSwitchingForSettingItem:v16 changingToOn:onCopy withCompletion:v14];
  }

  else
  {
    [(HUHomeKitAccessorySettingsItemModuleController *)self _updateSwitchSettingItem:v10 forCell:cellCopy withValue:onCopy];
  }
}

void __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
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
    v15[2] = __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_18;
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
    v11[2] = __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_35;
    v11[3] = &unk_277DBC4D8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v10 = [v3 addFailureBlock:v11];
  }
}

void __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_18(uint64_t a1, void *a2)
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

uint64_t __71__HUHomeKitAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_35(uint64_t a1)
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
  v9 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
  v10 = [itemCopy updateValue:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HUHomeKitAccessorySettingsItemModuleController__updateSwitchSettingItem_forCell_withValue___block_invoke;
  v14[3] = &unk_277DBA3A8;
  v17 = valueCopy;
  v15 = cellCopy;
  v16 = itemCopy;
  v11 = itemCopy;
  v12 = cellCopy;
  v13 = [v10 addCompletionBlock:v14];
}

void __93__HUHomeKitAccessorySettingsItemModuleController__updateSwitchSettingItem_forCell_withValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) setOn:(*(a1 + 48) & 1) == 0];
  }

  else
  {
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = [v7 accessorySettingsDataSource];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    v10 = [*(a1 + 40) settingKeyPath];
    v11 = [*(a1 + 40) accessoryIdentifier];
    [v8 updateSettingValue:v9 forKeyPath:v10 accessoryIdentifier:v11];
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = @"FAILED to";
    v15 = *(a1 + 48);
    if (!v6)
    {
      v14 = @"Successfully";
    }

    v16 = @"Reverting UI state.";
    v17 = 138413058;
    v18 = v13;
    v19 = 2112;
    if (!v6)
    {
      v16 = &stru_2823E0EE8;
    }

    v20 = v14;
    v21 = 1024;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Setting [%@] %@ update with value %{BOOL}d. %@", &v17, 0x26u);
  }
}

- (HUHomeKitAccessorySettingsItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end