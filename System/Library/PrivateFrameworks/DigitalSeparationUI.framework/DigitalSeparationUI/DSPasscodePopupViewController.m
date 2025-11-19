@interface DSPasscodePopupViewController
+ (BOOL)isPasscodeSet;
- (BOOL)optionsSheetIsEmpty;
- (BOOL)usesSimplePasscodeEntry;
- (BOOL)validatePIN:(id)a3 context:(id)a4;
- (DSNavigationDelegate)delegate;
- (DSPasscodePopupViewController)init;
- (id)_createAndShowAnimatedNavBarSpinner;
- (id)passcodeInputView;
- (void)_animatePasscodeViewTransition;
- (void)_applyPasscode;
- (void)_commitPasscodeEntryTypeChange;
- (void)_setupFirstEntry;
- (void)_showPasswordRequirementAlertWithText:(id)a3;
- (void)_showWeakWarningAlert;
- (void)_transitionToPasscodePaneWithState:(int64_t)a3 animationType:(unint64_t)a4;
- (void)acceptWeakPasscode:(BOOL)a3;
- (void)configurePasscodeOptionsSheet;
- (void)handleCurrentPasscodeEntry:(id)a3;
- (void)handleNewPasscodeEntry:(id)a3;
- (void)handlePasscodeConfirmationEntry:(id)a3;
- (void)handlePasscodeDoesNotMeetConstraints:(id)a3;
- (void)keyboardDidShow:(id)a3;
- (void)makeContextForPasscode:(id)a3 completion:(id)a4;
- (void)nextButtonTapped;
- (void)passcodeInput:(id)a3 tappedFooterButton:(id)a4;
- (void)pushNextPane;
- (void)reset;
- (void)userEnteredPasscode:(id)a3;
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
  v3 = [(DSPasscodePopupViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

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

  v8 = [(DSPasscodePopupViewController *)self passcodeView];
  [v8 setPasscodeViewController:self];

  v9 = [(DSPasscodePopupViewController *)self view];
  v10 = [(DSPasscodePopupViewController *)self passcodeView];
  [v9 addSubview:v10];

  v11 = [(DSPasscodePopupViewController *)self passcodeView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(DSPasscodePopupViewController *)self view];
  [v12 frame];
  v14 = v13 * 0.15;

  v15 = [(DSPasscodePopupViewController *)self passcodeView];
  v16 = [v15 topAnchor];
  v17 = [(DSPasscodePopupViewController *)self view];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:v14];
  [v19 setActive:1];

  v20 = [(DSPasscodePopupViewController *)self passcodeView];
  v21 = [v20 bottomAnchor];
  v22 = [(DSPasscodePopupViewController *)self view];
  v23 = [v22 keyboardLayoutGuide];
  v24 = [v23 topAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(DSPasscodePopupViewController *)self passcodeView];
  v27 = [v26 widthAnchor];
  v28 = [(DSPasscodePopupViewController *)self view];
  v29 = [v28 widthAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(DSPasscodePopupViewController *)self passcodeView];
  [v31 setTitle:0];

  v32 = [(DSPasscodePopupViewController *)self passcodeView];
  v33 = [(DSPasscodePopupViewController *)self passcodeInputView];
  [v32 transitionToPasscodeInput:v33 delegate:self];

  [(DSPasscodePopupViewController *)self configurePasscodeOptionsSheet];
  [(DSPasscodePopupViewController *)self configurePasscodeTypeUsingAnimations:0];
  v34 = [MEMORY[0x277CCAB98] defaultCenter];
  [v34 addObserver:self selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

  v35 = [(DSPasscodePopupViewController *)self passcodeView];
  v36 = [v35 passcodeInputView];

  [v36 becomeFirstResponder];
}

+ (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (void)_setupFirstEntry
{
  if (+[DSPasscodePopupViewController isPasscodeSet])
  {
    v9 = 0;
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 unlockScreenTypeWithOutSimplePasscodeType:&v9];

    if (v4 == 1)
    {
      [(DSPasscodePopupViewController *)self setNumeric:1];
      v6 = self;
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

      v6 = self;
    }

    [(DSPasscodePopupViewController *)v6 setNumericLength:v5];
LABEL_12:
    v7 = self;
    v8 = 0;
    goto LABEL_13;
  }

  [(DSPasscodePopupViewController *)self setNumeric:1];
  [(DSPasscodePopupViewController *)self setNumericLength:6];
  v7 = self;
  v8 = 5;
LABEL_13:
  [(DSPasscodePopupViewController *)v7 setPasscodeState:v8];
  [(DSPasscodePopupViewController *)self configurePasscodeTypeUsingAnimations:0];
  [(DSPasscodePopupViewController *)self configurePasscodeOptionsSheet];
}

- (BOOL)usesSimplePasscodeEntry
{
  v3 = [(DSPasscodePopupViewController *)self isNumeric];
  if (v3)
  {
    LOBYTE(v3) = [(DSPasscodePopupViewController *)self numericLength]== 4 || [(DSPasscodePopupViewController *)self numericLength]== 6;
  }

  return v3;
}

- (void)reset
{
  [(DSPasscodePopupViewController *)self setPasscodeNew:0];
  [(DSPasscodePopupViewController *)self setPasscodeContextOld:0];
  [(DSPasscodePopupViewController *)self setPasscodeContextNew:0];
  [(DSPasscodePopupViewController *)self _setupFirstEntry];
  v3 = [(DSPasscodePopupViewController *)self passcodeState];

  [(DSPasscodePopupViewController *)self _transitionToPasscodePaneWithState:v3 animationType:0];
}

- (void)_animatePasscodeViewTransition
{
  v4 = [(DSPasscodePopupViewController *)self passcodeInputView];
  v3 = [(DSPasscodePopupViewController *)self passcodeView];
  [v3 animateTransitionToPasscodeInput:v4 animation:3];
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
  v9 = [(DSPasscodePopupViewController *)self passcodeState];
  v10 = 0;
  if (v9 > 2)
  {
    switch(v9)
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

  if (!v9)
  {
    v11 = @"PASSCODE_ENTER_OLD";
    goto LABEL_23;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
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
  v14 = [v8 instructions];
  [v14 setText:v10];

  [v8 setFooterView:0];

  return v8;
}

- (void)nextButtonTapped
{
  v5 = [(DSPasscodePopupViewController *)self passcodeView];
  v3 = [v5 passcodeInputView];
  v4 = [v3 passcode];
  [(DSPasscodePopupViewController *)self userEnteredPasscode:v4];
}

- (void)handleCurrentPasscodeEntry:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__DSPasscodePopupViewController_handleCurrentPasscodeEntry___block_invoke;
  v6[3] = &unk_278F75740;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)handleNewPasscodeEntry:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__DSPasscodePopupViewController_handleNewPasscodeEntry___block_invoke;
  v6[3] = &unk_278F75740;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)handlePasscodeDoesNotMeetConstraints:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DSPasscodePopupViewController *)self passcodeView];
  v6 = [v5 passcodeInputView];
  [v6 setPasscode:&stru_285BA4988];

  if (v4 && ([v4 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D26140]), v7, v8))
  {
    v9 = [v4 localizedDescription];
    [(DSPasscodePopupViewController *)self _showPasswordRequirementAlertWithText:v9];

    v10 = DSLog_2;
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v4 description];
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Passcode did not meet constraint: %{public}@", &v20, 0xCu);

