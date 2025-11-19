@interface CDPRecoveryKeyEntryViewController
- (BOOL)_handleReturnKeyForTextField:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CDPRecoveryKeyEntryViewController)initWithRecoveryContext:(id)a3 cdpContext:(id)a4;
- (id)_addEscapeOption:(id)a3 forEvent:(id)a4;
- (id)_calculateNewTextWithoutDashes:(id)a3 range:(_NSRange)a4 string:(id)a5 textField:(id)a6;
- (id)_makeEventWithName:(id)a3;
- (id)headerView;
- (id)specifiers;
- (id)textEntryCell;
- (unint64_t)_mapCursorPositionToUnformattedText:(id)a3 position:(unint64_t)a4;
- (unint64_t)_mapUnformattedCursorPositionToFormattedText:(id)a3 position:(unint64_t)a4;
- (void)_configureFooterButtonCodeCreate:(id)a3 withTableBounds:(CGRect)a4;
- (void)_handleRecoveryKeyValidationWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_updateTextFieldWithFormattedText:(id)a3 newTextWithoutDashes:(id)a4 range:(_NSRange)a5 string:(id)a6;
- (void)dealloc;
- (void)didFinishEnteringText:(id)a3;
- (void)didTapScanText;
- (void)didTapUseKeyboard:(id)a3;
- (void)disableUserInteractionAndStartSpinner;
- (void)enableUserInteractionAndStopSpinner;
- (void)handleForgotRecoveryKey:(id)a3;
- (void)handleRecoveryKeyEscapeDuringDataRecoveryFlow:(id)a3;
- (void)insertText:(id)a3;
- (void)keyboardCameraSessionDidDismiss:(id)a3;
- (void)skipRecoveryKeyDuringPasswordResetFlow:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CDPRecoveryKeyEntryViewController

- (CDPRecoveryKeyEntryViewController)initWithRecoveryContext:(id)a3 cdpContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDPRecoveryKeyEntryViewController;
  v9 = [(PSKeychainSyncSecurityCodeController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_cdpContext, a4);
    [(PSKeychainSyncSecurityCodeController *)v10 setSecurityCodeType:2];
    -[PSKeychainSyncSecurityCodeController setMode:](v10, "setMode:", [v7 mode]);
  }

  v10->_keyboardIsVisible = 1;

  return v10;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v13 viewDidLoad];
  v3 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

  v4 = [(CDPRecoveryKeyEntryViewController *)self table];
  v5 = [MEMORY[0x277D75348] _systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [(CDPRecoveryKeyEntryViewController *)self table];
  [v6 setBounces:0];

  if ([(PSKeychainSyncSecurityCodeController *)self mode]!= 1)
  {
    if ([(CDPRecoveryKeyEntryViewModel *)self->_context shouldSuppressCancelButton])
    {
      v7 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
      [v7 setLeftBarButtonItem:0];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFlow_];
      v8 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
      [v8 setLeftBarButtonItem:v7];
    }

    v9 = [(CDPRecoveryKeyEntryViewController *)self table];
    [v9 setSeparatorStyle:1];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_keyboardCameraSessionDidDismiss_ name:@"_UIKeyboardCameraSessionDidDismiss" object:0];

  v11 = [(CDPRecoveryKeyEntryViewController *)self _makeEventWithName:*MEMORY[0x277CFD7C0]];
  v12 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v12 sendEvent:v11];
}

- (id)_makeEventWithName:(id)a3
{
  v3 = MEMORY[0x277CE44D8];
  context = self->_context;
  v5 = a3;
  v6 = [(CDPRecoveryKeyEntryViewModel *)context context];
  v7 = [v3 analyticsEventWithContext:v6 eventName:v5 category:*MEMORY[0x277CFD930]];

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v7 viewWillAppear:a3];
  [(PSKeychainSyncTextEntryController *)self setSecureTextEntry:0];
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
    recoveryCode = self->_recoveryCode;
    if (!recoveryCode)
    {
      v5 = [(CDPRecoveryKeyEntryViewModel *)self->_context recoveryKey];
      v6 = self->_recoveryCode;
      self->_recoveryCode = v5;

      recoveryCode = self->_recoveryCode;
    }

    [(PSKeychainSyncTextEntryController *)self setTextEntryText:recoveryCode];
  }
}

