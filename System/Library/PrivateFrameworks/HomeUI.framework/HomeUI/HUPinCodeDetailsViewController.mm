@interface HUPinCodeDetailsViewController
- (BOOL)_codeLabelHasChanged;
- (BOOL)_codeValueHasChanged;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUPinCodeDetailsItemManager)pinCodeItemManager;
- (HUPinCodeDetailsViewController)initWithItem:(id)item pinCodeManager:(id)manager home:(id)home;
- (HUPinCodeDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUPinCodeDetailsViewDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (id)_allTextFields;
- (id)_validatePinCodeLabel;
- (id)commitAccessoryChanges;
- (id)commitNewPinCode;
- (id)commitPinCodeChanges;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_presentPinCodeErrorDialog;
- (void)_resignFirstResponderForAllTextFields;
- (void)_updateSaveEnabled;
- (void)hideSpinner;
- (void)itemManagerDidFinishUpdate:(id)update;
- (void)personalPinCodeViewController:(id)controller pinCodeDidChange:(id)change;
- (void)pinCodeManagerFetchDidComplete:(id)complete;
- (void)showSpinner;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUPinCodeDetailsViewController

- (HUPinCodeDetailsViewController)initWithItem:(id)item pinCodeManager:(id)manager home:(id)home
{
  itemCopy = item;
  managerCopy = manager;
  homeCopy = home;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_SuppliedItemIs.isa, itemCopy);
      }
    }
  }

  v11 = [itemCopy copy];
  v12 = [[HUPinCodeDetailsItemManager alloc] initWithDelegate:self sourceItem:v11 pinCodeManager:managerCopy home:homeCopy];
  v44.receiver = self;
  v44.super_class = HUPinCodeDetailsViewController;
  v13 = [(HUItemTableViewController *)&v44 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pinCodeManager, manager);
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

    if (itemCopy)
    {
      accessories = [v17 accessories];
      v19 = [accessories copy];
      [(HUPinCodeDetailsViewController *)v14 setPinAccessories:v19];

      pinAccessories = [(HUPinCodeDetailsViewController *)v14 pinAccessories];
      v21 = [pinAccessories mutableCopy];
      [(HUPinCodeDetailsViewController *)v14 setAccessoriesToEdit:v21];

      pinCodeItemManager = [(HUPinCodeDetailsViewController *)v14 pinCodeItemManager];
      sourceItem = [pinCodeItemManager sourceItem];
      [sourceItem latestResults];
      v41 = itemCopy;
      v24 = v12;
      v25 = v11;
      v26 = homeCopy;
      v27 = managerCopy;
      v29 = v28 = v17;
      v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [(HUPinCodeDetailsViewController *)v14 setTitle:v30];

      v17 = v28;
      managerCopy = v27;
      homeCopy = v26;
      v11 = v25;
      v12 = v24;
      itemCopy = v41;
    }

    else
    {
      v31 = _HULocalizedStringWithDefaultValue(@"HUAddGuestPinCodeTitle", @"HUAddGuestPinCodeTitle", 1);
      [(HUPinCodeDetailsViewController *)v14 setTitle:v31];

      [(HUPinCodeDetailsViewController *)v14 setCreatingNewPinCode:1];
      [(HUPinCodeDetailsViewController *)v14 setPinAccessories:MEMORY[0x277CBEBF8]];
      hf_accessoriesSupportingAccessCodes = [homeCopy hf_accessoriesSupportingAccessCodes];
      v33 = [hf_accessoriesSupportingAccessCodes mutableCopy];
      [(HUPinCodeDetailsViewController *)v14 setAccessoriesToEdit:v33];

      generateNewCodeValue = [managerCopy generateNewCodeValue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __67__HUPinCodeDetailsViewController_initWithItem_pinCodeManager_home___block_invoke;
      v42[3] = &unk_277DC2600;
      v43 = v14;
      v35 = [generateNewCodeValue addSuccessBlock:v42];

      pinCodeItemManager = v43;
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

- (HUPinCodeDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItem_pinCodeManager_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPinCodeDetailsViewController.m" lineNumber:140 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(HUPinCodeDetailsViewController *)self setIsClosing:1];
  pinCodeManager = [(HUPinCodeDetailsViewController *)self pinCodeManager];
  [pinCodeManager removeObserver:self];

  v6.receiver = self;
  v6.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v10 viewDidAppear:appear];
  pinCodeManager = [(HUPinCodeDetailsViewController *)self pinCodeManager];
  [pinCodeManager addObserver:self];

  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeLabelItem = [pinCodeItemManager pinCodeLabelItem];
  v7 = [(HUItemTableViewController *)self textFieldForVisibleItem:pinCodeLabelItem];

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager2 sourceItem];

  if (!sourceItem && v7)
  {
    [v7 becomeFirstResponder];
  }
}

