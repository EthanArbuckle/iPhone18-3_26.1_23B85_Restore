@interface HUPersonalPINCodeViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HUPersonalPINCodeItemManager)personalPINCodeItemManager;
- (HUPersonalPINCodeViewController)initWithItem:(id)item pinCodeManager:(id)manager home:(id)home;
- (HUPersonalPINCodeViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUPersonalPINCodeViewControllerDelegate)delegate;
- (HUPresentationDelegate)presentationDelegate;
- (id)currentPinCodeValue;
- (void)_hideSpinner;
- (void)_presentPinCodeErrorDialog;
- (void)_shareCode;
- (void)_showSpinner;
- (void)copy:(id)copy;
- (void)doneButtonPressed:(id)pressed;
- (void)openPINCodeEditor;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUPersonalPINCodeViewController

- (HUPersonalPINCodeViewController)initWithItem:(id)item pinCodeManager:(id)manager home:(id)home
{
  itemCopy = item;
  managerCopy = manager;
  homeCopy = home;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_SuppliedItemIs.isa, itemCopy);
    }
  }

  v11 = [itemCopy copy];
  v12 = [[HUPersonalPINCodeItemManager alloc] initWithDelegate:self item:v11 pinCodeManager:managerCopy home:homeCopy];

  v16.receiver = self;
  v16.super_class = HUPersonalPINCodeViewController;
  v13 = [(HUItemTableViewController *)&v16 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pinCodeManager, manager);
    objc_storeWeak(&v14->_personalPINCodeItemManager, v12);
  }

  return v14;
}

- (HUPersonalPINCodeViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithItem_pinCodeManager_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPersonalPINCodeViewController.m" lineNumber:68 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalPINCodeViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUPersonalPINCodeViewController;
  [(HUItemTableViewController *)&v5 viewDidLoad];
  if ([(HUPersonalPINCodeViewController *)self showDoneButtonInNavBar])
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
    navigationItem = [(HUPersonalPINCodeViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v3];
  }
}

