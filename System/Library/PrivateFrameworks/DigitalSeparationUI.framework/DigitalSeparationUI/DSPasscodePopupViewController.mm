@interface DSPasscodePopupViewController
+ (BOOL)isPasscodeSet;
- (BOOL)optionsSheetIsEmpty;
- (BOOL)usesSimplePasscodeEntry;
- (BOOL)validatePIN:(id)n context:(id)context;
- (DSNavigationDelegate)delegate;
- (DSPasscodePopupViewController)init;
- (id)_createAndShowAnimatedNavBarSpinner;
- (id)passcodeInputView;
- (void)_animatePasscodeViewTransition;
- (void)_applyPasscode;
- (void)_commitPasscodeEntryTypeChange;
- (void)_setupFirstEntry;
- (void)_showPasswordRequirementAlertWithText:(id)text;
- (void)_showWeakWarningAlert;
- (void)_transitionToPasscodePaneWithState:(int64_t)state animationType:(unint64_t)type;
- (void)acceptWeakPasscode:(BOOL)passcode;
- (void)configurePasscodeOptionsSheet;
- (void)handleCurrentPasscodeEntry:(id)entry;
- (void)handleNewPasscodeEntry:(id)entry;
- (void)handlePasscodeConfirmationEntry:(id)entry;
- (void)handlePasscodeDoesNotMeetConstraints:(id)constraints;
- (void)keyboardDidShow:(id)show;
- (void)makeContextForPasscode:(id)passcode completion:(id)completion;
- (void)nextButtonTapped;
- (void)passcodeInput:(id)input tappedFooterButton:(id)button;
- (void)pushNextPane;
- (void)reset;
- (void)userEnteredPasscode:(id)passcode;
- (void)viewDidLoad;
@end

@implementation DSPasscodePopupViewController

