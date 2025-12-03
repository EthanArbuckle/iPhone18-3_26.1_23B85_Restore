@interface HUPinCodeEditorViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (HMHome)home;
- (HUPinCodeEditorViewController)initWithCoder:(id)coder;
- (HUPinCodeEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HUPresentationDelegate)presentationDelegate;
- (id)checkForPINCodeValueValidationErrors;
- (id)commitPinCodeChange;
- (id)initForCreatingNewPinCodeWithManager:(id)manager initialPinCodeValue:(id)value home:(id)home completionBlock:(id)block;
- (id)initForEditingPinCodeWithItem:(id)item pinCodeManager:(id)manager pinCodeValue:(id)value home:(id)home completionBlock:(id)block;
- (void)_commonInitWithManager:(id)manager home:(id)home initialPinCodeValue:(id)value;
- (void)_hideSpinner;
- (void)_showSpinner;
- (void)_updateHeaderAndFooter;
- (void)cancelButtonPressed:(id)pressed;
- (void)saveButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUPinCodeEditorViewController

- (void)_commonInitWithManager:(id)manager home:(id)home initialPinCodeValue:(id)value
{
  v56[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  homeCopy = home;
  valueCopy = value;
  [(HUPinCodeEditorViewController *)self setHome:homeCopy];
  [(HUPinCodeEditorViewController *)self setPinCodeManager:managerCopy];
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
  instructionHeader = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader setFont:v18];

  instructionHeader2 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader2 setNumberOfLines:0];

  instructionHeader3 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader3 setTextAlignment:1];

  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
  [(HUPinCodeEditorViewController *)self setFooterLabel:v22];

  footerLabel = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel setNumberOfLines:0];

  footerLabel2 = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel2 setTextAlignment:1];

  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  footerLabel3 = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel3 setFont:v25];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  footerLabel4 = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel4 setTextColor:secondaryLabelColor];

  [(HUPinCodeEditorViewController *)self _updateHeaderAndFooter];
  if (!numberFormatter)
  {
    v29 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v30 = numberFormatter;
    numberFormatter = v29;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [numberFormatter setLocale:autoupdatingCurrentLocale];

    [numberFormatter setNumberStyle:0];
  }

  v32 = [[HUPaddedTextField alloc] initWithFrame:v12, v13, v14, v15];
  [(HUPinCodeEditorViewController *)self setTextField:v32];

  v55 = *MEMORY[0x277D740D0];
  v56[0] = &unk_282493830;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  textField = [(HUPinCodeEditorViewController *)self textField];
  [textField setDefaultTextAttributes:v33];

  v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  textField2 = [(HUPinCodeEditorViewController *)self textField];
  [textField2 setFont:v35];

  labelColor = [MEMORY[0x277D75348] labelColor];
  textField3 = [(HUPinCodeEditorViewController *)self textField];
  [textField3 setTextColor:labelColor];

  textField4 = [(HUPinCodeEditorViewController *)self textField];
  [textField4 setDelegate:self];

  textField5 = [(HUPinCodeEditorViewController *)self textField];
  [textField5 setBorderStyle:3];

  textField6 = [(HUPinCodeEditorViewController *)self textField];
  [textField6 setClearButtonMode:0];

  textField7 = [(HUPinCodeEditorViewController *)self textField];
  [textField7 setTextAlignment:1];

  textField8 = [(HUPinCodeEditorViewController *)self textField];
  [textField8 setEnabled:1];

  textField9 = [(HUPinCodeEditorViewController *)self textField];
  [textField9 setKeyboardType:4];

  textField10 = [(HUPinCodeEditorViewController *)self textField];
  layer = [textField10 layer];
  [layer setDisableUpdateMask:16];

  v47 = [valueCopy length];
  [numberFormatter setMinimumIntegerDigits:v47];
  v48 = [numberFormatter numberFromString:valueCopy];
  v49 = [numberFormatter stringForObjectValue:v48];
  textField11 = [(HUPinCodeEditorViewController *)self textField];
  [textField11 setText:v49];

  textField12 = [(HUPinCodeEditorViewController *)self textField];
  [textField12 sizeToFit];

  objc_initWeak(&location, self);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __81__HUPinCodeEditorViewController__commonInitWithManager_home_initialPinCodeValue___block_invoke;
  v52[3] = &unk_277DC4E30;
  objc_copyWeak(&v53, &location);
  [managerCopy fetchPinCodeConstraints:v52];
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