- (void)keyboardCameraSessionDidDismiss:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController keyboardCameraSessionDidDismiss:];
  }

  [(CDPRecoveryKeyEntryViewController *)self didTapUseKeyboard:0];
  v5 = [(CDPRecoveryKeyEntryViewController *)self view];
  [v5 setNeedsLayout];
}

- (id)specifiers
{
  v24.receiver = self;
  v24.super_class = CDPRecoveryKeyEntryViewController;
  v3 = [(PSKeychainSyncSecurityCodeController *)&v24 specifiers];
  if ([(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForVerifyFlow]|| [(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForMismatchRepairFlow]|| [(PSKeychainSyncSecurityCodeController *)self mode]== 2)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    enterRecoveryKeyButton = self->_enterRecoveryKeyButton;
    self->_enterRecoveryKeyButton = v4;

    v6 = [(CDPRecoveryKeyEntryViewController *)self table];
    [v6 addSubview:self->_enterRecoveryKeyButton];
  }

  v7 = [(PSKeychainSyncViewController *)self groupSpecifier];
  [v7 removePropertyForKey:*MEMORY[0x277D3FF88]];

  v8 = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  if (v8)
  {

LABEL_9:
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "Should show footer button", v23, 2u);
    }

    v10 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
    [v10 setAlpha:1.0];

    v11 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
    [v11 removeTarget:self action:0 forControlEvents:64];

    if ([(CDPRecoveryKeyEntryViewModel *)self->_context supportsRKRecovery])
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Context supports RK recovery", v23, 2u);
      }

      v13 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      v14 = v13;
      v15 = sel_skipRecoveryKeyDuringPasswordResetFlow_;
    }

    else if ([(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForVerifyFlow])
    {
      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_2451DB000, v16, OS_LOG_TYPE_DEFAULT, "Context is footer button for verify flow", v23, 2u);
      }

      v13 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      v14 = v13;
      v15 = sel_handleForgotRecoveryKey_;
    }

    else
    {
      v17 = [(CDPRecoveryKeyEntryViewModel *)self->_context isDataRecoveryFlow];
      v18 = _CDPLogSystem();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          *v23 = 0;
          _os_log_impl(&dword_2451DB000, v18, OS_LOG_TYPE_DEFAULT, "Context is data recovery flow", v23, 2u);
        }

        v13 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        v14 = v13;
        v15 = sel_handleRecoveryKeyEscapeDuringDataRecoveryFlow_;
      }

      else
      {
        if (v19)
        {
          *v23 = 0;
          _os_log_impl(&dword_2451DB000, v18, OS_LOG_TYPE_DEFAULT, "Showing footer button for some other reason", v23, 2u);
        }

        v13 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        v14 = v13;
        v15 = sel_continueFlow_;
      }
    }

    [v13 addTarget:self action:v15 forEvents:64];
    goto LABEL_27;
  }

  if ([(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForVerifyFlow]|| [(CDPRecoveryKeyEntryViewModel *)self->_context isDataRecoveryFlow])
  {
    goto LABEL_9;
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_2451DB000, v22, OS_LOG_TYPE_DEFAULT, "Should not show footer button.", v23, 2u);
  }

  v14 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v14 setAlpha:0.0];
