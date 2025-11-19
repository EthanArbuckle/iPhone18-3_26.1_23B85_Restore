@interface HUSiriSettingsDetailsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUSiriSettingsDetailsViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (id)itemModuleControllers;
- (void)_preflightCheckToAllowSwitchingForSettingItem:(id)a3 changingToOn:(BOOL)a4 withCompletion:(id)a5;
- (void)_updateSwitchSettingItem:(id)a3 forCell:(id)a4 withValue:(BOOL)a5;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUSiriSettingsDetailsViewController

- (HUSiriSettingsDetailsViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v5 = a4;
  v6 = [[HUSiriSettingsDetailsItemManager alloc] initWithDelegate:self module:v5];
  [(HUSiriSettingsDetailsViewController *)self setSiriSettingsDetailsItemManager:v6];

  v7 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v16.receiver = self;
  v16.super_class = HUSiriSettingsDetailsViewController;
  v8 = [(HUItemTableViewController *)&v16 initWithItemManager:v7 tableViewStyle:1];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    cellToItemMap = v8->_cellToItemMap;
    v8->_cellToItemMap = v9;

    v11 = [MEMORY[0x277D146E8] sharedDispatcher];
    v12 = [v11 accessorySettingsDataSource];
    v13 = [v5 settingGroupKeyPath];
    v14 = [v12 hf_localizedTitleForKeyPath:v13];
    [(HUSiriSettingsDetailsViewController *)v8 setTitle:v14];
  }

  return v8;
}

- (id)itemModuleControllers
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v5 = [v4 homeKitAccessorySettingsModules];

  if (v5)
  {
    v32 = v3;
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v30 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
      v31 = [v30 homeKitAccessorySettingsModules];
      *buf = 138412290;
      v38 = v31;
      _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "Creating Item Module Controllers from  homeKitAccessorySettingsModules = [%@]", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
    v8 = [v7 homeKitAccessorySettingsModules];

    v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(v8);
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
            v17 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
            v18 = [v17 objectForKey:v16];

            if (!v18)
            {
              v19 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v16 delegate:self];
              v20 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];

              if (!v20)
              {
                v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                [(HUSiriSettingsDetailsViewController *)self setModuleToModuleControllerMap:v21];
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

              v23 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
              [v23 setObject:v19 forKey:v16];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v10);
    }

    v24 = [(HUSiriSettingsDetailsViewController *)self moduleToModuleControllerMap];
    v25 = [v24 objectEnumerator];

    v26 = [v25 nextObject];
    v3 = v32;
    if (v26)
    {
      v27 = v26;
      do
      {
        [v32 na_safeAddObject:v27];
        v28 = [v25 nextObject];

        v27 = v28;
      }

      while (v28);
    }
  }

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = v7;
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
  v14 = v8;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 settingDict];
  v18 = [v16 settingKeyPath];
  v19 = [v17 objectForKeyedSubscript:v18];

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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v27.receiver = self;
  v27.super_class = HUSiriSettingsDetailsViewController;
  [(HUItemTableViewController *)&v27 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
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

  objc_opt_class();
  v15 = v10;
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
    v21 = [v14 settingValue];
    [v17 setOn:{objc_msgSend(v21, "BOOLValue")}];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_13;
    }

    v22 = [v14 settingDict];
    v23 = [v14 settingKeyPath];
    v21 = [v22 objectForKeyedSubscript:v23];

    v24 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13838]];
    LOBYTE(v23) = [v24 BOOLValue];

    if (v23)
    {
      v25 = [v12 latestResults];
      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v20 setValueText:v26];
    }

    else
    {
      [v20 setValueText:0];
    }
  }

LABEL_13:
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUSiriSettingsDetailsViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

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
  v17 = v6;
  v18 = v13;
  v20 = v4;
  v19 = self;
  v14 = v13;
  v15 = v6;
  [(HUSiriSettingsDetailsViewController *)self _preflightCheckToAllowSwitchingForSettingItem:v14 changingToOn:v4 withCompletion:v16];
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

