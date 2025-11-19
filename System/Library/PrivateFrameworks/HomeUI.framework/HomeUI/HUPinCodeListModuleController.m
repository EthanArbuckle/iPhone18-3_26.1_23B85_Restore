@interface HUPinCodeListModuleController
- (BOOL)canSelectItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUPinCodeListModuleController)initWithModule:(id)a3;
- (UIBarButtonItem)addButtonItem;
- (unint64_t)didSelectItem:(id)a3;
- (void)_switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)addGuestDoneButtonPressed:(id)a3;
- (void)cancelAddGuest:(id)a3;
- (void)hideSpinner;
- (void)itemSection:(id)a3 accessoryButtonPressedInHeader:(id)a4;
- (void)setAddButtonItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)showSpinner;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUPinCodeListModuleController

- (HUPinCodeListModuleController)initWithModule:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUPinCodeListModuleController;
  v5 = [(HUItemModuleController *)&v10 initWithModule:v4];
  if (v5)
  {
    objc_opt_class();
    v6 = v4;
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

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 listType];

  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 addPinCodeItem];
  v9 = v8;
  if (v8 == v4)
  {
  }

  else
  {
    v10 = [(HUItemModuleController *)self module];
    v11 = [v10 revokePinCodeItem];

    if (v11 != v4)
    {
      v12 = [(HUItemModuleController *)self module];
      v13 = [v12 accessory];

      if (v13)
      {
        if ((v6 & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          [(HUPinCodeListModuleController *)self editing];
        }
      }
    }
  }

  v14 = objc_opt_class();

  return v14;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v50 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [(HUItemModuleController *)self module];
    v11 = [v10 addPinCodeItem];
    v12 = v11;
    if (v11 == v6)
    {
    }

    else
    {
      v13 = [(HUItemModuleController *)self module];
      v14 = [v13 revokePinCodeItem];

      if (v14 != v6)
      {
        goto LABEL_38;
      }
    }

    v7 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v6];
    v33 = [MEMORY[0x277D75348] hf_keyColor];
    v34 = [v7 textProperties];
    [v34 setColor:v33];

    v35 = *MEMORY[0x277D76C88];
    v36 = [v7 imageProperties];
    [v36 setReservedLayoutSize:{37.0, v35}];

    [v50 setContentConfiguration:v7];
    v16 = [v6 latestResults];
    v26 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v50 setAccessibilityIdentifier:v26];
    goto LABEL_36;
  }

  [v50 setAccessoryType:1];
  v7 = v6;
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 listType];

  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      objc_opt_class();
      v37 = v50;
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v16 = v38;

      v39 = [v7 latestResults];
      v40 = [v39 objectForKeyedSubscript:*MEMORY[0x277D14120]];
      [v16 setUserHandle:v40];

      v41 = [(HUItemModuleController *)self module];
      v42 = [v41 accessory];

      if (v42)
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
      v30 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
      [v30 setPrefersSideBySideTextAndSecondaryText:0];
      [v43 setContentConfiguration:v30];
      v32 = [v7 latestResults];
      v45 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v43 setAccessibilityIdentifier:v45];

      goto LABEL_35;
    }

    if (v9 != 2)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  if (v9 == 3)
  {
    [v50 setAccessoryType:0];
    objc_opt_class();
    v46 = v50;
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v16 = v47;

    v48 = [v7 latestResults];
    v49 = [v48 objectForKeyedSubscript:*MEMORY[0x277D14120]];
    [v16 setUserHandle:v49];

    v26 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
    [v26 setPrefersSideBySideTextAndSecondaryText:0];
    [v46 setContentConfiguration:v26];
    v30 = [v7 latestResults];
    v32 = [v30 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v46 setAccessibilityIdentifier:v32];
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  if (v9 == 4)
  {
LABEL_11:
    v15 = [MEMORY[0x277D756E0] cellConfiguration];
    v16 = [HUListContentConfigurationUtilities labelConfiguration:v15 forItem:v7];

    [v16 setPrefersSideBySideTextAndSecondaryText:0];
    v17 = [v7 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
    [v16 setSecondaryText:v18];

    v19 = [v16 imageProperties];
    [v19 setReservedLayoutSize:{37.0, 37.0}];

    v20 = [MEMORY[0x277D75348] systemGray2Color];
    v21 = [v16 imageProperties];
    [v21 setTintColor:v20];

    [v16 setAxesPreservingSuperviewLayoutMargins:2];
    [v50 setContentConfiguration:v16];
    v22 = [v7 latestResults];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v50 setAccessibilityIdentifier:v23];

    objc_opt_class();
    v24 = v50;
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
    v27 = [v7 latestResults];
    v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    v31 = 0;
    if ([v30 BOOLValue])
    {
      v31 = (v26 != 0) & ~[(HUPinCodeListModuleController *)self editing];
    }

    v32 = [v26 accessoryView];
    [v32 setHidden:v31];
    goto LABEL_35;
  }

LABEL_37:

LABEL_38:
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
    objc_opt_class();
    v8 = v6;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 user];

    if (v11)
    {
      [v7 setDisabled:1];
      [v7 updateUIWithAnimation:0];
      v12 = [v8 latestResults];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v7 setAccessibilityIdentifier:v13];
    }
  }
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 addPinCodeItem];

  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 revokePinCodeItem];

  result = 1;
  if (v6 != v4 && v8 != v4)
  {
    v10 = [(HUItemModuleController *)self module];
    v11 = [v10 accessory];
    if (v11)
    {
      v12 = v11;
      v13 = [(HUPinCodeListModuleController *)self editing];

      if (!v13)
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

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 addPinCodeItem];

  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 revokePinCodeItem];

  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 accessory];

  if (v10 && v8 == v4)
  {
    [(HUPinCodeListModuleController *)self showSpinner];
    v11 = [(HUItemModuleController *)self module];
    v12 = [v11 pinCodeManager];
    v13 = [v12 revokeAccessForAllRemovedUsers];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__HUPinCodeListModuleController_didSelectItem___block_invoke;
    v38[3] = &unk_277DB7530;
    v38[4] = self;
    v14 = [v13 addCompletionBlock:v38];
  }

  else
  {
    v15 = [(HUItemModuleController *)self module];
    v16 = [v15 accessory];
    v17 = v16;
    if (!v16 || v6 == v4)
    {
    }

    else
    {
      v18 = [(HUPinCodeListModuleController *)self editing];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    objc_opt_class();
    v19 = v4;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v11 = v20;

    v21 = [HUPinCodeDetailsViewController alloc];
    v22 = [(HUItemModuleController *)self module];
    v23 = [v22 pinCodeManager];
    v24 = [(HUItemModuleController *)self module];
    v25 = [v24 home];
    if (v6 == v4)
    {
      v26 = [(HUPinCodeDetailsViewController *)v21 initWithItem:0 pinCodeManager:v23 home:v25];

      [(HUPinCodeDetailsViewController *)v26 setDelegate:self];
      v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_addGuestDoneButtonPressed_];
      [(HUPinCodeListModuleController *)self setAddGuestDoneButtonItem:v28];

      v29 = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
      [v29 setEnabled:0];

      v30 = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
      v31 = [(HUPinCodeDetailsViewController *)v26 navigationItem];
      [v31 setRightBarButtonItem:v30];

      v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAddGuest_];
      v33 = [(HUPinCodeDetailsViewController *)v26 navigationItem];
      [v33 setLeftBarButtonItem:v32];

      v34 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
      [v34 setModalPresentationStyle:2];
      v27 = [HUViewControllerPresentationRequest requestWithViewController:v34];
      [v27 setPreferredPresentationType:0];
      [(HUPinCodeListModuleController *)self setAddGuestViewController:v26];
    }

    else
    {
      v26 = [(HUPinCodeDetailsViewController *)v21 initWithItem:v11 pinCodeManager:v23 home:v25];

      v27 = [HUViewControllerPresentationRequest requestWithViewController:v26];
      [v27 setPreferredPresentationType:1];
    }

    v35 = [(HUItemModuleController *)self host];
    v36 = [v35 moduleController:self presentViewControllerForRequest:v27];
  }

