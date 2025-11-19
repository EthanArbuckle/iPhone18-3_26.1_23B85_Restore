@interface HUChildServiceItemModuleController
- (BOOL)canSelectItem:(id)a3;
- (BOOL)shouldManageTextFieldForItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUChildServiceItemModuleController)initWithModule:(id)a3;
- (HUChildServiceItemModuleController)initWithModule:(id)a3 delegate:(id)a4;
- (HUChildServiceModuleControllerDelegate)delegate;
- (id)defaultTextForTextField:(id)a3 item:(id)a4;
- (id)placeholderTextForTextField:(id)a3 item:(id)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)_identifyButtonPressed:(id)a3 forEvent:(id)a4;
- (void)checkmarkTappedInCell:(id)a3 forItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3 item:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)updateAllConfigurationDisabled;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUChildServiceItemModuleController

- (HUChildServiceItemModuleController)initWithModule:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUChildServiceItemModuleController;
  v9 = [(HUItemModuleController *)&v14 initWithModule:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_childServiceItemModule, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    identifyButtonMap = v10->_identifyButtonMap;
    v10->_identifyButtonMap = v11;
  }

  return v10;
}

- (HUChildServiceItemModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUChildServiceItemModuleController.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HUChildServiceItemModuleController initWithModule:]", v6}];

  return 0;
}

- (void)updateAllConfigurationDisabled
{
  v3 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v4 = [v3 allItems];
  v5 = [v4 na_filter:&__block_literal_global_279];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUChildServiceItemModuleController_updateAllConfigurationDisabled__block_invoke_2;
  v11[3] = &unk_277DB85D8;
  v11[4] = self;
  v6 = [v5 na_all:v11];

  if (v6 != [(HUChildServiceItemModuleController *)self allConfigurationDisabled])
  {
    self->_allConfigurationDisabled = v6;
    v7 = [(HUChildServiceItemModuleController *)self delegate];
    v8 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
    v9 = [v8 allItems];
    v10 = [v9 allObjects];
    [v7 updateCellForItems:v10];
  }
}

uint64_t __68__HUChildServiceItemModuleController_updateAllConfigurationDisabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = [v3 BOOLValue];

  return v4 ^ 1u;
}

uint64_t __68__HUChildServiceItemModuleController_updateAllConfigurationDisabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 childServiceItemModule];
  v5 = [v4 canToggleConfigurationStateForItem:v3];

  return v5 ^ 1u;
}

