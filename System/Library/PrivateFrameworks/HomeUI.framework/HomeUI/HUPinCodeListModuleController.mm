@interface HUPinCodeListModuleController
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUPinCodeListModuleController)initWithModule:(id)module;
- (UIBarButtonItem)addButtonItem;
- (unint64_t)didSelectItem:(id)item;
- (void)_switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)addGuestDoneButtonPressed:(id)pressed;
- (void)cancelAddGuest:(id)guest;
- (void)hideSpinner;
- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header;
- (void)setAddButtonItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)showSpinner;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUPinCodeListModuleController

- (HUPinCodeListModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  v10.receiver = self;
  v10.super_class = HUPinCodeListModuleController;
  v5 = [(HUItemModuleController *)&v10 initWithModule:moduleCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = moduleCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setEditButtonHeaderDelegate:v5];
    [(HUPinCodeListModuleController *)v5 setEditing:0];
  }

  return v5;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  listType = [module listType];

  module2 = [(HUItemModuleController *)self module];
  addPinCodeItem = [module2 addPinCodeItem];
  v9 = addPinCodeItem;
  if (addPinCodeItem == itemCopy)
  {
  }

  else
  {
    module3 = [(HUItemModuleController *)self module];
    revokePinCodeItem = [module3 revokePinCodeItem];

    if (revokePinCodeItem != itemCopy)
    {
      module4 = [(HUItemModuleController *)self module];
      accessory = [module4 accessory];

      if (accessory)
      {
        if ((listType & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          [(HUPinCodeListModuleController *)self editing];
        }
      }
    }
  }

  v14 = objc_opt_class();

  return v14;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    module = [(HUItemModuleController *)self module];
    addPinCodeItem = [module addPinCodeItem];
    v12 = addPinCodeItem;
    if (addPinCodeItem == itemCopy)
    {
    }

    else
    {
      module2 = [(HUItemModuleController *)self module];
      revokePinCodeItem = [module2 revokePinCodeItem];

      if (revokePinCodeItem != itemCopy)
      {
        goto LABEL_38;
      }
    }

    v7 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    textProperties = [v7 textProperties];
    [textProperties setColor:hf_keyColor];

    v35 = *MEMORY[0x277D76C88];
    imageProperties = [v7 imageProperties];
    [imageProperties setReservedLayoutSize:{37.0, v35}];

    [cellCopy setContentConfiguration:v7];
    latestResults = [itemCopy latestResults];
    v26 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [cellCopy setAccessibilityIdentifier:v26];
    goto LABEL_36;
  }

  [cellCopy setAccessoryType:1];
  v7 = itemCopy;
  module3 = [(HUItemModuleController *)self module];
  listType = [module3 listType];

  if (listType <= 2)
  {
    if (listType == 1)
    {
      objc_opt_class();
      v37 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      latestResults = v38;

      latestResults2 = [v7 latestResults];
      v40 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14120]];
      [latestResults setUserHandle:v40];

      module4 = [(HUItemModuleController *)self module];
      accessory = [module4 accessory];

      if (accessory)
      {
        [v37 setAccessoryType:0];
      }

      objc_opt_class();
      v43 = v37;
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v26 = v44;

      [v26 setDelegate:self];
      latestResults5 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
      [latestResults5 setPrefersSideBySideTextAndSecondaryText:0];
      [v43 setContentConfiguration:latestResults5];
      latestResults3 = [v7 latestResults];
      v45 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v43 setAccessibilityIdentifier:v45];

      goto LABEL_35;
    }

    if (listType != 2)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  if (listType == 3)
  {
    [cellCopy setAccessoryType:0];
    objc_opt_class();
    v46 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    latestResults = v47;

    latestResults4 = [v7 latestResults];
    v49 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D14120]];
    [latestResults setUserHandle:v49];

    v26 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
    [v26 setPrefersSideBySideTextAndSecondaryText:0];
    [v46 setContentConfiguration:v26];
    latestResults5 = [v7 latestResults];
    latestResults3 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v46 setAccessibilityIdentifier:latestResults3];
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  if (listType == 4)
  {
LABEL_11:
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    latestResults = [HUListContentConfigurationUtilities labelConfiguration:cellConfiguration forItem:v7];

    [latestResults setPrefersSideBySideTextAndSecondaryText:0];
    latestResults6 = [v7 latestResults];
    v18 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
    [latestResults setSecondaryText:v18];

    imageProperties2 = [latestResults imageProperties];
    [imageProperties2 setReservedLayoutSize:{37.0, 37.0}];

    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    imageProperties3 = [latestResults imageProperties];
    [imageProperties3 setTintColor:systemGray2Color];

    [latestResults setAxesPreservingSuperviewLayoutMargins:2];
    [cellCopy setContentConfiguration:latestResults];
    latestResults7 = [v7 latestResults];
    v23 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [cellCopy setAccessibilityIdentifier:v23];

    objc_opt_class();
    v24 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    [v26 setDelegate:self];
    objc_opt_class();
    latestResults8 = [v7 latestResults];
    v28 = [latestResults8 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    latestResults5 = v29;

    v31 = 0;
    if ([latestResults5 BOOLValue])
    {
      v31 = (v26 != 0) & ~[(HUPinCodeListModuleController *)self editing];
    }

    latestResults3 = [v26 accessoryView];
    [latestResults3 setHidden:v31];
    goto LABEL_35;
  }

LABEL_37:

LABEL_38:
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = cellCopy;
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

    user = [v10 user];

    if (user)
    {
      [v7 setDisabled:1];
      [v7 updateUIWithAnimation:0];
      latestResults = [v8 latestResults];
      v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v7 setAccessibilityIdentifier:v13];
    }
  }
}