- (void)doneButtonPressed:(id)pressed
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HUPersonalPINCodeViewController doneButtonPressed:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'done' button", &v6, 0xCu);
  }

  presentingViewController = [(HUPersonalPINCodeViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v34.receiver = self;
  v34.super_class = HUPersonalPINCodeViewController;
  [(HUItemTableViewController *)&v34 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  pinCodeValueItem = [personalPINCodeItemManager pinCodeValueItem];
  v14 = [itemCopy isEqual:pinCodeValueItem];

  if (!v14)
  {
    personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
    pinCodeChangeItem = [personalPINCodeItemManager2 pinCodeChangeItem];
    if ([itemCopy isEqual:pinCodeChangeItem])
    {
    }

    else
    {
      personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
      shareButtonItem = [personalPINCodeItemManager3 shareButtonItem];
      v22 = [itemCopy isEqual:shareButtonItem];

      if (!v22)
      {
        personalPINCodeItemManager4 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
        createUserPINButtonItem = [personalPINCodeItemManager4 createUserPINButtonItem];
        v25 = [itemCopy isEqual:createUserPINButtonItem];

        if (!v25)
        {
          personalPINCodeItemManager5 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
          removeUserPINButtonItem = [personalPINCodeItemManager5 removeUserPINButtonItem];
          v30 = [itemCopy isEqual:removeUserPINButtonItem];

          if (!v30)
          {
            goto LABEL_10;
          }

          v16 = [HUListContentConfigurationUtilities buttonStyleConfigurationForItem:itemCopy isDestructive:1];
          latestResults = [itemCopy latestResults];
          layer = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];

          if ([layer BOOLValue])
          {
            systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
            textProperties = [v16 textProperties];
            [textProperties setColor:systemGrayColor];
          }

          [cellCopy setContentConfiguration:v16];
          goto LABEL_3;
        }
      }
    }

    v16 = [HUListContentConfigurationUtilities buttonStyleConfigurationForItem:itemCopy isDestructive:0];
    [cellCopy setContentConfiguration:v16];
    goto LABEL_9;
  }

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v16 = [HUListContentConfigurationUtilities labelConfiguration:valueCellConfiguration forItem:itemCopy];

  [cellCopy setContentConfiguration:v16];
  layer = [cellCopy layer];
  [layer setDisableUpdateMask:16];
LABEL_3:

LABEL_9:
LABEL_10:
  latestResults2 = [itemCopy latestResults];
  v27 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [cellCopy setAccessibilityIdentifier:v27];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  sourceItem = [personalPINCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = sourceItem;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  pinCodeValueItem = [personalPINCodeItemManager2 pinCodeValueItem];
  v14 = pinCodeValueItem;
  if (pinCodeValueItem == v7)
  {
    user = [v11 user];

    if (user)
    {
      v18 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  removeUserPINButtonItem = [personalPINCodeItemManager3 removeUserPINButtonItem];
  v17 = removeUserPINButtonItem;
  if (removeUserPINButtonItem == v7)
  {
    latestResults = [v7 latestResults];
    v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v21 BOOLValue];

    v18 = bOOLValue ^ 1;
  }

  else
  {

    v18 = 1;
  }

LABEL_11:

  return v18 & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v72 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v65.receiver = self;
  v65.super_class = HUPersonalPINCodeViewController;
  [(HUItemTableViewController *)&v65 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v68 = 2080;
    v69 = "[HUPersonalPINCodeViewController tableView:didSelectRowAtIndexPath:]";
    v70 = 2112;
    v71 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "In %@'s %s, user selected item %@", buf, 0x20u);
  }

  objc_opt_class();
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  sourceItem = [personalPINCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = sourceItem;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  pinCodeValueItem = [personalPINCodeItemManager2 pinCodeValueItem];
  v17 = [v9 isEqual:pinCodeValueItem];
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    user = [v14 user];
    v20 = user == 0;

    if (v20)
    {
      mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
      v22 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(HUPersonalPINCodeViewController *)self becomeFirstResponder];
      view = [(HUPersonalPINCodeViewController *)self view];
      [v22 frame];
      [mEMORY[0x277D75718] showMenuFromView:view rect:?];

      goto LABEL_24;
    }
  }

  else
  {
  }

  personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  pinCodeChangeItem = [personalPINCodeItemManager3 pinCodeChangeItem];
  v26 = [v9 isEqual:pinCodeChangeItem];

  if (v26)
  {
    goto LABEL_14;
  }

  personalPINCodeItemManager4 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  shareButtonItem = [personalPINCodeItemManager4 shareButtonItem];
  v29 = [v9 isEqual:shareButtonItem];

  if (v29)
  {
    [(HUPersonalPINCodeViewController *)self _shareCode];
    goto LABEL_24;
  }

  personalPINCodeItemManager5 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  createUserPINButtonItem = [personalPINCodeItemManager5 createUserPINButtonItem];
  v32 = [v9 isEqual:createUserPINButtonItem];

  if (v32)
  {
LABEL_14:
    [(HUPersonalPINCodeViewController *)self openPINCodeEditor];
  }

  else
  {
    personalPINCodeItemManager6 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
    removeUserPINButtonItem = [personalPINCodeItemManager6 removeUserPINButtonItem];
    v35 = [v9 isEqual:removeUserPINButtonItem];

    if (v35)
    {
      personalPINCodeItemManager7 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
      operationInProgress = [personalPINCodeItemManager7 operationInProgress];

      if ((operationInProgress & 1) == 0)
      {
        personalPINCodeItemManager8 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
        home = [personalPINCodeItemManager8 home];
        currentUser = [home currentUser];

        uniqueIdentifier = [currentUser uniqueIdentifier];
        user2 = [v14 user];
        uniqueIdentifier2 = [user2 uniqueIdentifier];
        LODWORD(personalPINCodeItemManager8) = [uniqueIdentifier isEqual:uniqueIdentifier2];

        v59 = _HULocalizedStringWithDefaultValue(@"HUPinCodeDeleteAlertTitle", @"HUPinCodeDeleteAlertTitle", 1);
        personalPINCodeItemManager9 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
        home2 = [personalPINCodeItemManager9 home];

        if (personalPINCodeItemManager8)
        {
          v44 = @"HUPinCodeDeleteCurrentUserPINCodeAlertMessage";
        }

        else
        {
          v44 = @"HUPinCodeDeleteOtherUserPINCodeAlertMessage";
        }

        name = [home2 name];
        v58 = HULocalizedStringWithFormat(v44, @"%@", v46, v47, v48, v49, v50, v51, name);

        v57 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
        v52 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
        v53 = [MEMORY[0x277D75110] alertControllerWithTitle:v59 message:v58 preferredStyle:1];
        objc_initWeak(buf, self);
        v54 = MEMORY[0x277D750F8];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __69__HUPersonalPINCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke;
        v62[3] = &unk_277DB9948;
        objc_copyWeak(&v64, buf);
        v63 = v14;
        v55 = [v54 actionWithTitle:v57 style:2 handler:v62];
        [v53 addAction:v55];

        v56 = [MEMORY[0x277D750F8] actionWithTitle:v52 style:0 handler:&__block_literal_global_190];
        [v53 addAction:v56];

        [(HUPersonalPINCodeViewController *)self presentViewController:v53 animated:1 completion:0];
        objc_destroyWeak(&v64);
        objc_destroyWeak(buf);
      }
    }
  }

LABEL_24:
}

void __69__HUPersonalPINCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    *buf = 136315394;
    v14 = "[HUPersonalPINCodeViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped confirm button with title '%@' from the alert popup", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showSpinner];
  v7 = [*(a1 + 32) user];
  v8 = [WeakRetained pinCodeManager];
  v9 = [v8 deleteUserPinCodeWithUser:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HUPersonalPINCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_46;
  v11[3] = &unk_277DB7720;
  v11[4] = WeakRetained;
  v12 = *(a1 + 32);
  v10 = [v9 addCompletionBlock:v11];
}