LABEL_27:

  v20 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
  [v20 setTitle:0];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CDPRecoveryKeyEntryViewController;
  [(CDPRecoveryKeyEntryViewController *)&v19 viewWillLayoutSubviews];
  v3 = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  if (v3)
  {
    v4 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
    v5 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    v6 = v5;
    if (v4)
    {
      [v5 setTextAlignment:4];

      v7 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      v8 = MEMORY[0x277D74300];
      v9 = *MEMORY[0x277D76968];
      v10 = [(CDPRecoveryKeyEntryViewController *)self traitCollection];
      v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v10];
      [v7 setFont:v11];

      v12 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      v13 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v12 setColor:v13];
    }

    else
    {
      [v5 setTextAlignment:1];

      v12 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      v14 = MEMORY[0x277D74300];
      v15 = *MEMORY[0x277D76918];
      v13 = [(CDPRecoveryKeyEntryViewController *)self traitCollection];
      v16 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:v13];
      [v12 setFont:v16];
    }

    v17 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [v17 setAlpha:1.0];

    v18 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [v18 setText:v3];
  }
}

- (void)viewDidLayoutSubviews
{
  v71.receiver = self;
  v71.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v71 viewDidLayoutSubviews];
  v3 = [(CDPRecoveryKeyEntryViewController *)self table];
  [v3 bounds];
  v67 = v4;
  v68 = v5;
  v7 = v6;
  rect = v8;

  v9 = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  v10 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
  v11 = v10;
  if (v9)
  {
    [v10 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [v18 frame];
    v19 = CGRectGetMaxY(v72) + 36.0;

    v11 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [v11 setFrame:{v13, v19, v15, v17}];
  }

  else
  {
    [v10 setAlpha:0.0];
  }

  [(UIButton *)self->_enterRecoveryKeyButton removeTarget:self action:0 forControlEvents:64];
  if (self->_keyboardIsVisible)
  {
    v20 = @"RECOVERY_KEY_ENTRY_SCAN_TEXT";
  }

  else
  {
    v20 = @"CODE_ENTRY_USE_KEYBOARD";
  }

  if (self->_keyboardIsVisible)
  {
    v21 = @"text.viewfinder";
  }

  else
  {
    v21 = @"keyboard";
  }

  if (self->_keyboardIsVisible)
  {
    v22 = &selRef_didTapScanText;
  }

  else
  {
    v22 = &selRef_didTapUseKeyboard_;
  }

  v23 = [MEMORY[0x277CFD508] builderForKey:v20];
  v24 = [v23 localizedString];

  [(UIButton *)self->_enterRecoveryKeyButton addTarget:self action:*v22 forEvents:64];
  v25 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:v21];
  [v25 setImage:v26];

  [v25 setImagePadding:3.0];
  v27 = [MEMORY[0x277D755D0] configurationWithPointSize:14.0];
  [v25 setPreferredSymbolConfigurationForImage:v27];

  [(UIButton *)self->_enterRecoveryKeyButton setConfiguration:v25];
  [(UIButton *)self->_enterRecoveryKeyButton setTitle:v24 forState:0];
  [(UIButton *)self->_enterRecoveryKeyButton sizeToFit];
  [(UIButton *)self->_enterRecoveryKeyButton frame];
  v29 = v28;
  v31 = v30 + 42.0;
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v32 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [v32 frame];
    v34 = v33;
    v36 = v35;

    [*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) frame];
    v38 = v37 + -64.0;
    v39 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [v39 setFrame:{14.0, v34, v38, v36}];

    v40 = -2.0;
  }

  else
  {
    v40 = floor((v7 - v31) * 0.5);
  }

  v41 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [v41 frame];
  v42 = CGRectGetMaxY(v73) + 30.0;

  [(UIButton *)self->_enterRecoveryKeyButton setFrame:v40, v42, v31, v29];
  v43 = [(CDPRecoveryKeyEntryViewModel *)self->_context footerButtonTitle];
  if (v43)
  {
    if ([MEMORY[0x277CFD560] isNaturalUIEnabled] && -[PSKeychainSyncSecurityCodeController mode](self, "mode") == 1)
    {
      [(CDPRecoveryKeyEntryViewController *)self _configureFooterButtonCodeCreate:v43 withTableBounds:v67, v68, v7, rect];
    }

    else
    {
      v44 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [v44 setAttributedTitle:v43 forState:0];

      v45 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [v45 setAttributedTitle:v43 forState:1];

      v46 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [v46 sizeToFit];

      v47 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [v47 frame];
      v49 = v48;
      v51 = v50;

      if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
      {
        v52 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        [v52 intrinsicContentSize];
        v49 = v53;
        v51 = v54;

        v55 = 31.0;
      }

      else
      {
        v55 = floor((v7 - v49) * 0.5);
      }

      if ([(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForVerifyFlow]|| [(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForMismatchRepairFlow]|| [(CDPRecoveryKeyEntryViewModel *)self->_context isDataRecoveryFlow])
      {
        v74.origin.x = v40;
        v74.origin.y = v42;
        v74.size.width = v31;
        v74.size.height = v29;
        MaxY = CGRectGetMaxY(v74);
        if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
        {
          v75.origin.x = v40;
          v75.origin.y = v42;
          v75.size.width = v31;
          v75.size.height = v29;
          v57 = CGRectGetMaxY(v75) + 10.0;
        }

        else
        {
          v57 = MaxY + 60.0;
        }
      }

      else
      {
        v77.origin.x = v67;
        v77.origin.y = v68;
        v77.size.width = v7;
        v77.size.height = rect;
        v57 = CGRectGetMaxY(v77) - v51 + -50.0;
        v65 = [MEMORY[0x277CFD560] isNaturalUIEnabled];
        if (v9 && v65)
        {
          v66 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
          [v66 frame];
          v57 = CGRectGetMaxY(v78) + 36.0;
        }
      }

      v58 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [v58 setFrame:{v55, v57, v49, v51}];
    }

    v59 = [(CDPRecoveryKeyEntryViewController *)self view];
    [v59 bounds];
    Width = CGRectGetWidth(v76);

    if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1 && Width > 0.0 && Width <= 320.0)
    {
      v61 = _CDPLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v61, OS_LOG_TYPE_DEFAULT, "Small screen detected, reducing font size", buf, 2u);
      }

      v62 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
      v63 = [v62 textField];
      v64 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      [v63 setFont:v64];
    }
  }
}