- (DSPasscodePopupViewController)init
{
  v10.receiver = self;
  v10.super_class = DSPasscodePopupViewController;
  v3 = [(DSPasscodePopupViewController *)&v10 init];
  if (v3 == self)
  {
    v4 = objc_opt_class();
    if (v4 == objc_opt_class())
    {
      v5 = os_log_create("com.apple.DigitalSeparation", "DSPasscodeController");
      v6 = DSLog_2;
      DSLog_2 = v5;
    }

    [(DSPasscodePopupViewController *)v3 _setupFirstEntry];
    v7 = objc_alloc_init(MEMORY[0x277D054E0]);
    wifiSyncStore = v3->_wifiSyncStore;
    v3->_wifiSyncStore = v7;
  }

  return v3;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = DSPasscodePopupViewController;
  [(DSPasscodePopupViewController *)&v37 viewDidLoad];
  view = [(DSPasscodePopupViewController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v5 = getBFFPasscodeViewClass_softClass;
  v42 = getBFFPasscodeViewClass_softClass;
  if (!getBFFPasscodeViewClass_softClass)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __getBFFPasscodeViewClass_block_invoke;
    v38[3] = &unk_278F75430;
    v38[4] = &v39;
    __getBFFPasscodeViewClass_block_invoke(v38);
    v5 = v40[3];
  }

  v6 = v5;
  _Block_object_dispose(&v39, 8);
  v7 = objc_opt_new();
  [(DSPasscodePopupViewController *)self setPasscodeView:v7];

  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  [passcodeView setPasscodeViewController:self];

  view2 = [(DSPasscodePopupViewController *)self view];
  passcodeView2 = [(DSPasscodePopupViewController *)self passcodeView];
  [view2 addSubview:passcodeView2];

  passcodeView3 = [(DSPasscodePopupViewController *)self passcodeView];
  [passcodeView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(DSPasscodePopupViewController *)self view];
  [view3 frame];
  v14 = v13 * 0.15;

  passcodeView4 = [(DSPasscodePopupViewController *)self passcodeView];
  topAnchor = [passcodeView4 topAnchor];
  view4 = [(DSPasscodePopupViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
  [v19 setActive:1];

  passcodeView5 = [(DSPasscodePopupViewController *)self passcodeView];
  bottomAnchor = [passcodeView5 bottomAnchor];
  view5 = [(DSPasscodePopupViewController *)self view];
  keyboardLayoutGuide = [view5 keyboardLayoutGuide];
  topAnchor3 = [keyboardLayoutGuide topAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [v25 setActive:1];

  passcodeView6 = [(DSPasscodePopupViewController *)self passcodeView];
  widthAnchor = [passcodeView6 widthAnchor];
  view6 = [(DSPasscodePopupViewController *)self view];
  widthAnchor2 = [view6 widthAnchor];
  v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v30 setActive:1];

  passcodeView7 = [(DSPasscodePopupViewController *)self passcodeView];
  [passcodeView7 setTitle:0];

  passcodeView8 = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView = [(DSPasscodePopupViewController *)self passcodeInputView];
  [passcodeView8 transitionToPasscodeInput:passcodeInputView delegate:self];

  [(DSPasscodePopupViewController *)self configurePasscodeOptionsSheet];
  [(DSPasscodePopupViewController *)self configurePasscodeTypeUsingAnimations:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

  passcodeView9 = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView2 = [passcodeView9 passcodeInputView];

  [passcodeInputView2 becomeFirstResponder];
}

+ (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (void)_setupFirstEntry
{
  if (+[DSPasscodePopupViewController isPasscodeSet])
  {
    v9 = 0;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [mEMORY[0x277D262A0] unlockScreenTypeWithOutSimplePasscodeType:&v9];

    if (v4 == 1)
    {
      [(DSPasscodePopupViewController *)self setNumeric:1];
      selfCopy2 = self;
      v5 = 0;
    }

    else
    {
      if (v4)
      {
        [(DSPasscodePopupViewController *)self setNumeric:0];
        goto LABEL_12;
      }

      [(DSPasscodePopupViewController *)self setNumeric:1];
      if (v9)
      {
        v5 = 6;
      }

      else
      {
        v5 = 4;
      }

      selfCopy2 = self;
    }

    [(DSPasscodePopupViewController *)selfCopy2 setNumericLength:v5];
LABEL_12:
    selfCopy4 = self;
    v8 = 0;
    goto LABEL_13;
  }

  [(DSPasscodePopupViewController *)self setNumeric:1];
  [(DSPasscodePopupViewController *)self setNumericLength:6];
  selfCopy4 = self;
  v8 = 5;
LABEL_13:
  [(DSPasscodePopupViewController *)selfCopy4 setPasscodeState:v8];
  [(DSPasscodePopupViewController *)self configurePasscodeTypeUsingAnimations:0];
  [(DSPasscodePopupViewController *)self configurePasscodeOptionsSheet];
}

- (BOOL)usesSimplePasscodeEntry
{
  isNumeric = [(DSPasscodePopupViewController *)self isNumeric];
  if (isNumeric)
  {
    LOBYTE(isNumeric) = [(DSPasscodePopupViewController *)self numericLength]== 4 || [(DSPasscodePopupViewController *)self numericLength]== 6;
  }

  return isNumeric;
}

- (void)reset
{
  [(DSPasscodePopupViewController *)self setPasscodeNew:0];
  [(DSPasscodePopupViewController *)self setPasscodeContextOld:0];
  [(DSPasscodePopupViewController *)self setPasscodeContextNew:0];
  [(DSPasscodePopupViewController *)self _setupFirstEntry];
  passcodeState = [(DSPasscodePopupViewController *)self passcodeState];

  [(DSPasscodePopupViewController *)self _transitionToPasscodePaneWithState:passcodeState animationType:0];
}

- (void)_animatePasscodeViewTransition
{
  passcodeInputView = [(DSPasscodePopupViewController *)self passcodeInputView];
  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  [passcodeView animateTransitionToPasscodeInput:passcodeInputView animation:3];
}

- (id)passcodeInputView
{
  if ([(DSPasscodePopupViewController *)self usesSimplePasscodeEntry])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v3 = getBFFSimplePasscodeInputViewClass_softClass;
    v24 = getBFFSimplePasscodeInputViewClass_softClass;
    if (!getBFFSimplePasscodeInputViewClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getBFFSimplePasscodeInputViewClass_block_invoke;
      v19 = &unk_278F75430;
      v20 = &v21;
      __getBFFSimplePasscodeInputViewClass_block_invoke(&v16);
      v3 = v22[3];
    }

    v4 = v3;
    _Block_object_dispose(&v21, 8);
    v5 = [[v3 alloc] initWithFrame:-[DSPasscodePopupViewController numericLength](self numberOfEntryFields:{"numericLength"), 0.0, 0.0, 0.0, 0.0}];
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getBFFComplexPasscodeInputViewClass_softClass;
    v24 = getBFFComplexPasscodeInputViewClass_softClass;
    if (!getBFFComplexPasscodeInputViewClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getBFFComplexPasscodeInputViewClass_block_invoke;
      v19 = &unk_278F75430;
      v20 = &v21;
      __getBFFComplexPasscodeInputViewClass_block_invoke(&v16);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v5 = [[v6 alloc] initWithFrame:-[DSPasscodePopupViewController isNumeric](self numericOnly:{"isNumeric"), 0.0, 0.0, 0.0, 0.0}];
  }

  v8 = v5;
  passcodeState = [(DSPasscodePopupViewController *)self passcodeState];
  v10 = 0;
  if (passcodeState > 2)
  {
    switch(passcodeState)
    {
      case 3:
        v11 = @"PASSCODE_REENTRY_FAILURE";
        break;
      case 4:
        v11 = @"PASSCODE_ENTRY_FAILURE";
        break;
      case 5:
        v12 = @"PASSCODE_ENTER_CREATE";
        goto LABEL_20;
      default:
        goto LABEL_25;
    }

LABEL_23:
    v10 = DSUILocStringForKey(v11);
    goto LABEL_24;
  }

  if (!passcodeState)
  {
    v11 = @"PASSCODE_ENTER_OLD";
    goto LABEL_23;
  }

  if (passcodeState != 1)
  {
    if (passcodeState != 2)
    {
      goto LABEL_25;
    }

    v11 = @"PASSCODE_ENTER_NEW_AGAIN";
    goto LABEL_23;
  }

  v12 = @"PASSCODE_ENTER_NEW";
LABEL_20:
  v10 = DSUILocStringForKey(v12);
  if (![(DSPasscodePopupViewController *)self optionsSheetIsEmpty])
  {
    v13 = DSUILocStringForKey(@"PASSCODE_OPTIONS");
    [v8 setFooterButtonText:v13];

    goto LABEL_25;
  }

LABEL_24:
  [v8 setFooterButtonText:0];
LABEL_25:
  instructions = [v8 instructions];
  [instructions setText:v10];

  [v8 setFooterView:0];

  return v8;
}

- (void)nextButtonTapped
{
  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  passcode = [passcodeInputView passcode];
  [(DSPasscodePopupViewController *)self userEnteredPasscode:passcode];
}

- (void)handleCurrentPasscodeEntry:(id)entry
{
  entryCopy = entry;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__DSPasscodePopupViewController_handleCurrentPasscodeEntry___block_invoke;
  v6[3] = &unk_278F75740;
  v6[4] = self;
  v7 = entryCopy;
  v5 = entryCopy;
  [(DSPasscodePopupViewController *)self makeContextForPasscode:v5 completion:v6];
}

void __60__DSPasscodePopupViewController_handleCurrentPasscodeEntry___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) validatePIN:*(a1 + 40) context:?];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 setPasscodeContextOld:v7];
    v4 = *(a1 + 32);
    v5 = 1;
    v6 = 2;
  }

  else
  {
    v5 = 4;
    v6 = 3;
  }

  [v4 _transitionToPasscodePaneWithState:v5 animationType:v6];
}

