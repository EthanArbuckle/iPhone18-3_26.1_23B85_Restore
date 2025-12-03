@interface HMHearingAidTimeToAdjustInfoViewController
- (HMHearingAidEnrollmentDelegate)delegate;
- (HMHearingAidTimeToAdjustInfoViewController)initWithContentProvider:(id)provider;
- (void)mainButtonTapped;
- (void)updateButtonTray;
- (void)updateImage;
- (void)viewDidLoad;
@end

@implementation HMHearingAidTimeToAdjustInfoViewController

- (HMHearingAidTimeToAdjustInfoViewController)initWithContentProvider:(id)provider
{
  providerCopy = provider;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Hearing Aid Can Take Time to Get Used To" value:&stru_286444CA0 table:0];

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:@"Calendar-Light" inBundle:v9];

  v14.receiver = self;
  v14.super_class = HMHearingAidTimeToAdjustInfoViewController;
  v11 = [(HMHearingAidTimeToAdjustInfoViewController *)&v14 initWithTitle:v7 detailText:0 icon:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provider, provider);
  }

  return v12;
}

- (void)viewDidLoad
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMHearingAidTimeToAdjustInfoViewController;
  [(OBBaseWelcomeController *)&v30 viewDidLoad];
  [(HMHearingAidTimeToAdjustInfoViewController *)self updateImage];
  objc_initWeak(&location, self);
  v31[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__HMHearingAidTimeToAdjustInfoViewController_viewDidLoad__block_invoke;
  v27[3] = &unk_2796F3CA0;
  objc_copyWeak(&v28, &location);
  v4 = [(HMHearingAidTimeToAdjustInfoViewController *)self registerForTraitChanges:v3 withHandler:v27];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Your hearing may need to get used to the new sound of your %@. This is normal and can take a few weeks." value:&stru_286444CA0 table:0];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"You can speed up the adjustment by consistently wearing your %@ when you find it difficult to hear." value:&stru_286444CA0 table:0];

  provider = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([provider featureFlag])
  {
    provider2 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    welcomeControllerDeviceSymbol = [provider2 welcomeControllerDeviceSymbol];
  }

  else
  {
    welcomeControllerDeviceSymbol = @"airpodspro";
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"You can always adjust the sound in %@ settings and Control Center." value:&stru_286444CA0 table:0];

  provider3 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([provider3 featureFlag])
  {
    provider4 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    deviceMarketingName = [provider4 deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  provider5 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([provider5 featureFlag])
  {
    provider6 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    devicePlatformName = [provider6 devicePlatformName];
  }

  else
  {
    devicePlatformName = @"AirPods";
  }

  v20 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, deviceMarketingName];

  v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, devicePlatformName];

  v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, devicePlatformName];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v20 description:&stru_286444CA0 symbolName:@"calendar" tintColor:systemBlueColor];

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v21 description:&stru_286444CA0 symbolName:welcomeControllerDeviceSymbol tintColor:systemBlueColor2];

  systemBlueColor3 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v22 description:&stru_286444CA0 symbolName:@"slider.horizontal.below.waveform" tintColor:systemBlueColor3];

  [(HMHearingAidTimeToAdjustInfoViewController *)self updateButtonTray];
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  v26 = *MEMORY[0x277D85DE8];
}

void __57__HMHearingAidTimeToAdjustInfoViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateImage];
}

- (void)updateButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Next" value:&stru_286444CA0 table:0];

  [boldButton setTitle:v4 forState:0];
  [boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  buttonTray = [(HMHearingAidTimeToAdjustInfoViewController *)self buttonTray];
  [buttonTray addButton:boldButton];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:1];
}

- (void)updateImage
{
  v3 = MEMORY[0x277CCACA8];
  traitCollection = [(HMHearingAidTimeToAdjustInfoViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v6 = "Light";
  if (userInterfaceStyle == 2)
  {
    v6 = "Dark";
  }

  v7 = [v3 stringWithFormat:@"Calendar-%s", v6];

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:v7 inBundle:v9];

  v12.receiver = self;
  v12.super_class = HMHearingAidTimeToAdjustInfoViewController;
  headerView = [(HMHearingAidTimeToAdjustInfoViewController *)&v12 headerView];
  [headerView setIcon:v10 accessibilityLabel:&stru_286444CA0];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end