- (void)_configureFooterButtonCodeCreate:(id)a3 withTableBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v10 applyGlassWithProminence:1];

  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v12 = [v9 string];

  v18 = [v11 initWithString:v12];
  v13 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v13 setAttributedTitle:v18 forState:0];

  v14 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v14 setAttributedTitle:v18 forState:1];

  v15 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v15 frame];

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v16 = CGRectGetMaxY(v20) + -52.0 + -34.0;
  v17 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [v17 setFrame:{width * 0.5 - (width + -62.0) * 0.5, v16, width + -62.0, 52.0}];
}

- (void)didTapScanText
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController didTapScanText];
  }

  self->_keyboardIsVisible = 0;
  [(PSKeychainSyncSecurityCodeController *)self setMode:3];
  [(CDPRecoveryKeyEntryViewController *)self captureTextFromCamera:0];
  [(CDPRecoveryKeyEntryViewController *)self deleteBackward];
  v4 = [(CDPRecoveryKeyEntryViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)didTapUseKeyboard:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController didTapUseKeyboard:];
  }

  self->_keyboardIsVisible = 1;
  [(PSKeychainSyncSecurityCodeController *)self setMode:[(CDPRecoveryKeyEntryViewModel *)self->_context mode]];
  v5 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [v5 endEditing:1];

  v6 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [v6 becomeFirstResponder];

  v7 = [(CDPRecoveryKeyEntryViewController *)self view];
  [v7 setNeedsLayout];
}

