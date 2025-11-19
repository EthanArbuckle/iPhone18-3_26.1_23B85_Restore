@interface HUPinCodeEditorViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (HMHome)home;
- (HUPinCodeEditorViewController)initWithCoder:(id)a3;
- (HUPinCodeEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (id)checkForPINCodeValueValidationErrors;
- (id)commitPinCodeChange;
- (id)initForCreatingNewPinCodeWithManager:(id)a3 initialPinCodeValue:(id)a4 home:(id)a5 completionBlock:(id)a6;
- (id)initForEditingPinCodeWithItem:(id)a3 pinCodeManager:(id)a4 pinCodeValue:(id)a5 home:(id)a6 completionBlock:(id)a7;
- (void)_commonInitWithManager:(id)a3 home:(id)a4 initialPinCodeValue:(id)a5;
- (void)_hideSpinner;
- (void)_showSpinner;
- (void)_updateHeaderAndFooter;
- (void)cancelButtonPressed:(id)a3;
- (void)saveButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUPinCodeEditorViewController

- (void)_commonInitWithManager:(id)a3 home:(id)a4 initialPinCodeValue:(id)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HUPinCodeEditorViewController *)self setHome:v9];
  [(HUPinCodeEditorViewController *)self setPinCodeManager:v8];
  [(HUPinCodeEditorViewController *)self setCodeLengthMin:4];
  [(HUPinCodeEditorViewController *)self setCodeLengthMax:8];
  v11 = objc_alloc(MEMORY[0x277D756B8]);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], v13, v14, v15}];
  [(HUPinCodeEditorViewController *)self setInstructionHeader:v16];

  v17 = *MEMORY[0x277D769D0];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v19 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v19 setFont:v18];

  v20 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v20 setNumberOfLines:0];

  v21 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v21 setTextAlignment:1];

  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
  [(HUPinCodeEditorViewController *)self setFooterLabel:v22];

  v23 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v23 setNumberOfLines:0];

  v24 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v24 setTextAlignment:1];

  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  v26 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v26 setFont:v25];

  v27 = [MEMORY[0x277D75348] secondaryLabelColor];
  v28 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v28 setTextColor:v27];

  [(HUPinCodeEditorViewController *)self _updateHeaderAndFooter];
  if (!numberFormatter)
  {
    v29 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v30 = numberFormatter;
    numberFormatter = v29;

    v31 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [numberFormatter setLocale:v31];

    [numberFormatter setNumberStyle:0];
  }

  v32 = [[HUPaddedTextField alloc] initWithFrame:v12, v13, v14, v15];
  [(HUPinCodeEditorViewController *)self setTextField:v32];

  v55 = *MEMORY[0x277D740D0];
  v56[0] = &unk_282493830;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  v34 = [(HUPinCodeEditorViewController *)self textField];
  [v34 setDefaultTextAttributes:v33];

  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  v36 = [(HUPinCodeEditorViewController *)self textField];
  [v36 setFont:v35];

  v37 = [MEMORY[0x277D75348] labelColor];
  v38 = [(HUPinCodeEditorViewController *)self textField];
  [v38 setTextColor:v37];

  v39 = [(HUPinCodeEditorViewController *)self textField];
  [v39 setDelegate:self];

  v40 = [(HUPinCodeEditorViewController *)self textField];
  [v40 setBorderStyle:3];

  v41 = [(HUPinCodeEditorViewController *)self textField];
  [v41 setClearButtonMode:0];

  v42 = [(HUPinCodeEditorViewController *)self textField];
  [v42 setTextAlignment:1];

  v43 = [(HUPinCodeEditorViewController *)self textField];
  [v43 setEnabled:1];

  v44 = [(HUPinCodeEditorViewController *)self textField];
  [v44 setKeyboardType:4];

  v45 = [(HUPinCodeEditorViewController *)self textField];
  v46 = [v45 layer];
  [v46 setDisableUpdateMask:16];

  v47 = [v10 length];
  [numberFormatter setMinimumIntegerDigits:v47];
  v48 = [numberFormatter numberFromString:v10];
  v49 = [numberFormatter stringForObjectValue:v48];
  v50 = [(HUPinCodeEditorViewController *)self textField];
  [v50 setText:v49];

  v51 = [(HUPinCodeEditorViewController *)self textField];
  [v51 sizeToFit];

  objc_initWeak(&location, self);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __81__HUPinCodeEditorViewController__commonInitWithManager_home_initialPinCodeValue___block_invoke;
  v52[3] = &unk_277DC4E30;
  objc_copyWeak(&v53, &location);
  [v8 fetchPinCodeConstraints:v52];
  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