- (BOOL)canSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  addPinCodeItem = [module addPinCodeItem];

  module2 = [(HUItemModuleController *)self module];
  revokePinCodeItem = [module2 revokePinCodeItem];

  result = 1;
  if (addPinCodeItem != itemCopy && revokePinCodeItem != itemCopy)
  {
    module3 = [(HUItemModuleController *)self module];
    accessory = [module3 accessory];
    if (accessory)
    {
      v12 = accessory;
      editing = [(HUPinCodeListModuleController *)self editing];

      if (!editing)
      {
        return 0;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  addPinCodeItem = [module addPinCodeItem];

  module2 = [(HUItemModuleController *)self module];
  revokePinCodeItem = [module2 revokePinCodeItem];

  module3 = [(HUItemModuleController *)self module];
  accessory = [module3 accessory];

  if (accessory && revokePinCodeItem == itemCopy)
  {
    [(HUPinCodeListModuleController *)self showSpinner];
    module4 = [(HUItemModuleController *)self module];
    pinCodeManager = [module4 pinCodeManager];
    revokeAccessForAllRemovedUsers = [pinCodeManager revokeAccessForAllRemovedUsers];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__HUPinCodeListModuleController_didSelectItem___block_invoke;
    v38[3] = &unk_277DB7530;
    v38[4] = self;
    v14 = [revokeAccessForAllRemovedUsers addCompletionBlock:v38];
  }

  else
  {
    module5 = [(HUItemModuleController *)self module];
    accessory2 = [module5 accessory];
    v17 = accessory2;
    if (!accessory2 || addPinCodeItem == itemCopy)
    {
    }

    else
    {
      editing = [(HUPinCodeListModuleController *)self editing];

      if (!editing)
      {
        goto LABEL_17;
      }
    }

    objc_opt_class();
    v19 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    module4 = v20;

    v21 = [HUPinCodeDetailsViewController alloc];
    module6 = [(HUItemModuleController *)self module];
    pinCodeManager2 = [module6 pinCodeManager];
    module7 = [(HUItemModuleController *)self module];
    home = [module7 home];
    if (addPinCodeItem == itemCopy)
    {
      v26 = [(HUPinCodeDetailsViewController *)v21 initWithItem:0 pinCodeManager:pinCodeManager2 home:home];

      [(HUPinCodeDetailsViewController *)v26 setDelegate:self];
      v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_addGuestDoneButtonPressed_];
      [(HUPinCodeListModuleController *)self setAddGuestDoneButtonItem:v28];

      addGuestDoneButtonItem = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
      [addGuestDoneButtonItem setEnabled:0];

      addGuestDoneButtonItem2 = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
      navigationItem = [(HUPinCodeDetailsViewController *)v26 navigationItem];
      [navigationItem setRightBarButtonItem:addGuestDoneButtonItem2];

      v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAddGuest_];
      navigationItem2 = [(HUPinCodeDetailsViewController *)v26 navigationItem];
      [navigationItem2 setLeftBarButtonItem:v32];

      v34 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
      [v34 setModalPresentationStyle:2];
      v27 = [HUViewControllerPresentationRequest requestWithViewController:v34];
      [v27 setPreferredPresentationType:0];
      [(HUPinCodeListModuleController *)self setAddGuestViewController:v26];
    }

    else
    {
      v26 = [(HUPinCodeDetailsViewController *)v21 initWithItem:module4 pinCodeManager:pinCodeManager2 home:home];

      v27 = [HUViewControllerPresentationRequest requestWithViewController:v26];
      [v27 setPreferredPresentationType:1];
    }

    host = [(HUItemModuleController *)self host];
    v36 = [host moduleController:self presentViewControllerForRequest:v27];
  }

LABEL_17:
  return 0;
}

