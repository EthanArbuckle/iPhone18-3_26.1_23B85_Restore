@interface HUAnnounceTitleViewController
- (HUAnnounceTitleViewController)initWithHome:(id)home;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)continuePressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HUAnnounceTitleViewController

- (HUAnnounceTitleViewController)initWithHome:(id)home
{
  homeCopy = home;
  v5 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_Title", @"HUOnboardingAnnounce_Title", 1);
  v6 = HULocalizedSiriTriggerPhrase(homeCopy);

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
  headerView = [(HUAnnounceTitleViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824930D0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOnboardingAnnounce_ContinueButton", @"HUOnboardingAnnounce_ContinueButton", 1);
  [boldButton setTitle:v7 forState:0];

  [boldButton setAccessibilityIdentifier:@"Home.OnboardingView.Announce.ContinueButton"];
  [boldButton addTarget:self action:sel_continuePressed_ forControlEvents:64];
  buttonTray = [(HUAnnounceTitleViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  [(HUAnnounceTitleViewController *)self setModalInPresentation:1];
  [(HUAnnounceTitleViewController *)self updateViewConstraints];
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

- (void)continuePressed:(id)pressed
{
  v7[1] = *MEMORY[0x277D85DE8];
  delegate = [(HUAnnounceTitleViewController *)self delegate];
  v6 = @"announceSetupStep";
  v7[0] = &unk_282491D18;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v5];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end