@interface HUPinCodeDetailsViewController
- (BOOL)_codeLabelHasChanged;
- (BOOL)_codeValueHasChanged;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUPinCodeDetailsItemManager)pinCodeItemManager;
- (HUPinCodeDetailsViewController)initWithItem:(id)a3 pinCodeManager:(id)a4 home:(id)a5;
- (HUPinCodeDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUPinCodeDetailsViewDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (id)_allTextFields;
- (id)_validatePinCodeLabel;
- (id)commitAccessoryChanges;
- (id)commitNewPinCode;
- (id)commitPinCodeChanges;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_presentPinCodeErrorDialog;
- (void)_resignFirstResponderForAllTextFields;
- (void)_updateSaveEnabled;
- (void)hideSpinner;
- (void)itemManagerDidFinishUpdate:(id)a3;
- (void)personalPinCodeViewController:(id)a3 pinCodeDidChange:(id)a4;
- (void)pinCodeManagerFetchDidComplete:(id)a3;
- (void)showSpinner;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUPinCodeDetailsViewController

- (HUPinCodeDetailsViewController)initWithItem:(id)a3 pinCodeManager:(id)a4 home:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_SuppliedItemIs.isa, v8);
      }
    }
  }

  v11 = [v8 copy];
  v12 = [[HUPinCodeDetailsItemManager alloc] initWithDelegate:self sourceItem:v11 pinCodeManager:v9 home:v10];
  v44.receiver = self;
  v44.super_class = HUPinCodeDetailsViewController;
  v13 = [(HUItemTableViewController *)&v44 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pinCodeManager, a4);
    objc_storeWeak(&v14->_pinCodeItemManager, v12);
    v14->_isClosing = 0;
    [(HUItemTableViewController *)v14 setAutomaticallyUpdatesViewControllerTitle:0];
    objc_opt_class();
    v15 = v11;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v8)
    {
      v18 = [v17 accessories];
      v19 = [v18 copy];
      [(HUPinCodeDetailsViewController *)v14 setPinAccessories:v19];

      v20 = [(HUPinCodeDetailsViewController *)v14 pinAccessories];
      v21 = [v20 mutableCopy];
      [(HUPinCodeDetailsViewController *)v14 setAccessoriesToEdit:v21];

      v22 = [(HUPinCodeDetailsViewController *)v14 pinCodeItemManager];
      v23 = [v22 sourceItem];
      [v23 latestResults];
      v41 = v8;
      v24 = v12;
      v25 = v11;
      v26 = v10;
      v27 = v9;
      v29 = v28 = v17;
      v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [(HUPinCodeDetailsViewController *)v14 setTitle:v30];

      v17 = v28;
      v9 = v27;
      v10 = v26;
      v11 = v25;
      v12 = v24;
      v8 = v41;
    }

    else
    {
      v31 = _HULocalizedStringWithDefaultValue(@"HUAddGuestPinCodeTitle", @"HUAddGuestPinCodeTitle", 1);
      [(HUPinCodeDetailsViewController *)v14 setTitle:v31];

      [(HUPinCodeDetailsViewController *)v14 setCreatingNewPinCode:1];
      [(HUPinCodeDetailsViewController *)v14 setPinAccessories:MEMORY[0x277CBEBF8]];
      v32 = [v10 hf_accessoriesSupportingAccessCodes];
      v33 = [v32 mutableCopy];
      [(HUPinCodeDetailsViewController *)v14 setAccessoriesToEdit:v33];

      v34 = [v9 generateNewCodeValue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __67__HUPinCodeDetailsViewController_initWithItem_pinCodeManager_home___block_invoke;
      v42[3] = &unk_277DC2600;
      v43 = v14;
      v35 = [v34 addSuccessBlock:v42];

      v22 = v43;
    }

    v36 = objc_opt_new();
    inFlightAllowedAccessoryRemovals = v14->_inFlightAllowedAccessoryRemovals;
    v14->_inFlightAllowedAccessoryRemovals = v36;

    v38 = objc_opt_new();
    inFlightAllowedAccessoryAdditions = v14->_inFlightAllowedAccessoryAdditions;
    v14->_inFlightAllowedAccessoryAdditions = v38;
  }

  return v14;
}

void __67__HUPinCodeDetailsViewController_initWithItem_pinCodeManager_home___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setEditedPinCodeValue:a2];
  v3 = [*(a1 + 32) pinCodeItemManager];
  v4 = [v3 pinCodeValueItem];

  if (v4)
  {
    v5 = *(a1 + 32);
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 updateCellForItems:v6];
  }
}

- (HUPinCodeDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItem_pinCodeManager_home_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPinCodeDetailsViewController.m" lineNumber:140 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(HUPinCodeDetailsViewController *)self setIsClosing:1];
  v5 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v10 viewDidAppear:a3];
  v4 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
  [v4 addObserver:self];

  v5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v6 = [v5 pinCodeLabelItem];
  v7 = [(HUItemTableViewController *)self textFieldForVisibleItem:v6];

  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = [v8 sourceItem];

  if (!v9 && v7)
  {
    [v7 becomeFirstResponder];
  }
}

