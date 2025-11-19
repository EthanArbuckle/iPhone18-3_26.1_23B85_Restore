@interface HUAnnounceSetupViewController
- (HUAnnounceSetupViewController)initWithHome:(id)a3 step:(unint64_t)a4;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)continuePressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUAnnounceSetupViewController

- (HUAnnounceSetupViewController)initWithHome:(id)a3 step:(unint64_t)a4
{
  v6 = a3;
  v7 = 2;
  if (a4 == 1)
  {
    v8 = @"HUOnboardingAnnounceNotifications_Detail";
    v9 = @"HUOnboardingAnnounceNotifications_Title";
    goto LABEL_5;
  }

  if (a4 == 2)
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
  v20 = v6;
  v21 = v7;
  v12 = v6;
  v13 = _Block_copy(aBlock);
  v14 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:1 moduleCreator:v13 moduleControllerBuilder:&__block_literal_global_16_2];
  v18.receiver = self;
  v18.super_class = HUAnnounceSetupViewController;
  v15 = [(HUItemTableOBWelcomeController *)&v18 initWithTitle:v10 detailText:v11 icon:0 contentLayout:2 itemTableViewController:v14];
  v16 = v15;
  if (v15)
  {
    v15->_step = a4;
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

- (void)continuePressed:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnounceSetupViewController *)self delegate];
  v7 = @"announceSetupStep";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUAnnounceSetupViewController step](self, "step")}];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)viewDidLoad
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUAnnounceSetupViewController;
  [(HUItemTableOBWelcomeController *)&v11 viewDidLoad];
  v4 = [(HUAnnounceSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493030];

  v6 = [MEMORY[0x277D37618] boldButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_ContinueButton", @"HUOnboardingAnnounce_ContinueButton", 1);
  [v6 setTitle:v7 forState:0];

  [v6 setAccessibilityIdentifier:@"Home.OnboardingView.AnnounceSetUp.ContinueButton"];
  [v6 addTarget:self action:sel_continuePressed_ forControlEvents:64];
  v8 = [(HUAnnounceSetupViewController *)self buttonTray];
  [v8 addButton:v6];

  [(HUAnnounceSetupViewController *)self setModalInPresentation:1];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
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