- (void)handleRecoveryKeyEscapeDuringDataRecoveryFlow:(id)a3
{
  v4 = [(CDPRecoveryKeyEntryViewModel *)self->_context context];
  v5 = [v4 _supportsCustodianRecovery];

  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [(CDPRecoveryKeyEntryViewController *)v6 handleRecoveryKeyEscapeDuringDataRecoveryFlow:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = -5218;
  }

  else
  {
    if (v7)
    {
      [(CDPRecoveryKeyEntryViewController *)v6 handleRecoveryKeyEscapeDuringDataRecoveryFlow:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = -5215;
  }

  [(CDPRecoveryKeyEntryViewModel *)self->_context handleNoRecoveryKeyWithCDPStateError:v15];
}

- (void)skipRecoveryKeyDuringPasswordResetFlow:(id)a3
{
  v4 = a3;
  if ([(CDPRecoveryKeyEntryViewModel *)self->_context mandatesRecoveryKey])
  {
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__0;
    v43[4] = __Block_byref_object_dispose__0;
    v44 = [(CDPRecoveryKeyEntryViewController *)self _makeEventWithName:*MEMORY[0x277CFD7B8]];
    v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:self->_cdpContext];
    v6 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_RK_ALERT_TITLE_CANT_RESET_PASSWORD_TITLE_CASE"];
    v7 = [v6 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v5 setTitle:v7];

    v8 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_RK_ALERT_MESSAGE_CANT_RESET_PASSWORD"];
    v9 = [v8 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v9];

    [(CDPRemoteValidationEscapeOffer *)v5 setPresentingViewController:self];
    v31 = v4;
    v10 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v10 setTitleLocalizationKey:@"TRY_AGAIN"];
    [(CDPEscapeOption *)v10 setTitleTelemetryKey:*MEMORY[0x277CFDA40]];
    v11 = MEMORY[0x277CFD508];
    v12 = [(CDPEscapeOption *)v10 titleLocalizationKey];
    v13 = [v11 builderForKey:v12];
    v14 = [v13 localizedString];
    [(CDPEscapeOption *)v10 setTitle:v14];

    objc_initWeak(&location, self);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke;
    v37[3] = &unk_278E2BC70;
    objc_copyWeak(&v41, &location);
    v40 = v43;
    v15 = v10;
    v38 = v15;
    v39 = self;
    [(CDPEscapeOption *)v15 setEscapeAction:v37];
    [(CDPEscapeOption *)v15 setStyle:0];
    v16 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v16 setTitleLocalizationKey:@"DONT_RESET_PASSWORD"];
    [(CDPEscapeOption *)v16 setTitleTelemetryKey:*MEMORY[0x277CFD958]];
    v17 = MEMORY[0x277CFD508];
    v18 = [(CDPEscapeOption *)v16 titleLocalizationKey];
    v19 = [v17 builderForKey:v18];
    v20 = [v19 localizedString];
    [(CDPEscapeOption *)v16 setTitle:v20];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke_90;
    v32[3] = &unk_278E2BC70;
    objc_copyWeak(&v36, &location);
    v35 = v43;
    v21 = v16;
    v33 = v21;
    v34 = self;
    [(CDPEscapeOption *)v21 setEscapeAction:v32];
    [(CDPEscapeOption *)v21 setStyle:0];
    [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v15];
    [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v21];
    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [CDPRecoveryKeyEntryViewController skipRecoveryKeyDuringPasswordResetFlow:];
    }

    [(CDPRemoteValidationEscapeOffer *)v5 handleEscapeAction:self];
    objc_destroyWeak(&v36);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);

    _Block_object_dispose(v43, 8);
    v4 = v31;
  }

  else
  {
    v23 = _CDPLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(CDPRecoveryKeyEntryViewController *)v23 skipRecoveryKeyDuringPasswordResetFlow:v24, v25, v26, v27, v28, v29, v30];
    }

    [(CDPRecoveryKeyEntryViewModel *)self->_context handleNoRecoveryKeyWithCDPStateError:-5215];
  }
}