- (void)showSpinner
{
  v16 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v4 = [(HUPinCodeDetailsViewController *)self delegate];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v16];
  if (v4)
  {
    v6 = [(HUPinCodeDetailsViewController *)self delegate];
    [v6 setAddButtonItem:v5];
  }

  else
  {
    v6 = [(HUPinCodeDetailsViewController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  [v16 startAnimating];
  v7 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [v7 setOperationInProgress:1];

  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = MEMORY[0x277CBEB98];
  v10 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v11 = [v10 deleteGuestPINCodeItem];
  v12 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v13 = [v12 pinCodeRestoreAccessItem];
  v14 = [v9 setWithObjects:{v11, v13, 0}];
  v15 = [v8 updateResultsForItems:v14 senderSelector:a2];
}

- (void)hideSpinner
{
  v4 = [(HUPinCodeDetailsViewController *)self delegate];

  objc_opt_class();
  if (v4)
  {
    v5 = [(HUPinCodeDetailsViewController *)self delegate];
    v6 = [v5 addButtonItem];
    v7 = [v6 customView];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v23 = v8;

    v9 = [(HUPinCodeDetailsViewController *)self delegate];
    [v9 setAddButtonItem:0];
  }

  else
  {
    v10 = [(HUPinCodeDetailsViewController *)self navigationItem];
    v11 = [v10 rightBarButtonItem];
    v12 = [v11 customView];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;

    v9 = [(HUPinCodeDetailsViewController *)self navigationItem];
    [v9 setRightBarButtonItem:0];
  }

  [v23 stopAnimating];
  v14 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [v14 setOperationInProgress:0];

  v15 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v16 = MEMORY[0x277CBEB98];
  v17 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v18 = [v17 deleteGuestPINCodeItem];
  v19 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v20 = [v19 pinCodeRestoreAccessItem];
  v21 = [v16 setWithObjects:{v18, v20, 0}];
  v22 = [v15 updateResultsForItems:v21 senderSelector:a2];
}

- (id)commitAccessoryChanges
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [(HUPinCodeDetailsViewController *)self showSpinner];
    objc_opt_class();
    v5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v6 = [v5 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    v10 = [(HUPinCodeDetailsViewController *)self pinAccessories];
    v11 = [v9 differenceFromArray:v10];

    v12 = [v11 insertions];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v11 insertions];
      v15 = [v14 na_map:&__block_literal_global_235];

      v16 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v17 = [v16 setPinCodeWithItem:v8 enabled:1 onAccessories:v15];
      [v3 addObject:v17];
    }

    v18 = [v11 removals];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v11 removals];
      v21 = [v20 na_map:&__block_literal_global_29_2];

      v22 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v23 = [v22 setPinCodeWithItem:v8 enabled:0 onAccessories:v21];
      [v3 addObject:v23];
    }

    v24 = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    v25 = [v24 copy];

    objc_initWeak(&location, self);
    v26 = MEMORY[0x277D2C900];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __56__HUPinCodeDetailsViewController_commitAccessoryChanges__block_invoke_3;
    v33[3] = &unk_277DB9210;
    objc_copyWeak(&v35, &location);
    v27 = v25;
    v34 = v27;
    v28 = [v26 futureWithBlock:v33];
    [v3 addObject:v28];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    objc_initWeak(&location, self);
    v29 = [MEMORY[0x277D2C900] chainFutures:v3];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __56__HUPinCodeDetailsViewController_commitAccessoryChanges__block_invoke_4;
    v31[3] = &unk_277DB8CA8;
    objc_copyWeak(&v32, &location);
    v4 = [v29 addCompletionBlock:v31];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __56__HUPinCodeDetailsViewController_commitAccessoryChanges__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPinAccessories:*(a1 + 32)];
  [v3 finishWithNoResult];
}

void __56__HUPinCodeDetailsViewController_commitAccessoryChanges__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideSpinner];
  if (v6)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v6 operationType:*MEMORY[0x277D13CC0] options:0 retryBlock:0 cancelBlock:0];
  }
}

- (id)commitPinCodeChanges
{
  objc_opt_class();
  v4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v5 = [v4 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (-[HUPinCodeDetailsViewController _codeLabelHasChanged](self, "_codeLabelHasChanged") && (-[HUPinCodeDetailsViewController editedPinCodeLabel](self, "editedPinCodeLabel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v10))
    {
      [(HUPinCodeDetailsViewController *)self showSpinner];
      objc_initWeak(&location, self);
      v11 = [(HUPinCodeDetailsViewController *)self _validatePinCodeLabel];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke;
      v17[3] = &unk_277DC2648;
      objc_copyWeak(&v19, &location);
      v18 = v7;
      v12 = [v11 flatMap:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke_2;
    v14[3] = &unk_277DBA0F8;
    objc_copyWeak(v16, &location);
    v15 = v7;
    v16[1] = a2;
    v8 = [v12 addCompletionBlock:v14];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pinCodeManager];
  v4 = *(a1 + 32);
  v5 = [WeakRetained editedPinCodeLabel];
  v6 = [v3 updateGuestPinCodeWithItem:v4 withLabel:v5];

  return v6;
}

void __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained hideSpinner];
  if (a3)
  {
    [WeakRetained setEditedPinCodeValue:0];
    [WeakRetained setEditedPinCodeLabel:0];
    v6 = [WeakRetained pinCodeItemManager];
    v7 = [v6 pinCodeValueItem];
    v19[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [WeakRetained updateCellForItems:v8];
  }

  else
  {
    v9 = [WeakRetained editedPinCodeValue];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [*(a1 + 32) pinCodeValue];
    }

    v6 = v11;

    v12 = [WeakRetained pinCodeManager];
    v13 = [v12 pinCodeForCodeValue:v6];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke_3;
    v15[3] = &unk_277DC2368;
    v16 = *(a1 + 32);
    v17 = WeakRetained;
    v18 = *(a1 + 48);
    v14 = [v13 addSuccessBlock:v15];

    v7 = v16;
  }
}

void __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) updateFromPinCode:a2];
  [*(a1 + 40) setEditedPinCodeValue:0];
  [*(a1 + 40) setEditedPinCodeLabel:0];
  v4 = [*(a1 + 40) pinCodeItemManager];
  v3 = [v4 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];
}

- (id)commitNewPinCode
{
  [(HUPinCodeDetailsViewController *)self showSpinner];
  v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
    objc_initWeak(&location, self);
    v4 = [(HUPinCodeDetailsViewController *)self _validatePinCodeLabel];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke;
    v14[3] = &unk_277DBD948;
    objc_copyWeak(&v15, &location);
    v5 = [v4 flatMap:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    v3 = v5;
  }

  else
  {
    NSLog(&cfstr_Commitnewpinco.isa);
  }

  v6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v7 = [v6 home];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_2;
  v11[3] = &unk_277DC2670;
  objc_copyWeak(&v13, &location);
  v8 = v7;
  v12 = v8;
  v9 = [v3 addCompletionBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

id __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pinCodeManager];
  v3 = [WeakRetained editedPinCodeValue];
  v4 = [WeakRetained editedPinCodeLabel];
  v5 = [WeakRetained accessoriesToEdit];
  v6 = [v2 addGuestPinCode:v3 withLabel:v4 onAccessories:v5];

  return v6;
}