- (void)cancelAddGuest:(id)guest
{
  addGuestViewController = [(HUPinCodeListModuleController *)self addGuestViewController];
  v7 = [HUViewControllerDismissalRequest requestWithViewController:addGuestViewController];

  host = [(HUItemModuleController *)self host];
  v6 = [host moduleController:self dismissViewControllerForRequest:v7];

  [(HUPinCodeListModuleController *)self setAddGuestViewController:0];
}

- (void)addGuestDoneButtonPressed:(id)pressed
{
  addGuestViewController = [(HUPinCodeListModuleController *)self addGuestViewController];
  commitNewPinCode = [addGuestViewController commitNewPinCode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUPinCodeListModuleController_addGuestDoneButtonPressed___block_invoke;
  v7[3] = &unk_277DB7B30;
  v7[4] = self;
  v6 = [commitNewPinCode addCompletionBlock:v7];
}

void __59__HUPinCodeListModuleController_addGuestDoneButtonPressed___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) addGuestViewController];
  v6 = [HUViewControllerDismissalRequest requestWithViewController:v5];

  if (v4)
  {
    v7 = [MEMORY[0x277D14640] sharedHandler];
    v8 = *MEMORY[0x277D13BE0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HUPinCodeListModuleController_addGuestDoneButtonPressed___block_invoke_2;
    v13[3] = &unk_277DB8810;
    v9 = v4;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = v6;
    [v7 handleError:v9 operationType:v8 options:0 retryBlock:0 cancelBlock:v13];
  }

  else
  {
    v11 = [*(a1 + 32) host];
    v12 = [v11 moduleController:*(a1 + 32) dismissViewControllerForRequest:v6];

    [*(a1 + 32) setAddGuestViewController:0];
  }
}

void __59__HUPinCodeListModuleController_addGuestDoneButtonPressed___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) domain];
  if ([v6 isEqualToString:*MEMORY[0x277D13850]])
  {
    v2 = [*(a1 + 32) code];

    if (v2 == 80)
    {
      v3 = [*(a1 + 40) host];
      v4 = [v3 moduleController:*(a1 + 40) dismissViewControllerForRequest:*(a1 + 48)];

      v5 = *(a1 + 40);

      [v5 setAddGuestViewController:0];
    }
  }

  else
  {
  }
}

