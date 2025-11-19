@interface HUPresenceUserPickerItemModuleController
- (BOOL)canSelectDisabledItem:(id)a3;
- (BOOL)canSelectItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUPresenceUserPickerItemModuleControllerDelegate)delegate;
- (id)_showAlertForConfirmationPrompt:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)accessoryButtonTappedForItem:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUPresenceUserPickerItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 itemTypeForItem:v4];

  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_class();
  }

  return v7;
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v26 = a3;
  v7 = a4;
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 itemTypeForItem:v7];

  switch(v9)
  {
    case 2:
      v16 = [(HUItemModuleController *)self module];
      v10 = [v16 stateForUserItem:v7];

      v17 = v26;
      v18 = [v7 latestResults];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v17 setUserName:v19];

      v20 = [v7 latestResults];
      v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v17 setDeviceName:v21];

      v22 = [v7 latestResults];
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D14120]];
      [v17 setUserHandle:v23];

      v24 = [v7 latestResults];
      v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
      [v17 setChecked:{objc_msgSend(v25, "BOOLValue")}];

      [v17 setLocationUnavailable:{objc_msgSend(v10, "isLocationAvailable") ^ 1}];
LABEL_10:

      break;
    case 1:
      v10 = v26;
      v11 = [v7 latestResults];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v10 setTitleText:v12];

      v13 = [v7 latestResults];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
      [v10 setChecked:{objc_msgSend(v14, "BOOLValue")}];

      if ([v10 checked])
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      [v10 setAccessoryType:v15];
      goto LABEL_10;
    case 0:
      [v26 setHideIcon:1];
      break;
  }
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 itemTypeForItem:v4];

  return (v6 < 3) & (6u >> (v6 & 7));
}

- (BOOL)canSelectDisabledItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 itemTypeForItem:v4];

  return v6 == 2;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 confirmationPromptForOptionItem:v4];

  if (v7)
  {
    v8 = [(HUPresenceUserPickerItemModuleController *)self _showAlertForConfirmationPrompt:v7];

    v5 = v8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HUPresenceUserPickerItemModuleController_didSelectItem___block_invoke;
  v13[3] = &unk_277DBD0A0;
  v14 = v7;
  v15 = self;
  v16 = v4;
  v9 = v4;
  v10 = v7;
  v11 = [v5 addSuccessBlock:v13];

  return 0;
}

void __58__HUPresenceUserPickerItemModuleController_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  if (v3 && [v3 resetLocationToHomeOnConfirmation])
  {
    v4 = [*(a1 + 40) delegate];
    [v4 resetSelectedLocationToHomeForPresenceUserPickerItemModuleController:*(a1 + 40)];
  }

  v5 = [*(a1 + 40) module];
  v6 = [v5 itemTypeForItem:*(a1 + 48)];

  if (v6 == 1)
  {
    v8 = [*(a1 + 40) module];
    [v8 selectActivationOptionItem:*(a1 + 48)];
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_12;
    }

    v7 = [*(a1 + 40) module];
    v8 = [v7 stateForUserItem:*(a1 + 48)];

    v9 = [v8 isSelected];
    v10 = [*(a1 + 40) module];
    v11 = v10;
    v12 = *(a1 + 48);
    if (v9)
    {
      [v10 deselectUserItem:v12];
    }

    else
    {
      [v10 selectUserItem:v12];
    }
  }

LABEL_12:
}

- (void)accessoryButtonTappedForItem:(id)a3
{
  v7 = a3;
  v4 = [(HUItemModuleController *)self module];
  v5 = [v4 itemTypeForItem:v7];

  if (v5 == 1)
  {
    v6 = [(HUItemModuleController *)self module];
    [v6 toggleExpandedForActivationOptionItem:v7];
  }
}

- (id)_showAlertForConfirmationPrompt:(id)a3
{
  v4 = MEMORY[0x277D2C900];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277D75110];
  v8 = [v5 alertTitle];
  v9 = [v5 alertBody];

  v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertActionContinue", @"HUPresenceEventUnsupportedCustomLocationAlertActionContinue", 1);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __76__HUPresenceUserPickerItemModuleController__showAlertForConfirmationPrompt___block_invoke;
  v29[3] = &unk_277DB7600;
  v13 = v6;
  v30 = v13;
  v14 = [v11 actionWithTitle:v12 style:0 handler:v29];
  [v10 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertActionCancel", @"HUPresenceEventUnsupportedCustomLocationAlertActionCancel", 1);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __76__HUPresenceUserPickerItemModuleController__showAlertForConfirmationPrompt___block_invoke_2;
  v27 = &unk_277DB7600;
  v17 = v13;
  v28 = v17;
  v18 = [v15 actionWithTitle:v16 style:1 handler:&v24];
  [v10 addAction:{v18, v24, v25, v26, v27}];

  v19 = [(HUPresenceUserPickerItemModuleController *)self delegate];
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    v20 = [(HUPresenceUserPickerItemModuleController *)self delegate];
    [v20 presenceUserPickerItemModuleController:self presentViewController:v10];
  }

  v21 = v28;
  v22 = v17;

  return v17;
}

- (HUPresenceUserPickerItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end