void __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _addEscapeOption:*(a1 + 32) forEvent:*(*(*(a1 + 48) + 8) + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v8 sendEvent:*(*(*(a1 + 48) + 8) + 40)];
  }

  [*(a1 + 40) dismissAlerts];
}

void __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke_90_cold_1();
  }

  v4 = [WeakRetained _addEscapeOption:*(a1 + 32) forEvent:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v7 sendEvent:*(*(*(a1 + 48) + 8) + 40)];

  [*(*(a1 + 40) + 1600) handleNoRecoveryKeyWithCDPStateError:-5307];
}

- (id)_addEscapeOption:(id)a3 forEvent:(id)a4
{
  v5 = a4;
  v6 = [a3 titleTelemetryKey];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v5;
}

- (void)handleForgotRecoveryKey:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_TITLE"];
  v6 = [v5 localizedString];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_MESSAGE"];
  v8 = [v7 localizedString];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_REPLACE_KEY_OPTION"];
  v12 = [v11 localizedString];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke;
  v19[3] = &unk_278E2B708;
  v19[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v19];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CFD508] builderForKey:@"CANCEL"];
  v16 = [v15 localizedString];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke_106;
  v18[3] = &unk_278E2B708;
  v18[4] = self;
  v17 = [v14 actionWithTitle:v16 style:1 handler:v18];
  [v9 addAction:v17];

  [(CDPRecoveryKeyEntryViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke_cold_1();
  }

  return [*(*(a1 + 32) + 1600) handleForgotRecoveryKeyWithCDPStateError:-5308];
}

uint64_t __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke_106(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke_106_cold_1();
  }

  return [*(*(a1 + 32) + 1600) handleForgotRecoveryKeyWithCDPStateError:-5307];
}

- (id)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [CDPRecoveryKeyCreateHeaderView alloc];
    v5 = [(CDPRecoveryKeyEntryViewController *)self specifier];
    v6 = [(CDPRecoveryKeyCreateHeaderView *)v4 initWithSpecifier:v5];
    v7 = self->_headerView;
    self->_headerView = v6;

    headerView = self->_headerView;
  }

  v8 = [(CDPRecoveryKeyEntryViewModel *)self->_context headerTitle];
  [(PSKeychainSyncHeaderView *)headerView setTitleText:v8];

  v9 = self->_headerView;
  v10 = [(CDPRecoveryKeyEntryViewModel *)self->_context headerSubtitle];
  [(PSKeychainSyncHeaderView *)v9 setDetailText:v10];

  v11 = self->_headerView;

  return v11;
}

- (void)didFinishEnteringText:(id)a3
{
  v4 = a3;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
    v5 = [(CDPRecoveryKeyEntryViewModel *)self->_context completionHandler];
    v5[2](v5, 1, 0);
  }

  else
  {
    [(CDPRecoveryKeyEntryViewController *)self disableUserInteractionAndStartSpinner];
    context = self->_context;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__CDPRecoveryKeyEntryViewController_didFinishEnteringText___block_invoke;
    v7[3] = &unk_278E2BC98;
    v7[4] = self;
    [(CDPRecoveryKeyEntryViewModel *)context processCollectedRecoveryKey:v4 completion:v7];
  }
}