void __81__HUPinCodeEditorViewController__commonInitWithManager_home_initialPinCodeValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCodeLengthMin:a2];
  [WeakRetained setCodeLengthMax:a3];
  [WeakRetained _updateHeaderAndFooter];
}

- (id)initForEditingPinCodeWithItem:(id)a3 pinCodeManager:(id)a4 pinCodeValue:(id)a5 home:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HUPinCodeEditorViewController;
  v17 = [(HUPinCodeEditorViewController *)&v20 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    [(HUPinCodeEditorViewController *)v17 setSourceItem:v12];
    [(HUPinCodeEditorViewController *)v18 _commonInitWithManager:v13 home:v15 initialPinCodeValue:v14];
    [(HUPinCodeEditorViewController *)v18 setUpdatedPINCodeCompletionBlock:v16];
  }

  return v18;
}

- (id)initForCreatingNewPinCodeWithManager:(id)a3 initialPinCodeValue:(id)a4 home:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HUPinCodeEditorViewController;
  v14 = [(HUPinCodeEditorViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(HUPinCodeEditorViewController *)v14 _commonInitWithManager:v10 home:v12 initialPinCodeValue:v11];
    [(HUPinCodeEditorViewController *)v15 setNewPINCodeCompletionBlock:v13];
  }

  return v15;
}