- (void)handleNewPasscodeEntry:(id)entry
{
  entryCopy = entry;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__DSPasscodePopupViewController_handleNewPasscodeEntry___block_invoke;
  v6[3] = &unk_278F75740;
  v7 = entryCopy;
  selfCopy = self;
  v5 = entryCopy;
  [(DSPasscodePopupViewController *)self makeContextForPasscode:v5 completion:v6];
}

void __56__DSPasscodePopupViewController_handleNewPasscodeEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) length])
  {
    v6 = 0;
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v10 = 0;
  v5 = [v4 passcodeContext:v3 meetsCurrentConstraintsOutError:&v10];
  v6 = v10;

  if (!v5)
  {
LABEL_6:
    [*(a1 + 40) handlePasscodeDoesNotMeetConstraints:v6];
    goto LABEL_7;
  }

  [*(a1 + 40) setPasscodeNew:*(a1 + 32)];
  [*(a1 + 40) setPasscodeContextNew:v3];
  [*(a1 + 40) usesSimplePasscodeEntry];
  v7 = *(a1 + 32);
  IsPasswordWeak2 = SecPasswordIsPasswordWeak2();
  v9 = *(a1 + 40);
  if (IsPasswordWeak2)
  {
    [v9 _showWeakWarningAlert];
  }

  else
  {
    [v9 _transitionToPasscodePaneWithState:2 animationType:3];
  }

LABEL_7:
}