- (void)_handleRecoveryKeyValidationWithSuccess:(BOOL)a3 error:(id)a4
{
  if (!a3)
  {
    v5 = a4;
    [(CDPRecoveryKeyEntryViewController *)self enableUserInteractionAndStopSpinner];
    v6 = [v5 cdp_isCDPErrorWithCode:-5213];

    if (v6)
    {
      v7 = MEMORY[0x277D75110];
      v8 = [MEMORY[0x277CFD508] builderForKey:@"CDP_MK_MAX_ATTEMPT_TITLE"];
      v9 = [v8 localizedString];
      v10 = [MEMORY[0x277CFD508] builderForKey:@"CDP_MK_MAX_ATTEMPT_DESCRIPTION"];
      v11 = [v10 localizedString];
      v12 = [v7 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

      v13 = MEMORY[0x277D750F8];
      v14 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
      v15 = [v14 localizedString];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __83__CDPRecoveryKeyEntryViewController__handleRecoveryKeyValidationWithSuccess_error___block_invoke;
      v27[3] = &unk_278E2B708;
      v27[4] = self;
      v16 = [v13 actionWithTitle:v15 style:0 handler:v27];
    }

    else
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CDPRecoveryKeyEntryViewController _handleRecoveryKeyValidationWithSuccess:error:];
      }

      v18 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_MESSAGE_RK"];
      v19 = [v18 localizedString];

      v20 = MEMORY[0x277D75110];
      v21 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
      v22 = [v21 localizedString];
      v12 = [v20 alertControllerWithTitle:v22 message:v19 preferredStyle:1];

      v23 = MEMORY[0x277D750F8];
      v24 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
      v25 = [v24 localizedString];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __83__CDPRecoveryKeyEntryViewController__handleRecoveryKeyValidationWithSuccess_error___block_invoke_124;
      v26[3] = &unk_278E2B708;
      v26[4] = self;
      v16 = [v23 actionWithTitle:v25 style:0 handler:v26];
    }

    [v12 addAction:v16];
    [(CDPRecoveryKeyEntryViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

void __83__CDPRecoveryKeyEntryViewController__handleRecoveryKeyValidationWithSuccess_error___block_invoke_124(uint64_t a1)
{
  [*(a1 + 32) setTextEntryText:&stru_285826188];
  v2 = [*(a1 + 32) textEntryCell];
  [v2 becomeFirstResponder];
}

- (id)textEntryCell
{
  v9.receiver = self;
  v9.super_class = CDPRecoveryKeyEntryViewController;
  v3 = [(PSKeychainSyncSecurityCodeController *)&v9 textEntryCell];
  v4 = [MEMORY[0x277D75C80] currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    [MEMORY[0x277D75348] systemGray5Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray6Color];
  }
  v6 = ;
  [v3 setBackgroundColor:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 textField];
    [v7 setAdjustsFontSizeToFitWidth:1];
    [v7 setDelegate:self];
    [v7 setReturnKeyType:11];
    if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
    {
      [v7 setUserInteractionEnabled:0];
    }
  }

  return v3;
}

- (void)disableUserInteractionAndStartSpinner
{
  v1 = [a1 navigationItem];
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v2, v3, "Starting spinner for item: %@", v4, v5, v6, v7, 2u);
}

- (void)enableUserInteractionAndStopSpinner
{
  v1 = [a1 navigationItem];
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v2, v3, "Stopping spinner for item: %@", v4, v5, v6, v7, 2u);
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController dealloc];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v5 dealloc];
}

- (void)insertText:(id)a3
{
  v8 = a3;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 3)
  {
    v4 = [MEMORY[0x277CFD558] sanitizedKeyInput:v8];
    if ([v4 length] >= 0x1D)
    {
      v5 = [v4 substringToIndex:28];

      v4 = v5;
    }

    v6 = [MEMORY[0x277CFD558] keyWithGrouping:v4 groupLength:4 separator:@"-"];
    [(PSKeychainSyncTextEntryController *)self setTextEntryText:v6];
    [(CDPRecoveryKeyEntryViewController *)self didTapUseKeyboard:0];
    v7 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [v7 becomeFirstResponder];

    self->hasText = 1;
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![v10 isEqualToString:@"\n"])
  {
    v12 = [v9 text];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];

    v14 = [(CDPRecoveryKeyEntryViewController *)self _calculateNewTextWithoutDashes:v13 range:location string:length textField:v10, v9];
    if (v14 && (-[PSKeychainSyncSecurityCodeController mode](self, "mode") != 2 || [v14 length] <= 0x1C))
    {
      [(CDPRecoveryKeyEntryViewController *)self _updateTextFieldWithFormattedText:v9 newTextWithoutDashes:v14 range:location string:length, v10];
    }

    goto LABEL_9;
  }

  v11 = [(CDPRecoveryKeyEntryViewController *)self _handleReturnKeyForTextField:v9];