void __69__HUPersonalPINCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v14 = v4;
  if (v4)
  {
    [v5 _hideSpinner];
    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:v14 operationType:*MEMORY[0x277D13C88] options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    v7 = [v5 showDoneButtonInNavBar];
    v8 = *(a1 + 32);
    if (v7)
    {
      v6 = [v8 presentingViewController];
      [v6 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v9 = [v8 navigationController];
      v10 = [v9 popViewControllerAnimated:1];

      v6 = [*(a1 + 32) delegate];
      [v6 personalPinCodeViewController:*(a1 + 32) pinCodeDidChange:0];
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [*(a1 + 32) personalPINCodeItemManager];
  v13 = [v12 home];
  [v11 na_safeSetObject:v13 forKey:*MEMORY[0x277D13520]];

  [v11 na_safeSetObject:&unk_282491CD0 forKey:*MEMORY[0x277D133C0]];
  [v11 na_safeSetObject:*(a1 + 40) forKey:*MEMORY[0x277D133B8]];
  [v11 na_safeSetObject:v14 forKey:*MEMORY[0x277D13510]];
  [MEMORY[0x277D143D8] sendEvent:26 withData:v11];
}

void __69__HUPersonalPINCodeViewController_tableView_didSelectRowAtIndexPath___block_invoke_53()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUPersonalPINCodeViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button from the alert popup", &v1, 0xCu);
  }
}

