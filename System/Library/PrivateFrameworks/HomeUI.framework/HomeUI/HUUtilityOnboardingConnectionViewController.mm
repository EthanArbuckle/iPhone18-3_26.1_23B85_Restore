@interface HUUtilityOnboardingConnectionViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingConnectionViewController)initWithContext:(id)context;
- (void)_startAutoDismissTimer;
- (void)sendNotification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingConnectionViewController

- (HUUtilityOnboardingConnectionViewController)initWithContext:(id)context
{
  v22[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [HUUtilityOnboardingConnectionItemManager alloc];
  v21[0] = @"utilityName";
  config = [contextCopy config];
  name = [config name];
  v21[1] = @"homeName";
  v22[0] = name;
  home = [contextCopy home];
  name2 = [home name];
  v22[1] = name2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v11 = [(HUUtilityOnboardingConnectionItemManager *)v5 initWithDelegate:self data:v10];

  v12 = [[HUUtilityOnboardingConnectionTableViewController alloc] initWithData:0 withItemManager:v11 tableViewStyle:1];
  [(HUUtilityOnboardingConnectionViewController *)self setTableView:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUUtilityDiscoveryUtilityConnection_Title", @"HUUtilityDiscoveryUtilityConnection_Title", 1);
  tableView = [(HUUtilityOnboardingConnectionViewController *)self tableView];
  v20.receiver = self;
  v20.super_class = HUUtilityOnboardingConnectionViewController;
  v15 = [(HUItemTableOBWelcomeController *)&v20 initWithTitle:v13 detailText:0 icon:0 contentLayout:2 itemTableViewController:tableView];

  [(HUUtilityOnboardingConnectionViewController *)v15 setOnboardingContext:contextCopy];
  utilityID = [contextCopy utilityID];
  onboardingMethod = [contextCopy onboardingMethod];
  didAttemptPasswordlessMethod = [contextCopy didAttemptPasswordlessMethod];

  [HUHomeEnergyAnalyticsHelper sendUtilityOnboardingCompletedEventWithUtilityID:utilityID onboardingMethod:onboardingMethod didAttemptPasswordless:didAttemptPasswordlessMethod];
  return v15;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUUtilityOnboardingConnectionViewController;
  [(HUItemTableOBWelcomeController *)&v10 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  headerView = [(HUUtilityOnboardingConnectionViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492FB8];

  onboardingContext = [(HUUtilityOnboardingConnectionViewController *)self onboardingContext];
  headerView2 = [(HUUtilityOnboardingConnectionViewController *)self headerView];
  [onboardingContext updateIconWithHeaderView:headerView2 axID:@"Home.OnboardingView.Utility.SubscriptionInfo.Icon"];

  tableView = [(HUUtilityOnboardingConnectionViewController *)self tableView];
  v8TableView = [tableView tableView];
  [v8TableView setAllowsSelection:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingConnectionViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  [(HUUtilityOnboardingConnectionViewController *)self _startAutoDismissTimer];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingConnectionViewController;
  [(OBBaseWelcomeController *)&v4 viewDidDisappear:disappear];
  [(HUUtilityOnboardingConnectionViewController *)self sendNotification];
}

- (void)sendNotification
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2080;
    v13 = "[HUUtilityOnboardingConnectionViewController sendNotification]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s Sending onboarding notification", buf, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  onboardingContext = [(HUUtilityOnboardingConnectionViewController *)self onboardingContext];
  home = [onboardingContext home];
  v9 = home;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"CompletedUtilityOnboarding" object:0 userInfo:v7];
}

- (void)_startAutoDismissTimer
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HUUtilityOnboardingConnectionViewController__startAutoDismissTimer__block_invoke;
  v4[3] = &unk_277DBF678;
  v4[4] = self;
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v4 block:2.0];
  [(HUUtilityOnboardingConnectionViewController *)self setAutoDismissTimer:v3];
}

void __69__HUUtilityOnboardingConnectionViewController__startAutoDismissTimer__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  if (v2)
  {
    v11 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
    v12[0] = &unk_2824919E8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v12;
    v7 = &v11;
  }

  else
  {
    v9 = @"HUUtilityDiscoveryOnboardingKey_UserInput";
    v10 = &unk_282491A00;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v10;
    v7 = &v9;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
  [v3 viewController:v4 didFinishWithConfigurationResults:v8];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end