@interface CDPRecoveryKeyEntryViewController
- (BOOL)_handleReturnKeyForTextField:(id)field;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CDPRecoveryKeyEntryViewController)initWithRecoveryContext:(id)context cdpContext:(id)cdpContext;
- (id)_addEscapeOption:(id)option forEvent:(id)event;
- (id)_calculateNewTextWithoutDashes:(id)dashes range:(_NSRange)range string:(id)string textField:(id)field;
- (id)_makeEventWithName:(id)name;
- (id)headerView;
- (id)specifiers;
- (id)textEntryCell;
- (unint64_t)_mapCursorPositionToUnformattedText:(id)text position:(unint64_t)position;
- (unint64_t)_mapUnformattedCursorPositionToFormattedText:(id)text position:(unint64_t)position;
- (void)_configureFooterButtonCodeCreate:(id)create withTableBounds:(CGRect)bounds;
- (void)_handleRecoveryKeyValidationWithSuccess:(BOOL)success error:(id)error;
- (void)_updateTextFieldWithFormattedText:(id)text newTextWithoutDashes:(id)dashes range:(_NSRange)range string:(id)string;
- (void)dealloc;
- (void)didFinishEnteringText:(id)text;
- (void)didTapScanText;
- (void)didTapUseKeyboard:(id)keyboard;
- (void)disableUserInteractionAndStartSpinner;
- (void)enableUserInteractionAndStopSpinner;
- (void)handleForgotRecoveryKey:(id)key;
- (void)handleRecoveryKeyEscapeDuringDataRecoveryFlow:(id)flow;
- (void)insertText:(id)text;
- (void)keyboardCameraSessionDidDismiss:(id)dismiss;
- (void)skipRecoveryKeyDuringPasswordResetFlow:(id)flow;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CDPRecoveryKeyEntryViewController

- (CDPRecoveryKeyEntryViewController)initWithRecoveryContext:(id)context cdpContext:(id)cdpContext
{
  contextCopy = context;
  cdpContextCopy = cdpContext;
  v12.receiver = self;
  v12.super_class = CDPRecoveryKeyEntryViewController;
  v9 = [(PSKeychainSyncSecurityCodeController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_cdpContext, cdpContext);
    [(PSKeychainSyncSecurityCodeController *)v10 setSecurityCodeType:2];
    -[PSKeychainSyncSecurityCodeController setMode:](v10, "setMode:", [contextCopy mode]);
  }

  v10->_keyboardIsVisible = 1;

  return v10;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v13 viewDidLoad];
  navigationItem = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  table = [(CDPRecoveryKeyEntryViewController *)self table];
  _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
  [table setBackgroundColor:_systemBackgroundColor];

  table2 = [(CDPRecoveryKeyEntryViewController *)self table];
  [table2 setBounces:0];

  if ([(PSKeychainSyncSecurityCodeController *)self mode]!= 1)
  {
    if ([(CDPRecoveryKeyEntryViewModel *)self->_context shouldSuppressCancelButton])
    {
      navigationItem2 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:0];
    }

    else
    {
      navigationItem2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFlow_];
      navigationItem3 = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
      [navigationItem3 setLeftBarButtonItem:navigationItem2];
    }

    table3 = [(CDPRecoveryKeyEntryViewController *)self table];
    [table3 setSeparatorStyle:1];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardCameraSessionDidDismiss_ name:@"_UIKeyboardCameraSessionDidDismiss" object:0];

  v11 = [(CDPRecoveryKeyEntryViewController *)self _makeEventWithName:*MEMORY[0x277CFD7C0]];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v11];
}

- (id)_makeEventWithName:(id)name
{
  v3 = MEMORY[0x277CE44D8];
  context = self->_context;
  nameCopy = name;
  context = [(CDPRecoveryKeyEntryViewModel *)context context];
  v7 = [v3 analyticsEventWithContext:context eventName:nameCopy category:*MEMORY[0x277CFD930]];

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v7 viewWillAppear:appear];
  [(PSKeychainSyncTextEntryController *)self setSecureTextEntry:0];
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
    recoveryCode = self->_recoveryCode;
    if (!recoveryCode)
    {
      recoveryKey = [(CDPRecoveryKeyEntryViewModel *)self->_context recoveryKey];
      v6 = self->_recoveryCode;
      self->_recoveryCode = recoveryKey;

      recoveryCode = self->_recoveryCode;
    }

    [(PSKeychainSyncTextEntryController *)self setTextEntryText:recoveryCode];
  }
}

