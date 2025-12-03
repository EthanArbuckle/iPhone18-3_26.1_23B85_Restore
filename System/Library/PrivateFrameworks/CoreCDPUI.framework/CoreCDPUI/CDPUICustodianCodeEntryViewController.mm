@interface CDPUICustodianCodeEntryViewController
- (BOOL)validatePIN:(id)n;
- (CDPUICustodianCodeEntryViewController)initWithViewModel:(id)model cdpContext:(id)context;
- (CGSize)preferredContentSize;
- (id)_makeViewDidAppearEvent;
- (id)pinInstructionsPrompt;
- (id)stringsBundle;
- (void)_disableUserInteractionAndStartSpinner;
- (void)_enableUserInteractionAndStopSpinner;
- (void)setPane:(id)pane;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CDPUICustodianCodeEntryViewController

- (CDPUICustodianCodeEntryViewController)initWithViewModel:(id)model cdpContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CDPUICustodianCodeEntryViewController;
  v9 = [(DevicePINController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeStrong(&v10->_cdpContext, context);
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"CDPUICustodianCodeEntry" target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [v11 setEditPaneClass:objc_opt_class()];
    [(DevicePINController *)v10 setSpecifier:v11];
    [(DevicePINController *)v10 setMode:3];
    [(DevicePINController *)v10 setShouldDismissWhenDone:1];
    [(DevicePINController *)v10 setHidesCancelButton:0];
    [(DevicePINController *)v10 setHidesNavigationButtons:1];
    [(DevicePINController *)v10 setPinDelegate:v10];
    [(DevicePINController *)v10 setPinLength:6];
    [(DevicePINController *)v10 setNumericPIN:1];
    appearance = [MEMORY[0x277D3FA48] appearance];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [appearance setTextColor:labelColor];

    appearance2 = [MEMORY[0x277D3FA48] appearance];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [appearance2 setBackgroundColor:systemBackgroundColor];
  }

  return v10;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v6 viewDidAppear:appear];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeViewDidAppearEvent = [(CDPUICustodianCodeEntryViewController *)self _makeViewDidAppearEvent];
  [rtcAnalyticsReporter sendEvent:_makeViewDidAppearEvent];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v10 viewWillAppear:appear];
  navigationItem = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  [navigationItem setTitle:&stru_285826188];

  navigationController = [(CDPUICustodianCodeEntryViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    navigationController2 = [(CDPUICustodianCodeEntryViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar _setBackgroundOpacity:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v4 viewDidDisappear:disappear];
  [(CDPUICustodianCodeEntryViewController *)self _enableUserInteractionAndStopSpinner];
}

- (id)_makeViewDidAppearEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7E0] category:*MEMORY[0x277CFD930]];
  array = [MEMORY[0x277CBEB18] array];
  navigationItem = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];

  if (backBarButtonItem)
  {
    v7 = MEMORY[0x277CFD950];
  }

  else
  {
    navigationItem2 = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x277CFD958];
  }

  [array addObject:*v7];
LABEL_6:
  escapeOffer = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
  titleTelemetryKey = [escapeOffer titleTelemetryKey];

  if (titleTelemetryKey)
  {
    escapeOffer2 = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
    titleTelemetryKey2 = [escapeOffer2 titleTelemetryKey];
    [array addObject:titleTelemetryKey2];
  }

  if ([array count])
  {
    aaf_arrayAsCommaSeperatedString = [array aaf_arrayAsCommaSeperatedString];
    [v3 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  return v3;
}

- (id)stringsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPane:(id)pane
{
  paneCopy = pane;
  v5.receiver = self;
  v5.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v5 setPane:paneCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [paneCopy setViewModel:self->_viewModel];
  }
}

- (id)pinInstructionsPrompt
{
  if (self->_pinInstructions)
  {
    return self->_pinInstructions;
  }

  else
  {
    return &stru_285826188;
  }
}

- (BOOL)validatePIN:(id)n
{
  nCopy = n;
  pane = [(PSDetailController *)self pane];
  [pane resignFirstResponder];

  codeEnteredAction = [(CDPUICodeEntryViewModel *)self->_viewModel codeEnteredAction];

  if (codeEnteredAction)
  {
    [(CDPUICustodianCodeEntryViewController *)self _disableUserInteractionAndStartSpinner];
    codeEnteredAction2 = [(CDPUICodeEntryViewModel *)self->_viewModel codeEnteredAction];
    v8 = (codeEnteredAction2)[2](codeEnteredAction2, nCopy);

    if ((v8 & 1) == 0)
    {
      pane2 = [(PSDetailController *)self pane];
      [pane2 becomeFirstResponder];

      v10 = CDPLocalizedString();
      pinInstructions = self->_pinInstructions;
      self->_pinInstructions = v10;
    }

    [(CDPUICustodianCodeEntryViewController *)self _enableUserInteractionAndStopSpinner];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_disableUserInteractionAndStartSpinner
{
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"CDPUICustodianCodeEntry" hideBackButton:1];

  view = [(CDPUICustodianCodeEntryViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (void)_enableUserInteractionAndStopSpinner
{
  view = [(CDPUICustodianCodeEntryViewController *)self view];
  [view setUserInteractionEnabled:1];

  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:@"CDPUICustodianCodeEntry"];
}

@end