void __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v6 inHome:*(a1 + 32) onAccessory:0];

  v9 = [v8 updateWithOptions:MEMORY[0x277CBEC10]];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 na_safeSetObject:*(a1 + 32) forKey:*MEMORY[0x277D13520]];
  [v10 na_safeSetObject:&unk_282492030 forKey:*MEMORY[0x277D133C0]];
  [v10 na_safeSetObject:v8 forKey:*MEMORY[0x277D133B8]];
  [v10 na_safeSetObject:v5 forKey:*MEMORY[0x277D13510]];

  [MEMORY[0x277D143D8] sendEvent:26 withData:v10];
  if (WeakRetained)
  {
    [WeakRetained hideSpinner];
    if (v6)
    {
      v11 = dispatch_time(0, 650000000);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_41;
      v12[3] = &unk_277DB7558;
      v13 = v8;
      v14 = *(a1 + 32);
      dispatch_after(v11, MEMORY[0x277D85CD0], v12);
    }
  }
}

void __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_41(uint64_t a1)
{
  if ([MEMORY[0x277CC1EC8] isCurrentProcessAnApplicationExtension])
  {
    NSLog(&cfstr_WeAreCurrently.isa);
  }

  else
  {
    v2 = [MEMORY[0x277D75128] performSelector:sel_sharedApplication];
    v3 = [v2 keyWindow];
    v4 = [v3 rootViewController];
    v5 = [v4 presentedViewController];
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      v8 = v4;
      while (1)
      {
        v9 = [v8 presentedViewController];
        v10 = [v9 isBeingDismissed];

        if (v10)
        {
          break;
        }

        v6 = [v8 presentedViewController];

        v7 = [v6 presentedViewController];
        v8 = v6;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      v6 = v8;
    }

LABEL_9:
    v11 = MEMORY[0x277D75110];
    v12 = _HULocalizedStringWithDefaultValue(@"HUPinCodeShareButtonTitle", @"HUPinCodeShareButtonTitle", 1);
    v13 = _HULocalizedStringWithDefaultValue(@"HUPinCodeShareAlertMessage", @"HUPinCodeShareAlertMessage", 1);
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = MEMORY[0x277D750F8];
    v16 = _HULocalizedStringWithDefaultValue(@"HUPinCodeShareAlertButton", @"HUPinCodeShareAlertButton", 1);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_2_60;
    v22[3] = &unk_277DBBD68;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v6;
    v17 = v6;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v22];
    [v14 addAction:v18];

    v19 = MEMORY[0x277D750F8];
    v20 = _HULocalizedStringWithDefaultValue(@"HUPinCodeShareAlertNotNowButton", @"HUPinCodeShareAlertNotNowButton", 1);
    v21 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_72];
    [v14 addAction:v21];

    [v17 presentViewController:v14 animated:1 completion:0];
  }
}

void __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_2_60(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v9 = 136315394;
    v10 = "[HUPinCodeDetailsViewController commitNewPinCode]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped share button '%@' from the alert popup", &v9, 0x16u);
  }

  v6 = [HUPinCodeUtilities createSharingViewControllerForPinCodeItem:*(a1 + 32) inHome:*(a1 + 40)];
  if ([v6 modalPresentationStyle] == 7)
  {
    v7 = [v6 popoverPresentationController];
    v8 = [*(a1 + 48) view];
    [v7 setSourceView:v8];
  }

  [*(a1 + 48) presentViewController:v6 animated:1 completion:&__block_literal_global_65_1];
}

void __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_62()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUPinCodeDetailsViewController commitNewPinCode]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) Completed presenting activity view controller", &v1, 0xCu);
  }
}

void __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_70(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "[HUPinCodeDetailsViewController commitNewPinCode]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Not now button '%@' from the alert popup", &v5, 0x16u);
  }
}