- (void)keyboardCameraSessionDidDismiss:(id)dismiss
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController keyboardCameraSessionDidDismiss:];
  }

  [(CDPRecoveryKeyEntryViewController *)self didTapUseKeyboard:0];
  view = [(CDPRecoveryKeyEntryViewController *)self view];
  [view setNeedsLayout];
}

- (id)specifiers
{
  v24.receiver = self;
  v24.super_class = CDPRecoveryKeyEntryViewController;
  specifiers = [(PSKeychainSyncSecurityCodeController *)&v24 specifiers];
  if ([(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForVerifyFlow]|| [(CDPRecoveryKeyEntryViewModel *)self->_context isFooterForMismatchRepairFlow]|| [(PSKeychainSyncSecurityCodeController *)self mode]== 2)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    enterRecoveryKeyButton = self->_enterRecoveryKeyButton;
    self->_enterRecoveryKeyButton = v4;

    table = [(CDPRecoveryKeyEntryViewController *)self table];
    [table addSubview:self->_enterRecoveryKeyButton];
  }

  groupSpecifier = [(PSKeychainSyncViewController *)self groupSpecifier];
  [groupSpecifier removePropertyForKey:*MEMORY[0x277D3FF88]];

  footerLabelText = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  if (footerLabelText)
  {

LABEL_9:
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2451DB000, v9, OS_LOG_TYPE_DEFAULT, "Should show footer button", v23, 2u);
    }

    footerActionButton = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
    [footerActionButton setAlpha:1.0];

    footerActionButton2 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
    [footerActionButton2 removeTarget:self action:0 forControlEvents:64];

    if ([(CDPRecoveryKeyEntryViewModel *)self->_context supportsRKRecovery])
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_2451DB000, v12, OS_LOG_TYPE_DEFAULT, "Context supports RK recovery", v23, 2u);
      }

      footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      footerActionButton4 = footerActionButton3;
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

      footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      footerActionButton4 = footerActionButton3;
      v15 = sel_handleForgotRecoveryKey_;
    }

    else
    {
      isDataRecoveryFlow = [(CDPRecoveryKeyEntryViewModel *)self->_context isDataRecoveryFlow];
      v18 = _CDPLogSystem();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (isDataRecoveryFlow)
      {
        if (v19)
        {
          *v23 = 0;
          _os_log_impl(&dword_2451DB000, v18, OS_LOG_TYPE_DEFAULT, "Context is data recovery flow", v23, 2u);
        }

        footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        footerActionButton4 = footerActionButton3;
        v15 = sel_handleRecoveryKeyEscapeDuringDataRecoveryFlow_;
      }

      else
      {
        if (v19)
        {
          *v23 = 0;
          _os_log_impl(&dword_2451DB000, v18, OS_LOG_TYPE_DEFAULT, "Showing footer button for some other reason", v23, 2u);
        }

        footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        footerActionButton4 = footerActionButton3;
        v15 = sel_continueFlow_;
      }
    }

    [footerActionButton3 addTarget:self action:v15 forEvents:64];
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

  footerActionButton4 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton4 setAlpha:0.0];