- (id)currentPinCodeValue
{
  objc_opt_class();
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  sourceItem = [personalPINCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  home = [personalPINCodeItemManager2 home];

  currentUser = [home currentUser];
  uniqueIdentifier = [currentUser uniqueIdentifier];
  user = [v6 user];
  uniqueIdentifier2 = [user uniqueIdentifier];
  v13 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  LOBYTE(currentUser) = [v6 isGuest];
  if ((currentUser & 1) != 0 || (v14 = 0, v13))
  {
    personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
    pinCodeValueItem = [personalPINCodeItemManager3 pinCodeValueItem];
    latestResults = [pinCodeValueItem latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  return v14;
}

- (void)openPINCodeEditor
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2080;
    v21 = "[HUPersonalPINCodeViewController openPINCodeEditor]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Opening PINCode Editor", buf, 0x16u);
  }

  pinCodeManager = [(HUPersonalPINCodeViewController *)self pinCodeManager];
  hasValidConstraints = [pinCodeManager hasValidConstraints];

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke;
  v16[3] = &unk_277DC0D70;
  objc_copyWeak(v17, buf);
  v17[1] = a2;
  v7 = [hasValidConstraints addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_61;
  v14[3] = &unk_277DB94D0;
  objc_copyWeak(&v15, buf);
  v8 = [hasValidConstraints addFailureBlock:v14];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_64;
  v12[3] = &unk_277DB8488;
  v10 = hasValidConstraints;
  v13 = v10;
  v11 = [mainThreadScheduler afterDelay:v12 performBlock:1.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

void __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__22;
  v35 = __Block_byref_object_dispose__22;
  v5 = [WeakRetained personalPINCodeItemManager];
  v36 = [v5 home];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__22;
  v29 = __Block_byref_object_dispose__22;
  v6 = [WeakRetained personalPINCodeItemManager];
  v30 = [v6 sourceItem];

  if ([v3 BOOLValue] && v32[5] && v26[5])
  {
    v7 = [WeakRetained currentPinCodeValue];
    v8 = [HUPinCodeEditorViewController alloc];
    v9 = v26[5];
    v10 = [WeakRetained pinCodeManager];
    v11 = v32[5];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_55;
    v21 = &unk_277DC0D48;
    objc_copyWeak(v24, (a1 + 32));
    v22 = &v25;
    v23 = &v31;
    v24[1] = *(a1 + 40);
    v12 = [(HUPinCodeEditorViewController *)v8 initForEditingPinCodeWithItem:v9 pinCodeManager:v10 pinCodeValue:v7 home:v11 completionBlock:&v18];

    v13 = [WeakRetained hu_delegateForModalPresentation];
    [v12 setPresentationDelegate:v13];

    v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
    [WeakRetained presentViewController:v14 animated:1 completion:0];

    objc_destroyWeak(v24);
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v32[5];
      v17 = v26[5];
      *buf = 138412802;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v3;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Unable to update pincode. Home:%@, sourceItem:%@, validConstraints:%@", buf, 0x20u);
    }

    [WeakRetained _presentPinCodeErrorDialog];
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

void __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_55(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_opt_class();
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v3 && v7)
  {
    [v7 updateFromPinCode:v3];
    v8 = 2;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D14920]) initWithPinCode:v3 inHome:*(*(*(a1 + 40) + 8) + 40) onAccessory:0];
    v10 = [WeakRetained personalPINCodeItemManager];
    [v10 setSourceItem:v9];

    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v9;

    v8 = 0;
  }

  v13 = [WeakRetained personalPINCodeItemManager];
  [v13 resetItemProvidersAndModules];

  v14 = [WeakRetained personalPINCodeItemManager];
  v15 = [v14 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 56)];

  v16 = [WeakRetained delegate];
  [v16 personalPinCodeViewController:WeakRetained pinCodeDidChange:v3];

  v17 = *MEMORY[0x277D13520];
  v22[0] = *(*(*(a1 + 40) + 8) + 40);
  v18 = *MEMORY[0x277D133C0];
  v21[0] = v17;
  v21[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v22[1] = v19;
  v21[2] = *MEMORY[0x277D133B8];
  v22[2] = *(*(*(a1 + 32) + 8) + 40);
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  [MEMORY[0x277D143D8] sendEvent:26 withData:v20];
}

