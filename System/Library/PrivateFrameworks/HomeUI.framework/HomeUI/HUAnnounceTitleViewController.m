@interface HUAnnounceTitleViewController
- (HUAnnounceTitleViewController)initWithHome:(id)a3;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)continuePressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUAnnounceTitleViewController

- (HUAnnounceTitleViewController)initWithHome:(id)a3
{
  v4 = a3;
  v5 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_Title", @"HUOnboardingAnnounce_Title", 1);
  v6 = HULocalizedSiriTriggerPhrase(v4);

  v13 = HULocalizedStringWithFormat(@"HUOnboardingAnnounce_Detail", @"%@", v7, v8, v9, v10, v11, v12, v6);

  v14 = HUImageNamed(@"Onboarding-Announce");
  v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
  [v15 setContentMode:1];
  v19.receiver = self;
  v19.super_class = HUAnnounceTitleViewController;
  v16 = [(HUTopContentOBWelcomeController *)&v19 initWithTitle:v5 detailText:v13 icon:0 contentView:v15];
  v17 = v16;
  if (v16)
  {
    [(HUAnnounceTitleViewController *)v16 setContentImageView:v15];
  }

  return v17;
}

- (void)viewDidLoad
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HUAnnounceTitleViewController;
  [(HUTopContentOBWelcomeController *)&v11 viewDidLoad];
  v4 = [(HUAnnounceTitleViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_2824930D0];

  v6 = [MEMORY[0x277D37618] boldButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_ContinueButton", @"HUOnboardingAnnounce_ContinueButton", 1);
  [v6 setTitle:v7 forState:0];

  [v6 setAccessibilityIdentifier:@"Home.OnboardingView.Announce.ContinueButton"];
  [v6 addTarget:self action:sel_continuePressed_ forControlEvents:64];
  v8 = [(HUAnnounceTitleViewController *)self buttonTray];
  [v8 addButton:v6];

  [(HUAnnounceTitleViewController *)self setModalInPresentation:1];
  [(HUAnnounceTitleViewController *)self updateViewConstraints];
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

- (void)continuePressed:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnounceTitleViewController *)self delegate];
  v6 = @"announceSetupStep";
  v7[0] = &unk_282491D18;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v5];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end