LABEL_27:

  navigationItem = [(CDPRecoveryKeyEntryViewController *)self navigationItem];
  [navigationItem setTitle:0];

  return specifiers;
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CDPRecoveryKeyEntryViewController;
  [(CDPRecoveryKeyEntryViewController *)&v19 viewWillLayoutSubviews];
  footerLabelText = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  if (footerLabelText)
  {
    isNaturalUIEnabled = [MEMORY[0x277CFD560] isNaturalUIEnabled];
    footerTextLabel = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    v6 = footerTextLabel;
    if (isNaturalUIEnabled)
    {
      [footerTextLabel setTextAlignment:4];

      footerTextLabel2 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      v8 = MEMORY[0x277D74300];
      v9 = *MEMORY[0x277D76968];
      traitCollection = [(CDPRecoveryKeyEntryViewController *)self traitCollection];
      v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:traitCollection];
      [footerTextLabel2 setFont:v11];

      footerTextLabel3 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [footerTextLabel3 setColor:secondaryLabelColor];
    }

    else
    {
      [footerTextLabel setTextAlignment:1];

      footerTextLabel3 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
      v14 = MEMORY[0x277D74300];
      v15 = *MEMORY[0x277D76918];
      secondaryLabelColor = [(CDPRecoveryKeyEntryViewController *)self traitCollection];
      v16 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:secondaryLabelColor];
      [footerTextLabel3 setFont:v16];
    }

    footerTextLabel4 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [footerTextLabel4 setAlpha:1.0];

    footerTextLabel5 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [footerTextLabel5 setText:footerLabelText];
  }
}

- (void)viewDidLayoutSubviews
{
  v71.receiver = self;
  v71.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v71 viewDidLayoutSubviews];
  table = [(CDPRecoveryKeyEntryViewController *)self table];
  [table bounds];
  v67 = v4;
  v68 = v5;
  v7 = v6;
  rect = v8;

  footerLabelText = [(CDPRecoveryKeyEntryViewModel *)self->_context footerLabelText];
  footerTextLabel = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
  footerTextLabel2 = footerTextLabel;
  if (footerLabelText)
  {
    [footerTextLabel frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    textEntryCell = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [textEntryCell frame];
    v19 = CGRectGetMaxY(v72) + 36.0;

    footerTextLabel2 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
    [footerTextLabel2 setFrame:{v13, v19, v15, v17}];
  }

  else
  {
    [footerTextLabel setAlpha:0.0];
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
  localizedString = [v23 localizedString];

  [(UIButton *)self->_enterRecoveryKeyButton addTarget:self action:*v22 forEvents:64];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:v21];
  [plainButtonConfiguration setImage:v26];

  [plainButtonConfiguration setImagePadding:3.0];
  v27 = [MEMORY[0x277D755D0] configurationWithPointSize:14.0];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v27];

  [(UIButton *)self->_enterRecoveryKeyButton setConfiguration:plainButtonConfiguration];
  [(UIButton *)self->_enterRecoveryKeyButton setTitle:localizedString forState:0];
  [(UIButton *)self->_enterRecoveryKeyButton sizeToFit];
  [(UIButton *)self->_enterRecoveryKeyButton frame];
  v29 = v28;
  v31 = v30 + 42.0;
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    textEntryCell2 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [textEntryCell2 frame];
    v34 = v33;
    v36 = v35;

    [*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) frame];
    v38 = v37 + -64.0;
    textEntryCell3 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [textEntryCell3 setFrame:{14.0, v34, v38, v36}];

    v40 = -2.0;
  }

  else
  {
    v40 = floor((v7 - v31) * 0.5);
  }

  textEntryCell4 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [textEntryCell4 frame];
  v42 = CGRectGetMaxY(v73) + 30.0;

  [(UIButton *)self->_enterRecoveryKeyButton setFrame:v40, v42, v31, v29];
  footerButtonTitle = [(CDPRecoveryKeyEntryViewModel *)self->_context footerButtonTitle];
  if (footerButtonTitle)
  {
    if ([MEMORY[0x277CFD560] isNaturalUIEnabled] && -[PSKeychainSyncSecurityCodeController mode](self, "mode") == 1)
    {
      [(CDPRecoveryKeyEntryViewController *)self _configureFooterButtonCodeCreate:footerButtonTitle withTableBounds:v67, v68, v7, rect];
    }

    else
    {
      footerActionButton = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [footerActionButton setAttributedTitle:footerButtonTitle forState:0];

      footerActionButton2 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [footerActionButton2 setAttributedTitle:footerButtonTitle forState:1];

      footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [footerActionButton3 sizeToFit];

      footerActionButton4 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [footerActionButton4 frame];
      v49 = v48;
      v51 = v50;

      if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
      {
        footerActionButton5 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
        [footerActionButton5 intrinsicContentSize];
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
        isNaturalUIEnabled = [MEMORY[0x277CFD560] isNaturalUIEnabled];
        if (footerLabelText && isNaturalUIEnabled)
        {
          footerTextLabel3 = [(CDPRecoveryKeyEntryViewController *)self footerTextLabel];
          [footerTextLabel3 frame];
          v57 = CGRectGetMaxY(v78) + 36.0;
        }
      }

      footerActionButton6 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
      [footerActionButton6 setFrame:{v55, v57, v49, v51}];
    }

    view = [(CDPRecoveryKeyEntryViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v76);

    if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1 && Width > 0.0 && Width <= 320.0)
    {
      v61 = _CDPLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v61, OS_LOG_TYPE_DEFAULT, "Small screen detected, reducing font size", buf, 2u);
      }

      textEntryCell5 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
      textField = [textEntryCell5 textField];
      v64 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      [textField setFont:v64];
    }
  }
}