- (id)initForEditingPinCodeWithItem:(id)item pinCodeManager:(id)manager pinCodeValue:(id)value home:(id)home completionBlock:(id)block
{
  itemCopy = item;
  managerCopy = manager;
  valueCopy = value;
  homeCopy = home;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = HUPinCodeEditorViewController;
  v17 = [(HUPinCodeEditorViewController *)&v20 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    [(HUPinCodeEditorViewController *)v17 setSourceItem:itemCopy];
    [(HUPinCodeEditorViewController *)v18 _commonInitWithManager:managerCopy home:homeCopy initialPinCodeValue:valueCopy];
    [(HUPinCodeEditorViewController *)v18 setUpdatedPINCodeCompletionBlock:blockCopy];
  }

  return v18;
}

- (id)initForCreatingNewPinCodeWithManager:(id)manager initialPinCodeValue:(id)value home:(id)home completionBlock:(id)block
{
  managerCopy = manager;
  valueCopy = value;
  homeCopy = home;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = HUPinCodeEditorViewController;
  v14 = [(HUPinCodeEditorViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(HUPinCodeEditorViewController *)v14 _commonInitWithManager:managerCopy home:homeCopy initialPinCodeValue:valueCopy];
    [(HUPinCodeEditorViewController *)v15 setNewPINCodeCompletionBlock:blockCopy];
  }

  return v15;
}