LABEL_7:
    }
  }

  else
  {
    v13 = [MEMORY[0x277D262A0] sharedConnection];
    v14 = [v13 localizedDescriptionOfCurrentPasscodeConstraints];
    [(DSPasscodePopupViewController *)self _showPasswordRequirementAlertWithText:v14];

    v15 = DSLog_2;
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_INFO))
    {
      v16 = MEMORY[0x277D262A0];
      v11 = v15;
      v17 = [v16 sharedConnection];
      v18 = [v17 localizedDescriptionOfCurrentPasscodeConstraints];
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Passcode did not meet constraints. Constraints are: %{public}@", &v20, 0xCu);

      goto LABEL_7;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handlePasscodeConfirmationEntry:(id)a3
{
  v4 = a3;
  v5 = [(DSPasscodePopupViewController *)self passcodeNew];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(DSPasscodePopupViewController *)self _applyPasscode];
  }

  else
  {

    [(DSPasscodePopupViewController *)self _transitionToPasscodePaneWithState:3 animationType:3];
  }
}

- (void)userEnteredPasscode:(id)a3
{
  v6 = a3;
  if (![(DSPasscodePopupViewController *)self passcodeState]|| [(DSPasscodePopupViewController *)self passcodeState]== 4)
  {
    v4 = [(DSPasscodePopupViewController *)self handleCurrentPasscodeEntry:v6];
LABEL_7:
    v5 = v6;
    goto LABEL_8;
  }

  if ([(DSPasscodePopupViewController *)self passcodeState]== 1 || [(DSPasscodePopupViewController *)self passcodeState]== 5)
  {
    v4 = [(DSPasscodePopupViewController *)self handleNewPasscodeEntry:v6];
    goto LABEL_7;
  }

  if ([(DSPasscodePopupViewController *)self passcodeState]== 2 || (v4 = [(DSPasscodePopupViewController *)self passcodeState], v5 = v6, v4 == 3))
  {
    v4 = [(DSPasscodePopupViewController *)self handlePasscodeConfirmationEntry:v6];
    goto LABEL_7;
  }

LABEL_8:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_transitionToPasscodePaneWithState:(int64_t)a3 animationType:(unint64_t)a4
{
  [(DSPasscodePopupViewController *)self setPasscodeState:a3];
  v8 = [(DSPasscodePopupViewController *)self passcodeView];
  v6 = [v8 passcodeInputView];
  [v6 setPasscode:&stru_285BA4988];

  v7 = [(DSPasscodePopupViewController *)self passcodeInputView];
  [v8 animateTransitionToPasscodeInput:v7 animation:a4];
}

- (void)_applyPasscode
{
  v3 = [(DSPasscodePopupViewController *)self _createAndShowAnimatedNavBarSpinner];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 beginBackgroundTaskWithName:@"com.apple.DigitalSeparation.passcode" expirationHandler:0];

  v6 = [(DSPasscodePopupViewController *)self passcodeContextOld];
  v7 = [(DSPasscodePopupViewController *)self passcodeContextNew];
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DSPasscodePopupViewController__applyPasscode__block_invoke;
  block[3] = &unk_278F757E0;
  v13 = v6;
  v14 = v7;
  v16 = v3;
  v17 = v5;
  v15 = self;
  v9 = v3;
  v10 = v7;
  v11 = v6;
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

- (BOOL)validatePIN:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v7 isPasscodeSet])
  {
    v10 = 0;
    v8 = [v7 unlockDeviceWithPasscodeContext:v6 outError:&v10];
  }

  else
  {
    v8 = [v5 isEqualToString:&stru_285BA4988];
  }

  return v8;
}