- (Class)cellClassForItem:(id)a3
{
  v3 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  [v3 editingMode];

  v4 = objc_opt_class();

  return v4;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v37 = a3;
  v6 = a4;
  v7 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v8 = [v7 editingMode];

  if (v8 == 1)
  {
    objc_opt_class();
    v9 = v37;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v11 setHideIcon:1];
    [v11 setAccessoryType:1];
    goto LABEL_26;
  }

  objc_opt_class();
  v12 = v37;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = v13;

  [v11 setDelegate:self];
  objc_opt_class();
  v36 = v6;
  v14 = v6;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 accessories];
  v18 = [v17 anyObject];
  v19 = [v18 hf_owningBridgeAccessory];
  v35 = v16;
  v20 = [v16 service];
  v21 = [v20 hf_parentService];
  v22 = [v21 accessory];
  v23 = v19;
  v24 = v22;
  v25 = v24;
  if (v23 == v24)
  {

LABEL_17:
    objc_opt_class();
    v17 = [v11 accessoryView];
    if (objc_opt_isKindOfClass())
    {
      v27 = v17;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (!v28)
    {
      v17 = [MEMORY[0x277D75220] buttonWithType:1];
      v29 = _HULocalizedStringWithDefaultValue(@"HUChildServiceModuleIdentifyAccessoryViewTitle", @"HUChildServiceModuleIdentifyAccessoryViewTitle", 1);
      [v17 setTitle:v29 forState:0];

      v30 = _HULocalizedStringWithDefaultValue(@"HUChildServiceModuleRunningAccessoryViewTitle", @"HUChildServiceModuleRunningAccessoryViewTitle", 1);
      [v17 setTitle:v30 forState:2];

      v31 = [MEMORY[0x277D75348] hf_keyColor];
      [v17 setTintColor:v31];

      v32 = [MEMORY[0x277D75348] systemGrayColor];
      [v17 setTitleColor:v32 forState:2];

      v33 = [MEMORY[0x277D75348] hf_keyColor];
      [v17 setTitleColor:v33 forState:0];

      v34 = [MEMORY[0x277D75348] clearColor];
      [v17 setBackgroundColor:v34];

      [v17 sizeToFit];
      [v17 addTarget:self action:sel__identifyButtonPressed_forEvent_ forControlEvents:64];
      [v11 setAccessoryView:v17];
    }

    v18 = [(HUChildServiceItemModuleController *)self identifyButtonMap];
    [v18 setObject:v14 forKey:v17];
    goto LABEL_24;
  }

  if (v23)
  {
    v26 = [v23 isEqual:v24];

    if ((v26 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

LABEL_24:
LABEL_25:

  v6 = v36;
LABEL_26:
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v23 = a3;
  v7 = a4;
  v8 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v9 = [v8 editingMode];

  if (v9 == 1)
  {
    objc_opt_class();
    v10 = v23;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v7 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    [v12 setHideValue:{objc_msgSend(v14, "BOOLValue") ^ 1}];

LABEL_6:
    goto LABEL_8;
  }

  v15 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v16 = [v15 editingMode];

  if (!v16)
  {
    objc_opt_class();
    v17 = v23;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v12 = v18;

    if ([(HUChildServiceItemModuleController *)self allConfigurationDisabled])
    {
      [v12 setRemoveCheckmark:1];
    }

    else
    {
      v19 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
      v20 = [v19 configurationStateForItem:v7];

      v21 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
      v22 = [v21 canToggleConfigurationStateForItem:v7];

      [v12 setRemoveCheckmark:0];
      [v12 setAllowCheckmarkSelectionWhileDisabled:v22];
      [v12 setDisableCheckmark:v22 ^ 1];
      [v12 setChecked:v20 != 2];
    }

    goto LABEL_6;
  }

LABEL_8:
}

- (BOOL)canSelectItem:(id)a3
{
  v3 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v4 = [v3 editingMode] == 1;

  return v4;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  if ([v5 editingMode] == 1)
  {
    v6 = [(HUChildServiceItemModuleController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(HUChildServiceItemModuleController *)self delegate];
      v9 = [v8 childServiceEditorModuleController:self didSelectItem:v4];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v11 = [v10 editingMode];

  if (!v11)
  {
    v12 = 1;
    goto LABEL_8;
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = HUChildServiceItemModuleController;
  v12 = [(HUItemModuleController *)&v14 didSelectItem:v4];
LABEL_8:

  return v12;
}

- (BOOL)shouldManageTextFieldForItem:(id)a3
{
  v3 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v4 = [v3 editingMode] == 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)a3 item:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v11 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v9 = [v8 home];
  v10 = [v7 serviceLikeBuilderInHome:v9];
  [(HUChildServiceItemModuleController *)self setActivelyEditingNameServiceBuilder:v10];
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v6 = a3;
  v7 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
  [v7 setName:v6];
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];

  if (!v8)
  {
    v9 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    NSLog(&cfstr_ServiceBuilder.isa, v9);
  }

  v10 = v7;
  if ([v10 conformsToProtocol:&unk_28251B0C8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 namingComponentForHomeKitObject];
  v14 = [(HUChildServiceItemModuleController *)self defaultTextForTextField:v6 item:v10];

  v15 = [v6 text];
  v16 = [v13 homeKitSafeStringForString:v15];

  v17 = [v6 text];
  v18 = [v17 isEqualToString:v16];

  if ((v18 & 1) == 0)
  {
    [v6 setText:v16];
  }

  if (([v16 isEqualToString:v14] & 1) == 0)
  {
    v19 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    [v19 setName:v16];

    v20 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    v21 = [v20 commitItem];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HUChildServiceItemModuleController_textFieldDidEndEditing_item___block_invoke;
    v23[3] = &unk_277DB7530;
    v23[4] = self;
    v22 = [v21 addCompletionBlock:v23];
  }
}

uint64_t __66__HUChildServiceItemModuleController_textFieldDidEndEditing_item___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277D14640];
    v5 = a3;
    v6 = [v4 sharedHandler];
    v7 = *MEMORY[0x277D13C10];
    v14 = *MEMORY[0x277D13860];
    v8 = [*(a1 + 32) activelyEditingNameServiceBuilder];
    v9 = [v8 name];
    v10 = v9;
    v11 = @"nil name";
    if (v9)
    {
      v11 = v9;
    }

    v15[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v6 handleError:v5 operationType:v7 options:v12 retryBlock:0 cancelBlock:0];
  }

  return [*(a1 + 32) setActivelyEditingNameServiceBuilder:0];
}

- (id)defaultTextForTextField:(id)a3 item:(id)a4
{
  v4 = a4;
  if ([v4 conformsToProtocol:&unk_28251B0C8])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 namingComponentForHomeKitObject];

  v8 = [v7 textFieldDisplayText];

  return v8;
}

- (id)placeholderTextForTextField:(id)a3 item:(id)a4
{
  v4 = a4;
  if ([v4 conformsToProtocol:&unk_28251B0C8])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 namingComponentForHomeKitObject];

  v8 = [v7 placeholderText];

  return v8;
}

- (void)_identifyButtonPressed:(id)a3 forEvent:(id)a4
{
  v5 = a3;
  v6 = [(HUChildServiceItemModuleController *)self identifyButtonMap];
  v7 = [v6 objectForKey:v5];

  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 accessories];
  v12 = [v11 anyObject];

  [v5 setEnabled:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HUChildServiceItemModuleController__identifyButtonPressed_forEvent___block_invoke;
  v14[3] = &unk_277DB8C00;
  v15 = v5;
  v13 = v5;
  [v12 identifyWithCompletionHandler:v14];
}

void __70__HUChildServiceItemModuleController__identifyButtonPressed_forEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HUChildServiceItemModuleController__identifyButtonPressed_forEvent___block_invoke_2;
  v6[3] = &unk_277DB8488;
  v7 = *(a1 + 32);
  [v4 animateWithDuration:v6 animations:0.3];
  if (v3)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v3];
  }
}

- (void)checkmarkTappedInCell:(id)a3 forItem:(id)a4
{
  v7 = a4;
  v5 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v6 = [v5 toggleConfigurationStateForItem:v7];
}

- (HUChildServiceModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end