- (void)_configureFooterButtonCodeCreate:(id)create withTableBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  createCopy = create;
  footerActionButton = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton applyGlassWithProminence:1];

  v11 = objc_alloc(MEMORY[0x277CCA898]);
  string = [createCopy string];

  v18 = [v11 initWithString:string];
  footerActionButton2 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton2 setAttributedTitle:v18 forState:0];

  footerActionButton3 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton3 setAttributedTitle:v18 forState:1];

  footerActionButton4 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton4 frame];

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v16 = CGRectGetMaxY(v20) + -52.0 + -34.0;
  footerActionButton5 = [(CDPRecoveryKeyEntryViewController *)self footerActionButton];
  [footerActionButton5 setFrame:{width * 0.5 - (width + -62.0) * 0.5, v16, width + -62.0, 52.0}];
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
  view = [(CDPRecoveryKeyEntryViewController *)self view];
  [view setNeedsLayout];
}

- (void)didTapUseKeyboard:(id)keyboard
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController didTapUseKeyboard:];
  }

  self->_keyboardIsVisible = 1;
  [(PSKeychainSyncSecurityCodeController *)self setMode:[(CDPRecoveryKeyEntryViewModel *)self->_context mode]];
  textEntryCell = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [textEntryCell endEditing:1];

  textEntryCell2 = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
  [textEntryCell2 becomeFirstResponder];

  view = [(CDPRecoveryKeyEntryViewController *)self view];
  [view setNeedsLayout];
}

