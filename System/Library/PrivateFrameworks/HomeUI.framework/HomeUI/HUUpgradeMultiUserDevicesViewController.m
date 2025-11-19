@interface HUUpgradeMultiUserDevicesViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUpgradeMultiUserDevicesViewController)initWithUpgradeRequirements:(unint64_t)a3 home:(id)a4;
- (void)_continueButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUUpgradeMultiUserDevicesViewController

- (HUUpgradeMultiUserDevicesViewController)initWithUpgradeRequirements:(unint64_t)a3 home:(id)a4
{
  v7 = a4;
  v8 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_Title", @"HUUpgradeMultiUserDevices_Title", 1);
  if (([v7 hf_currentUserIsOwner] & 1) != 0 || objc_msgSend(v7, "hf_currentUserIsAdministrator"))
  {
    v9 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v10 = @"HUUpgradeMultiUserDevices_AppleTVOnly_Detail";
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_14;
        }

        v10 = @"HUUpgradeMultiUserDevices_HomePodAndAppleTV_Detail";
      }
    }

    else
    {
      if (!a3)
      {
        NSLog(&cfstr_WeShouldNotBeC_0.isa);
        v9 = 0;
        goto LABEL_14;
      }

      if (a3 != 1)
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
    objc_storeStrong(&v12->_home, a4);
  }

  return v12;
}

- (void)_continueButtonTapped:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController-_continueButtonTapped] User tapped button", v7, 2u);
  }

  v5 = [(HUUpgradeMultiUserDevicesViewController *)self delegate];
  v8 = @"HUUpgradeMultiUserDevicesOnboardingKey_UserInput";
  v9[0] = &unk_2824927E0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = HUUpgradeMultiUserDevicesViewController;
  [(HUImageOBWelcomeController *)&v16 viewDidLoad];
  v3 = [(HUUpgradeMultiUserDevicesViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_2824932D8];

  v5 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_ContinueButton", @"HUUpgradeMultiUserDevices_ContinueButton", 1);
  if ([(HUUpgradeMultiUserDevicesViewController *)self isFinalStep])
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUUpgradeMultiUserDevices_DoneButton", @"HUUpgradeMultiUserDevices_DoneButton", 1);

    v5 = v6;
  }

  v7 = [MEMORY[0x277D37618] boldButton];
  [(HUUpgradeMultiUserDevicesViewController *)self setContinueButton:v7];

  v8 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [v9 setTitle:v5 forState:0];

  v10 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.UpgradeMultiUser.ContinueButton"];

  v11 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [v11 addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];

  v12 = [(HUUpgradeMultiUserDevicesViewController *)self buttonTray];
  v13 = [(HUUpgradeMultiUserDevicesViewController *)self continueButton];
  [v12 addButton:v13];

  [(HUUpgradeMultiUserDevicesViewController *)self setModalInPresentation:1];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController:viewDidLoad] presented: UMUDVC", v15, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUUpgradeMultiUserDevicesViewController;
  [(HUUpgradeMultiUserDevicesViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUUpgradeMultiUserDevicesViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUUpgradeMultiUserDevicesViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
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