- (void)handlePasscodeDoesNotMeetConstraints:(id)constraints
{
  v22 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  [passcodeInputView setPasscode:&stru_285BA4988];

  if (constraintsCopy && ([constraintsCopy domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D26140]), v7, v8))
  {
    localizedDescription = [constraintsCopy localizedDescription];
    [(DSPasscodePopupViewController *)self _showPasswordRequirementAlertWithText:localizedDescription];

    v10 = DSLog_2;
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [constraintsCopy description];
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Passcode did not meet constraint: %{public}@", &v20, 0xCu);

LABEL_7:
    }
  }

  else
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    localizedDescriptionOfCurrentPasscodeConstraints = [mEMORY[0x277D262A0] localizedDescriptionOfCurrentPasscodeConstraints];
    [(DSPasscodePopupViewController *)self _showPasswordRequirementAlertWithText:localizedDescriptionOfCurrentPasscodeConstraints];

    v15 = DSLog_2;
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
    {
      v16 = MEMORY[0x277D262A0];
      v11 = v15;
      sharedConnection = [v16 sharedConnection];
      localizedDescriptionOfCurrentPasscodeConstraints2 = [sharedConnection localizedDescriptionOfCurrentPasscodeConstraints];
      v20 = 138543362;
      v21 = localizedDescriptionOfCurrentPasscodeConstraints2;
      _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Passcode did not meet constraints. Constraints are: %{public}@", &v20, 0xCu);

      goto LABEL_7;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handlePasscodeConfirmationEntry:(id)entry
{
  entryCopy = entry;
  passcodeNew = [(DSPasscodePopupViewController *)self passcodeNew];
  v6 = [entryCopy isEqualToString:passcodeNew];

  if (v6)
  {

    [(DSPasscodePopupViewController *)self _applyPasscode];
  }

  else
  {

    [(DSPasscodePopupViewController *)self _transitionToPasscodePaneWithState:3 animationType:3];
  }
}

- (void)userEnteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if (![(DSPasscodePopupViewController *)self passcodeState]|| [(DSPasscodePopupViewController *)self passcodeState]== 4)
  {
    v4 = [(DSPasscodePopupViewController *)self handleCurrentPasscodeEntry:passcodeCopy];
LABEL_7:
    v5 = passcodeCopy;
    goto LABEL_8;
  }

  if ([(DSPasscodePopupViewController *)self passcodeState]== 1 || [(DSPasscodePopupViewController *)self passcodeState]== 5)
  {
    v4 = [(DSPasscodePopupViewController *)self handleNewPasscodeEntry:passcodeCopy];
    goto LABEL_7;
  }

  if ([(DSPasscodePopupViewController *)self passcodeState]== 2 || (v4 = [(DSPasscodePopupViewController *)self passcodeState], v5 = passcodeCopy, v4 == 3))
  {
    v4 = [(DSPasscodePopupViewController *)self handlePasscodeConfirmationEntry:passcodeCopy];
    goto LABEL_7;
  }

LABEL_8:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_transitionToPasscodePaneWithState:(int64_t)state animationType:(unint64_t)type
{
  [(DSPasscodePopupViewController *)self setPasscodeState:state];
  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  [passcodeInputView setPasscode:&stru_285BA4988];

  passcodeInputView2 = [(DSPasscodePopupViewController *)self passcodeInputView];
  [passcodeView animateTransitionToPasscodeInput:passcodeInputView2 animation:type];
}

- (void)_applyPasscode
{
  _createAndShowAnimatedNavBarSpinner = [(DSPasscodePopupViewController *)self _createAndShowAnimatedNavBarSpinner];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"com.apple.DigitalSeparation.passcode" expirationHandler:0];

  passcodeContextOld = [(DSPasscodePopupViewController *)self passcodeContextOld];
  passcodeContextNew = [(DSPasscodePopupViewController *)self passcodeContextNew];
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke;
  block[3] = &unk_278F757E0;
  v13 = passcodeContextOld;
  v14 = passcodeContextNew;
  v16 = _createAndShowAnimatedNavBarSpinner;
  v17 = v5;
  selfCopy = self;
  v9 = _createAndShowAnimatedNavBarSpinner;
  v10 = passcodeContextNew;
  v11 = passcodeContextOld;
  dispatch_async(v8, block);
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  v5 = a1[5];
  if (v3)
  {
    v18 = 0;
    v6 = &v18;
    v7 = [v2 changePasscodeWithOldPasscodeContext:v4 newPasscodeContext:v5 skipRecovery:1 outError:&v18];
  }

  else
  {
    v17 = 0;
    v6 = &v17;
    v7 = [v2 changePasscodeWithOldPasscodeContext:v4 newPasscodeContext:v5 outError:&v17];
  }

  v8 = v7;
  v9 = *v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke_2;
  block[3] = &unk_278F757B8;
  v16 = v8;
  v10 = a1[7];
  v15 = a1[8];
  block[4] = a1[6];
  v13 = v9;
  v14 = v10;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = DSLog_2;
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Passcode update successful.", buf, 2u);
    }

    v3 = [MEMORY[0x277D75688] sharedInputModeController];
    [v3 saveDeviceUnlockPasscodeInputModes];

    v4 = [MEMORY[0x277D75128] sharedApplication];
    [v4 endBackgroundTask:*(a1 + 56)];

    v5 = [MEMORY[0x277D3FA38] sharedManager];
    v6 = [*(a1 + 32) passcodeNew];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke_391;
    v8[3] = &unk_278F75790;
    v8[4] = v7;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v5 promptForDevicePasscodeChangeToPasscode:v6 overController:v7 completion:v8];
  }

  else
  {
    if (*(a1 + 40) && os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
    {
      __47__DSPasscodePopupViewController__applyPasscode__block_invoke_2_cold_1((a1 + 40));
    }

    [*(a1 + 48) stopAnimating];
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 endBackgroundTask:*(a1 + 56)];
  }
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_391(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
  {
    __47__DSPasscodePopupViewController__applyPasscode__block_invoke_391_cold_1();
  }

  v5 = [a1[4] wifiSyncStore];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke_392;
  v8[3] = &unk_278F75768;
  v9 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  [v5 removeAllPairedDevicesOnQueue:MEMORY[0x277D85CD0] completion:v8];
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_392(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
  {
    __47__DSPasscodePopupViewController__applyPasscode__block_invoke_392_cold_1(a1);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke_393;
  v6[3] = &unk_278F75650;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __47__DSPasscodePopupViewController__applyPasscode__block_invoke_393(uint64_t a1)
{
  [*(a1 + 32) stopAnimating];
  [*(a1 + 40) reset];
  v2 = *(a1 + 40);

  return [v2 pushNextPane];
}

- (BOOL)validatePIN:(id)n context:(id)context
{
  nCopy = n;
  contextCopy = context;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] isPasscodeSet])
  {
    v10 = 0;
    v8 = [mEMORY[0x277D262A0] unlockDeviceWithPasscodeContext:contextCopy outError:&v10];
  }

  else
  {
    v8 = [nCopy isEqualToString:&stru_285BA4988];
  }

  return v8;
}