- (UIBarButtonItem)addButtonItem
{
  addGuestViewController = [(HUPinCodeListModuleController *)self addGuestViewController];
  navigationItem = [addGuestViewController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  return rightBarButtonItem;
}

- (void)setAddButtonItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    itemCopy = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
  }

  v7 = itemCopy;
  addGuestViewController = [(HUPinCodeListModuleController *)self addGuestViewController];
  navigationItem = [addGuestViewController navigationItem];
  [navigationItem setRightBarButtonItem:v7];
}

- (void)showSpinner
{
  host = [(HUItemModuleController *)self host];
  v7 = [host presentingViewControllerForModuleController:self];

  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v4];
    navigationItem = [v7 navigationItem];
    [navigationItem setRightBarButtonItem:v5];

    [v4 startAnimating];
  }
}

- (void)hideSpinner
{
  host = [(HUItemModuleController *)self host];
  v10 = [host presentingViewControllerForModuleController:self];

  objc_opt_class();
  navigationItem = [v10 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  customView = [rightBarButtonItem customView];
  if (objc_opt_isKindOfClass())
  {
    v7 = customView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    navigationItem2 = [v10 navigationItem];
    [navigationItem2 setRightBarButtonItem:0];

    [v8 stopAnimating];
  }
}

- (void)_switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v18[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  [(HUPinCodeListModuleController *)self showSpinner];
  objc_opt_class();
  item = [cellCopy item];

  if (objc_opt_isKindOfClass())
  {
    v8 = item;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  module = [(HUItemModuleController *)self module];
  pinCodeManager = [module pinCodeManager];
  module2 = [(HUItemModuleController *)self module];
  accessory = [module2 accessory];
  v18[0] = accessory;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [pinCodeManager setPinCodeWithItem:v9 enabled:onCopy onAccessories:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HUPinCodeListModuleController__switchCell_didTurnOn___block_invoke;
  v17[3] = &unk_277DC0E08;
  v17[4] = self;
  v16 = [v15 addCompletionBlock:v17];
}

void __55__HUPinCodeListModuleController__switchCell_didTurnOn___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) hideSpinner];
  if (v5)
  {
    v4 = [MEMORY[0x277D14640] sharedHandler];
    [v4 handleError:v5 operationType:*MEMORY[0x277D13CC0] options:0 retryBlock:0 cancelBlock:0];
  }
}

- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header
{
  headerCopy = header;
  [(HUPinCodeListModuleController *)self setEditing:[(HUPinCodeListModuleController *)self editing]^ 1];
  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v7 = host;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  itemManager = [v8 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v10 = itemManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = MEMORY[0x277CBEB18];
  module = [(HUItemModuleController *)self module];
  pinCodeItemProvider = [module pinCodeItemProvider];
  items = [pinCodeItemProvider items];
  allObjects = [items allObjects];
  v17 = [v12 arrayWithArray:allObjects];

  transformedGuestUserItemProvider = [v11 transformedGuestUserItemProvider];

  items2 = [transformedGuestUserItemProvider items];
  allObjects2 = [items2 allObjects];
  [v17 addObjectsFromArray:allObjects2];

  host2 = [(HUItemModuleController *)self host];
  [host2 reloadCellForItems:v17 withDiffableDataSourceReload:1];

  objc_opt_class();
  v25 = headerCopy;
  if (objc_opt_isKindOfClass())
  {
    v22 = v25;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  [(HUPinCodeListModuleController *)self editing];
  v24 = HFLocalizedString();
  [v23 setOverrideAccessoryButtonTitle:v24];
  [v23 setAccessibilityIdentifier:@"Home.Locks.PinCode.EditDoneButton"];
  [v23 updateUIWithAnimation:1];
}

@end