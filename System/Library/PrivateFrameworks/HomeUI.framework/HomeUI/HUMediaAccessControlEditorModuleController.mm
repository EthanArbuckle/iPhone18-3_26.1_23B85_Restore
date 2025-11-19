@interface HUMediaAccessControlEditorModuleController
- (BOOL)textFieldShouldReturn:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUMediaAccessControlEditorModuleController)initWithModule:(id)a3;
- (HUMediaAccessControlEditorModuleControllerDelegate)delegate;
- (id)updateAccessControlDescriptor:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUMediaAccessControlEditorModuleController

- (HUMediaAccessControlEditorModuleController)initWithModule:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUMediaAccessControlEditorModuleController;
  return [(HUItemModuleController *)&v4 initWithModule:a3];
}

- (id)updateAccessControlDescriptor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 updateAccessControlDescriptor:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HUMediaAccessControlEditorModuleController_updateAccessControlDescriptor___block_invoke;
  v10[3] = &unk_277DBC1A0;
  objc_copyWeak(&v12, &location);
  v7 = v4;
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

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 accessControlEditorItemProvider];
  v7 = [v6 passwordEnableItem];

  if (v7 != v4)
  {
    v8 = [(HUItemModuleController *)self module];
    v9 = [v8 accessControlEditorItemProvider];
    [v9 passwordItem];
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 accessControlEditorItemProvider];
  v9 = [v8 passwordItem];

  if (v9 == v6)
  {
    objc_opt_class();
    v10 = v17;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 valueTextField];
    [v13 setDelegate:self];

    v14 = _HULocalizedStringWithDefaultValue(@"HUMediaAccessControlPasswordPlaceholder", @"HUMediaAccessControlPasswordPlaceholder", 1);
    v15 = [v12 valueTextField];
    [v15 setPlaceholder:v14];

    v16 = [v12 valueTextField];
    [v16 setAutocorrectionType:1];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v32 = a3;
  v7 = a4;
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 accessControlEditorItemProvider];
  v10 = [v9 passwordItem];

  if (v10 == v7)
  {
    objc_opt_class();
    v21 = v32;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v19 = v22;

    v23 = [v7 latestResults];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D13318]];
    v25 = [v19 valueTextField];
    [v25 setText:v24];

    v26 = [MEMORY[0x277D75348] systemGrayColor];
    v27 = [v19 valueTextField];
    [v27 setTextColor:v26];

    goto LABEL_13;
  }

  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 accessControlEditorItemProvider];
  v13 = [v12 passwordEnableItem];

  if (v13 == v7)
  {
    objc_opt_class();
    v28 = v32;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v19 = v29;

    v30 = [v7 latestResults];
    v31 = [v30 objectForKeyedSubscript:*MEMORY[0x277D13318]];
    [v19 setOn:{objc_msgSend(v31, "BOOLValue")}];

    [v19 setDelegate:self];
LABEL_13:
    [v19 setSelectionStyle:0];
    goto LABEL_15;
  }

  v14 = [v7 latestResults];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v16 = [v32 textLabel];
  [v16 setText:v15];

  v17 = [v7 latestResults];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  LODWORD(v16) = [v18 BOOLValue];

  if (v16)
  {
    [v32 setAccessoryType:3];
    v19 = [MEMORY[0x277D75348] hf_keyColor];
    v20 = [v32 textLabel];
    [v20 setTextColor:v19];
  }

  else
  {
    [v32 setAccessoryType:0];
    v19 = [v32 textLabel];
    [v19 setTextColor:0];
  }

LABEL_15:
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 accessControlEditorItemProvider];
  v7 = [v6 passwordItem];
  v8 = v7;
  if (v7 == v4)
  {

    goto LABEL_6;
  }

  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 accessControlEditorItemProvider];
  v11 = [v10 passwordEnableItem];

  if (v11 != v4)
  {
    v12 = [(HUItemModuleController *)self module];
    v13 = [v12 accessControlEditorItemProvider];
    v14 = [v13 accessControlItems];
    v15 = [v14 containsObject:v4];

    if (v15)
    {
      v16 = [(HUItemModuleController *)self module];
      v17 = [v16 accessControlEditorItemProvider];
      v18 = [v17 accessControlItems];
      v19 = [v18 indexOfObject:v4];

      v20 = [(HUItemModuleController *)self module];
      v21 = [v20 home];
      v5 = [v21 hf_accessControlDescriptor];

      v22 = MEMORY[0x277D147D8];
      v23 = [v5 accessRequiresPassword];
      v24 = [v5 accessPassword];
      v6 = [v22 descriptorWithAccess:v19 requiresPassword:v23 password:v24];

      v25 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:v6];
LABEL_6:
    }
  }

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x277CD1A60];
    v8 = [v4 text];
    v24 = 0;
    [v7 isValidMediaPassword:v8 error:&v24];
    v9 = v24;

    v10 = v9 == 0;
    if (v9)
    {
      v11 = [MEMORY[0x277D14640] sharedHandler];
      [v11 handleError:v9 operationType:*MEMORY[0x277D13C28] options:0 retryBlock:0 cancelBlock:0];
    }

    else
    {
      v15 = [(HUItemModuleController *)self module];
      v16 = [v15 home];
      v11 = [v16 hf_accessControlDescriptor];

      v17 = MEMORY[0x277D147D8];
      v18 = [v11 access];
      v19 = [v11 accessRequiresPassword];
      v20 = [v4 text];
      v21 = [v17 descriptorWithAccess:v18 requiresPassword:v19 password:v20];

      v22 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:v21];
      [v4 endEditing:1];
    }
  }

  else
  {
    v12 = [(HUItemModuleController *)self module];
    v13 = [v12 home];
    v9 = [v13 hf_accessControlDescriptor];

    v14 = [v9 accessPassword];
    [v4 setText:v14];

    v10 = 1;
    [v4 endEditing:1];
  }

  return v10;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 home];
  v9 = [v8 hf_accessControlDescriptor];

  v10 = [v9 accessPassword];
  if (!v10)
  {
    v25 = 0;
    v10 = [MEMORY[0x277CD1A60] generateMediaPasswordWithError:&v25];
    v11 = v25;
    if (v11)
    {
      v12 = [MEMORY[0x277D14640] sharedHandler];
      [v12 logError:v11 operationDescription:@"API failed to generate a random 6 digit password"];

      v10 = @"000000";
    }
  }

  v13 = [MEMORY[0x277D147D8] descriptorWithAccess:objc_msgSend(v9 requiresPassword:"access") password:{v4, v10}];
  v14 = [(HUMediaAccessControlEditorModuleController *)self updateAccessControlDescriptor:v13];
  objc_opt_class();
  v15 = [(HUMediaAccessControlEditorModuleController *)self delegate];
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
    objc_opt_class();
    v18 = [v6 item];
    v19 = [v18 latestResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13F68]];
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
    v24 = [v6 item];
    [v23 sendSwitchCellToggleEventForItem:v24 isOn:v4 title:v22 fromSourceViewController:v17];
  }
}

- (HUMediaAccessControlEditorModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end