@interface DMCEnrollmentAboutRemoteManagementViewController
+ (void)presentAboutRemoteManagementViewControllerWithBaseViewController:(id)controller;
- (void)rightBarButtonTapped:(id)tapped;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DMCEnrollmentAboutRemoteManagementViewController

+ (void)presentAboutRemoteManagementViewControllerWithBaseViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [DMCEnrollmentAboutRemoteManagementViewController alloc];
  v5 = DMCLocalizedString();
  v6 = DMCLocalizedString();
  v8 = [(DMCEnrollmentTemplateTableViewController *)v4 initWithIconName:@"gear" title:v5 subTitle:v6];

  v7 = [[DMCNavigationController alloc] initWithRootViewController:v8];
  [controllerCopy presentViewController:v7 animated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = DMCEnrollmentAboutRemoteManagementViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v7 viewWillAppear:appear];
  v4 = [[DMCEnrollmentUIBarButtonItem alloc] initWithType:4 target:self action:sel_rightBarButtonTapped_];
  navigationItem = [(DMCEnrollmentAboutRemoteManagementViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  navigationItem2 = [(DMCEnrollmentAboutRemoteManagementViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem2);
}

- (void)rightBarButtonTapped:(id)tapped
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DMCEnrollmentAboutRemoteManagementViewController_rightBarButtonTapped___block_invoke;
  block[3] = &unk_278EE74C0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end