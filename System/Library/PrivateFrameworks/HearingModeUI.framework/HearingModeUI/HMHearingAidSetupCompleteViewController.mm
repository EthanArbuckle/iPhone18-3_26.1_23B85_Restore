@interface HMHearingAidSetupCompleteViewController
- (HMHearingAidEnrollmentDelegate)delegate;
- (HMHearingAidSetupCompleteViewController)initWithDeviceName:(id)name;
- (void)_showInstructionsForUse;
- (void)linkButtonTapped;
- (void)mainButtonTapped;
- (void)updateButtonTray;
- (void)updateImage;
- (void)viewDidLoad;
@end

@implementation HMHearingAidSetupCompleteViewController

- (HMHearingAidSetupCompleteViewController)initWithDeviceName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Hearing Aid is Ready" value:&stru_286444CA0 table:0];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"If you ever feel your hearing is getting worse value:you feel pain table:{or you’re getting dizzy, talk to your doctor.", &stru_286444CA0, 0}];

  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"HearingAssistEarDone-Light" inBundle:v10];

  v16.receiver = self;
  v16.super_class = HMHearingAidSetupCompleteViewController;
  v12 = [(HMHearingAidSetupCompleteViewController *)&v16 initWithTitle:v6 detailText:v8 icon:v11];
  if (v12)
  {
    v13 = [nameCopy copy];
    deviceName = v12->_deviceName;
    v12->_deviceName = v13;
  }

  return v12;
}

- (void)viewDidLoad
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMHearingAidSetupCompleteViewController;
  [(OBBaseWelcomeController *)&v12 viewDidLoad];
  [(HMHearingAidSetupCompleteViewController *)self updateImage];
  objc_initWeak(&location, self);
  v13[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __54__HMHearingAidSetupCompleteViewController_viewDidLoad__block_invoke;
  v9 = &unk_2796F3CA0;
  objc_copyWeak(&v10, &location);
  v4 = [(HMHearingAidSetupCompleteViewController *)self registerForTraitChanges:v3 withHandler:&v6];

  [(HMHearingAidSetupCompleteViewController *)self updateButtonTray:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__HMHearingAidSetupCompleteViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateImage];
}

- (void)updateButtonTray
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Hearing Aid will be used instead of Headphone Accommodations for %@" value:&stru_286444CA0 table:0];
  deviceName = [(HMHearingAidSetupCompleteViewController *)self deviceName];
  v16 = [v3 localizedStringWithFormat:v5, deviceName];

  buttonTray = [(HMHearingAidSetupCompleteViewController *)self buttonTray];
  [buttonTray setCaptionText:v16];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Turn On Hearing Aid" value:&stru_286444CA0 table:0];

  [boldButton setTitle:v10 forState:0];
  [boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  buttonTray2 = [(HMHearingAidSetupCompleteViewController *)self buttonTray];
  [buttonTray2 addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Not Now" value:&stru_286444CA0 table:0];

  [linkButton setTitle:v14 forState:0];
  [linkButton addTarget:self action:sel_linkButtonTapped forControlEvents:64];
  buttonTray3 = [(HMHearingAidSetupCompleteViewController *)self buttonTray];
  [buttonTray3 addButton:linkButton];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:2];
}

- (void)linkButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:3];
}

- (void)_showInstructionsForUse
{
  delegate = [(HMHearingAidSetupCompleteViewController *)self delegate];
  [delegate showInstructionForUse];
}

- (void)updateImage
{
  v3 = MEMORY[0x277CCACA8];
  traitCollection = [(HMHearingAidSetupCompleteViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v6 = "Light";
  if (userInterfaceStyle == 2)
  {
    v6 = "Dark";
  }

  v7 = [v3 stringWithFormat:@"HearingAssistEarDone-%s", v6];

  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:v7 inBundle:v9];

  v12.receiver = self;
  v12.super_class = HMHearingAidSetupCompleteViewController;
  headerView = [(HMHearingAidSetupCompleteViewController *)&v12 headerView];
  [headerView setIcon:v10 accessibilityLabel:&stru_286444CA0];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end