- (void)pinCodeManagerFetchDidComplete:(id)a3
{
  v5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v6 = [v5 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v8 = [v9 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)itemManagerDidFinishUpdate:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v9 itemManagerDidFinishUpdate:a3];
  v4 = [(HUPinCodeDetailsViewController *)self title];

  if (!v4)
  {
    v5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v6 = [v5 sourceItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUPinCodeDetailsViewController *)self setTitle:v8];
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v7 = [v6 addOrShowHomeKeyItem];
  if ([v5 isEqual:v7])
  {
    goto LABEL_17;
  }

  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = [v8 restoreHomeKeyAccessItem];

  if (v9 == v5)
  {
    goto LABEL_18;
  }

  v6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v7 = [v6 deleteGuestPINCodeItem];
  if (v7 == v5)
  {
    goto LABEL_17;
  }

  v10 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v11 = [v10 pinCodeRestoreAccessItem];
  v12 = v11;
  if (v11 == v5)
  {

LABEL_17:
    goto LABEL_18;
  }

  v13 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v14 = [v13 pinCodeChangeItem];
  v15 = [v5 isEqual:v14];

  if (v15)
  {
LABEL_18:
    v32 = objc_opt_class();
    goto LABEL_19;
  }

  v16 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v17 = [v16 transformedLocksItemProvider];
  v18 = [v17 items];
  v19 = [v18 containsObject:v5];

  if (!v19)
  {
    v34 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v35 = [v34 pinCodeLabelItem];
    v36 = [v5 isEqual:v35];

    if (v36)
    {
      goto LABEL_18;
    }

    v6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v7 = [v6 pinCodeValueItem];
    if (![v5 isEqual:v7])
    {
      v37 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      v38 = [v37 personalPINCodeItem];
      [v5 isEqual:v38];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  v20 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v21 = [v20 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  objc_opt_class();
  v24 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v25 = [v24 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  v28 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v29 = [v28 home];

  v30 = [v27 user];

  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = [v23 user];
  }

  v39 = v31;

  if (![v29 hf_currentUserIsAdministrator] || (objc_msgSend(v29, "hf_userIsRestrictedGuest:", v39) & 1) == 0)
  {
    v40 = [v23 user];
    if (v40 | v27)
    {
    }

    else
    {
      [v23 isUnknownGuestFromMatter];
    }
  }

  v32 = objc_opt_class();

LABEL_19:

  return v32;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v82.receiver = self;
  v82.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v82 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v13 = [v12 deleteGuestPINCodeItem];

  if (v13 == v11)
  {
    v31 = v10;
    [v31 setDestructive:1];
    v32 = [v11 latestResults];
    v20 = [v32 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

    v33 = [v20 BOOLValue];
    v21 = [v31 textLabel];

    [v21 setEnabled:v33 ^ 1u];
  }

  else
  {
    v14 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v15 = [v14 pinCodeRestoreAccessItem];

    if (v15 != v11)
    {
      v16 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      v17 = [v16 pinCodeLabelItem];

      if (v17 == v11)
      {
        objc_opt_class();
        v38 = v10;
        if (objc_opt_isKindOfClass())
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        v20 = v39;

        v40 = [v11 latestResults];
        v41 = [v40 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        v42 = [v20 textField];
        [v42 setText:v41];

        v43 = [v11 latestResults];
        v44 = [v43 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        v45 = [v20 textField];
        [v45 setAccessibilityIdentifier:v44];

        v46 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestNamePlaceholder", @"HUAddPersonPinGuestNamePlaceholder", 1);
        v47 = [v20 textField];
        [v47 setPlaceholder:v46];

        v48 = [v20 textField];
        [v48 setClearButtonMode:3];

        v49 = [v20 textField];
        [v49 setKeyboardType:1];

        v50 = [v11 latestResults];
        v21 = [v50 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

        [v20 setDisabled:{objc_msgSend(v21, "BOOLValue")}];
        v51 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];

        if (!v51)
        {
          goto LABEL_23;
        }

        v25 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
        v29 = [v20 textField];
        [v29 setText:v25];
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v18 = v10;
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        [v20 setDelegate:self];
        v21 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v11];
        objc_opt_class();
        v22 = [v11 latestResults];
        v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        if (v25)
        {
          v26 = [v21 imageProperties];
          [v26 setTintColor:v25];
        }

        v27 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
        v28 = [v21 imageProperties];
        [v28 setPreferredSymbolConfiguration:v27];

        [v20 setContentConfiguration:v21];
        v29 = [v11 latestResults];
        v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v20 setAccessibilityIdentifier:v30];

LABEL_21:
LABEL_22:

        goto LABEL_23;
      }

      v52 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      v53 = [v52 pinCodeValueItem];
      v54 = [v11 isEqual:v53];

      if (v54)
      {
        v55 = [MEMORY[0x277D756E0] valueCellConfiguration];
        v20 = [HUListContentConfigurationUtilities labelConfiguration:v55 forItem:v11];

        v56 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];

        if (v56)
        {
          v57 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
          [v20 setSecondaryText:v57];
        }

        [v10 setContentConfiguration:v20];
        v58 = [v11 latestResults];
        v59 = [v58 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v10 setAccessibilityIdentifier:v59];

        v21 = [v10 layer];
        [v21 setDisableUpdateMask:16];
        goto LABEL_23;
      }

      v60 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      v61 = [v60 personalPINCodeItem];
      v62 = [v11 isEqual:v61];

      if (v62)
      {
        v63 = [MEMORY[0x277D756E0] cellConfiguration];
        v20 = [HUListContentConfigurationUtilities labelConfiguration:v63 forItem:v11];

        [v10 setContentConfiguration:v20];
        [v10 setAccessoryType:1];
      }

      else
      {
        v64 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
        v65 = [v64 addOrShowHomeKeyItem];
        v66 = [v11 isEqual:v65];

        if (!v66)
        {
          v72 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
          v73 = [v72 transformedLocksItemProvider];
          v74 = [v73 items];
          v75 = [v74 containsObject:v11];

          if (!v75)
          {
            goto LABEL_24;
          }

          v20 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v11];
          objc_opt_class();
          v76 = [v11 latestResults];
          v77 = [v76 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
          if (objc_opt_isKindOfClass())
          {
            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          v21 = v78;

          if (v21)
          {
            v79 = [v20 imageProperties];
            [v79 setTintColor:v21];
          }

          v80 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
          v81 = [v20 imageProperties];
          [v81 setPreferredSymbolConfiguration:v80];

          [v10 setContentConfiguration:v20];
          v25 = [v11 latestResults];
          v29 = [v25 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
          [v10 setAccessibilityIdentifier:v29];
          goto LABEL_21;
        }

        v20 = [MEMORY[0x277D756E0] valueCellConfiguration];
        v67 = [v11 latestResults];
        v68 = [v67 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [v20 setText:v68];

        v69 = [MEMORY[0x277D75348] hf_keyColor];
        v70 = [v20 textProperties];
        [v70 setColor:v69];

        v71 = [MEMORY[0x277D755B8] hu_walletAppIconImage];
        [v20 setImage:v71];

        [v10 setContentConfiguration:v20];
      }

      v21 = [v11 latestResults];
      v25 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v10 setAccessibilityIdentifier:v25];
      goto LABEL_22;
    }

    v34 = v10;
    v35 = [v11 latestResults];
    v20 = [v35 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

    LODWORD(v35) = [v20 BOOLValue];
    v36 = [v34 textLabel];
    [v36 setEnabled:v35 ^ 1];

    v21 = [v11 latestResults];
    v37 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v34 setAccessibilityIdentifier:v37];
  }

LABEL_23:

LABEL_24:
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = [v8 pinCodeLabelItem];

  if (v9 == v7)
  {
    [(HUPinCodeDetailsViewController *)self setEditedPinCodeLabel:v10];
  }

  [(HUPinCodeDetailsViewController *)self _updateSaveEnabled];
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = [a3 text];
  if ([v4 length] || -[HUPinCodeDetailsViewController creatingNewPinCode](self, "creatingNewPinCode"))
  {

    return 1;
  }

  v6 = [(HUPinCodeDetailsViewController *)self isClosing];

  return v6;
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = [(HUPinCodeDetailsViewController *)self commitPinCodeChanges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HUPinCodeDetailsViewController_textFieldDidEndEditing_item___block_invoke;
  v9[3] = &unk_277DB7E90;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  v8 = [v6 addFailureBlock:v9];
}

void __62__HUPinCodeDetailsViewController_textFieldDidEndEditing_item___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isClosing])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[HUPinCodeDetailsViewController textFieldDidEndEditing:item:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Supressing PIN Code validation error because we're closing view: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    v6 = *MEMORY[0x277D13CC0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__HUPinCodeDetailsViewController_textFieldDidEndEditing_item___block_invoke_91;
    v7[3] = &unk_277DB8488;
    v8 = *(a1 + 40);
    [v5 handleError:v3 operationType:v6 options:0 retryBlock:0 cancelBlock:v7];

    v4 = v8;
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = [v8 sourceItem];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v12 = [v11 pinCodeValueItem];
    v10 = v12 != v7;
  }

  return v10;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = [v8 transformedLocksItemProvider];
  v10 = [v9 items];
  v11 = [v10 containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v137 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v130.receiver = self;
  v130.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v130 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v132 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]";
    v133 = 2112;
    v134 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "(%s) User selected item %@", buf, 0x16u);
  }

  objc_opt_class();
  v11 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v12 = [v11 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v104 = v13;

  v14 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v15 = [v14 deleteGuestPINCodeItem];
  v16 = v9 == v15;

  v17 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v18 = v17;
  if (v16)
  {
    v28 = [v17 operationInProgress];

    if (v28)
    {
      goto LABEL_46;
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    aBlock[3] = &unk_277DB9948;
    objc_copyWeak(&v129, buf);
    v29 = v104;
    v128 = v29;
    v30 = _Block_copy(aBlock);
    if ([v29 isUnknownGuestFromMatter])
    {
      v31 = [v29 latestResults];
      v102 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      v101 = HULocalizedStringWithFormat(@"HUUsersRemovePersonAlertTitle", @"%@", v32, v33, v34, v35, v36, v37, v102);
      v38 = [(HUItemTableViewController *)self itemManager];
      v39 = [v38 home];
      v100 = [v39 name];
      v46 = HULocalizedStringWithFormat(@"HUUsersRemovePersonConfirmationMessage", @"%@%@", v40, v41, v42, v43, v44, v45, v102);

      v47 = [(UITableViewController *)self hu_actionSheetWithTitle:v101 message:v46 indexPath:v7];
      v48 = MEMORY[0x277D750F8];
      v49 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
      v50 = [v48 actionWithTitle:v49 style:1 handler:&__block_literal_global_116_2];
      [v47 addAction:v50];

      v51 = MEMORY[0x277D750F8];
      v52 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
      v53 = [v51 actionWithTitle:v52 style:2 handler:v30];
      [v47 addAction:v53];

      [(HUPinCodeDetailsViewController *)self presentViewController:v47 animated:1 completion:0];
    }

    else
    {
      v30[2](v30, 0);
    }

    objc_destroyWeak(&v129);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = [v17 pinCodeChangeItem];
    v20 = [v9 isEqual:v19];

    if (v20)
    {
      v21 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v22 = [v21 hasValidConstraints];

      objc_initWeak(buf, self);
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_120;
      v125[3] = &unk_277DC26C0;
      objc_copyWeak(&v126, buf);
      v23 = [v22 addSuccessBlock:v125];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v123[3] = &unk_277DB94D0;
      objc_copyWeak(&v124, buf);
      v24 = [v22 addFailureBlock:v123];
      v25 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_125;
      v121[3] = &unk_277DB8488;
      v26 = v22;
      v122 = v26;
      v27 = [v25 afterDelay:v121 performBlock:1.0];

      objc_destroyWeak(&v124);
      objc_destroyWeak(&v126);
      objc_destroyWeak(buf);

      goto LABEL_33;
    }

    v54 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v55 = [v54 pinCodeRestoreAccessItem];
    v56 = v9 == v55;

    v57 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v58 = v57;
    if (v56)
    {
      v70 = [v57 operationInProgress];

      if (v70)
      {
        goto LABEL_46;
      }

      [(HUPinCodeDetailsViewController *)self showSpinner];
      v71 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v72 = [v71 restoreFullAccessForUserWithItem:v104];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_127;
      v117[3] = &unk_277DC26E8;
      v118 = v104;
      v119 = self;
      v120 = a2;
      v73 = [v72 addCompletionBlock:v117];
      v74 = [v73 addFailureBlock:&__block_literal_global_130_2];

      goto LABEL_33;
    }

    v59 = [v57 personalPINCodeItem];
    v60 = [v9 isEqual:v59];

    if (v60)
    {
      [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
      objc_opt_class();
      v61 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      v62 = [v61 sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      v64 = v63;

      objc_initWeak(&location, self);
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
      v114[3] = &unk_277DB8770;
      objc_copyWeak(&v115, &location);
      v65 = _Block_copy(v114);
      v66 = objc_alloc_init(MEMORY[0x277CD4790]);
      v113 = 0;
      v67 = [v66 canEvaluatePolicy:2 error:&v113];
      v68 = v113;
      v69 = v68;
      if (v64)
      {
        goto LABEL_18;
      }

      if (v67)
      {
        v75 = _HULocalizedStringWithDefaultValue(@"HUPinCodePassCodeAuthString", @"HUPinCodePassCodeAuthString", 1);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
        v110[3] = &unk_277DC2710;
        v112 = v65;
        v111 = v66;
        [v111 evaluatePolicy:2 localizedReason:v75 reply:v110];
      }

      else
      {
        v76 = [v68 domain];
        if ([v76 isEqualToString:*MEMORY[0x277CD4770]])
        {
          v77 = [v69 code] == -5;

          if (v77)
          {
LABEL_18:
            v65[2](v65);
LABEL_32:

            objc_destroyWeak(&v115);
            objc_destroyWeak(&location);

            goto LABEL_33;
          }
        }

        else
        {
        }

        v75 = HFLogForCategory();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v132 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]";
          v133 = 2112;
          v134 = v69;
          _os_log_error_impl(&dword_20CEB6000, v75, OS_LOG_TYPE_ERROR, "(%s) cannot local authenticate. error = %@", buf, 0x16u);
        }
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  v78 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v79 = [v78 addOrShowHomeKeyItem];
  v80 = [v9 isEqual:v79];

  if (v80)
  {
    [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
    v81 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v82 = [v81 home];

    v83 = HFLogForCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v132 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]";
      v133 = 2112;
      v134 = v9;
      v135 = 2112;
      v136 = v82;
      _os_log_impl(&dword_20CEB6000, v83, OS_LOG_TYPE_DEFAULT, "(%s) user tapped %@ in home %@", buf, 0x20u);
    }

    v84 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    v85 = v84;
    if (objc_opt_isKindOfClass())
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    v87 = v86;

    [v87 setShowSpinner:1];
    v88 = [MEMORY[0x277D14D08] handleAddOrShowHomeKeyButtonTapForHome:v82];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_138;
    v108[3] = &unk_277DB7530;
    v109 = v87;
    v89 = v87;
    v90 = [v88 addCompletionBlock:v108];

    goto LABEL_45;
  }

  v91 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v92 = [v91 restoreHomeKeyAccessItem];
  v93 = [v9 isEqual:v92];

  if (v93)
  {
    v94 = [v6 cellForRowAtIndexPath:v7];
    objc_opt_class();
    v82 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = v82;
    }

    else
    {
      v95 = 0;
    }

    v96 = v95;

    [v96 setShowSpinner:1];
    v97 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v98 = [v97 restoreFuture];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_139;
    v105[3] = &unk_277DC2760;
    v106 = v96;
    v107 = a2;
    v105[4] = self;
    v85 = v96;
    v99 = [v98 addSuccessBlock:v105];

LABEL_45:
  }

LABEL_46:
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    *buf = 136315394;
    v14 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from the alert popup", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showSpinner];
  v7 = [WeakRetained pinCodeManager];
  v8 = [v7 deleteGuestPinCodeWithItem:*(a1 + 32)];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_95;
  v10[3] = &unk_277DBC1A0;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  v9 = [v8 addCompletionBlock:v10];

  objc_destroyWeak(&v12);
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_95(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v11)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v11 operationType:*MEMORY[0x277D13CC0] options:0 retryBlock:0 cancelBlock:0];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [WeakRetained pinCodeItemManager];
  v8 = [v7 home];
  [v6 na_safeSetObject:v8 forKey:*MEMORY[0x277D13520]];

  [v6 na_safeSetObject:&unk_282492048 forKey:*MEMORY[0x277D133C0]];
  [v6 na_safeSetObject:*(a1 + 32) forKey:*MEMORY[0x277D133B8]];
  [v6 na_safeSetObject:v11 forKey:*MEMORY[0x277D13510]];
  [MEMORY[0x277D143D8] sendEvent:26 withData:v6];
  v9 = [WeakRetained navigationController];
  v10 = [v9 popViewControllerAnimated:1];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_114()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button from the alert popup", &v1, 0xCu);
  }
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_120(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 BOOLValue])
  {
    v5 = [WeakRetained editedPinCodeValue];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [WeakRetained pinCodeItemManager];
      v9 = [v8 pinCodeValueItem];
      v10 = [v9 latestResults];
      v7 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    v11 = [WeakRetained pinCodeItemManager];
    v12 = [v11 home];

    v13 = [HUPinCodeEditorViewController alloc];
    v14 = [WeakRetained pinCodeManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v18[3] = &unk_277DC2698;
    objc_copyWeak(&v19, (a1 + 32));
    v15 = [(HUPinCodeEditorViewController *)v13 initForCreatingNewPinCodeWithManager:v14 initialPinCodeValue:v7 home:v12 completionBlock:v18];

    v16 = [WeakRetained hu_delegateForModalPresentation];
    [v15 setPresentationDelegate:v16];

    v17 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
    [WeakRetained presentViewController:v17 animated:1 completion:0];

    objc_destroyWeak(&v19);
  }

  else
  {
    [WeakRetained _presentPinCodeErrorDialog];
  }
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained setEditedPinCodeValue:v3];
    v6 = [v5 pinCodeItemManager];
    v7 = [v6 pinCodeValueItem];
    v9[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v5 updateCellForItems:v8];
  }

  [v5 _updateSaveEnabled];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%s) Unable to retrieve valid Pin Code constraints with error: %@", &v6, 0x16u);
  }

  [WeakRetained _presentPinCodeErrorDialog];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_125(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];
  }
}