- (void)pushNextPane
{
  [(DSPasscodePopupViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(DSPasscodePopupViewController *)self delegate];
  [v3 pushNextPane];
}

- (void)passcodeInput:(id)a3 tappedFooterButton:(id)a4
{
  v5 = [(DSPasscodePopupViewController *)self passcodeOptionAlertController:a3];
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

- (void)_showPasswordRequirementAlertWithText:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = DSUILocStringForKey(@"WEAK_PASSCODE");
  v10 = [v4 alertControllerWithTitle:v6 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"OK");
  v9 = [v7 actionWithTitle:v8 style:0 handler:&__block_literal_global_7];
  [v10 addAction:v9];

  [(DSPasscodePopupViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)acceptWeakPasscode:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v25];

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
  v3 = [(DSPasscodePopupViewController *)self passcodeOptionAlertController];
  if (v3)
  {
    v4 = [(DSPasscodePopupViewController *)self passcodeOptionAlertController];
    v5 = [v4 actions];
    v6 = [v5 count] < 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)keyboardDidShow:(id)a3
{
  v15 = [a3 userInfo];
  v4 = [v15 objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v6 = v5;

  v7 = [(DSPasscodePopupViewController *)self passcodeView];
  v8 = [v7 passcodeInputView];
  [v8 bounds];
  v10 = v9;
  v11 = [(DSPasscodePopupViewController *)self view];
  [v11 bounds];
  v13 = v10 > v12 - v6;
  v14 = [(DSPasscodePopupViewController *)self passcodeView];
  [v14 setScrollEnabled:v13];
}

- (id)_createAndShowAnimatedNavBarSpinner
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v4 = [(DSPasscodePopupViewController *)self navigationItem];
  [v4 setTitleView:v3];

  [v3 startAnimating];

  return v3;
}

- (void)makeContextForPasscode:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (ACMContextCreate())
  {
    if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
    {
      [DSPasscodePopupViewController makeContextForPasscode:completion:];
    }

    v6[2](v6, 0);
  }

  else
  {
    v7 = [v5 dataUsingEncoding:4];
    v8 = v7;
    if (v7 && ([v7 bytes], objc_msgSend(v8, "length"), ACMContextSetData()))
    {
      if (os_log_type_enabled(DSLog_2, OS_LOG_TYPE_ERROR))
      {
        [DSPasscodePopupViewController makeContextForPasscode:completion:];
      }

      v6[2](v6, 0);
    }

    else
    {
      v9 = v6;
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