- (void)pushNextPane
{
  [(DSPasscodePopupViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(DSPasscodePopupViewController *)self delegate];
  [delegate pushNextPane];
}

- (void)passcodeInput:(id)input tappedFooterButton:(id)button
{
  v5 = [(DSPasscodePopupViewController *)self passcodeOptionAlertController:input];
  [(DSPasscodePopupViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_showWeakWarningAlert
{
  v3 = DSUILocStringForKey(@"WEAK_PASSCODE_DETAILS");
  v4 = MEMORY[0x277D75110];
  v5 = DSUILocStringForKey(@"WEAK_PASSCODE");
  v6 = [v4 alertControllerWithTitle:v5 message:v3 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"CHANGE_PASSCODE");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__DSPasscodePopupViewController__showWeakWarningAlert__block_invoke;
  v14[3] = &unk_278F750A0;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:1 handler:v14];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = DSUILocStringForKey(@"USE_WEAK_PASSCODE_ANYWAY");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DSPasscodePopupViewController__showWeakWarningAlert__block_invoke_2;
  v13[3] = &unk_278F750A0;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v13];
  [v6 addAction:v12];

  [(DSPasscodePopupViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_showPasswordRequirementAlertWithText:(id)text
{
  v4 = MEMORY[0x277D75110];
  textCopy = text;
  v6 = DSUILocStringForKey(@"WEAK_PASSCODE");
  v10 = [v4 alertControllerWithTitle:v6 message:textCopy preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"OK");
  v9 = [v7 actionWithTitle:v8 style:0 handler:&__block_literal_global_7];
  [v10 addAction:v9];

  [(DSPasscodePopupViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)acceptWeakPasscode:(BOOL)passcode
{
  if (passcode)
  {
    v4 = 2;
  }

  else
  {
    [(DSPasscodePopupViewController *)self setPasscodeNew:0];
    [(DSPasscodePopupViewController *)self setPasscodeContextNew:0];
    v4 = 1;
  }

  [(DSPasscodePopupViewController *)self _transitionToPasscodePaneWithState:v4 animationType:3];
}

- (void)_commitPasscodeEntryTypeChange
{
  [(DSPasscodePopupViewController *)self configurePasscodeTypeUsingAnimations:1];
  [(DSPasscodePopupViewController *)self _animatePasscodeViewTransition];

  [(DSPasscodePopupViewController *)self configurePasscodeOptionsSheet];
}

- (void)configurePasscodeOptionsSheet
{
  v25 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v25];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if ([(DSPasscodePopupViewController *)self isNumeric])
  {
    v6 = MEMORY[0x277D750F8];
    v7 = DSUILocStringForKey(@"CUSTOM_ALPHANUMERIC_CODE");
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke;
    v24[3] = &unk_278F750A0;
    v24[4] = self;
    v8 = [v6 actionWithTitle:v7 style:0 handler:v24];
    [v5 addAction:v8];
  }

  if (v4 <= 1)
  {
    if (![(DSPasscodePopupViewController *)self isNumeric]|| [(DSPasscodePopupViewController *)self numericLength])
    {
      v9 = MEMORY[0x277D750F8];
      v10 = DSUILocStringForKey(@"CUSTOM_NUMERIC_CODE");
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_2;
      v23[3] = &unk_278F750A0;
      v23[4] = self;
      v11 = [v9 actionWithTitle:v10 style:0 handler:v23];
      [v5 addAction:v11];
    }

    if (!v4)
    {
      if ([(DSPasscodePopupViewController *)self numericLength]!= 6)
      {
        v12 = MEMORY[0x277D750F8];
        v13 = DSUILocStringForKey(@"6_DIGIT_CODE");
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_3;
        v22[3] = &unk_278F750A0;
        v22[4] = self;
        v14 = [v12 actionWithTitle:v13 style:0 handler:v22];
        [v5 addAction:v14];
      }

      if (!v25 && [(DSPasscodePopupViewController *)self numericLength]!= 4)
      {
        v15 = MEMORY[0x277D750F8];
        v16 = DSUILocStringForKey(@"4_DIGIT_CODE");
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_4;
        v21[3] = &unk_278F750A0;
        v21[4] = self;
        v17 = [v15 actionWithTitle:v16 style:0 handler:v21];
        [v5 addAction:v17];
      }
    }
  }

  v18 = MEMORY[0x277D750F8];
  v19 = DSUILocStringForKey(@"CANCEL");
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v5 addAction:v20];

  [(DSPasscodePopupViewController *)self setPasscodeOptionAlertController:v5];
}

uint64_t __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNumeric:0];
  [*(a1 + 32) setNumericLength:0];
  v2 = *(a1 + 32);

  return [v2 _commitPasscodeEntryTypeChange];
}

uint64_t __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNumeric:1];
  [*(a1 + 32) setNumericLength:0];
  v2 = *(a1 + 32);

  return [v2 _commitPasscodeEntryTypeChange];
}

uint64_t __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setNumeric:1];
  [*(a1 + 32) setNumericLength:6];
  v2 = *(a1 + 32);

  return [v2 _commitPasscodeEntryTypeChange];
}

