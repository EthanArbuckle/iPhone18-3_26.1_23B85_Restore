@interface HMHearingAidTimeToAdjustInfoViewController
- (HMHearingAidEnrollmentDelegate)delegate;
- (HMHearingAidTimeToAdjustInfoViewController)initWithContentProvider:(id)a3;
- (void)mainButtonTapped;
- (void)updateButtonTray;
- (void)updateImage;
- (void)viewDidLoad;
@end

@implementation HMHearingAidTimeToAdjustInfoViewController

- (HMHearingAidTimeToAdjustInfoViewController)initWithContentProvider:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v11->_provider, a3);
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

  v9 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([v9 featureFlag])
  {
    v10 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    v11 = [v10 welcomeControllerDeviceSymbol];
  }

  else
  {
    v11 = @"airpodspro";
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"You can always adjust the sound in %@ settings and Control Center." value:&stru_286444CA0 table:0];

  v14 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([v14 featureFlag])
  {
    v15 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    v16 = [v15 deviceMarketingName];
  }

  else
  {
    v16 = @"AirPods Pro";
  }

  v17 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
  if ([v17 featureFlag])
  {
    v18 = [(HMHearingAidTimeToAdjustInfoViewController *)self provider];
    v19 = [v18 devicePlatformName];
  }

  else
  {
    v19 = @"AirPods";
  }

  v20 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v16];

  v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, v19];

  v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v19];

  v23 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v20 description:&stru_286444CA0 symbolName:@"calendar" tintColor:v23];

  v24 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v21 description:&stru_286444CA0 symbolName:v11 tintColor:v24];

  v25 = [MEMORY[0x277D75348] systemBlueColor];
  [(HMHearingAidTimeToAdjustInfoViewController *)self addBulletedListItemWithTitle:v22 description:&stru_286444CA0 symbolName:@"slider.horizontal.below.waveform" tintColor:v25];

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
  v6 = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Next" value:&stru_286444CA0 table:0];

  [v6 setTitle:v4 forState:0];
  [v6 addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  v5 = [(HMHearingAidTimeToAdjustInfoViewController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:1];
}

- (void)updateImage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMHearingAidTimeToAdjustInfoViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];
  v6 = "Light";
  if (v5 == 2)
  {
    v6 = "Dark";
  }

  v7 = [v3 stringWithFormat:@"Calendar-%s", v6];

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:v7 inBundle:v9];

  v12.receiver = self;
  v12.super_class = HMHearingAidTimeToAdjustInfoViewController;
  v11 = [(HMHearingAidTimeToAdjustInfoViewController *)&v12 headerView];
  [v11 setIcon:v10 accessibilityLabel:&stru_286444CA0];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end