- (void)_updateSwitchSettingItem:(id)a3 forCell:(id)a4 withValue:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v12 = [v10 updateSettingItem:v8 withValue:v11];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke;
  v21[3] = &unk_277DBC4D8;
  v22 = v9;
  v24 = v5;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v15 = [v12 addFailureBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HUSiriSettingsDetailsViewController__updateSwitchSettingItem_forCell_withValue___block_invoke_35;
  v18[3] = &unk_277DBDD38;
  v19 = v13;
  v20 = v5;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = HUSiriSettingsDetailsViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v27 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v27.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  [v7 deselectRowAtIndexPath:v6 animated:1];
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

  v14 = [v13 settingKeyPath];
  v15 = [v13 settingDict];
  v16 = [v15 objectForKeyedSubscript:v14];

  v17 = MEMORY[0x277D14160];
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277D14160]];

  if (v18)
  {
    v19 = [v16 objectForKeyedSubscript:*v17];
    v20 = NSClassFromString(v19);

    v21 = [v20 alloc];
    v22 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
    v23 = [v22 module];
    v24 = [v21 initWithAccessorySettingItem:v11 module:v23];

    v25 = [(HUSiriSettingsDetailsViewController *)self navigationController];
    v26 = [v25 hu_pushPreloadableViewController:v24 animated:1];
  }
}

- (void)_preflightCheckToAllowSwitchingForSettingItem:(id)a3 changingToOn:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v60 = self;
  v10 = [(HUSiriSettingsDetailsViewController *)self siriSettingsDetailsItemManager];
  v11 = [v10 module];
  v12 = [v11 sourceItem];
  v13 = &unk_28251B0C8;
  if ([v12 conformsToProtocol:v13])
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 accessories];
  v17 = [v16 anyObject];

  v18 = [v17 mediaProfile];
  v19 = [v18 hf_mediaAccessoryCommonSettingsManager];

  v20 = MEMORY[0x277D133B0];
  v21 = [v19 settingValueForKeyPath:*MEMORY[0x277D133B0]];
  v61 = v21;
  if (v6 && ([v21 BOOLValue] & 1) == 0)
  {
    v23 = [v8 settingKeyPath];
    v22 = [v23 isEqualToString:*MEMORY[0x277D14230]];
  }

  else
  {
    v22 = 0;
  }

  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v8 settingKeyPath];
    *buf = 138413058;
    v67 = v15;
    v68 = 1024;
    v69 = v6;
    v70 = 2112;
    v71 = v25;
    v72 = 1024;
    v73 = v22;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "sourceItem = %@, turningOnorOff = %{BOOL}d, settingItem.settingKeyPath = %@ , justTurningOnTapToAccess = %{BOOL}d", buf, 0x22u);
  }

  if (v6 && ([v8 settingKeyPath], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", *v20) | v22, v26, (v27 & 1) != 0))
  {
    v28 = [v17 hf_siriEndpointProfile];
    v29 = [v28 currentAssistant];
    v30 = HFLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v29 isSiriAssistant];
      *buf = 138412546;
      v67 = v29;
      v68 = 1024;
      v69 = v31;
      _os_log_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEFAULT, "currentAssistant = %@, currentAssistant.isSiriAssistant = %{BOOL}d", buf, 0x12u);
    }

    if (v29 && ([v29 isSiriAssistant] & 1) == 0)
    {
      v33 = HFLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v29;
        _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "Accessory has a different assistant = %@", buf, 0xCu);
      }

      v34 = [v29 name];
      v58 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertTitle", @"%@", v35, v36, v37, v38, v39, v40, v34);

      v41 = [v29 name];
      v59 = HULocalizedStringWithFormat(@"HUSiriEndpoint_TurnOffAssistant_AlertMessage", @"%@", v42, v43, v44, v45, v46, v47, v41);

      v57 = [MEMORY[0x277D75110] alertControllerWithTitle:v58 message:v59 preferredStyle:1];
      v48 = MEMORY[0x277D750F8];
      v49 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", @"HUSiriEndpoint_TurnOffAssistant_AlertButtonTitle", 1);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __113__HUSiriSettingsDetailsViewController__preflightCheckToAllowSwitchingForSettingItem_changingToOn_withCompletion___block_invoke;
      v64[3] = &unk_277DBBA20;
      v56 = v9;
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
      [(HUSiriSettingsDetailsViewController *)v60 presentViewController:v57 animated:1 completion:0];
    }

    else
    {
      v32 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
      (*(v9 + 2))(v9, v32);
    }
  }

  else
  {
    v28 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    (*(v9 + 2))(v9, v28);
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  v9 = [MEMORY[0x277D14C80] siriPrivacyURL];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [(HUSiriSettingsDetailsViewController *)self navigationController];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = self;
    }

    v14 = v13;

    v15 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376F0]];
    [v15 setPresentingViewController:v14];

    [v15 present];
  }

  return 0;
}

@end