LABEL_17:
  return 0;
}

- (void)cancelAddGuest:(id)a3
{
  v4 = [(HUPinCodeListModuleController *)self addGuestViewController];
  v7 = [HUViewControllerDismissalRequest requestWithViewController:v4];

  v5 = [(HUItemModuleController *)self host];
  v6 = [v5 moduleController:self dismissViewControllerForRequest:v7];

  [(HUPinCodeListModuleController *)self setAddGuestViewController:0];
}

- (void)addGuestDoneButtonPressed:(id)a3
{
  v4 = [(HUPinCodeListModuleController *)self addGuestViewController];
  v5 = [v4 commitNewPinCode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUPinCodeListModuleController_addGuestDoneButtonPressed___block_invoke;
  v7[3] = &unk_277DB7B30;
  v7[4] = self;
  v6 = [v5 addCompletionBlock:v7];
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
  v2 = [(HUPinCodeListModuleController *)self addGuestViewController];
  v3 = [v2 navigationItem];
  v4 = [v3 rightBarButtonItem];

  return v4;
}

- (void)setAddButtonItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(HUPinCodeListModuleController *)self addGuestDoneButtonItem];
  }

  v7 = v4;
  v5 = [(HUPinCodeListModuleController *)self addGuestViewController];
  v6 = [v5 navigationItem];
  [v6 setRightBarButtonItem:v7];
}

- (void)showSpinner
{
  v3 = [(HUItemModuleController *)self host];
  v7 = [v3 presentingViewControllerForModuleController:self];

  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v4];
    v6 = [v7 navigationItem];
    [v6 setRightBarButtonItem:v5];

    [v4 startAnimating];
  }
}

- (void)hideSpinner
{
  v3 = [(HUItemModuleController *)self host];
  v10 = [v3 presentingViewControllerForModuleController:self];

  objc_opt_class();
  v4 = [v10 navigationItem];
  v5 = [v4 rightBarButtonItem];
  v6 = [v5 customView];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v10 navigationItem];
    [v9 setRightBarButtonItem:0];

    [v8 stopAnimating];
  }
}

- (void)_switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(HUPinCodeListModuleController *)self showSpinner];
  objc_opt_class();
  v7 = [v6 item];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 pinCodeManager];
  v12 = [(HUItemModuleController *)self module];
  v13 = [v12 accessory];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [v11 setPinCodeWithItem:v9 enabled:v4 onAccessories:v14];
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

- (void)itemSection:(id)a3 accessoryButtonPressedInHeader:(id)a4
{
  v5 = a4;
  [(HUPinCodeListModuleController *)self setEditing:[(HUPinCodeListModuleController *)self editing]^ 1];
  objc_opt_class();
  v6 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 itemManager];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = MEMORY[0x277CBEB18];
  v13 = [(HUItemModuleController *)self module];
  v14 = [v13 pinCodeItemProvider];
  v15 = [v14 items];
  v16 = [v15 allObjects];
  v17 = [v12 arrayWithArray:v16];

  v18 = [v11 transformedGuestUserItemProvider];

  v19 = [v18 items];
  v20 = [v19 allObjects];
  [v17 addObjectsFromArray:v20];

  v21 = [(HUItemModuleController *)self host];
  [v21 reloadCellForItems:v17 withDiffableDataSourceReload:1];

  objc_opt_class();
  v25 = v5;
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