LABEL_10:

  return v11;
}

- (BOOL)_handleReturnKeyForTextField:(id)a3
{
  v4 = a3;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 2)
  {
    v5 = MEMORY[0x277CFD558];
    v6 = [v4 text];
    LODWORD(v5) = [v5 isValidKeyLength:v6 expectedLength:28 withSeparator:@"-"];

    if (v5)
    {
      v7 = [v4 text];
      [(CDPRecoveryKeyEntryViewController *)self didFinishEnteringText:v7];
    }
  }

  return 0;
}

- (id)_calculateNewTextWithoutDashes:(id)a3 range:(_NSRange)a4 string:(id)a5 textField:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if ([v12 length])
  {
    if ([v12 length] > 1)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v22 = [v13 text];
    v23 = [(CDPRecoveryKeyEntryViewController *)self _mapCursorPositionToUnformattedText:v22 position:location];

    v19 = [MEMORY[0x277CFD558] sanitizedKeyInput:v12];
    if (v23 <= [v11 length])
    {
      [v11 stringByReplacingCharactersInRange:v23 withString:{0, v19}];
    }

    else
    {
      [v11 stringByAppendingString:v19];
    }
    v14 = ;
  }

  else
  {
    v15 = [v13 text];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_285826188;
    }

    v18 = v17;

    v19 = [(__CFString *)v18 substringToIndex:location];
    v20 = [(__CFString *)v18 substringFromIndex:location + length];

    v21 = [v19 stringByAppendingString:v20];
    v14 = [v21 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];
  }

LABEL_13:

  return v14;
}

- (void)_updateTextFieldWithFormattedText:(id)a3 newTextWithoutDashes:(id)a4 range:(_NSRange)a5 string:(id)a6
{
  location = a5.location;
  v24 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v24 text];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];

  v14 = [v11 length];
  v15 = [v24 text];
  v16 = [(CDPRecoveryKeyEntryViewController *)self _mapCursorPositionToUnformattedText:v15 position:location];

  if (v14)
  {
    v17 = [v10 length];
    v18 = [v13 length];
    v16 += (v17 - v18) & ~((v17 - v18) >> 63);
  }

  v19 = [MEMORY[0x277CFD558] keyWithGrouping:v10 groupLength:4 separator:@"-"];
  [v24 setText:v19];
  self->hasText = [v10 length] != 0;
  v20 = [(CDPRecoveryKeyEntryViewController *)self _mapUnformattedCursorPositionToFormattedText:v10 position:v16];
  v21 = [v24 beginningOfDocument];
  v22 = [v24 positionFromPosition:v21 offset:v20];

  if (v22)
  {
    v23 = [v24 textRangeFromPosition:v22 toPosition:v22];
    [v24 setSelectedTextRange:v23];
  }
}

- (unint64_t)_mapCursorPositionToUnformattedText:(id)a3 position:(unint64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = 0;
    v6 = 0;
    do
    {
      if (v7 >= [v5 length])
      {
        break;
      }

      if ([v5 characterAtIndex:v7] != 45)
      {
        ++v6;
      }

      ++v7;
    }

    while (a4 != v7);
  }

  return v6;
}

- (unint64_t)_mapUnformattedCursorPositionToFormattedText:(id)a3 position:(unint64_t)a4
{
  v5 = [MEMORY[0x277CFD558] keyWithGrouping:a3 groupLength:4 separator:@"-"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 length];
  v8 = 0;
  if (!a4 || !v7)
  {
    goto LABEL_12;
  }

  if (![v6 length])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if ([v6 characterAtIndex:v8] != 45)
    {
      ++v9;
    }

    ++v8;
  }

  while (v8 < [v6 length] && v9 < a4);
LABEL_12:

  return v8;
}

@end