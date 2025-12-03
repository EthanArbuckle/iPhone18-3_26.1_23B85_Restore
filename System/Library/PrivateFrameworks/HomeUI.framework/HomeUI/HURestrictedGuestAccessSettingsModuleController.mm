@interface HURestrictedGuestAccessSettingsModuleController
- (Class)cellClassForItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on;
@end

@implementation HURestrictedGuestAccessSettingsModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  sourceItem = [v6 sourceItem];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = HURestrictedGuestAccessSettingsModuleController;
  [(HUItemModuleController *)&v23 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  sourceItem = [v10 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
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

    latestResults = [v8 latestResults];
    v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

    if (v17)
    {
      [v15 setUserHandle:v17];
    }

    v18 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v8];
    [v15 setShowAccessLevelDescription:1];
    [v18 setPrefersSideBySideTextAndSecondaryText:0];
    [v13 setContentConfiguration:v18];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v13 setBackgroundColor:secondarySystemBackgroundColor];
  }

  objc_opt_class();
  v20 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    [v22 setDelegate:self];
    [v22 setOverrideDefaultContentConfiguration:0];
  }
}

- (void)userSwitchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v65 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    text = [cellCopy text];
    item = [cellCopy item];
    *buf = 138413314;
    selfCopy = self;
    v57 = 2112;
    v58 = v9;
    v59 = 2112;
    v60 = text;
    v61 = 1024;
    v62 = onCopy;
    v63 = 2112;
    v64 = item;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped on switch cell '%@' | isOn = %{BOOL}d | item = %@", buf, 0x30u);
  }

  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v13 = module;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  item2 = [cellCopy item];
  if (objc_opt_isKindOfClass())
  {
    v16 = item2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  sourceItem = [v17 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v45 = v17;
    sourceItem2 = [v17 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v21 = sourceItem2;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HURestrictedGuestAccessSettingsModuleController_userSwitchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DB7180;
    v43 = v14;
    v23 = v14;
    v51 = v23;
    v54 = onCopy;
    v24 = v22;
    v52 = v24;
    v46 = cellCopy;
    v25 = cellCopy;
    v26 = onCopy;
    v27 = v25;
    v53 = v25;
    v28 = _Block_copy(aBlock);
    user = [v24 user];
    v44 = v24;
    home = [v24 home];
    objc_opt_class();
    host = [(HUItemModuleController *)self host];
    if (objc_opt_isKindOfClass())
    {
      v32 = host;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    accessoryToAdd = [v23 accessoryToAdd];
    if (v33)
    {
      v35 = MEMORY[0x277D75D28];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __76__HURestrictedGuestAccessSettingsModuleController_userSwitchCell_didTurnOn___block_invoke_11;
      v47[3] = &unk_277DB7EE0;
      v48 = v27;
      v49 = v26;
      [v35 hu_presentingLockLimitAlertIfNeededFromViewController:v33 home:home user:user accessory:accessoryToAdd include:v26 continueActionBlock:v28 cancelActionBlock:v47];
    }

    else
    {
      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        host2 = [(HUItemModuleController *)self host];
        *buf = 136315394;
        selfCopy = "[HURestrictedGuestAccessSettingsModuleController userSwitchCell:didTurnOn:]";
        v57 = 2112;
        v58 = host2;
        _os_log_error_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_ERROR, "(%s) Unable to find hostVC. Updating access without alert. host = %@", buf, 0x16u);
      }

      v28[2](v28);
    }

    cellCopy = v46;

    v17 = v45;
    v14 = v43;
  }

  itemUpdater = [v14 itemUpdater];
  v38 = MEMORY[0x277D14788];
  itemProviders = [v14 itemProviders];
  v40 = [v38 requestToReloadItemProviders:itemProviders senderSelector:a2];
  v41 = [itemUpdater performItemUpdateRequest:v40];
}

void __76__HURestrictedGuestAccessSettingsModuleController_userSwitchCell_didTurnOn___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enableRestrictedGuestAccessSetting:*(a1 + 56) forItem:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HURestrictedGuestAccessSettingsModuleController_userSwitchCell_didTurnOn___block_invoke_2;
  v4[3] = &unk_277DB7EB8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v3 = [v2 addCompletionBlock:v4];
}

void __76__HURestrictedGuestAccessSettingsModuleController_userSwitchCell_didTurnOn___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[HURestrictedGuestAccessSettingsModuleController userSwitchCell:didTurnOn:]_block_invoke_2";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%s) Failed to update restricted guest access settings with error %@.", &v7, 0x16u);
    }

    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v4 operationType:*MEMORY[0x277D13C78] options:0 retryBlock:0 cancelBlock:0];
  }
}

@end