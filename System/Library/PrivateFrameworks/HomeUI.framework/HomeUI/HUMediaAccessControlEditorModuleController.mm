@interface HUMediaAccessControlEditorModuleController
- (BOOL)textFieldShouldReturn:(id)return;
- (Class)cellClassForItem:(id)item;
- (HUMediaAccessControlEditorModuleController)initWithModule:(id)module;
- (HUMediaAccessControlEditorModuleControllerDelegate)delegate;
- (id)updateAccessControlDescriptor:(id)descriptor;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUMediaAccessControlEditorModuleController

- (HUMediaAccessControlEditorModuleController)initWithModule:(id)module
{
  v4.receiver = self;
  v4.super_class = HUMediaAccessControlEditorModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:module];
}

- (id)updateAccessControlDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_initWeak(&location, self);
  module = [(HUItemModuleController *)self module];
  v6 = [module updateAccessControlDescriptor:descriptorCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HUMediaAccessControlEditorModuleController_updateAccessControlDescriptor___block_invoke;
  v10[3] = &unk_277DBC1A0;
  objc_copyWeak(&v12, &location);
  v7 = descriptorCopy;
  v11 = v7;
  v8 = [v6 addCompletionBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __76__HUMediaAccessControlEditorModuleController_updateAccessControlDescriptor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 accessControlEditorModuleController:WeakRetained didUpdateAccessControl:*(a1 + 32)];
  }
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider = [module accessControlEditorItemProvider];
  passwordEnableItem = [accessControlEditorItemProvider passwordEnableItem];

  if (passwordEnableItem != itemCopy)
  {
    module2 = [(HUItemModuleController *)self module];
    accessControlEditorItemProvider2 = [module2 accessControlEditorItemProvider];
    [accessControlEditorItemProvider2 passwordItem];
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider = [module accessControlEditorItemProvider];
  passwordItem = [accessControlEditorItemProvider passwordItem];

  if (passwordItem == itemCopy)
  {
    objc_opt_class();
    v10 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    valueTextField = [v12 valueTextField];
    [valueTextField setDelegate:self];

    v14 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessControlPasswordPlaceholder", @"HUMediaAccessControlPasswordPlaceholder", 1);
    valueTextField2 = [v12 valueTextField];
    [valueTextField2 setPlaceholder:v14];

    valueTextField3 = [v12 valueTextField];
    [valueTextField3 setAutocorrectionType:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider = [module accessControlEditorItemProvider];
  passwordItem = [accessControlEditorItemProvider passwordItem];

  if (passwordItem == itemCopy)
  {
    objc_opt_class();
    v21 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    hf_keyColor = v22;

    latestResults = [itemCopy latestResults];
    v24 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13318]];
    valueTextField = [hf_keyColor valueTextField];
    [valueTextField setText:v24];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    valueTextField2 = [hf_keyColor valueTextField];
    [valueTextField2 setTextColor:systemGrayColor];

    goto LABEL_13;
  }

  module2 = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider2 = [module2 accessControlEditorItemProvider];
  passwordEnableItem = [accessControlEditorItemProvider2 passwordEnableItem];

  if (passwordEnableItem == itemCopy)
  {
    objc_opt_class();
    v28 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    hf_keyColor = v29;

    latestResults2 = [itemCopy latestResults];
    v31 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13318]];
    [hf_keyColor setOn:{objc_msgSend(v31, "BOOLValue")}];

    [hf_keyColor setDelegate:self];
LABEL_13:
    [hf_keyColor setSelectionStyle:0];
    goto LABEL_15;
  }

  latestResults3 = [itemCopy latestResults];
  v15 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v15];

  latestResults4 = [itemCopy latestResults];
  v18 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  LODWORD(textLabel) = [v18 BOOLValue];

  if (textLabel)
  {
    [cellCopy setAccessoryType:3];
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    textLabel2 = [cellCopy textLabel];
    [textLabel2 setTextColor:hf_keyColor];
  }

  else
  {
    [cellCopy setAccessoryType:0];
    hf_keyColor = [cellCopy textLabel];
    [hf_keyColor setTextColor:0];
  }