uint64_t __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_127(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) updateFromPinCode:a2];
    v3 = [*(a1 + 40) pinCodeItemManager];
    v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];
  }

  v5 = *(a1 + 40);

  return [v5 hideSpinner];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3_128(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13CC0] options:0 retryBlock:0 cancelBlock:0];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pinCodeItemManager];
  v2 = [v1 home];

  v3 = [WeakRetained itemManager];
  v4 = [v3 sourceItem];

  v5 = [HUPersonalPINCodeViewController alloc];
  v6 = [WeakRetained pinCodeManager];
  v7 = [(HUPersonalPINCodeViewController *)v5 initWithItem:v4 pinCodeManager:v6 home:v2];

  [(HUPersonalPINCodeViewController *)v7 setDelegate:WeakRetained];
  v8 = [WeakRetained navigationController];
  v9 = [v8 hu_pushPreloadableViewController:v7 animated:1];
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke_5";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(%s) When evaluating authentication policy, authError = %@", &v7, 0x16u);
    }
  }

  else
  {
    if (a2)
    {
      dispatch_async(MEMORY[0x277D85CD0], *(a1 + 40));
    }

    [*(a1 + 32) invalidate];
  }
}

void __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_139(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pinCodeItemManager];
  v6 = [v5 home];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3_140;
  v9[3] = &unk_277DC2738;
  v9[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v6 restoreMissingWalletKeys:v4 completion:v9];
}