void __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_61(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[HUPersonalPINCodeViewController openPINCodeEditor]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%s) Unable to retrieve valid Pin Code constraints with error: %@", &v6, 0x16u);
  }

  [WeakRetained _presentPinCodeErrorDialog];
}

void __52__HUPersonalPINCodeViewController_openPINCodeEditor__block_invoke_64(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];
  }
}

- (void)copy:(id)copy
{
  currentPinCodeValue = [(HUPersonalPINCodeViewController *)self currentPinCodeValue];
  if (currentPinCodeValue)
  {
    v6 = currentPinCodeValue;
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    identifier = [*MEMORY[0x277CE1E20] identifier];
    [generalPasteboard setValue:v6 forPasteboardType:identifier];

    currentPinCodeValue = v6;
  }
}

- (void)_shareCode
{
  objc_opt_class();
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  sourceItem = [personalPINCodeItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItem;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;

  pinCodeValue = [v17 pinCodeValue];

  if (pinCodeValue)
  {
    personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
    home = [personalPINCodeItemManager2 home];
    v9 = [HUPinCodeUtilities createSharingViewControllerForPinCodeItem:v17 inHome:home];

    if ([v9 modalPresentationStyle] == 7)
    {
      popoverPresentationController = [v9 popoverPresentationController];
      tableView = [(HUPersonalPINCodeViewController *)self tableView];
      personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
      personalPINCodeItemManager4 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
      shareButtonItem = [personalPINCodeItemManager4 shareButtonItem];
      v15 = [personalPINCodeItemManager3 indexPathForItem:shareButtonItem];
      v16 = [tableView cellForRowAtIndexPath:v15];
      [popoverPresentationController setSourceView:v16];
    }

    [(HUPersonalPINCodeViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)_showSpinner
{
  v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v13];
  navigationItem = [(HUPersonalPINCodeViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [v13 startAnimating];
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  [personalPINCodeItemManager setOperationInProgress:1];

  personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  v8 = MEMORY[0x277CBEB98];
  personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  removeUserPINButtonItem = [personalPINCodeItemManager3 removeUserPINButtonItem];
  v11 = [v8 setWithObject:removeUserPINButtonItem];
  v12 = [personalPINCodeItemManager2 updateResultsForItems:v11 senderSelector:a2];
}

- (void)_hideSpinner
{
  objc_opt_class();
  navigationItem = [(HUPersonalPINCodeViewController *)self navigationItem];
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

  navigationItem2 = [(HUPersonalPINCodeViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  [v8 stopAnimating];
  personalPINCodeItemManager = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  [personalPINCodeItemManager setOperationInProgress:0];

  personalPINCodeItemManager2 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  v11 = MEMORY[0x277CBEB98];
  personalPINCodeItemManager3 = [(HUPersonalPINCodeViewController *)self personalPINCodeItemManager];
  removeUserPINButtonItem = [personalPINCodeItemManager3 removeUserPINButtonItem];
  v14 = [v11 setWithObject:removeUserPINButtonItem];
  v15 = [personalPINCodeItemManager2 updateResultsForItems:v14 senderSelector:a2];
}

- (void)_presentPinCodeErrorDialog
{
  v8 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditUnavailableAlertTitle", @"HUPinCodeEditUnavailableAlertTitle", 1);
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditUnavailableAlertMessage", @"HUPinCodeEditUnavailableAlertMessage", 1);
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v3 preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v7 = [v5 actionWithTitle:v6 style:2 handler:&__block_literal_global_81_1];
  [v4 addAction:v7];

  [(HUPersonalPINCodeViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __61__HUPersonalPINCodeViewController__presentPinCodeErrorDialog__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUPersonalPINCodeViewController _presentPinCodeErrorDialog]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped ok button from the alert popup", &v1, 0xCu);
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUPersonalPINCodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUPersonalPINCodeItemManager)personalPINCodeItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_personalPINCodeItemManager);

  return WeakRetained;
}

@end