- (HUPinCodeEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initForEditingPinCodeWithItem_pinCodeManager_pinCodeValue_home_completionBlock_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUPinCodeEditorViewController.m" lineNumber:159 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeEditorViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUPinCodeEditorViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initForEditingPinCodeWithItem_pinCodeManager_pinCodeValue_home_completionBlock_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPinCodeEditorViewController.m" lineNumber:164 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeEditorViewController initWithCoder:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v88.receiver = self;
  v88.super_class = HUPinCodeEditorViewController;
  [(HUPinCodeEditorViewController *)&v88 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditorViewControllerTitle", @"HUPinCodeEditorViewControllerTitle", 1);
  [(HUPinCodeEditorViewController *)self setTitle:v3];

  v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v5 = [(HUPinCodeEditorViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(HUPinCodeEditorViewController *)self view];
  v7 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v6 addSubview:v7];

  v8 = [(HUPinCodeEditorViewController *)self view];
  v9 = [(HUPinCodeEditorViewController *)self textField];
  [v8 addSubview:v9];

  v10 = [(HUPinCodeEditorViewController *)self view];
  v11 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v10 addSubview:v11];

  v12 = [(HUPinCodeEditorViewController *)self view];
  [v12 setAccessibilityIdentifier:@"Home.Locks.PinCode.Editor"];

  v13 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HUPinCodeEditorViewController *)self textField];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [(HUPinCodeEditorViewController *)self textField];
  v18 = [v17 bottomAnchor];
  v19 = [(HUPinCodeEditorViewController *)self view];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:-60.0];
  [v16 addObject:v21];

  v22 = [(HUPinCodeEditorViewController *)self textField];
  v23 = [v22 leadingAnchor];
  v24 = [(HUPinCodeEditorViewController *)self view];
  v25 = [v24 layoutMarginsGuide];
  v26 = [v25 leadingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v16 addObject:v27];

  v28 = [(HUPinCodeEditorViewController *)self textField];
  v29 = [v28 trailingAnchor];
  v30 = [(HUPinCodeEditorViewController *)self view];
  v31 = [v30 layoutMarginsGuide];
  v32 = [v31 trailingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];
  [v16 addObject:v33];

  v34 = [(HUPinCodeEditorViewController *)self instructionHeader];
  v35 = [v34 leadingAnchor];
  v36 = [(HUPinCodeEditorViewController *)self view];
  v37 = [v36 layoutMarginsGuide];
  v38 = [v37 leadingAnchor];
  v39 = [v35 constraintEqualToAnchor:v38 constant:10.0];
  [v16 addObject:v39];

  v40 = [(HUPinCodeEditorViewController *)self instructionHeader];
  v41 = [v40 trailingAnchor];
  v42 = [(HUPinCodeEditorViewController *)self view];
  v43 = [v42 layoutMarginsGuide];
  v44 = [v43 trailingAnchor];
  v45 = [v41 constraintEqualToAnchor:v44 constant:-10.0];
  [v16 addObject:v45];

  v46 = [(HUPinCodeEditorViewController *)self instructionHeader];
  v47 = [v46 centerXAnchor];
  v48 = [(HUPinCodeEditorViewController *)self view];
  v49 = [v48 layoutMarginsGuide];
  v50 = [v49 centerXAnchor];
  v51 = [v47 constraintEqualToAnchor:v50];
  [v16 addObject:v51];

  v52 = [(HUPinCodeEditorViewController *)self instructionHeader];
  v53 = [v52 bottomAnchor];
  v54 = [(HUPinCodeEditorViewController *)self textField];
  v55 = [v54 topAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:-28.0];
  [v16 addObject:v56];

  v57 = [(HUPinCodeEditorViewController *)self footerLabel];
  v58 = [v57 leadingAnchor];
  v59 = [(HUPinCodeEditorViewController *)self view];
  v60 = [v59 layoutMarginsGuide];
  v61 = [v60 leadingAnchor];
  v62 = [v58 constraintEqualToAnchor:v61 constant:10.0];
  [v16 addObject:v62];

  v63 = [(HUPinCodeEditorViewController *)self footerLabel];
  v64 = [v63 trailingAnchor];
  v65 = [(HUPinCodeEditorViewController *)self view];
  v66 = [v65 layoutMarginsGuide];
  v67 = [v66 trailingAnchor];
  v68 = [v64 constraintEqualToAnchor:v67 constant:-10.0];
  [v16 addObject:v68];

  v69 = [(HUPinCodeEditorViewController *)self footerLabel];
  v70 = [v69 centerXAnchor];
  v71 = [(HUPinCodeEditorViewController *)self view];
  v72 = [v71 layoutMarginsGuide];
  v73 = [v72 centerXAnchor];
  v74 = [v70 constraintEqualToAnchor:v73];
  [v16 addObject:v74];

  v75 = [(HUPinCodeEditorViewController *)self footerLabel];
  v76 = [v75 topAnchor];
  v77 = [(HUPinCodeEditorViewController *)self textField];
  v78 = [v77 bottomAnchor];
  v79 = [v76 constraintEqualToAnchor:v78 constant:28.0];
  [v16 addObject:v79];

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
  v80 = [(HUPinCodeEditorViewController *)self navigationController];
  v81 = [v80 viewControllers];
  v82 = [v81 objectAtIndexedSubscript:0];
  LODWORD(v78) = [v82 isEqual:self];

  if (v78)
  {
    v83 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    v84 = [(HUPinCodeEditorViewController *)self navigationItem];
    [v84 setLeftBarButtonItem:v83];
  }

  v85 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonPressed_];
  [(HUPinCodeEditorViewController *)self setSaveButtonItem:v85];

  v86 = [(HUPinCodeEditorViewController *)self saveButtonItem];
  v87 = [(HUPinCodeEditorViewController *)self navigationItem];
  [v87 setRightBarButtonItem:v86];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUPinCodeEditorViewController;
  [(HUPinCodeEditorViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUPinCodeEditorViewController *)self textField];
  [v4 becomeFirstResponder];
}