uint64_t __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3_140(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D2C900] futureWithResult:a2];
  v4 = [*(a1 + 32) pinCodeItemManager];
  [v4 setRestoreFuture:v3];

  v5 = [*(a1 + 32) pinCodeItemManager];
  v6 = [v5 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];

  v7 = *(a1 + 40);

  return [v7 setShowSpinner:0];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v48 = a4;
  v75 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUPinCodeDetailsViewController *)self tableView];
  v7 = [v6 indexPathForCell:v5];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  objc_opt_class();
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v47 = v14;

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 text];
    *buf = 136315906;
    v68 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]";
    v69 = 2112;
    v70 = v16;
    v71 = 1024;
    v72 = v48;
    v73 = 2112;
    v74 = v10;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch cell: %@ | isOn = %{BOOL}d | item = %@", buf, 0x26u);
  }

  objc_opt_class();
  v17 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v18 = [v17 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v45 = v19;

  objc_opt_class();
  v20 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v21 = [v20 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = v23;
  v25 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v26 = [v25 home];

  v27 = [v23 user];
  v28 = v27;
  if (v27)
  {
    v46 = v27;
  }

  else
  {
    v46 = [v45 user];
  }

  if ([v26 hf_currentUserIsAdministrator] && objc_msgSend(v26, "hf_userIsRestrictedGuest:", v46))
  {
    v29 = [v47 accessory];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DC2788;
    objc_copyWeak(&v65, buf);
    v44 = v26;
    v61 = v44;
    v43 = v46;
    v62 = v43;
    v66 = v48;
    v30 = v29;
    v63 = v30;
    v31 = v5;
    v64 = v31;
    v32 = _Block_copy(aBlock);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_155;
    v55[3] = &unk_277DC27B0;
    objc_copyWeak(&v58, buf);
    v33 = v30;
    v56 = v33;
    v59 = v48;
    v42 = v32;
    v57 = v42;
    v34 = _Block_copy(v55);
    v35 = v7;
    v36 = v5;
    v37 = MEMORY[0x277D75D28];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_157;
    v52[3] = &unk_277DB7EE0;
    v53 = v31;
    v54 = v48;
    [v37 hu_presentingLockLimitAlertIfNeededFromViewController:self home:v44 user:v43 accessory:v33 include:v52 continueActionBlock:? cancelActionBlock:?];

    v5 = v36;
    v7 = v35;

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v65);
    objc_destroyWeak(buf);
  }

  else
  {
    v38 = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    v39 = [v47 accessory];
    if (v48)
    {
      [v38 addObject:v39];
    }

    else
    {
      [v38 removeObject:v39];
    }

    [(HUPinCodeDetailsViewController *)self _updateSaveEnabled];
    v40 = [(HUPinCodeDetailsViewController *)self commitAccessoryChanges];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_158;
    v49[3] = &unk_277DBC098;
    v50 = v5;
    v51 = v48;
    v41 = [v40 addFailureBlock:v49];

    v33 = v50;
  }
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) homeAccessControlForUser:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [v3 restrictedGuestAccessSettings];
  v6 = [v5 accessAllowedToAccessories];
  v7 = [v4 initWithSet:v6];

  if (*(a1 + 72) == 1)
  {
    [WeakRetained inFlightAllowedAccessoryAdditions];
  }

  else
  {
    [WeakRetained inFlightAllowedAccessoryRemovals];
  }
  v8 = ;
  [v8 na_safeAddObject:*(a1 + 48)];

  v9 = [WeakRetained inFlightAllowedAccessoryAdditions];
  v10 = [v7 setByAddingObjectsFromSet:v9];
  v11 = [v10 mutableCopy];

  v12 = [WeakRetained inFlightAllowedAccessoryRemovals];
  v13 = [v11 na_setByRemovingObjectsFromSet:v12];
  v14 = [v13 mutableCopy];

  v15 = [v3 restrictedGuestAccessSettings];
  v16 = [v15 mutableCopy];

  [v16 setAccessAllowedToAccessories:v14];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [WeakRetained inFlightAllowedAccessoryAdditions];
    v19 = [WeakRetained inFlightAllowedAccessoryRemovals];
    *buf = 136315906;
    v40 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]_block_invoke";
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "(%s) Updating allowed accessories to: %@ | In flight additions: %@ | In flight removals: %@", buf, 0x2Au);
  }

  v20 = MEMORY[0x277D2C900];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_145;
  v36[3] = &unk_277DB8200;
  v21 = v3;
  v37 = v21;
  v22 = v16;
  v38 = v22;
  v23 = [v20 futureWithBlock:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_146;
  v33[3] = &unk_277DB8620;
  objc_copyWeak(&v35, (a1 + 64));
  v34 = *(a1 + 48);
  v24 = [v23 addCompletionBlock:v33];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_147;
  v30[3] = &unk_277DB7E68;
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v25 = [v23 addSuccessBlock:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_154;
  v27[3] = &unk_277DBC098;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  v26 = [v23 addFailureBlock:v27];

  objc_destroyWeak(&v35);
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_145(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2;
  v7[3] = &unk_277DB8C00;
  v8 = v3;
  v6 = v3;
  [v5 updateRestrictedGuestSettings:v4 completionHandler:v7];
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Finished attempt to update guest access settings with error %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 finishWithError:v3];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_146(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained inFlightAllowedAccessoryAdditions];
  [v2 removeObject:*(a1 + 32)];

  v3 = [WeakRetained inFlightAllowedAccessoryRemovals];
  [v3 removeObject:*(a1 + 32)];
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_147(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]_block_invoke_2";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Successfully updated allowed accessories.", buf, 0xCu);
  }

  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_149;
  v4[3] = &unk_277DB9920;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 dispatchHomeObserverMessage:v4 sender:0];
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_154(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Failed to update allowed accessories with error: %@.", &v6, 0x16u);
  }

  v5 = [MEMORY[0x277D14640] sharedHandler];
  [v5 handleError:v3 operationType:*MEMORY[0x277D13C78] options:0 retryBlock:0 cancelBlock:0];

  [*(a1 + 32) setOn:(*(a1 + 40) & 1) == 0 animated:1];
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_155(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) hf_servicesWithBulletinBoardNotificationTurnedOff];
  v4 = v3;
  v5 = *(a1 + 56) == 1 && [v3 count] != 0;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v9 = 136316162;
    v10 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]_block_invoke";
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = [v4 count];
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%s) displayNotificationAlert = %{BOOL}d because cell isOn = %{BOOL}d and servicesWithNotificationOff = (%ld) %@", &v9, 0x2Cu);
  }

  v8 = *(a1 + 40);
  if (v5)
  {
    [WeakRetained hu_presentNotificationAlertForNotificationCapableObjects:v4 notificationsEnabled:1 mainActionBlock:v8 notNowActionBlock:*(a1 + 40)];
  }

  else
  {
    (*(v8 + 16))(*(a1 + 40));
  }
}

