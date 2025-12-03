@interface HMHearingAidIntroViewController
- (HMHearingAidEnrollmentDelegate)delegate;
- (HMHearingAidIntroViewController)initWithContentProvider:(id)provider;
- (void)mainButtonTapped;
- (void)updateButtonTray;
- (void)updateImage;
- (void)viewDidLoad;
@end

@implementation HMHearingAidIntroViewController

- (HMHearingAidIntroViewController)initWithContentProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy featureFlag])
  {
    deviceMarketingName = [providerCopy deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Hearing Aid" value:&stru_286444CA0 table:0];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"%@ can help with hearing loss." value:&stru_286444CA0 table:0];

  v11 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, deviceMarketingName];

  v12 = MEMORY[0x277D755B8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:@"HearingAssistEar-Light" inBundle:v13];

  v18.receiver = self;
  v18.super_class = HMHearingAidIntroViewController;
  v15 = [(HMHearingAidIntroViewController *)&v18 initWithTitle:v8 detailText:v11 icon:v14];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_provider, provider);
  }

  return v16;
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HMHearingAidIntroViewController;
  [(OBBaseWelcomeController *)&v24 viewDidLoad];
  [(HMHearingAidIntroViewController *)self updateImage];
  objc_initWeak(&location, self);
  v25[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__HMHearingAidIntroViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_2796F3CA0;
  objc_copyWeak(&v22, &location);
  v4 = [(HMHearingAidIntroViewController *)self registerForTraitChanges:v3 withHandler:v21];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Your %@ can be used as a clinical-grade hearing aid. They use the results of your hearing test to make adjustments that help you hear the voices and sounds around you." value:&stru_286444CA0 table:0];

  provider = [(HMHearingAidIntroViewController *)self provider];
  if ([provider featureFlag])
  {
    provider2 = [(HMHearingAidIntroViewController *)self provider];
    welcomeControllerDeviceSymbol = [provider2 welcomeControllerDeviceSymbol];
  }

  else
  {
    welcomeControllerDeviceSymbol = @"airpodspro";
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Your %@ can also make adjustments that help you hear media like music value:videos table:{and phone calls.", &stru_286444CA0, 0}];

  provider3 = [(HMHearingAidIntroViewController *)self provider];
  if ([provider3 featureFlag])
  {
    provider4 = [(HMHearingAidIntroViewController *)self provider];
    deviceMarketingName = [provider4 deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, deviceMarketingName];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, deviceMarketingName];

  v17 = [MEMORY[0x277D755B8] _systemImageNamed:welcomeControllerDeviceSymbol];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidIntroViewController *)self addBulletedListItemWithTitle:v15 description:&stru_286444CA0 image:v17 tintColor:systemBlueColor];

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidIntroViewController *)self addBulletedListItemWithTitle:v16 description:&stru_286444CA0 symbolName:@"ear.badge.waveform" tintColor:systemBlueColor2];

  [(HMHearingAidIntroViewController *)self updateButtonTray];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  v20 = *MEMORY[0x277D85DE8];
}

void __46__HMHearingAidIntroViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateImage];
}

- (void)updateButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Get Started" value:&stru_286444CA0 table:0];

  [boldButton setTitle:v4 forState:0];
  [boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  buttonTray = [(HMHearingAidIntroViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Note: If you have little to no hearing loss or severe hearing loss value:Hearing Aid may not be right for you.\n" table:{&stru_286444CA0, 0}];

  buttonTray2 = [(HMHearingAidIntroViewController *)self buttonTray];
  [buttonTray2 setCaptionText:v7 instructionsForUseAction:&__block_literal_global_0];
}

void __51__HMHearingAidIntroViewController_updateButtonTray__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/legal/ifu/haf"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:0];
}

- (void)updateImage
{
  v3 = MEMORY[0x277CCACA8];
  traitCollection = [(HMHearingAidIntroViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v6 = "Light";
  if (userInterfaceStyle == 2)
  {
    v6 = "Dark";
  }

  v7 = [v3 stringWithFormat:@"HearingAssistEar-%s", v6];

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:v7 inBundle:v9];

  v12.receiver = self;
  v12.super_class = HMHearingAidIntroViewController;
  headerView = [(HMHearingAidIntroViewController *)&v12 headerView];
  [headerView setIcon:v10 accessibilityLabel:&stru_286444CA0];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end