- (void)_updateHeaderAndFooter
{
  objc_opt_class();
  v3 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v46 = v4;

  objc_opt_class();
  v5 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v46;
  }

  v9 = [v8 user];
  v10 = [(HUPinCodeEditorViewController *)self home];
  v11 = [v10 currentUser];
  v12 = [v11 uniqueIdentifier];
  v13 = [v9 uniqueIdentifier];
  v14 = [v12 isEqual:v13];

  v15 = [v46 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v17 = [(HUPinCodeEditorViewController *)self codeLengthMin];
  [(HUPinCodeEditorViewController *)self codeLengthMax];
  v24 = HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeaderNoName", @"%ld%ld", v18, v19, v20, v21, v22, v23, v17);
  if (v14)
  {
    v25 = [(HUPinCodeEditorViewController *)self codeLengthMin];
    [(HUPinCodeEditorViewController *)self codeLengthMax];
    HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeaderSelf", @"%ld%ld", v26, v27, v28, v29, v30, v31, v25);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    v32 = [(HUPinCodeEditorViewController *)self codeLengthMin];
    [(HUPinCodeEditorViewController *)self codeLengthMax];
    HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeader", @"%ld%ld%@", v33, v34, v35, v36, v37, v38, v32);
  }
  v39 = ;

  v24 = v39;
LABEL_15:
  v40 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v40 setText:v24];

  v41 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [v41 sizeToFit];

  if (v9)
  {
    v42 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditInstructionFooter", @"HUPinCodeEditInstructionFooter", 1);
    v43 = [(HUPinCodeEditorViewController *)self footerLabel];
    [v43 setText:v42];

    v44 = [(HUPinCodeEditorViewController *)self footerLabel];
    [v44 sizeToFit];
  }

  v45 = [(HUPinCodeEditorViewController *)self footerLabel];
  [v45 setHidden:v9 == 0];
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(HUPinCodeEditorViewController) User tapped 'cancel' button", v8, 2u);
  }

  v5 = [(HUPinCodeEditorViewController *)self textField];
  [v5 resignFirstResponder];

  v6 = [(HUPinCodeEditorViewController *)self presentationDelegate];
  v7 = [v6 finishPresentation:self animated:1];
}

- (void)saveButtonPressed:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(HUPinCodeEditorViewController) User tapped 'save' button", &buf, 2u);
  }

  v6 = [(HUPinCodeEditorViewController *)self textField];
  [v6 resignFirstResponder];

  v7 = [(HUPinCodeEditorViewController *)self textField];
  v8 = [v7 text];

  v23 = 0;
  v9 = [MEMORY[0x277D14930] asciiStringForLocalizedPINString:v8 error:&v23];
  v10 = v23;
  [(HUPinCodeEditorViewController *)self setEditedPinCode:v9];
  objc_initWeak(&buf, self);
  v11 = [(HUPinCodeEditorViewController *)self checkForPINCodeValueValidationErrors];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke;
  v20[3] = &unk_277DB9858;
  v12 = v10;
  v21 = v12;
  v13 = [v11 recover:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_57;
  v18[3] = &unk_277DB94D0;
  objc_copyWeak(&v19, &buf);
  v14 = [v13 addFailureBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_2_59;
  v16[3] = &unk_277DB99B8;
  objc_copyWeak(&v17, &buf);
  v15 = [v14 addSuccessBlock:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&buf);
}

id __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [MEMORY[0x277D14640] sharedHandler];
  v7 = *MEMORY[0x277D13C20];
  [v6 logError:v3 operationDescription:*MEMORY[0x277D13C20]];

  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  v9 = [v3 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x277D13880]];
  v11 = [v10 objectForKey:*MEMORY[0x277D13868]];

  if (v11)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_2;
    aBlock[3] = &unk_277DB7558;
    v23 = v3;
    v24 = v8;
    v12 = _Block_copy(aBlock);
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277D14640] sharedHandler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_55;
  v19[3] = &unk_277DB7558;
  v20 = v3;
  v14 = v8;
  v21 = v14;
  v15 = v3;
  [v13 handleError:v15 operationType:v7 options:0 retryBlock:v12 cancelBlock:v19];

  v16 = v21;
  v17 = v14;

  return v14;
}

uint64_t __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) code];
  v3 = HFLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 77)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Optional PIN Code validation was dismissed by user. Proceeding to set PIN Code. %@", &v8, 0xCu);
    }

    return [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Unknown PIN Code validation error requested retry. Closing editor without setting PIN Code. %@", &v8, 0xCu);
    }

    return [*(a1 + 40) finishWithError:*(a1 + 32)];
  }
}

