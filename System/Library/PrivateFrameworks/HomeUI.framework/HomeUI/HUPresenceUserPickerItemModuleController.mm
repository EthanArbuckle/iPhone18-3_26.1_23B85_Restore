@interface HUPresenceUserPickerItemModuleController
- (BOOL)canSelectDisabledItem:(id)item;
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUPresenceUserPickerItemModuleControllerDelegate)delegate;
- (id)_showAlertForConfirmationPrompt:(id)prompt;
- (unint64_t)didSelectItem:(id)item;
- (void)accessoryButtonTappedForItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUPresenceUserPickerItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module itemTypeForItem:itemCopy];

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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v9 = [module itemTypeForItem:itemCopy];

  switch(v9)
  {
    case 2:
      module2 = [(HUItemModuleController *)self module];
      v10 = [module2 stateForUserItem:itemCopy];

      v17 = cellCopy;
      latestResults = [itemCopy latestResults];
      v19 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v17 setUserName:v19];

      latestResults2 = [itemCopy latestResults];
      v21 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      [v17 setDeviceName:v21];

      latestResults3 = [itemCopy latestResults];
      v23 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14120]];
      [v17 setUserHandle:v23];

      latestResults4 = [itemCopy latestResults];
      v25 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
      [v17 setChecked:{objc_msgSend(v25, "BOOLValue")}];

      [v17 setLocationUnavailable:{objc_msgSend(v10, "isLocationAvailable") ^ 1}];
LABEL_10:

      break;
    case 1:
      v10 = cellCopy;
      latestResults5 = [itemCopy latestResults];
      v12 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v10 setTitleText:v12];

      latestResults6 = [itemCopy latestResults];
      v14 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
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
      [cellCopy setHideIcon:1];
      break;
  }
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module itemTypeForItem:itemCopy];

  return (v6 < 3) & (6u >> (v6 & 7));
}

- (BOOL)canSelectDisabledItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v6 = [module itemTypeForItem:itemCopy];

  return v6 == 2;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  module = [(HUItemModuleController *)self module];
  v7 = [module confirmationPromptForOptionItem:itemCopy];

  if (v7)
  {
    v8 = [(HUPresenceUserPickerItemModuleController *)self _showAlertForConfirmationPrompt:v7];

    futureWithNoResult = v8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HUPresenceUserPickerItemModuleController_didSelectItem___block_invoke;
  v13[3] = &unk_277DBD0A0;
  v14 = v7;
  selfCopy = self;
  v16 = itemCopy;
  v9 = itemCopy;
  v10 = v7;
  v11 = [futureWithNoResult addSuccessBlock:v13];

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

- (void)accessoryButtonTappedForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  v5 = [module itemTypeForItem:itemCopy];

  if (v5 == 1)
  {
    module2 = [(HUItemModuleController *)self module];
    [module2 toggleExpandedForActivationOptionItem:itemCopy];
  }
}

- (id)_showAlertForConfirmationPrompt:(id)prompt
{
  v4 = MEMORY[0x277D2C900];
  promptCopy = prompt;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277D75110];
  alertTitle = [promptCopy alertTitle];
  alertBody = [promptCopy alertBody];

  v10 = [v7 alertControllerWithTitle:alertTitle message:alertBody preferredStyle:1];

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

  delegate = [(HUPresenceUserPickerItemModuleController *)self delegate];
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(HUPresenceUserPickerItemModuleController *)self delegate];
    [delegate2 presenceUserPickerItemModuleController:self presentViewController:v10];
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