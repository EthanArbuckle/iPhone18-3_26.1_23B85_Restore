@interface HUAnnounceSetupViewController
- (HUAnnounceSetupViewController)initWithHome:(id)home step:(unint64_t)step;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)continuePressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HUAnnounceSetupViewController

- (HUAnnounceSetupViewController)initWithHome:(id)home step:(unint64_t)step
{
  homeCopy = home;
  v7 = 2;
  if (step == 1)
  {
    v8 = @"HUOnboardingAnnounceNotifications_Detail";
    v9 = @"HUOnboardingAnnounceNotifications_Title";
    goto LABEL_5;
  }

  if (step == 2)
  {
    v8 = @"HUOnboardingAnnounceAccessControl_Detail";
    v7 = 3;
    v9 = @"HUOnboardingAnnounceAccessControl_Title";
LABEL_5:
    v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
    v11 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HUAnnounceSetupViewController_initWithHome_step___block_invoke_3;
  aBlock[3] = &unk_277DBA558;
  v20 = homeCopy;
  v21 = v7;
  v12 = homeCopy;
  v13 = _Block_copy(aBlock);
  v14 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:1 moduleCreator:v13 moduleControllerBuilder:&__block_literal_global_16_2];
  v18.receiver = self;
  v18.super_class = HUAnnounceSetupViewController;
  v15 = [(HUItemTableOBWelcomeController *)&v18 initWithTitle:v10 detailText:v11 icon:0 contentLayout:2 itemTableViewController:v14];
  v16 = v15;
  if (v15)
  {
    v15->_step = step;
  }

  return v16;
}

id __51__HUAnnounceSetupViewController_initWithHome_step___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUAnnounceSettingsItemModule alloc] initWithItemUpdater:v4 home:*(a1 + 32) settingsContext:*(a1 + 40)];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

HUAnnounceSettingsItemModuleController *__51__HUAnnounceSetupViewController_initWithHome_step___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HUItemModuleController *)[HUAnnounceSettingsItemModuleController alloc] initWithModule:v2];

  return v3;
}

- (void)continuePressed:(id)pressed
{
  v8[1] = *MEMORY[0x277D85DE8];
  delegate = [(HUAnnounceSetupViewController *)self delegate];
  v7 = @"announceSetupStep";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUAnnounceSetupViewController step](self, "step")}];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)viewDidLoad
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUAnnounceSetupViewController;
  [(HUItemTableOBWelcomeController *)&v11 viewDidLoad];
  headerView = [(HUAnnounceSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493030];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_ContinueButton", @"HUOnboardingAnnounce_ContinueButton", 1);
  [boldButton setTitle:v7 forState:0];

  [boldButton setAccessibilityIdentifier:@"Home.OnboardingView.AnnounceSetUp.ContinueButton"];
  [boldButton addTarget:self action:sel_continuePressed_ forControlEvents:64];
  buttonTray = [(HUAnnounceSetupViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  [(HUAnnounceSetupViewController *)self setModalInPresentation:1];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: ATVC", buf, 0x16u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end