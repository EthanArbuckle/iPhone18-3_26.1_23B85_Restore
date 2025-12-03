@interface DSPasscodeChangedController
- (DSNavigationDelegate)delegate;
- (DSPasscodeChangedController)init;
- (void)finishFlow;
- (void)reviewAccessPressed;
- (void)viewDidLoad;
@end

@implementation DSPasscodeChangedController

- (DSPasscodeChangedController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"PASSCODE_CHANGED");
    v4 = DSUILocStringForKey(@"PASSCODE_CHANGED_DETAIL");
    v15.receiver = self;
    v15.super_class = DSPasscodeChangedController;
    v5 = [(DSPasscodeChangedController *)&v15 initWithTitle:v3 detailText:v4 symbolName:@"checkmark.circle.fill"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:systemBlueColor];

    v4 = DSUILocStringForKey(@"PASSCODE_CHANGED");
    v8 = DSUILocStringForKey(@"PASSCODE_CHANGED_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v3];
    v14.receiver = self;
    v14.super_class = DSPasscodeChangedController;
    v5 = [(DSPasscodeChangedController *)&v14 initWithTitle:v4 detailText:v8 icon:v9];
  }

  if (v5)
  {
    v10 = os_log_create("com.apple.DigitalSeparation", "DSPasscodeChangedController");
    v11 = DSLog_7;
    DSLog_7 = v10;

    v12 = +[DSAlternateDeviceAccessManager sharedManager];
    [(DSPasscodeChangedController *)v5 setAccessManager:v12];
  }

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = DSPasscodeChangedController;
  [(DSOBWelcomeController *)&v8 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:1];

  v4 = DSUILocStringForKey(@"DONE");
  v5 = [DSUIUtilities setUpBoldButtonForController:self title:v4 target:self selector:sel_finishFlow];

  v6 = DSUILocStringForKey(@"REVIEW_ACCESS");
  v7 = [DSUIUtilities setUpLinkButtonForController:self title:v6 target:self selector:sel_reviewAccessPressed];
}

- (void)reviewAccessPressed
{
  delegate = [(DSPasscodeChangedController *)self delegate];
  [delegate pushPaneAfterPaneType:objc_opt_class()];
}

- (void)finishFlow
{
  accessManager = [(DSPasscodeChangedController *)self accessManager];
  [accessManager sendSummaryAnalyticsWithReviewAction:0 resetAction:0 exit:0];

  presentingViewController = [(DSPasscodeChangedController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end