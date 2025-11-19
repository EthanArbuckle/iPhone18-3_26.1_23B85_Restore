@interface DSPrivacyAdditionalActionsController
- (DSNavigationDelegate)delegate;
- (DSPrivacyAdditionalActionsController)init;
- (void)back;
- (void)pushNextPane;
- (void)viewDidLoad;
@end

@implementation DSPrivacyAdditionalActionsController

- (DSPrivacyAdditionalActionsController)init
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = DSUILocStringForKey(@"APP_ACCESS_COMPLETE");
    v4 = DSUILocStringForKey(@"APP_ACCESS_COMPLETE_DETAIL");
    v12.receiver = self;
    v12.super_class = DSPrivacyAdditionalActionsController;
    v5 = [(DSPrivacyAdditionalActionsController *)&v12 initWithTitle:v3 detailText:v4 symbolName:@"checklist.checked"];
  }

  else
  {
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v3 = [v6 configurationWithHierarchicalColor:v7];

    v4 = DSUILocStringForKey(@"APP_ACCESS_COMPLETE");
    v8 = DSUILocStringForKey(@"APP_ACCESS_COMPLETE_DETAIL");
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist.checked" withConfiguration:v3];
    v11.receiver = self;
    v11.super_class = DSPrivacyAdditionalActionsController;
    v5 = [(DSPrivacyAdditionalActionsController *)&v11 initWithTitle:v4 detailText:v8 icon:v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DSPrivacyAdditionalActionsController;
  [(DSOBWelcomeController *)&v7 viewDidLoad];
  v3 = DSUILocStringForKey(@"CONTINUE");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_pushNextPane];
  [(DSPrivacyAdditionalActionsController *)self setBoldButton:v4];

  v5 = DSUILocStringForKey(@"REVIEW_MORE_APPS");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_back];
}

- (void)back
{
  v3 = [(DSPrivacyAdditionalActionsController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)pushNextPane
{
  v3 = [(DSPrivacyAdditionalActionsController *)self boldButton];
  [v3 showsBusyIndicator];

  v4 = [(DSPrivacyAdditionalActionsController *)self delegate];
  [v4 pushNextPane];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end