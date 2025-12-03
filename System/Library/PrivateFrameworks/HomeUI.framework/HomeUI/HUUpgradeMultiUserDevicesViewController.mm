@interface HUUpgradeMultiUserDevicesViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUpgradeMultiUserDevicesViewController)initWithUpgradeRequirements:(unint64_t)requirements home:(id)home;
- (void)_continueButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUpgradeMultiUserDevicesViewController

- (HUUpgradeMultiUserDevicesViewController)initWithUpgradeRequirements:(unint64_t)requirements home:(id)home
{
  homeCopy = home;
  v8 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_Title", @"HUUpgradeMultiUserDevices_Title", 1);
  if (([homeCopy hf_currentUserIsOwner] & 1) != 0 || objc_msgSend(homeCopy, "hf_currentUserIsAdministrator"))
  {
    v9 = 0;
    if (requirements > 1)
    {
      if (requirements == 2)
      {
        v10 = @"HUUpgradeMultiUserDevices_AppleTVOnly_Detail";
      }

      else
      {
        if (requirements != 3)
        {
          goto LABEL_14;
        }

        v10 = @"HUUpgradeMultiUserDevices_HomePodAndAppleTV_Detail";
      }
    }

    else
    {
      if (!requirements)
      {
        NSLog(&cfstr_WeShouldNotBeC_0.isa);
        v9 = 0;
        goto LABEL_14;
      }

      if (requirements != 1)
      {
        goto LABEL_14;
      }

      v10 = @"HUUpgradeMultiUserDevices_HomePodOnly_Detail";
    }
  }

  else
  {
    v10 = @"HUUpgradeMultiUserDevices_Generic_Detail";
  }

  v9 = _HULocalizedStringWithDefaultValue(v10, v10, 1);
LABEL_14:
  v11 = HUImageNamed(@"Onboarding-UpdateSoftware");
  v14.receiver = self;
  v14.super_class = HUUpgradeMultiUserDevicesViewController;
  v12 = [(HUImageOBWelcomeController *)&v14 initWithTitle:v8 detailText:v9 icon:0 contentImage:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_home, home);
  }

  return v12;
}

- (void)_continueButtonTapped:(id)tapped
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController-_continueButtonTapped] User tapped button", v7, 2u);
  }

  delegate = [(HUUpgradeMultiUserDevicesViewController *)self delegate];
  v8 = @"HUUpgradeMultiUserDevicesOnboardingKey_UserInput";
  v9[0] = &unk_2824927E0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HUUpgradeMultiUserDevicesViewController;
  [(HUImageOBWelcomeController *)&v16 viewDidLoad];
  headerView = [(HUUpgradeMultiUserDevicesViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824932D8];

  v5 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_ContinueButton", @"HUUpgradeMultiUserDevices_ContinueButton", 1);
  if ([(HUUpgradeMultiUserDevicesViewController *)self isFinalStep])
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_DoneButton", @"HUUpgradeMultiUserDevices_DoneButton", 1);

    v5 = v6;
  }

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUUpgradeMultiUserDevicesViewController *)self setContinueButton:boldButton];

  continueButton = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

  continueButton2 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [continueButton2 setTitle:v5 forState:0];

  continueButton3 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [continueButton3 setAccessibilityIdentifier:@"Home.OnboardingView.UpgradeMultiUser.ContinueButton"];

  continueButton4 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [continueButton4 addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];

  buttonTray = [(HUUpgradeMultiUserDevicesViewController *)self buttonTray];
  continueButton5 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [buttonTray addButton:continueButton5];

  [(HUUpgradeMultiUserDevicesViewController *)self setModalInPresentation:1];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController:viewDidLoad] presented: UMUDVC", v15, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUUpgradeMultiUserDevicesViewController;
  [(HUUpgradeMultiUserDevicesViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUUpgradeMultiUserDevicesViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController:viewWillDisappear]", v4, 2u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end