void __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_158(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  v6 = *MEMORY[0x277D13CC0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_3;
  v7[3] = &unk_277DB7EE0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v5 handleError:v4 operationType:v6 options:0 retryBlock:0 cancelBlock:v7];
}

- (void)personalPinCodeViewController:(id)a3 pinCodeDidChange:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  v6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v7 = [v6 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v11 = [v10 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v14 = [v13 home];

  if (v5 && v9)
  {
    [v9 updateFromPinCode:v5];
  }

  else
  {
    v15 = [v9 user];

    if (v5 || !v15)
    {
      if (v5 && v12)
      {
        v20 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v5 inHome:v14 onAccessory:0];
        v21 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
        [v21 setSourceItem:v20];
      }

      else
      {
        v20 = HFLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[HUPinCodeDetailsViewController personalPinCodeViewController:pinCodeDidChange:]";
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = v5;
          _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "(%s): Unexpected state. pinCodeItem: %@ newPinCode: %@", &v23, 0x20u);
        }
      }
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D14C98]);
      v17 = [v9 user];
      v18 = [v16 initWithHome:v14 user:v17 nameStyle:0];
      v19 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      [v19 setSourceItem:v18];
    }
  }

  v22 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [v22 resetItemProvidersAndModules];
}

- (id)_allTextFields
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(HUPinCodeDetailsViewController *)self tableView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = &unk_2824C52F0;
        if ([v10 conformsToProtocol:v11])
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [v13 textField];

        [v3 na_safeAddObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_resignFirstResponderForAllTextFields
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(HUPinCodeDetailsViewController *)self _allTextFields];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) resignFirstResponder];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_codeValueHasChanged
{
  v3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v4 = [v3 pinCodeValueItem];

  v5 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
  if (v5)
  {
    v6 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    v7 = [v4 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    v9 = [v6 isEqualToString:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_codeLabelHasChanged
{
  v3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v4 = [v3 pinCodeLabelItem];

  v5 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
  if (v5)
  {
    v6 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    v7 = [v4 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v9 = [v6 isEqualToString:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_updateSaveEnabled
{
  v3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v24 = [v3 pinCodeLabelItem];

  v4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v5 = [v4 pinCodeValueItem];

  v6 = [v24 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v8 = [v7 BOOLValue];

  v9 = [(HUPinCodeDetailsViewController *)self _codeValueHasChanged];
  v10 = v9;
  if (v8)
  {
    v11 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    v12 = [v11 length] == 0;
  }

  else
  {
    v10 = v9 || [(HUPinCodeDetailsViewController *)self _codeLabelHasChanged];
    v13 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    v14 = v13;
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v15 = [v24 latestResults];
      v11 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    }

    v16 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = [v5 latestResults];
      v18 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    if ([v11 length])
    {
      v12 = [v18 length] == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  v20 = v10 ^ 1 | v12;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v10 = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    if ([v10 count])
    {
      v21 = 1;
    }

    else
    {
      v21 = [(HUPinCodeDetailsViewController *)self creatingNewPinCode]^ 1;
    }
  }

  v22 = [(HUPinCodeDetailsViewController *)self delegate];
  v23 = [v22 addButtonItem];
  [v23 setEnabled:v21];

  if ((v20 & 1) == 0)
  {
  }
}

- (id)_validatePinCodeLabel
{
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode]|| [(HUPinCodeDetailsViewController *)self _codeLabelHasChanged])
  {
    v3 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    v4 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
    v5 = [v4 guestPinCodes];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HUPinCodeDetailsViewController__validatePinCodeLabel__block_invoke;
    v9[3] = &unk_277DB7A90;
    v10 = v3;
    v6 = v3;
    v7 = [v5 flatMap:v9];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v7;
}

id __55__HUPinCodeDetailsViewController__validatePinCodeLabel__block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUPinCodeDetailsViewController__validatePinCodeLabel__block_invoke_2;
  v8[3] = &unk_277DBC528;
  v9 = *(a1 + 32);
  v3 = [a2 na_any:v8];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:76];
    v6 = [v4 futureWithError:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

uint64_t __55__HUPinCodeDetailsViewController__validatePinCodeLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userLabel];
  v4 = [v3 simpleLabel];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_presentPinCodeErrorDialog
{
  v8 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditUnavailableAlertTitle", @"HUPinCodeEditUnavailableAlertTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditUnavailableAlertMessage", @"HUPinCodeEditUnavailableAlertMessage", 1);
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v3 preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_217_0];
  [v4 addAction:v7];

  [(HUPinCodeDetailsViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __60__HUPinCodeDetailsViewController__presentPinCodeErrorDialog__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUPinCodeDetailsViewController _presentPinCodeErrorDialog]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped OK button from the alert popup", &v1, 0xCu);
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUPinCodeDetailsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUPinCodeDetailsItemManager)pinCodeItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pinCodeItemManager);

  return WeakRetained;
}

@end