- (void)showSpinner
{
  v16 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  delegate = [(HUPinCodeDetailsViewController *)self delegate];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v16];
  if (delegate)
  {
    delegate2 = [(HUPinCodeDetailsViewController *)self delegate];
    [delegate2 setAddButtonItem:v5];
  }

  else
  {
    delegate2 = [(HUPinCodeDetailsViewController *)self navigationItem];
    [delegate2 setRightBarButtonItem:v5];
  }

  [v16 startAnimating];
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [pinCodeItemManager setOperationInProgress:1];

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v9 = MEMORY[0x277CBEB98];
  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  deleteGuestPINCodeItem = [pinCodeItemManager3 deleteGuestPINCodeItem];
  pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeRestoreAccessItem = [pinCodeItemManager4 pinCodeRestoreAccessItem];
  v14 = [v9 setWithObjects:{deleteGuestPINCodeItem, pinCodeRestoreAccessItem, 0}];
  v15 = [pinCodeItemManager2 updateResultsForItems:v14 senderSelector:a2];
}

- (void)hideSpinner
{
  delegate = [(HUPinCodeDetailsViewController *)self delegate];

  objc_opt_class();
  if (delegate)
  {
    delegate2 = [(HUPinCodeDetailsViewController *)self delegate];
    addButtonItem = [delegate2 addButtonItem];
    customView = [addButtonItem customView];
    if (objc_opt_isKindOfClass())
    {
      v8 = customView;
    }

    else
    {
      v8 = 0;
    }

    v23 = v8;

    delegate3 = [(HUPinCodeDetailsViewController *)self delegate];
    [delegate3 setAddButtonItem:0];
  }

  else
  {
    navigationItem = [(HUPinCodeDetailsViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    customView2 = [rightBarButtonItem customView];
    if (objc_opt_isKindOfClass())
    {
      v13 = customView2;
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;

    delegate3 = [(HUPinCodeDetailsViewController *)self navigationItem];
    [delegate3 setRightBarButtonItem:0];
  }

  [v23 stopAnimating];
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [pinCodeItemManager setOperationInProgress:0];

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v16 = MEMORY[0x277CBEB98];
  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  deleteGuestPINCodeItem = [pinCodeItemManager3 deleteGuestPINCodeItem];
  pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeRestoreAccessItem = [pinCodeItemManager4 pinCodeRestoreAccessItem];
  v21 = [v16 setWithObjects:{deleteGuestPINCodeItem, pinCodeRestoreAccessItem, 0}];
  v22 = [pinCodeItemManager2 updateResultsForItems:v21 senderSelector:a2];
}

- (id)commitAccessoryChanges
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [(HUPinCodeDetailsViewController *)self showSpinner];
    objc_opt_class();
    pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    sourceItem = [pinCodeItemManager sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v7 = sourceItem;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    accessoriesToEdit = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    pinAccessories = [(HUPinCodeDetailsViewController *)self pinAccessories];
    v11 = [accessoriesToEdit differenceFromArray:pinAccessories];

    insertions = [v11 insertions];
    v13 = [insertions count];

    if (v13)
    {
      insertions2 = [v11 insertions];
      v15 = [insertions2 na_map:&__block_literal_global_235];

      pinCodeManager = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v17 = [pinCodeManager setPinCodeWithItem:v8 enabled:1 onAccessories:v15];
      [array addObject:v17];
    }

    removals = [v11 removals];
    v19 = [removals count];

    if (v19)
    {
      removals2 = [v11 removals];
      v21 = [removals2 na_map:&__block_literal_global_29_2];

      pinCodeManager2 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v23 = [pinCodeManager2 setPinCodeWithItem:v8 enabled:0 onAccessories:v21];
      [array addObject:v23];
    }

    accessoriesToEdit2 = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    v25 = [accessoriesToEdit2 copy];

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
    [array addObject:v28];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    objc_initWeak(&location, self);
    v29 = [MEMORY[0x277D2C900] chainFutures:array];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __56__HUPinCodeDetailsViewController_commitAccessoryChanges__block_invoke_4;
    v31[3] = &unk_277DB8CA8;
    objc_copyWeak(&v32, &location);
    futureWithNoResult = [v29 addCompletionBlock:v31];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
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
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = sourceItem;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (-[HUPinCodeDetailsViewController _codeLabelHasChanged](self, "_codeLabelHasChanged") && (-[HUPinCodeDetailsViewController editedPinCodeLabel](self, "editedPinCodeLabel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v10))
    {
      [(HUPinCodeDetailsViewController *)self showSpinner];
      objc_initWeak(&location, self);
      _validatePinCodeLabel = [(HUPinCodeDetailsViewController *)self _validatePinCodeLabel];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke;
      v17[3] = &unk_277DC2648;
      objc_copyWeak(&v19, &location);
      v18 = v7;
      futureWithNoResult2 = [_validatePinCodeLabel flatMap:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      futureWithNoResult2 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__HUPinCodeDetailsViewController_commitPinCodeChanges__block_invoke_2;
    v14[3] = &unk_277DBA0F8;
    objc_copyWeak(v16, &location);
    v15 = v7;
    v16[1] = a2;
    futureWithNoResult = [futureWithNoResult2 addCompletionBlock:v14];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
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
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode])
  {
    [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
    objc_initWeak(&location, self);
    _validatePinCodeLabel = [(HUPinCodeDetailsViewController *)self _validatePinCodeLabel];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke;
    v14[3] = &unk_277DBD948;
    objc_copyWeak(&v15, &location);
    v5 = [_validatePinCodeLabel flatMap:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    futureWithNoResult = v5;
  }

  else
  {
    NSLog(&cfstr_Commitnewpinco.isa);
  }

  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  home = [pinCodeItemManager home];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HUPinCodeDetailsViewController_commitNewPinCode__block_invoke_2;
  v11[3] = &unk_277DC2670;
  objc_copyWeak(&v13, &location);
  v8 = home;
  v12 = v8;
  v9 = [futureWithNoResult addCompletionBlock:v11];

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

- (void)pinCodeManagerFetchDidComplete:(id)complete
{
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v8 = [pinCodeItemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)itemManagerDidFinishUpdate:(id)update
{
  v9.receiver = self;
  v9.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v9 itemManagerDidFinishUpdate:update];
  title = [(HUPinCodeDetailsViewController *)self title];

  if (!title)
  {
    pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    sourceItem = [pinCodeItemManager sourceItem];
    latestResults = [sourceItem latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUPinCodeDetailsViewController *)self setTitle:v8];
  }
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  addOrShowHomeKeyItem = [pinCodeItemManager addOrShowHomeKeyItem];
  if ([itemCopy isEqual:addOrShowHomeKeyItem])
  {
    goto LABEL_17;
  }

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  restoreHomeKeyAccessItem = [pinCodeItemManager2 restoreHomeKeyAccessItem];

  if (restoreHomeKeyAccessItem == itemCopy)
  {
    goto LABEL_18;
  }

  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  addOrShowHomeKeyItem = [pinCodeItemManager deleteGuestPINCodeItem];
  if (addOrShowHomeKeyItem == itemCopy)
  {
    goto LABEL_17;
  }

  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeRestoreAccessItem = [pinCodeItemManager3 pinCodeRestoreAccessItem];
  v12 = pinCodeRestoreAccessItem;
  if (pinCodeRestoreAccessItem == itemCopy)
  {

LABEL_17:
    goto LABEL_18;
  }

  pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeChangeItem = [pinCodeItemManager4 pinCodeChangeItem];
  v15 = [itemCopy isEqual:pinCodeChangeItem];

  if (v15)
  {
LABEL_18:
    v32 = objc_opt_class();
    goto LABEL_19;
  }

  pinCodeItemManager5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  transformedLocksItemProvider = [pinCodeItemManager5 transformedLocksItemProvider];
  items = [transformedLocksItemProvider items];
  v19 = [items containsObject:itemCopy];

  if (!v19)
  {
    pinCodeItemManager6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    pinCodeLabelItem = [pinCodeItemManager6 pinCodeLabelItem];
    v36 = [itemCopy isEqual:pinCodeLabelItem];

    if (v36)
    {
      goto LABEL_18;
    }

    pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    addOrShowHomeKeyItem = [pinCodeItemManager pinCodeValueItem];
    if (![itemCopy isEqual:addOrShowHomeKeyItem])
    {
      pinCodeItemManager7 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      personalPINCodeItem = [pinCodeItemManager7 personalPINCodeItem];
      [itemCopy isEqual:personalPINCodeItem];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  pinCodeItemManager8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager8 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v22 = sourceItem;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  objc_opt_class();
  pinCodeItemManager9 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem2 = [pinCodeItemManager9 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v26 = sourceItem2;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  pinCodeItemManager10 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  home = [pinCodeItemManager10 home];

  user = [v27 user];

  if (user)
  {
    user2 = user;
  }

  else
  {
    user2 = [v23 user];
  }

  v39 = user2;

  if (![home hf_currentUserIsAdministrator] || (objc_msgSend(home, "hf_userIsRestrictedGuest:", v39) & 1) == 0)
  {
    user3 = [v23 user];
    if (user3 | v27)
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

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v82.receiver = self;
  v82.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v82 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  deleteGuestPINCodeItem = [pinCodeItemManager deleteGuestPINCodeItem];

  if (deleteGuestPINCodeItem == itemCopy)
  {
    v31 = cellCopy;
    [v31 setDestructive:1];
    latestResults = [itemCopy latestResults];
    valueCellConfiguration2 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

    bOOLValue = [valueCellConfiguration2 BOOLValue];
    textLabel = [v31 textLabel];

    [textLabel setEnabled:bOOLValue ^ 1u];
  }

  else
  {
    pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    pinCodeRestoreAccessItem = [pinCodeItemManager2 pinCodeRestoreAccessItem];

    if (pinCodeRestoreAccessItem != itemCopy)
    {
      pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      pinCodeLabelItem = [pinCodeItemManager3 pinCodeLabelItem];

      if (pinCodeLabelItem == itemCopy)
      {
        objc_opt_class();
        v38 = cellCopy;
        if (objc_opt_isKindOfClass())
        {
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        valueCellConfiguration2 = v39;

        latestResults2 = [itemCopy latestResults];
        v41 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        textField = [valueCellConfiguration2 textField];
        [textField setText:v41];

        latestResults3 = [itemCopy latestResults];
        v44 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        textField2 = [valueCellConfiguration2 textField];
        [textField2 setAccessibilityIdentifier:v44];

        v46 = _HULocalizedStringWithDefaultValue(@"HUAddPersonPinGuestNamePlaceholder", @"HUAddPersonPinGuestNamePlaceholder", 1);
        textField3 = [valueCellConfiguration2 textField];
        [textField3 setPlaceholder:v46];

        textField4 = [valueCellConfiguration2 textField];
        [textField4 setClearButtonMode:3];

        textField5 = [valueCellConfiguration2 textField];
        [textField5 setKeyboardType:1];

        latestResults4 = [itemCopy latestResults];
        textLabel = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

        [valueCellConfiguration2 setDisabled:{objc_msgSend(textLabel, "BOOLValue")}];
        editedPinCodeLabel = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];

        if (!editedPinCodeLabel)
        {
          goto LABEL_23;
        }

        editedPinCodeLabel2 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
        textField6 = [valueCellConfiguration2 textField];
        [textField6 setText:editedPinCodeLabel2];
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v18 = cellCopy;
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        valueCellConfiguration2 = v19;

        [valueCellConfiguration2 setDelegate:self];
        textLabel = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
        objc_opt_class();
        latestResults5 = [itemCopy latestResults];
        v23 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        editedPinCodeLabel2 = v24;

        if (editedPinCodeLabel2)
        {
          imageProperties = [textLabel imageProperties];
          [imageProperties setTintColor:editedPinCodeLabel2];
        }

        v27 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
        imageProperties2 = [textLabel imageProperties];
        [imageProperties2 setPreferredSymbolConfiguration:v27];

        [valueCellConfiguration2 setContentConfiguration:textLabel];
        textField6 = [itemCopy latestResults];
        v30 = [textField6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [valueCellConfiguration2 setAccessibilityIdentifier:v30];

LABEL_21:
LABEL_22:

        goto LABEL_23;
      }

      pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      pinCodeValueItem = [pinCodeItemManager4 pinCodeValueItem];
      v54 = [itemCopy isEqual:pinCodeValueItem];

      if (v54)
      {
        valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
        valueCellConfiguration2 = [HUListContentConfigurationUtilities labelConfiguration:valueCellConfiguration forItem:itemCopy];

        editedPinCodeValue = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];

        if (editedPinCodeValue)
        {
          editedPinCodeValue2 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
          [valueCellConfiguration2 setSecondaryText:editedPinCodeValue2];
        }

        [cellCopy setContentConfiguration:valueCellConfiguration2];
        latestResults6 = [itemCopy latestResults];
        v59 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [cellCopy setAccessibilityIdentifier:v59];

        textLabel = [cellCopy layer];
        [textLabel setDisableUpdateMask:16];
        goto LABEL_23;
      }

      pinCodeItemManager5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      personalPINCodeItem = [pinCodeItemManager5 personalPINCodeItem];
      v62 = [itemCopy isEqual:personalPINCodeItem];

      if (v62)
      {
        cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
        valueCellConfiguration2 = [HUListContentConfigurationUtilities labelConfiguration:cellConfiguration forItem:itemCopy];

        [cellCopy setContentConfiguration:valueCellConfiguration2];
        [cellCopy setAccessoryType:1];
      }

      else
      {
        pinCodeItemManager6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
        addOrShowHomeKeyItem = [pinCodeItemManager6 addOrShowHomeKeyItem];
        v66 = [itemCopy isEqual:addOrShowHomeKeyItem];

        if (!v66)
        {
          pinCodeItemManager7 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
          transformedLocksItemProvider = [pinCodeItemManager7 transformedLocksItemProvider];
          items = [transformedLocksItemProvider items];
          v75 = [items containsObject:itemCopy];

          if (!v75)
          {
            goto LABEL_24;
          }

          valueCellConfiguration2 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
          objc_opt_class();
          latestResults7 = [itemCopy latestResults];
          v77 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D13F58]];
          if (objc_opt_isKindOfClass())
          {
            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          textLabel = v78;

          if (textLabel)
          {
            imageProperties3 = [valueCellConfiguration2 imageProperties];
            [imageProperties3 setTintColor:textLabel];
          }

          v80 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
          imageProperties4 = [valueCellConfiguration2 imageProperties];
          [imageProperties4 setPreferredSymbolConfiguration:v80];

          [cellCopy setContentConfiguration:valueCellConfiguration2];
          editedPinCodeLabel2 = [itemCopy latestResults];
          textField6 = [editedPinCodeLabel2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
          [cellCopy setAccessibilityIdentifier:textField6];
          goto LABEL_21;
        }

        valueCellConfiguration2 = [MEMORY[0x277D756E0] valueCellConfiguration];
        latestResults8 = [itemCopy latestResults];
        v68 = [latestResults8 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [valueCellConfiguration2 setText:v68];

        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        textProperties = [valueCellConfiguration2 textProperties];
        [textProperties setColor:hf_keyColor];

        hu_walletAppIconImage = [MEMORY[0x277D755B8] hu_walletAppIconImage];
        [valueCellConfiguration2 setImage:hu_walletAppIconImage];

        [cellCopy setContentConfiguration:valueCellConfiguration2];
      }

      textLabel = [itemCopy latestResults];
      editedPinCodeLabel2 = [textLabel objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [cellCopy setAccessibilityIdentifier:editedPinCodeLabel2];
      goto LABEL_22;
    }

    v34 = cellCopy;
    latestResults9 = [itemCopy latestResults];
    valueCellConfiguration2 = [latestResults9 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

    LODWORD(latestResults9) = [valueCellConfiguration2 BOOLValue];
    textLabel2 = [v34 textLabel];
    [textLabel2 setEnabled:latestResults9 ^ 1];

    textLabel = [itemCopy latestResults];
    v37 = [textLabel objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v34 setAccessibilityIdentifier:v37];
  }

LABEL_23:

LABEL_24:
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  changeCopy = change;
  itemCopy = item;
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeLabelItem = [pinCodeItemManager pinCodeLabelItem];

  if (pinCodeLabelItem == itemCopy)
  {
    [(HUPinCodeDetailsViewController *)self setEditedPinCodeLabel:changeCopy];
  }

  [(HUPinCodeDetailsViewController *)self _updateSaveEnabled];
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  text = [editing text];
  if ([text length] || -[HUPinCodeDetailsViewController creatingNewPinCode](self, "creatingNewPinCode"))
  {

    return 1;
  }

  isClosing = [(HUPinCodeDetailsViewController *)self isClosing];

  return isClosing;
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  editingCopy = editing;
  commitPinCodeChanges = [(HUPinCodeDetailsViewController *)self commitPinCodeChanges];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HUPinCodeDetailsViewController_textFieldDidEndEditing_item___block_invoke;
  v9[3] = &unk_277DB7E90;
  v9[4] = self;
  v10 = editingCopy;
  v7 = editingCopy;
  v8 = [commitPinCodeChanges addFailureBlock:v9];
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager sourceItem];

  if (sourceItem)
  {
    v10 = 1;
  }

  else
  {
    pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    pinCodeValueItem = [pinCodeItemManager2 pinCodeValueItem];
    v10 = pinCodeValueItem != v7;
  }

  return v10;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  transformedLocksItemProvider = [pinCodeItemManager transformedLocksItemProvider];
  items = [transformedLocksItemProvider items];
  v11 = [items containsObject:v7];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = pathCopy;
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v137 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v130.receiver = self;
  v130.super_class = HUPinCodeDetailsViewController;
  [(HUItemTableViewController *)&v130 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

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
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = sourceItem;
  }

  else
  {
    v13 = 0;
  }

  v104 = v13;

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  deleteGuestPINCodeItem = [pinCodeItemManager2 deleteGuestPINCodeItem];
  v16 = v9 == deleteGuestPINCodeItem;

  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  v18 = pinCodeItemManager3;
  if (v16)
  {
    operationInProgress = [pinCodeItemManager3 operationInProgress];

    if (operationInProgress)
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
      latestResults = [v29 latestResults];
      v102 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      v101 = HULocalizedStringWithFormat(@"HUUsersRemovePersonAlertTitle", @"%@", v32, v33, v34, v35, v36, v37, v102);
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      home = [itemManager2 home];
      name = [home name];
      v46 = HULocalizedStringWithFormat(@"HUUsersRemovePersonConfirmationMessage", @"%@%@", v40, v41, v42, v43, v44, v45, v102);

      v47 = [(UITableViewController *)self hu_actionSheetWithTitle:v101 message:v46 indexPath:pathCopy];
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
    pinCodeChangeItem = [pinCodeItemManager3 pinCodeChangeItem];
    v20 = [v9 isEqual:pinCodeChangeItem];

    if (v20)
    {
      pinCodeManager = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      hasValidConstraints = [pinCodeManager hasValidConstraints];

      objc_initWeak(buf, self);
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_120;
      v125[3] = &unk_277DC26C0;
      objc_copyWeak(&v126, buf);
      v23 = [hasValidConstraints addSuccessBlock:v125];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v123[3] = &unk_277DB94D0;
      objc_copyWeak(&v124, buf);
      v24 = [hasValidConstraints addFailureBlock:v123];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_125;
      v121[3] = &unk_277DB8488;
      v26 = hasValidConstraints;
      v122 = v26;
      v27 = [mainThreadScheduler afterDelay:v121 performBlock:1.0];

      objc_destroyWeak(&v124);
      objc_destroyWeak(&v126);
      objc_destroyWeak(buf);

      goto LABEL_33;
    }

    pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    pinCodeRestoreAccessItem = [pinCodeItemManager4 pinCodeRestoreAccessItem];
    v56 = v9 == pinCodeRestoreAccessItem;

    pinCodeItemManager5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    v58 = pinCodeItemManager5;
    if (v56)
    {
      operationInProgress2 = [pinCodeItemManager5 operationInProgress];

      if (operationInProgress2)
      {
        goto LABEL_46;
      }

      [(HUPinCodeDetailsViewController *)self showSpinner];
      pinCodeManager2 = [(HUPinCodeDetailsViewController *)self pinCodeManager];
      v72 = [pinCodeManager2 restoreFullAccessForUserWithItem:v104];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_127;
      v117[3] = &unk_277DC26E8;
      v118 = v104;
      selfCopy = self;
      v120 = a2;
      v73 = [v72 addCompletionBlock:v117];
      v74 = [v73 addFailureBlock:&__block_literal_global_130_2];

      goto LABEL_33;
    }

    personalPINCodeItem = [pinCodeItemManager5 personalPINCodeItem];
    v60 = [v9 isEqual:personalPINCodeItem];

    if (v60)
    {
      [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
      objc_opt_class();
      pinCodeItemManager6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      sourceItem2 = [pinCodeItemManager6 sourceItem];
      if (objc_opt_isKindOfClass())
      {
        v63 = sourceItem2;
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
        domain = [v68 domain];
        if ([domain isEqualToString:*MEMORY[0x277CD4770]])
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
  pinCodeItemManager7 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  addOrShowHomeKeyItem = [pinCodeItemManager7 addOrShowHomeKeyItem];
  v80 = [v9 isEqual:addOrShowHomeKeyItem];

  if (v80)
  {
    [(HUPinCodeDetailsViewController *)self _resignFirstResponderForAllTextFields];
    pinCodeItemManager8 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    home2 = [pinCodeItemManager8 home];

    v83 = HFLogForCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v132 = "[HUPinCodeDetailsViewController tableView:didSelectRowAtIndexPath:]";
      v133 = 2112;
      v134 = v9;
      v135 = 2112;
      v136 = home2;
      _os_log_impl(&dword_20CEB6000, v83, OS_LOG_TYPE_DEFAULT, "(%s) user tapped %@ in home %@", buf, 0x20u);
    }

    v84 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
    v88 = [MEMORY[0x277D14D08] handleAddOrShowHomeKeyButtonTapForHome:home2];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_138;
    v108[3] = &unk_277DB7530;
    v109 = v87;
    v89 = v87;
    v90 = [v88 addCompletionBlock:v108];

    goto LABEL_45;
  }

  pinCodeItemManager9 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  restoreHomeKeyAccessItem = [pinCodeItemManager9 restoreHomeKeyAccessItem];
  v93 = [v9 isEqual:restoreHomeKeyAccessItem];

  if (v93)
  {
    v94 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    home2 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = home2;
    }

    else
    {
      v95 = 0;
    }

    v96 = v95;

    [v96 setShowSpinner:1];
    pinCodeItemManager10 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
    restoreFuture = [pinCodeItemManager10 restoreFuture];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __68__HUPinCodeDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_139;
    v105[3] = &unk_277DC2760;
    v106 = v96;
    v107 = a2;
    v105[4] = self;
    v85 = v96;
    v99 = [restoreFuture addSuccessBlock:v105];

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

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v75 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  tableView = [(HUPinCodeDetailsViewController *)self tableView];
  v7 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:v7];

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

  sourceItem = [v12 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v14 = sourceItem;
  }

  else
  {
    v14 = 0;
  }

  v47 = v14;

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    text = [cellCopy text];
    *buf = 136315906;
    v68 = "[HUPinCodeDetailsViewController switchCell:didTurnOn:]";
    v69 = 2112;
    v70 = text;
    v71 = 1024;
    v72 = onCopy;
    v73 = 2112;
    v74 = v10;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "(%s) User tapped switch cell: %@ | isOn = %{BOOL}d | item = %@", buf, 0x26u);
  }

  objc_opt_class();
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem2 = [pinCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v19 = sourceItem2;
  }

  else
  {
    v19 = 0;
  }

  v45 = v19;

  objc_opt_class();
  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem3 = [pinCodeItemManager2 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v22 = sourceItem3;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = v23;
  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  home = [pinCodeItemManager3 home];

  user = [v23 user];
  v28 = user;
  if (user)
  {
    user2 = user;
  }

  else
  {
    user2 = [v45 user];
  }

  if ([home hf_currentUserIsAdministrator] && objc_msgSend(home, "hf_userIsRestrictedGuest:", user2))
  {
    accessory = [v47 accessory];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke;
    aBlock[3] = &unk_277DC2788;
    objc_copyWeak(&v65, buf);
    v44 = home;
    v61 = v44;
    v43 = user2;
    v62 = v43;
    v66 = onCopy;
    v30 = accessory;
    v63 = v30;
    v31 = cellCopy;
    v64 = v31;
    v32 = _Block_copy(aBlock);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_155;
    v55[3] = &unk_277DC27B0;
    objc_copyWeak(&v58, buf);
    v33 = v30;
    v56 = v33;
    v59 = onCopy;
    v42 = v32;
    v57 = v42;
    v34 = _Block_copy(v55);
    v35 = v7;
    v36 = cellCopy;
    v37 = MEMORY[0x277D75D28];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_157;
    v52[3] = &unk_277DB7EE0;
    v53 = v31;
    v54 = onCopy;
    [v37 hu_presentingLockLimitAlertIfNeededFromViewController:self home:v44 user:v43 accessory:v33 include:v52 continueActionBlock:? cancelActionBlock:?];

    cellCopy = v36;
    v7 = v35;

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v65);
    objc_destroyWeak(buf);
  }

  else
  {
    accessoriesToEdit = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    accessory2 = [v47 accessory];
    if (onCopy)
    {
      [accessoriesToEdit addObject:accessory2];
    }

    else
    {
      [accessoriesToEdit removeObject:accessory2];
    }

    [(HUPinCodeDetailsViewController *)self _updateSaveEnabled];
    commitAccessoryChanges = [(HUPinCodeDetailsViewController *)self commitAccessoryChanges];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __55__HUPinCodeDetailsViewController_switchCell_didTurnOn___block_invoke_2_158;
    v49[3] = &unk_277DBC098;
    v50 = cellCopy;
    v51 = onCopy;
    v41 = [commitAccessoryChanges addFailureBlock:v49];

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

- (void)personalPinCodeViewController:(id)controller pinCodeDidChange:(id)change
{
  v29 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  objc_opt_class();
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem = [pinCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  sourceItem2 = [pinCodeItemManager2 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v12 = sourceItem2;
  }

  else
  {
    v12 = 0;
  }

  pinCodeItemManager3 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  home = [pinCodeItemManager3 home];

  if (changeCopy && v9)
  {
    [v9 updateFromPinCode:changeCopy];
  }

  else
  {
    user = [v9 user];

    if (changeCopy || !user)
    {
      if (changeCopy && v12)
      {
        v20 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:changeCopy inHome:home onAccessory:0];
        pinCodeItemManager4 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
        [pinCodeItemManager4 setSourceItem:v20];
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
          v28 = changeCopy;
          _os_log_error_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_ERROR, "(%s): Unexpected state. pinCodeItem: %@ newPinCode: %@", &v23, 0x20u);
        }
      }
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D14C98]);
      user2 = [v9 user];
      v18 = [v16 initWithHome:home user:user2 nameStyle:0];
      pinCodeItemManager5 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
      [pinCodeItemManager5 setSourceItem:v18];
    }
  }

  pinCodeItemManager6 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  [pinCodeItemManager6 resetItemProvidersAndModules];
}

- (id)_allTextFields
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(HUPinCodeDetailsViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visibleCells);
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

        textField = [v13 textField];

        [v3 na_safeAddObject:textField];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  _allTextFields = [(HUPinCodeDetailsViewController *)self _allTextFields];
  v3 = [_allTextFields countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_allTextFields);
        }

        [*(*(&v7 + 1) + 8 * v6++) resignFirstResponder];
      }

      while (v4 != v6);
      v4 = [_allTextFields countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_codeValueHasChanged
{
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeValueItem = [pinCodeItemManager pinCodeValueItem];

  editedPinCodeValue = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
  if (editedPinCodeValue)
  {
    editedPinCodeValue2 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    latestResults = [pinCodeValueItem latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    v9 = [editedPinCodeValue2 isEqualToString:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_codeLabelHasChanged
{
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeLabelItem = [pinCodeItemManager pinCodeLabelItem];

  editedPinCodeLabel = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
  if (editedPinCodeLabel)
  {
    editedPinCodeLabel2 = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    latestResults = [pinCodeLabelItem latestResults];
    v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v9 = [editedPinCodeLabel2 isEqualToString:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_updateSaveEnabled
{
  pinCodeItemManager = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeLabelItem = [pinCodeItemManager pinCodeLabelItem];

  pinCodeItemManager2 = [(HUPinCodeDetailsViewController *)self pinCodeItemManager];
  pinCodeValueItem = [pinCodeItemManager2 pinCodeValueItem];

  latestResults = [pinCodeLabelItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  bOOLValue = [v7 BOOLValue];

  _codeValueHasChanged = [(HUPinCodeDetailsViewController *)self _codeValueHasChanged];
  accessoriesToEdit = _codeValueHasChanged;
  if (bOOLValue)
  {
    editedPinCodeValue = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    v12 = [editedPinCodeValue length] == 0;
  }

  else
  {
    accessoriesToEdit = _codeValueHasChanged || [(HUPinCodeDetailsViewController *)self _codeLabelHasChanged];
    editedPinCodeLabel = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    v14 = editedPinCodeLabel;
    if (editedPinCodeLabel)
    {
      editedPinCodeValue = editedPinCodeLabel;
    }

    else
    {
      latestResults2 = [pinCodeLabelItem latestResults];
      editedPinCodeValue = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    }

    editedPinCodeValue2 = [(HUPinCodeDetailsViewController *)self editedPinCodeValue];
    v17 = editedPinCodeValue2;
    if (editedPinCodeValue2)
    {
      v18 = editedPinCodeValue2;
    }

    else
    {
      latestResults3 = [pinCodeValueItem latestResults];
      v18 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    if ([editedPinCodeValue length])
    {
      v12 = [v18 length] == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  v20 = accessoriesToEdit ^ 1 | v12;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    accessoriesToEdit = [(HUPinCodeDetailsViewController *)self accessoriesToEdit];
    if ([accessoriesToEdit count])
    {
      v21 = 1;
    }

    else
    {
      v21 = [(HUPinCodeDetailsViewController *)self creatingNewPinCode]^ 1;
    }
  }

  delegate = [(HUPinCodeDetailsViewController *)self delegate];
  addButtonItem = [delegate addButtonItem];
  [addButtonItem setEnabled:v21];

  if ((v20 & 1) == 0)
  {
  }
}

- (id)_validatePinCodeLabel
{
  if ([(HUPinCodeDetailsViewController *)self creatingNewPinCode]|| [(HUPinCodeDetailsViewController *)self _codeLabelHasChanged])
  {
    editedPinCodeLabel = [(HUPinCodeDetailsViewController *)self editedPinCodeLabel];
    pinCodeManager = [(HUPinCodeDetailsViewController *)self pinCodeManager];
    guestPinCodes = [pinCodeManager guestPinCodes];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HUPinCodeDetailsViewController__validatePinCodeLabel__block_invoke;
    v9[3] = &unk_277DB7A90;
    v10 = editedPinCodeLabel;
    v6 = editedPinCodeLabel;
    futureWithNoResult = [guestPinCodes flatMap:v9];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
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