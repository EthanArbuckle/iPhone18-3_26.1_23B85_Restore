@interface HUUtilityOnboardingConnectionViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingConnectionViewController)initWithContext:(id)a3;
- (void)_startAutoDismissTimer;
- (void)sendNotification;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingConnectionViewController

- (HUUtilityOnboardingConnectionViewController)initWithContext:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUUtilityOnboardingConnectionItemManager alloc];
  v21[0] = @"utilityName";
  v6 = [v4 config];
  v7 = [v6 name];
  v21[1] = @"homeName";
  v22[0] = v7;
  v8 = [v4 home];
  v9 = [v8 name];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v11 = [(HUUtilityOnboardingConnectionItemManager *)v5 initWithDelegate:self data:v10];

  v12 = [[HUUtilityOnboardingConnectionTableViewController alloc] initWithData:0 withItemManager:v11 tableViewStyle:1];
  [(HUUtilityOnboardingConnectionViewController *)self setTableView:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUUtilityDiscoveryUtilityConnection_Title", @"HUUtilityDiscoveryUtilityConnection_Title", 1);
  v14 = [(HUUtilityOnboardingConnectionViewController *)self tableView];
  v20.receiver = self;
  v20.super_class = HUUtilityOnboardingConnectionViewController;
  v15 = [(HUItemTableOBWelcomeController *)&v20 initWithTitle:v13 detailText:0 icon:0 contentLayout:2 itemTableViewController:v14];

  [(HUUtilityOnboardingConnectionViewController *)v15 setOnboardingContext:v4];
  v16 = [v4 utilityID];
  v17 = [v4 onboardingMethod];
  v18 = [v4 didAttemptPasswordlessMethod];

  [HUHomeEnergyAnalyticsHelper sendUtilityOnboardingCompletedEventWithUtilityID:v16 onboardingMethod:v17 didAttemptPasswordless:v18];
  return v15;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUUtilityOnboardingConnectionViewController;
  [(HUItemTableOBWelcomeController *)&v10 viewDidLoad];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = [(HUUtilityOnboardingConnectionViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492FB8];

  v6 = [(HUUtilityOnboardingConnectionViewController *)self onboardingContext];
  v7 = [(HUUtilityOnboardingConnectionViewController *)self headerView];
  [v6 updateIconWithHeaderView:v7 axID:@"Home.OnboardingView.Utility.SubscriptionInfo.Icon"];

  v8 = [(HUUtilityOnboardingConnectionViewController *)self tableView];
  v9 = [v8 tableView];
  [v9 setAllowsSelection:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingConnectionViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:a3];
  [(HUUtilityOnboardingConnectionViewController *)self _startAutoDismissTimer];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUUtilityOnboardingConnectionViewController;
  [(OBBaseWelcomeController *)&v4 viewDidDisappear:a3];
  [(HUUtilityOnboardingConnectionViewController *)self sendNotification];
}

- (void)sendNotification
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2080;
    v13 = "[HUUtilityOnboardingConnectionViewController sendNotification]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s Sending onboarding notification", buf, 0x16u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(HUUtilityOnboardingConnectionViewController *)self onboardingContext];
  v6 = [v5 home];
  v9 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"CompletedUtilityOnboarding" object:0 userInfo:v7];
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