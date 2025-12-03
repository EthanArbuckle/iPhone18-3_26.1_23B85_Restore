@interface HUChildServiceItemModuleController
- (BOOL)canSelectItem:(id)item;
- (BOOL)shouldManageTextFieldForItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUChildServiceItemModuleController)initWithModule:(id)module;
- (HUChildServiceItemModuleController)initWithModule:(id)module delegate:(id)delegate;
- (HUChildServiceModuleControllerDelegate)delegate;
- (id)defaultTextForTextField:(id)field item:(id)item;
- (id)placeholderTextForTextField:(id)field item:(id)item;
- (unint64_t)didSelectItem:(id)item;
- (void)_identifyButtonPressed:(id)pressed forEvent:(id)event;
- (void)checkmarkTappedInCell:(id)cell forItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidBeginEditing:(id)editing item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)updateAllConfigurationDisabled;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUChildServiceItemModuleController

- (HUChildServiceItemModuleController)initWithModule:(id)module delegate:(id)delegate
{
  moduleCopy = module;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HUChildServiceItemModuleController;
  v9 = [(HUItemModuleController *)&v14 initWithModule:moduleCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_childServiceItemModule, module);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    identifyButtonMap = v10->_identifyButtonMap;
    v10->_identifyButtonMap = weakToWeakObjectsMapTable;
  }

  return v10;
}

- (HUChildServiceItemModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUChildServiceItemModuleController.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HUChildServiceItemModuleController initWithModule:]", v6}];

  return 0;
}

