@interface CDPUICustodianCodeEntryViewController
- (BOOL)validatePIN:(id)a3;
- (CDPUICustodianCodeEntryViewController)initWithViewModel:(id)a3 cdpContext:(id)a4;
- (CGSize)preferredContentSize;
- (id)_makeViewDidAppearEvent;
- (id)pinInstructionsPrompt;
- (id)stringsBundle;
- (void)_disableUserInteractionAndStartSpinner;
- (void)_enableUserInteractionAndStopSpinner;
- (void)setPane:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CDPUICustodianCodeEntryViewController

- (CDPUICustodianCodeEntryViewController)initWithViewModel:(id)a3 cdpContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CDPUICustodianCodeEntryViewController;
  v9 = [(DevicePINController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeStrong(&v10->_cdpContext, a4);
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
    v12 = [MEMORY[0x277D3FA48] appearance];
    v13 = [MEMORY[0x277D75348] labelColor];
    [v12 setTextColor:v13];

    v14 = [MEMORY[0x277D3FA48] appearance];
    v15 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v14 setBackgroundColor:v15];
  }

  return v10;
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v6 viewDidAppear:a3];
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianCodeEntryViewController *)self _makeViewDidAppearEvent];
  [v4 sendEvent:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v10 viewWillAppear:a3];
  v4 = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  [v4 setTitle:&stru_285826188];

  v5 = [(CDPUICustodianCodeEntryViewController *)self navigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];

  if (v7 == self)
  {
    v8 = [(CDPUICustodianCodeEntryViewController *)self navigationController];
    v9 = [v8 navigationBar];
    [v9 _setBackgroundOpacity:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v4 viewDidDisappear:a3];
  [(CDPUICustodianCodeEntryViewController *)self _enableUserInteractionAndStopSpinner];
}

- (id)_makeViewDidAppearEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7E0] category:*MEMORY[0x277CFD930]];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  v6 = [v5 backBarButtonItem];

  if (v6)
  {
    v7 = MEMORY[0x277CFD950];
  }

  else
  {
    v8 = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
    v9 = [v8 leftBarButtonItem];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x277CFD958];
  }

  [v4 addObject:*v7];
LABEL_6:
  v10 = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
  v11 = [v10 titleTelemetryKey];

  if (v11)
  {
    v12 = [(CDPUICodeEntryViewModel *)self->_viewModel escapeOffer];
    v13 = [v12 titleTelemetryKey];
    [v4 addObject:v13];
  }

  if ([v4 count])
  {
    v14 = [v4 aaf_arrayAsCommaSeperatedString];
    [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277CFD6C8]];
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

- (void)setPane:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = CDPUICustodianCodeEntryViewController;
  [(DevicePINController *)&v5 setPane:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setViewModel:self->_viewModel];
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

- (BOOL)validatePIN:(id)a3
{
  v4 = a3;
  v5 = [(PSDetailController *)self pane];
  [v5 resignFirstResponder];

  v6 = [(CDPUICodeEntryViewModel *)self->_viewModel codeEnteredAction];

  if (v6)
  {
    [(CDPUICustodianCodeEntryViewController *)self _disableUserInteractionAndStartSpinner];
    v7 = [(CDPUICodeEntryViewModel *)self->_viewModel codeEnteredAction];
    v8 = (v7)[2](v7, v4);

    if ((v8 & 1) == 0)
    {
      v9 = [(PSDetailController *)self pane];
      [v9 becomeFirstResponder];

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
  v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v4 = [(CDPUICustodianCodeEntryViewController *)self navigationItem];
  [v3 startAnimatingInNavItem:v4 forIdentifier:@"CDPUICustodianCodeEntry" hideBackButton:1];

  v5 = [(CDPUICustodianCodeEntryViewController *)self view];
  [v5 setUserInteractionEnabled:0];
}

- (void)_enableUserInteractionAndStopSpinner
{
  v2 = [(CDPUICustodianCodeEntryViewController *)self view];
  [v2 setUserInteractionEnabled:1];

  v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [v3 stopAnimatingForIdentifier:@"CDPUICustodianCodeEntry"];
}

@end