- (void)handleRecoveryKeyEscapeDuringDataRecoveryFlow:(id)flow
{
  context = [(CDPRecoveryKeyEntryViewModel *)self->_context context];
  _supportsCustodianRecovery = [context _supportsCustodianRecovery];

  v6 = _CDPLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (_supportsCustodianRecovery)
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

- (void)skipRecoveryKeyDuringPasswordResetFlow:(id)flow
{
  flowCopy = flow;
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
    localizedString = [v6 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v5 setTitle:localizedString];

    v8 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_RK_ALERT_MESSAGE_CANT_RESET_PASSWORD"];
    localizedString2 = [v8 localizedString];
    [(CDPRemoteValidationEscapeOffer *)v5 setMessage:localizedString2];

    [(CDPRemoteValidationEscapeOffer *)v5 setPresentingViewController:self];
    v31 = flowCopy;
    v10 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v10 setTitleLocalizationKey:@"TRY_AGAIN"];
    [(CDPEscapeOption *)v10 setTitleTelemetryKey:*MEMORY[0x277CFDA40]];
    v11 = MEMORY[0x277CFD508];
    titleLocalizationKey = [(CDPEscapeOption *)v10 titleLocalizationKey];
    v13 = [v11 builderForKey:titleLocalizationKey];
    localizedString3 = [v13 localizedString];
    [(CDPEscapeOption *)v10 setTitle:localizedString3];

    objc_initWeak(&location, self);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke;
    v37[3] = &unk_278E2BC70;
    objc_copyWeak(&v41, &location);
    v40 = v43;
    v15 = v10;
    v38 = v15;
    selfCopy = self;
    [(CDPEscapeOption *)v15 setEscapeAction:v37];
    [(CDPEscapeOption *)v15 setStyle:0];
    v16 = objc_alloc_init(CDPEscapeOption);
    [(CDPEscapeOption *)v16 setTitleLocalizationKey:@"DONT_RESET_PASSWORD"];
    [(CDPEscapeOption *)v16 setTitleTelemetryKey:*MEMORY[0x277CFD958]];
    v17 = MEMORY[0x277CFD508];
    titleLocalizationKey2 = [(CDPEscapeOption *)v16 titleLocalizationKey];
    v19 = [v17 builderForKey:titleLocalizationKey2];
    localizedString4 = [v19 localizedString];
    [(CDPEscapeOption *)v16 setTitle:localizedString4];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__CDPRecoveryKeyEntryViewController_skipRecoveryKeyDuringPasswordResetFlow___block_invoke_90;
    v32[3] = &unk_278E2BC70;
    objc_copyWeak(&v36, &location);
    v35 = v43;
    v21 = v16;
    v33 = v21;
    selfCopy2 = self;
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
    flowCopy = v31;
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

- (id)_addEscapeOption:(id)option forEvent:(id)event
{
  eventCopy = event;
  titleTelemetryKey = [option titleTelemetryKey];
  [eventCopy setObject:titleTelemetryKey forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return eventCopy;
}

- (void)handleForgotRecoveryKey:(id)key
{
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_TITLE"];
  localizedString = [v5 localizedString];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_MESSAGE"];
  localizedString2 = [v7 localizedString];
  v9 = [v4 alertControllerWithTitle:localizedString message:localizedString2 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CFD508] builderForKey:@"CDP_FORGOT_RECOVERY_KEY_ALERT_REPLACE_KEY_OPTION"];
  localizedString3 = [v11 localizedString];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke;
  v19[3] = &unk_278E2B708;
  v19[4] = self;
  v13 = [v10 actionWithTitle:localizedString3 style:0 handler:v19];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CFD508] builderForKey:@"CANCEL"];
  localizedString4 = [v15 localizedString];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__CDPRecoveryKeyEntryViewController_handleForgotRecoveryKey___block_invoke_106;
  v18[3] = &unk_278E2B708;
  v18[4] = self;
  v17 = [v14 actionWithTitle:localizedString4 style:1 handler:v18];
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
    specifier = [(CDPRecoveryKeyEntryViewController *)self specifier];
    v6 = [(CDPRecoveryKeyCreateHeaderView *)v4 initWithSpecifier:specifier];
    v7 = self->_headerView;
    self->_headerView = v6;

    headerView = self->_headerView;
  }

  headerTitle = [(CDPRecoveryKeyEntryViewModel *)self->_context headerTitle];
  [(PSKeychainSyncHeaderView *)headerView setTitleText:headerTitle];

  v9 = self->_headerView;
  headerSubtitle = [(CDPRecoveryKeyEntryViewModel *)self->_context headerSubtitle];
  [(PSKeychainSyncHeaderView *)v9 setDetailText:headerSubtitle];

  v11 = self->_headerView;

  return v11;
}

- (void)didFinishEnteringText:(id)text
{
  textCopy = text;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
    completionHandler = [(CDPRecoveryKeyEntryViewModel *)self->_context completionHandler];
    completionHandler[2](completionHandler, 1, 0);
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
    [(CDPRecoveryKeyEntryViewModel *)context processCollectedRecoveryKey:textCopy completion:v7];
  }
}