- (void)updateAllConfigurationDisabled
{
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  allItems = [childServiceItemModule allItems];
  v5 = [allItems na_filter:&__block_literal_global_279];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUChildServiceItemModuleController_updateAllConfigurationDisabled__block_invoke_2;
  v11[3] = &unk_277DB85D8;
  v11[4] = self;
  v6 = [v5 na_all:v11];

  if (v6 != [(HUChildServiceItemModuleController *)self allConfigurationDisabled])
  {
    self->_allConfigurationDisabled = v6;
    delegate = [(HUChildServiceItemModuleController *)self delegate];
    childServiceItemModule2 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
    allItems2 = [childServiceItemModule2 allItems];
    allObjects = [allItems2 allObjects];
    [delegate updateCellForItems:allObjects];
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

- (Class)cellClassForItem:(id)item
{
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  [childServiceItemModule editingMode];

  v4 = objc_opt_class();

  return v4;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  editingMode = [childServiceItemModule editingMode];

  if (editingMode == 1)
  {
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

    [v11 setHideIcon:1];
    [v11 setAccessoryType:1];
    goto LABEL_26;
  }

  objc_opt_class();
  v12 = cellCopy;
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
  v36 = itemCopy;
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

  accessories = [v16 accessories];
  anyObject = [accessories anyObject];
  hf_owningBridgeAccessory = [anyObject hf_owningBridgeAccessory];
  v35 = v16;
  service = [v16 service];
  hf_parentService = [service hf_parentService];
  accessory = [hf_parentService accessory];
  v23 = hf_owningBridgeAccessory;
  v24 = accessory;
  v25 = v24;
  if (v23 == v24)
  {

LABEL_17:
    objc_opt_class();
    accessories = [v11 accessoryView];
    if (objc_opt_isKindOfClass())
    {
      v27 = accessories;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (!v28)
    {
      accessories = [MEMORY[0x277D75220] buttonWithType:1];
      v29 = _HULocalizedStringWithDefaultValue(@"HUChildServiceModuleIdentifyAccessoryViewTitle", @"HUChildServiceModuleIdentifyAccessoryViewTitle", 1);
      [accessories setTitle:v29 forState:0];

      v30 = _HULocalizedStringWithDefaultValue(@"HUChildServiceModuleRunningAccessoryViewTitle", @"HUChildServiceModuleRunningAccessoryViewTitle", 1);
      [accessories setTitle:v30 forState:2];

      hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
      [accessories setTintColor:hf_keyColor];

      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      [accessories setTitleColor:systemGrayColor forState:2];

      hf_keyColor2 = [MEMORY[0x277D75348] hf_keyColor];
      [accessories setTitleColor:hf_keyColor2 forState:0];

      clearColor = [MEMORY[0x277D75348] clearColor];
      [accessories setBackgroundColor:clearColor];

      [accessories sizeToFit];
      [accessories addTarget:self action:sel__identifyButtonPressed_forEvent_ forControlEvents:64];
      [v11 setAccessoryView:accessories];
    }

    anyObject = [(HUChildServiceItemModuleController *)self identifyButtonMap];
    [anyObject setObject:v14 forKey:accessories];
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

  itemCopy = v36;
LABEL_26:
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  editingMode = [childServiceItemModule editingMode];

  if (editingMode == 1)
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

    latestResults = [itemCopy latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    [v12 setHideValue:{objc_msgSend(v14, "BOOLValue") ^ 1}];

LABEL_6:
    goto LABEL_8;
  }

  childServiceItemModule2 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  editingMode2 = [childServiceItemModule2 editingMode];

  if (!editingMode2)
  {
    objc_opt_class();
    v17 = cellCopy;
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
      childServiceItemModule3 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
      v20 = [childServiceItemModule3 configurationStateForItem:itemCopy];

      childServiceItemModule4 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
      v22 = [childServiceItemModule4 canToggleConfigurationStateForItem:itemCopy];

      [v12 setRemoveCheckmark:0];
      [v12 setAllowCheckmarkSelectionWhileDisabled:v22];
      [v12 setDisableCheckmark:v22 ^ 1];
      [v12 setChecked:v20 != 2];
    }

    goto LABEL_6;
  }

LABEL_8:
}

- (BOOL)canSelectItem:(id)item
{
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v4 = [childServiceItemModule editingMode] == 1;

  return v4;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  if ([childServiceItemModule editingMode] == 1)
  {
    delegate = [(HUChildServiceItemModuleController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(HUChildServiceItemModuleController *)self delegate];
      v9 = [delegate2 childServiceEditorModuleController:self didSelectItem:itemCopy];

      goto LABEL_6;
    }
  }

  else
  {
  }

  childServiceItemModule2 = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  editingMode = [childServiceItemModule2 editingMode];

  if (!editingMode)
  {
    v12 = 1;
    goto LABEL_8;
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = HUChildServiceItemModuleController;
  v12 = [(HUItemModuleController *)&v14 didSelectItem:itemCopy];
LABEL_8:

  return v12;
}

- (BOOL)shouldManageTextFieldForItem:(id)item
{
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v4 = [childServiceItemModule editingMode] == 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)editing item:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v11 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  home = [childServiceItemModule home];
  v10 = [v7 serviceLikeBuilderInHome:home];
  [(HUChildServiceItemModuleController *)self setActivelyEditingNameServiceBuilder:v10];
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  changeCopy = change;
  activelyEditingNameServiceBuilder = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
  [activelyEditingNameServiceBuilder setName:changeCopy];
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  editingCopy = editing;
  itemCopy = item;
  activelyEditingNameServiceBuilder = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];

  if (!activelyEditingNameServiceBuilder)
  {
    activelyEditingNameServiceBuilder2 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    NSLog(&cfstr_ServiceBuilder.isa, activelyEditingNameServiceBuilder2);
  }

  v10 = itemCopy;
  if ([v10 conformsToProtocol:&unk_28251B0C8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  namingComponentForHomeKitObject = [v12 namingComponentForHomeKitObject];
  v14 = [(HUChildServiceItemModuleController *)self defaultTextForTextField:editingCopy item:v10];

  text = [editingCopy text];
  v16 = [namingComponentForHomeKitObject homeKitSafeStringForString:text];

  text2 = [editingCopy text];
  v18 = [text2 isEqualToString:v16];

  if ((v18 & 1) == 0)
  {
    [editingCopy setText:v16];
  }

  if (([v16 isEqualToString:v14] & 1) == 0)
  {
    activelyEditingNameServiceBuilder3 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    [activelyEditingNameServiceBuilder3 setName:v16];

    activelyEditingNameServiceBuilder4 = [(HUChildServiceItemModuleController *)self activelyEditingNameServiceBuilder];
    commitItem = [activelyEditingNameServiceBuilder4 commitItem];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HUChildServiceItemModuleController_textFieldDidEndEditing_item___block_invoke;
    v23[3] = &unk_277DB7530;
    v23[4] = self;
    v22 = [commitItem addCompletionBlock:v23];
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

- (id)defaultTextForTextField:(id)field item:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  namingComponentForHomeKitObject = [v6 namingComponentForHomeKitObject];

  textFieldDisplayText = [namingComponentForHomeKitObject textFieldDisplayText];

  return textFieldDisplayText;
}

- (id)placeholderTextForTextField:(id)field item:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  namingComponentForHomeKitObject = [v6 namingComponentForHomeKitObject];

  placeholderText = [namingComponentForHomeKitObject placeholderText];

  return placeholderText;
}

- (void)_identifyButtonPressed:(id)pressed forEvent:(id)event
{
  pressedCopy = pressed;
  identifyButtonMap = [(HUChildServiceItemModuleController *)self identifyButtonMap];
  v7 = [identifyButtonMap objectForKey:pressedCopy];

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

  accessories = [v10 accessories];
  anyObject = [accessories anyObject];

  [pressedCopy setEnabled:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HUChildServiceItemModuleController__identifyButtonPressed_forEvent___block_invoke;
  v14[3] = &unk_277DB8C00;
  v15 = pressedCopy;
  v13 = pressedCopy;
  [anyObject identifyWithCompletionHandler:v14];
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

- (void)checkmarkTappedInCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  childServiceItemModule = [(HUChildServiceItemModuleController *)self childServiceItemModule];
  v6 = [childServiceItemModule toggleConfigurationStateForItem:itemCopy];
}

- (HUChildServiceModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end