LABEL_15:
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider = [module accessControlEditorItemProvider];
  passwordItem = [accessControlEditorItemProvider passwordItem];
  v8 = passwordItem;
  if (passwordItem == itemCopy)
  {

    goto LABEL_6;
  }

  module2 = [(HUItemModuleController *)self module];
  accessControlEditorItemProvider2 = [module2 accessControlEditorItemProvider];
  passwordEnableItem = [accessControlEditorItemProvider2 passwordEnableItem];

  if (passwordEnableItem != itemCopy)
  {
    module3 = [(HUItemModuleController *)self module];
    accessControlEditorItemProvider3 = [module3 accessControlEditorItemProvider];
    accessControlItems = [accessControlEditorItemProvider3 accessControlItems];
    v15 = [accessControlItems containsObject:itemCopy];

    if (v15)
    {
      module4 = [(HUItemModuleController *)self module];
      accessControlEditorItemProvider4 = [module4 accessControlEditorItemProvider];
      accessControlItems2 = [accessControlEditorItemProvider4 accessControlItems];
      v19 = [accessControlItems2 indexOfObject:itemCopy];

      module5 = [(HUItemModuleController *)self module];
      home = [module5 home];
      module = [home hf_accessControlDescriptor];

      v22 = MEMORY[0x277D147D8];
      accessRequiresPassword = [module accessRequiresPassword];
      accessPassword = [module accessPassword];
      accessControlEditorItemProvider = [v22 descriptorWithAccess:v19 requiresPassword:accessRequiresPassword password:accessPassword];

      v25 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:accessControlEditorItemProvider];
LABEL_6:
    }
  }

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [text length];

  if (v6)
  {
    v7 = MEMORY[0x277CD1A60];
    text2 = [returnCopy text];
    v24 = 0;
    [v7 isValidMediaPassword:text2 error:&v24];
    hf_accessControlDescriptor = v24;

    v10 = hf_accessControlDescriptor == 0;
    if (hf_accessControlDescriptor)
    {
      mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
      [mEMORY[0x277D14640] handleError:hf_accessControlDescriptor operationType:*MEMORY[0x277D13C28] options:0 retryBlock:0 cancelBlock:0];
    }

    else
    {
      module = [(HUItemModuleController *)self module];
      home = [module home];
      mEMORY[0x277D14640] = [home hf_accessControlDescriptor];

      v17 = MEMORY[0x277D147D8];
      access = [mEMORY[0x277D14640] access];
      accessRequiresPassword = [mEMORY[0x277D14640] accessRequiresPassword];
      text3 = [returnCopy text];
      v21 = [v17 descriptorWithAccess:access requiresPassword:accessRequiresPassword password:text3];

      v22 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:v21];
      [returnCopy endEditing:1];
    }
  }

  else
  {
    module2 = [(HUItemModuleController *)self module];
    home2 = [module2 home];
    hf_accessControlDescriptor = [home2 hf_accessControlDescriptor];

    accessPassword = [hf_accessControlDescriptor accessPassword];
    [returnCopy setText:accessPassword];

    v10 = 1;
    [returnCopy endEditing:1];
  }

  return v10;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  module = [(HUItemModuleController *)self module];
  home = [module home];
  hf_accessControlDescriptor = [home hf_accessControlDescriptor];

  accessPassword = [hf_accessControlDescriptor accessPassword];
  if (!accessPassword)
  {
    v25 = 0;
    accessPassword = [MEMORY[0x277CD1A60] generateMediaPasswordWithError:&v25];
    v11 = v25;
    if (v11)
    {
      mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
      [mEMORY[0x277D14640] logError:v11 operationDescription:@"API failed to generate a random 6 digit password"];

      accessPassword = @"000000";
    }
  }

  v13 = [MEMORY[0x277D147D8] descriptorWithAccess:objc_msgSend(hf_accessControlDescriptor requiresPassword:"access") password:{onCopy, accessPassword}];
  v14 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:v13];
  objc_opt_class();
  delegate = [(HUMediaAccessControlEditorModuleController *)self delegate];
  if (objc_opt_isKindOfClass())
  {
    v16 = delegate;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    objc_opt_class();
    item = [cellCopy item];
    latestResults = [item latestResults];
    v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F68]];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = MEMORY[0x277D143D8];
    item2 = [cellCopy item];
    [v23 sendSwitchCellToggleEventForItem:item2 isOn:onCopy title:v22 fromSourceViewController:v17];
  }
}

- (HUMediaAccessControlEditorModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end