- (void)_handleRecoveryKeyValidationWithSuccess:(BOOL)success error:(id)error
{
  if (!success)
  {
    errorCopy = error;
    [(CDPRecoveryKeyEntryViewController *)self enableUserInteractionAndStopSpinner];
    v6 = [errorCopy cdp_isCDPErrorWithCode:-5213];

    if (v6)
    {
      v7 = MEMORY[0x277D75110];
      v8 = [MEMORY[0x277CFD508] builderForKey:@"CDP_MK_MAX_ATTEMPT_TITLE"];
      localizedString = [v8 localizedString];
      v10 = [MEMORY[0x277CFD508] builderForKey:@"CDP_MK_MAX_ATTEMPT_DESCRIPTION"];
      localizedString2 = [v10 localizedString];
      v12 = [v7 alertControllerWithTitle:localizedString message:localizedString2 preferredStyle:1];

      v13 = MEMORY[0x277D750F8];
      v14 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
      localizedString3 = [v14 localizedString];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __83__CDPRecoveryKeyEntryViewController__handleRecoveryKeyValidationWithSuccess_error___block_invoke;
      v27[3] = &unk_278E2B708;
      v27[4] = self;
      v16 = [v13 actionWithTitle:localizedString3 style:0 handler:v27];
    }

    else
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CDPRecoveryKeyEntryViewController _handleRecoveryKeyValidationWithSuccess:error:];
      }

      v18 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_MESSAGE_RK"];
      localizedString4 = [v18 localizedString];

      v20 = MEMORY[0x277D75110];
      v21 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
      localizedString5 = [v21 localizedString];
      v12 = [v20 alertControllerWithTitle:localizedString5 message:localizedString4 preferredStyle:1];

      v23 = MEMORY[0x277D750F8];
      v24 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
      localizedString6 = [v24 localizedString];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __83__CDPRecoveryKeyEntryViewController__handleRecoveryKeyValidationWithSuccess_error___block_invoke_124;
      v26[3] = &unk_278E2B708;
      v26[4] = self;
      v16 = [v23 actionWithTitle:localizedString6 style:0 handler:v26];
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
  textEntryCell = [(PSKeychainSyncSecurityCodeController *)&v9 textEntryCell];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] systemGray5Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray6Color];
  }
  v6 = ;
  [textEntryCell setBackgroundColor:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [textEntryCell textField];
    [textField setAdjustsFontSizeToFitWidth:1];
    [textField setDelegate:self];
    [textField setReturnKeyType:11];
    if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
    {
      [textField setUserInteractionEnabled:0];
    }
  }

  return textEntryCell;
}

- (void)disableUserInteractionAndStartSpinner
{
  navigationItem = [self navigationItem];
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v2, v3, "Starting spinner for item: %@", v4, v5, v6, v7, 2u);
}

- (void)enableUserInteractionAndStopSpinner
{
  navigationItem = [self navigationItem];
  OUTLINED_FUNCTION_3_0(&dword_2451DB000, v2, v3, "Stopping spinner for item: %@", v4, v5, v6, v7, 2u);
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPRecoveryKeyEntryViewController dealloc];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = CDPRecoveryKeyEntryViewController;
  [(PSKeychainSyncSecurityCodeController *)&v5 dealloc];
}

- (void)insertText:(id)text
{
  textCopy = text;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 3)
  {
    v4 = [MEMORY[0x277CFD558] sanitizedKeyInput:textCopy];
    if ([v4 length] >= 0x1D)
    {
      v5 = [v4 substringToIndex:28];

      v4 = v5;
    }

    v6 = [MEMORY[0x277CFD558] keyWithGrouping:v4 groupLength:4 separator:@"-"];
    [(PSKeychainSyncTextEntryController *)self setTextEntryText:v6];
    [(CDPRecoveryKeyEntryViewController *)self didTapUseKeyboard:0];
    textEntryCell = [(CDPRecoveryKeyEntryViewController *)self textEntryCell];
    [textEntryCell becomeFirstResponder];

    self->hasText = 1;
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 1)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![stringCopy isEqualToString:@"\n"])
  {
    text = [fieldCopy text];
    v13 = [text stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];

    fieldCopy = [(CDPRecoveryKeyEntryViewController *)self _calculateNewTextWithoutDashes:v13 range:location string:length textField:stringCopy, fieldCopy];
    if (fieldCopy && (-[PSKeychainSyncSecurityCodeController mode](self, "mode") != 2 || [fieldCopy length] <= 0x1C))
    {
      [(CDPRecoveryKeyEntryViewController *)self _updateTextFieldWithFormattedText:fieldCopy newTextWithoutDashes:fieldCopy range:location string:length, stringCopy];
    }

    goto LABEL_9;
  }

  v11 = [(CDPRecoveryKeyEntryViewController *)self _handleReturnKeyForTextField:fieldCopy];