- (HUPinCodeEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initForEditingPinCodeWithItem_pinCodeManager_pinCodeValue_home_completionBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPinCodeEditorViewController.m" lineNumber:159 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeEditorViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUPinCodeEditorViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initForEditingPinCodeWithItem_pinCodeManager_pinCodeValue_home_completionBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPinCodeEditorViewController.m" lineNumber:164 description:{@"%s is unavailable; use %@ instead", "-[HUPinCodeEditorViewController initWithCoder:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v88.receiver = self;
  v88.super_class = HUPinCodeEditorViewController;
  [(HUPinCodeEditorViewController *)&v88 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditorViewControllerTitle", @"HUPinCodeEditorViewControllerTitle", 1);
  [(HUPinCodeEditorViewController *)self setTitle:v3];

  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  view = [(HUPinCodeEditorViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  view2 = [(HUPinCodeEditorViewController *)self view];
  instructionHeader = [(HUPinCodeEditorViewController *)self instructionHeader];
  [view2 addSubview:instructionHeader];

  view3 = [(HUPinCodeEditorViewController *)self view];
  textField = [(HUPinCodeEditorViewController *)self textField];
  [view3 addSubview:textField];

  view4 = [(HUPinCodeEditorViewController *)self view];
  footerLabel = [(HUPinCodeEditorViewController *)self footerLabel];
  [view4 addSubview:footerLabel];

  view5 = [(HUPinCodeEditorViewController *)self view];
  [view5 setAccessibilityIdentifier:@"Home.Locks.PinCode.Editor"];

  instructionHeader2 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textField2 = [(HUPinCodeEditorViewController *)self textField];
  [textField2 setTranslatesAutoresizingMaskIntoConstraints:0];

  footerLabel2 = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  array = [MEMORY[0x277CBEB18] array];
  textField3 = [(HUPinCodeEditorViewController *)self textField];
  bottomAnchor = [textField3 bottomAnchor];
  view6 = [(HUPinCodeEditorViewController *)self view];
  centerYAnchor = [view6 centerYAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:centerYAnchor constant:-60.0];
  [array addObject:v21];

  textField4 = [(HUPinCodeEditorViewController *)self textField];
  leadingAnchor = [textField4 leadingAnchor];
  view7 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide = [view7 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v27];

  textField5 = [(HUPinCodeEditorViewController *)self textField];
  trailingAnchor = [textField5 trailingAnchor];
  view8 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide2 = [view8 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v33];

  instructionHeader3 = [(HUPinCodeEditorViewController *)self instructionHeader];
  leadingAnchor3 = [instructionHeader3 leadingAnchor];
  view9 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide3 = [view9 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  [array addObject:v39];

  instructionHeader4 = [(HUPinCodeEditorViewController *)self instructionHeader];
  trailingAnchor3 = [instructionHeader4 trailingAnchor];
  view10 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide4 = [view10 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
  [array addObject:v45];

  instructionHeader5 = [(HUPinCodeEditorViewController *)self instructionHeader];
  centerXAnchor = [instructionHeader5 centerXAnchor];
  view11 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide5 = [view11 layoutMarginsGuide];
  centerXAnchor2 = [layoutMarginsGuide5 centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v51];

  instructionHeader6 = [(HUPinCodeEditorViewController *)self instructionHeader];
  bottomAnchor2 = [instructionHeader6 bottomAnchor];
  textField6 = [(HUPinCodeEditorViewController *)self textField];
  topAnchor = [textField6 topAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:topAnchor constant:-28.0];
  [array addObject:v56];

  footerLabel3 = [(HUPinCodeEditorViewController *)self footerLabel];
  leadingAnchor5 = [footerLabel3 leadingAnchor];
  view12 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide6 = [view12 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide6 leadingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  [array addObject:v62];

  footerLabel4 = [(HUPinCodeEditorViewController *)self footerLabel];
  trailingAnchor5 = [footerLabel4 trailingAnchor];
  view13 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide7 = [view13 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide7 trailingAnchor];
  v68 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
  [array addObject:v68];

  footerLabel5 = [(HUPinCodeEditorViewController *)self footerLabel];
  centerXAnchor3 = [footerLabel5 centerXAnchor];
  view14 = [(HUPinCodeEditorViewController *)self view];
  layoutMarginsGuide8 = [view14 layoutMarginsGuide];
  centerXAnchor4 = [layoutMarginsGuide8 centerXAnchor];
  v74 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v74];

  footerLabel6 = [(HUPinCodeEditorViewController *)self footerLabel];
  topAnchor2 = [footerLabel6 topAnchor];
  textField7 = [(HUPinCodeEditorViewController *)self textField];
  bottomAnchor3 = [textField7 bottomAnchor];
  v79 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:28.0];
  [array addObject:v79];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  navigationController = [(HUPinCodeEditorViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v82 = [viewControllers objectAtIndexedSubscript:0];
  LODWORD(bottomAnchor3) = [v82 isEqual:self];

  if (bottomAnchor3)
  {
    v83 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
    navigationItem = [(HUPinCodeEditorViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v83];
  }

  v85 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveButtonPressed_];
  [(HUPinCodeEditorViewController *)self setSaveButtonItem:v85];

  saveButtonItem = [(HUPinCodeEditorViewController *)self saveButtonItem];
  navigationItem2 = [(HUPinCodeEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:saveButtonItem];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUPinCodeEditorViewController;
  [(HUPinCodeEditorViewController *)&v5 viewWillAppear:appear];
  textField = [(HUPinCodeEditorViewController *)self textField];
  [textField becomeFirstResponder];
}

- (void)_updateHeaderAndFooter
{
  objc_opt_class();
  sourceItem = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v46 = v4;

  objc_opt_class();
  sourceItem2 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v6 = sourceItem2;
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

  user = [v8 user];
  home = [(HUPinCodeEditorViewController *)self home];
  currentUser = [home currentUser];
  uniqueIdentifier = [currentUser uniqueIdentifier];
  uniqueIdentifier2 = [user uniqueIdentifier];
  v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  latestResults = [v46 latestResults];
  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  codeLengthMin = [(HUPinCodeEditorViewController *)self codeLengthMin];
  [(HUPinCodeEditorViewController *)self codeLengthMax];
  v24 = HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeaderNoName", @"%ld%ld", v18, v19, v20, v21, v22, v23, codeLengthMin);
  if (v14)
  {
    codeLengthMin2 = [(HUPinCodeEditorViewController *)self codeLengthMin];
    [(HUPinCodeEditorViewController *)self codeLengthMax];
    HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeaderSelf", @"%ld%ld", v26, v27, v28, v29, v30, v31, codeLengthMin2);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    codeLengthMin3 = [(HUPinCodeEditorViewController *)self codeLengthMin];
    [(HUPinCodeEditorViewController *)self codeLengthMax];
    HULocalizedStringWithFormat(@"HUPinCodeEditorViewControllerInstructionHeader", @"%ld%ld%@", v33, v34, v35, v36, v37, v38, codeLengthMin3);
  }
  v39 = ;

  v24 = v39;
LABEL_15:
  instructionHeader = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader setText:v24];

  instructionHeader2 = [(HUPinCodeEditorViewController *)self instructionHeader];
  [instructionHeader2 sizeToFit];

  if (user)
  {
    v42 = _HULocalizedStringWithDefaultValue(@"HUPinCodeEditInstructionFooter", @"HUPinCodeEditInstructionFooter", 1);
    footerLabel = [(HUPinCodeEditorViewController *)self footerLabel];
    [footerLabel setText:v42];

    footerLabel2 = [(HUPinCodeEditorViewController *)self footerLabel];
    [footerLabel2 sizeToFit];
  }

  footerLabel3 = [(HUPinCodeEditorViewController *)self footerLabel];
  [footerLabel3 setHidden:user == 0];
}

- (void)cancelButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(HUPinCodeEditorViewController) User tapped 'cancel' button", v8, 2u);
  }

  textField = [(HUPinCodeEditorViewController *)self textField];
  [textField resignFirstResponder];

  presentationDelegate = [(HUPinCodeEditorViewController *)self presentationDelegate];
  v7 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)saveButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(HUPinCodeEditorViewController) User tapped 'save' button", &buf, 2u);
  }

  textField = [(HUPinCodeEditorViewController *)self textField];
  [textField resignFirstResponder];

  textField2 = [(HUPinCodeEditorViewController *)self textField];
  text = [textField2 text];

  v23 = 0;
  v9 = [MEMORY[0x277D14930] asciiStringForLocalizedPINString:text error:&v23];
  v10 = v23;
  [(HUPinCodeEditorViewController *)self setEditedPinCode:v9];
  objc_initWeak(&buf, self);
  checkForPINCodeValueValidationErrors = [(HUPinCodeEditorViewController *)self checkForPINCodeValueValidationErrors];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__HUPinCodeEditorViewController_saveButtonPressed___block_invoke;
  v20[3] = &unk_277DB9858;
  v12 = v10;
  v21 = v12;
  v13 = [checkForPINCodeValueValidationErrors recover:v20];
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
  sourceItem = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  sourceItem2 = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v7 = sourceItem2;
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

  user = [v9 user];
  editedPinCode = [(HUPinCodeEditorViewController *)self editedPinCode];
  pinCodeManager = [(HUPinCodeEditorViewController *)self pinCodeManager];
  v13 = pinCodeManager;
  if (user)
  {
    [pinCodeManager setUserPinCode:editedPinCode forUser:user];
  }

  else
  {
    [pinCodeManager updatePinCodeWithItem:v5 withCodeValue:editedPinCode];
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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if ([(HUPinCodeEditorViewController *)self codeLengthMax]<= 0)
  {
    NSLog(&cfstr_IgnoringInvali.isa);
    v16 = 1;
  }

  else
  {
    textField = [(HUPinCodeEditorViewController *)self textField];
    text = [textField text];
    v11 = text;
    v12 = &stru_2823E0EE8;
    if (text)
    {
      v12 = text;
    }

    v13 = v12;

    stringCopy = [(__CFString *)v13 stringByReplacingCharactersInRange:location withString:length, stringCopy];

    v15 = [stringCopy length];
    v16 = v15 <= [(HUPinCodeEditorViewController *)self codeLengthMax];
  }

  return v16;
}

- (id)checkForPINCodeValueValidationErrors
{
  objc_opt_class();
  sourceItem = [(HUPinCodeEditorViewController *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  textField = [(HUPinCodeEditorViewController *)self textField];
  text = [textField text];

  pinCodeValue = [v5 pinCodeValue];

  pinCodeManager = [(HUPinCodeEditorViewController *)self pinCodeManager];
  v10 = [pinCodeManager checkForValidationErrorsWithPINCodeValue:text originalPINCode:pinCodeValue];

  return v10;
}

- (void)_showSpinner
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(HUPinCodeEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  [v5 startAnimating];
}

- (void)_hideSpinner
{
  objc_opt_class();
  navigationItem = [(HUPinCodeEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  customView = [rightBarButtonItem customView];
  if (objc_opt_isKindOfClass())
  {
    v6 = customView;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;

  saveButtonItem = [(HUPinCodeEditorViewController *)self saveButtonItem];
  navigationItem2 = [(HUPinCodeEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:saveButtonItem];

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