uint64_t __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_55(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8) = 0;
    _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "Closing edit view without saving.", &v8, 2u);
  }

  if ([*(a1 + 32) code] == 75 || objc_msgSend(*(a1 + 32), "code") == 74 || objc_msgSend(*(a1 + 32), "code") == 77 || objc_msgSend(*(a1 + 32), "code") == 82)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Mandatory PIN Code validation. Stay on editor so user can fix issue. %@", &v8, 0xCu);
    }

    return [*(a1 + 40) cancel];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Got failure trying to validate PIN Code. Closing editor without setting PIN Code. %@", &v8, 0xCu);
    }

    return [*(a1 + 40) finishWithError:*(a1 + 32)];
  }
}

void __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_57(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v8 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v8 code];

    if (v5 == 3072)
    {
      v6 = [WeakRetained textField];
      [v6 becomeFirstResponder];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [WeakRetained presentationDelegate];
  v7 = [v6 finishPresentation:WeakRetained animated:1];
LABEL_6:
}

void __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_2_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained newPINCodeCompletionBlock];

  if (v2)
  {
    v3 = [WeakRetained presentationDelegate];
    v4 = [v3 finishPresentation:WeakRetained animated:1];

    v5 = [WeakRetained newPINCodeCompletionBlock];
    v6 = [WeakRetained editedPinCode];
    (v5)[2](v5, v6);
  }

  else
  {
    v7 = [WeakRetained updatedPINCodeCompletionBlock];

    if (!v7)
    {
      NSLog(&cfstr_AttemptingToSa.isa);
      goto LABEL_6;
    }

    v5 = [WeakRetained commitPinCodeChange];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_3;
    v9[3] = &unk_277DC4E58;
    v9[4] = WeakRetained;
    v8 = [v5 addSuccessBlock:v9];
  }

LABEL_6:
}

void __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 presentationDelegate];
  v6 = [v5 finishPresentation:*(a1 + 32) animated:1];

  v7 = [*(a1 + 32) updatedPINCodeCompletionBlock];
  v7[2](v7, v4);
}

- (id)commitPinCodeChange
{
  [(HUPinCodeEditorViewController *)self _showSpinner];
  objc_opt_class();
  v3 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [(HUPinCodeEditorViewController *)self sourceItem];
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
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v10 = [v9 user];
  v11 = [(HUPinCodeEditorViewController *)self editedPinCode];
  v12 = [(HUPinCodeEditorViewController *)self pinCodeManager];
  v13 = v12;
  if (v10)
  {
    [v12 setUserPinCode:v11 forUser:v10];
  }

  else
  {
    [v12 updatePinCodeWithItem:v5 withCodeValue:v11];
  }
  v14 = ;

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HUPinCodeEditorViewController_commitPinCodeChange__block_invoke;
  v17[3] = &unk_277DB8CA8;
  objc_copyWeak(&v18, &location);
  v15 = [v14 addCompletionBlock:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v15;
}

void __52__HUPinCodeEditorViewController_commitPinCodeChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideSpinner];
  if (v6)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v6 operationType:*MEMORY[0x277D13CC0] options:0 retryBlock:0 cancelBlock:0];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  if ([(HUPinCodeEditorViewController *)self codeLengthMax]<= 0)
  {
    NSLog(&cfstr_IgnoringInvali.isa);
    v16 = 1;
  }

  else
  {
    v9 = [(HUPinCodeEditorViewController *)self textField];
    v10 = [v9 text];
    v11 = v10;
    v12 = &stru_2823E0EE8;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, v8];

    v15 = [v14 length];
    v16 = v15 <= [(HUPinCodeEditorViewController *)self codeLengthMax];
  }

  return v16;
}

- (id)checkForPINCodeValueValidationErrors
{
  objc_opt_class();
  v3 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HUPinCodeEditorViewController *)self textField];
  v7 = [v6 text];

  v8 = [v5 pinCodeValue];

  v9 = [(HUPinCodeEditorViewController *)self pinCodeManager];
  v10 = [v9 checkForValidationErrorsWithPINCodeValue:v7 originalPINCode:v8];

  return v10;
}

- (void)_showSpinner
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  v4 = [(HUPinCodeEditorViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (void)_hideSpinner
{
  objc_opt_class();
  v3 = [(HUPinCodeEditorViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = [v4 customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;

  v7 = [(HUPinCodeEditorViewController *)self saveButtonItem];
  v8 = [(HUPinCodeEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  [v9 stopAnimating];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end