LABEL_10:

  return v11;
}

- (BOOL)_handleReturnKeyForTextField:(id)field
{
  fieldCopy = field;
  if ([(PSKeychainSyncSecurityCodeController *)self mode]== 2)
  {
    v5 = MEMORY[0x277CFD558];
    text = [fieldCopy text];
    LODWORD(v5) = [v5 isValidKeyLength:text expectedLength:28 withSeparator:@"-"];

    if (v5)
    {
      text2 = [fieldCopy text];
      [(CDPRecoveryKeyEntryViewController *)self didFinishEnteringText:text2];
    }
  }

  return 0;
}

- (id)_calculateNewTextWithoutDashes:(id)dashes range:(_NSRange)range string:(id)string textField:(id)field
{
  length = range.length;
  location = range.location;
  dashesCopy = dashes;
  stringCopy = string;
  fieldCopy = field;
  if ([stringCopy length])
  {
    if ([stringCopy length] > 1)
    {
      v14 = 0;
      goto LABEL_13;
    }

    text = [fieldCopy text];
    v23 = [(CDPRecoveryKeyEntryViewController *)self _mapCursorPositionToUnformattedText:text position:location];

    v19 = [MEMORY[0x277CFD558] sanitizedKeyInput:stringCopy];
    if (v23 <= [dashesCopy length])
    {
      [dashesCopy stringByReplacingCharactersInRange:v23 withString:{0, v19}];
    }

    else
    {
      [dashesCopy stringByAppendingString:v19];
    }
    v14 = ;
  }

  else
  {
    text2 = [fieldCopy text];
    v16 = text2;
    if (text2)
    {
      v17 = text2;
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

- (void)_updateTextFieldWithFormattedText:(id)text newTextWithoutDashes:(id)dashes range:(_NSRange)range string:(id)string
{
  location = range.location;
  textCopy = text;
  dashesCopy = dashes;
  stringCopy = string;
  text = [textCopy text];
  v13 = [text stringByReplacingOccurrencesOfString:@"-" withString:&stru_285826188];

  v14 = [stringCopy length];
  text2 = [textCopy text];
  v16 = [(CDPRecoveryKeyEntryViewController *)self _mapCursorPositionToUnformattedText:text2 position:location];

  if (v14)
  {
    v17 = [dashesCopy length];
    v18 = [v13 length];
    v16 += (v17 - v18) & ~((v17 - v18) >> 63);
  }

  v19 = [MEMORY[0x277CFD558] keyWithGrouping:dashesCopy groupLength:4 separator:@"-"];
  [textCopy setText:v19];
  self->hasText = [dashesCopy length] != 0;
  v20 = [(CDPRecoveryKeyEntryViewController *)self _mapUnformattedCursorPositionToFormattedText:dashesCopy position:v16];
  beginningOfDocument = [textCopy beginningOfDocument];
  v22 = [textCopy positionFromPosition:beginningOfDocument offset:v20];

  if (v22)
  {
    v23 = [textCopy textRangeFromPosition:v22 toPosition:v22];
    [textCopy setSelectedTextRange:v23];
  }
}

- (unint64_t)_mapCursorPositionToUnformattedText:(id)text position:(unint64_t)position
{
  textCopy = text;
  v6 = 0;
  if (textCopy && position)
  {
    v7 = 0;
    v6 = 0;
    do
    {
      if (v7 >= [textCopy length])
      {
        break;
      }

      if ([textCopy characterAtIndex:v7] != 45)
      {
        ++v6;
      }

      ++v7;
    }

    while (position != v7);
  }

  return v6;
}

- (unint64_t)_mapUnformattedCursorPositionToFormattedText:(id)text position:(unint64_t)position
{
  v5 = [MEMORY[0x277CFD558] keyWithGrouping:text groupLength:4 separator:@"-"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 length];
  v8 = 0;
  if (!position || !v7)
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

  while (v8 < [v6 length] && v9 < position);
LABEL_12:

  return v8;
}

@end