uint64_t __62__DSPasscodePopupViewController_configurePasscodeOptionsSheet__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setNumeric:1];
  [*(a1 + 32) setNumericLength:4];
  v2 = *(a1 + 32);

  return [v2 _commitPasscodeEntryTypeChange];
}

- (BOOL)optionsSheetIsEmpty
{
  passcodeOptionAlertController = [(DSPasscodePopupViewController *)self passcodeOptionAlertController];
  if (passcodeOptionAlertController)
  {
    passcodeOptionAlertController2 = [(DSPasscodePopupViewController *)self passcodeOptionAlertController];
    actions = [passcodeOptionAlertController2 actions];
    v6 = [actions count] < 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)keyboardDidShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;

  passcodeView = [(DSPasscodePopupViewController *)self passcodeView];
  passcodeInputView = [passcodeView passcodeInputView];
  [passcodeInputView bounds];
  v10 = v9;
  view = [(DSPasscodePopupViewController *)self view];
  [view bounds];
  v13 = v10 > v12 - v6;
  passcodeView2 = [(DSPasscodePopupViewController *)self passcodeView];
  [passcodeView2 setScrollEnabled:v13];
}

- (id)_createAndShowAnimatedNavBarSpinner
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  navigationItem = [(DSPasscodePopupViewController *)self navigationItem];
  [navigationItem setTitleView:v3];

  [v3 startAnimating];

  return v3;
}

- (void)makeContextForPasscode:(id)passcode completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  if (ACMContextCreate())
  {
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
    {
      [DSPasscodePopupViewController makeContextForPasscode:completion:];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v7 = [passcodeCopy dataUsingEncoding:4];
    v8 = v7;
    if (v7 && ([v7 bytes], objc_msgSend(v8, "length"), ACMContextSetData()))
    {
      if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
      {
        [DSPasscodePopupViewController makeContextForPasscode:completion:];
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v9 = completionCopy;
      ACMContextGetExternalForm();
    }
  }
}

void __67__DSPasscodePopupViewController_makeContextForPasscode_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:a3];
  (*(*(a1 + 32) + 16))();
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_391_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__DSPasscodePopupViewController__applyPasscode__block_invoke_392_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeContextForPasscode:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)makeContextForPasscode:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end