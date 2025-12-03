@interface HMHearingAidAdjustSoundInControlCenterViewController
- (BOOL)isiPad;
- (HMHearingAidAdjustSoundInControlCenterViewController)init;
- (HMHearingAidEnrollmentDelegate)delegate;
- (void)addControlCenterModule;
- (void)mainButtonTapped;
- (void)updateButtonTray;
- (void)viewDidLoad;
@end

@implementation HMHearingAidAdjustSoundInControlCenterViewController

- (HMHearingAidAdjustSoundInControlCenterViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"You Can Make Adjustments in Control Center" value:&stru_286444CA0 table:0];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Swipe down from the top right of your iPhone value:then tap the ear icon and adjust the sliders." table:{&stru_286444CA0, 0}];

  v9.receiver = self;
  v9.super_class = HMHearingAidAdjustSoundInControlCenterViewController;
  v7 = [(HMHearingAidAdjustSoundInControlCenterViewController *)&v9 initWithTitle:v4 detailText:v6 icon:0 contentLayout:1];

  return v7;
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HMHearingAidAdjustSoundInControlCenterViewController;
  [(OBBaseWelcomeController *)&v40 viewDidLoad];
  [(HMHearingAidAdjustSoundInControlCenterViewController *)self updateButtonTray];
  [(HMHearingAidAdjustSoundInControlCenterViewController *)self addControlCenterModule];
  traitCollection = [(HMHearingAidAdjustSoundInControlCenterViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v5 = @"dark";
  }

  else
  {
    v5 = @"light";
  }

  v6 = [@"Control_Center_Yodel_4_" stringByAppendingString:v5];
  if ([(HMHearingAidAdjustSoundInControlCenterViewController *)self isiPad])
  {
    v7 = @"_iPad";
  }

  else
  {
    v7 = &stru_286444CA0;
  }

  v39 = [v6 stringByAppendingString:v7];

  v8 = objc_alloc(MEMORY[0x277CF0D48]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 initWithPackageName:v39 inBundle:v9];
  [(HMHearingAidAdjustSoundInControlCenterViewController *)self setMicaView:v10];

  micaView = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  [micaView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  micaView2 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  [contentView addSubview:micaView2];

  clearColor = [MEMORY[0x277D75348] clearColor];
  contentView2 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  [contentView2 setBackgroundColor:clearColor];

  v29 = MEMORY[0x277CCAAD0];
  micaView3 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  leadingAnchor = [micaView3 leadingAnchor];
  contentView3 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v34;
  micaView4 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  trailingAnchor = [micaView4 trailingAnchor];
  contentView4 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v28;
  micaView5 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  topAnchor = [micaView5 topAnchor];
  contentView5 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v19;
  micaView6 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  bottomAnchor = [micaView6 bottomAnchor];
  contentView6 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v29 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Done" value:&stru_286444CA0 table:0];

  [boldButton setTitle:v4 forState:0];
  [boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  buttonTray = [(HMHearingAidAdjustSoundInControlCenterViewController *)self buttonTray];
  [buttonTray addButton:boldButton];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:4];
}

- (void)addControlCenterModule
{
  v3 = [objc_alloc(MEMORY[0x277CFC850]) initWithIntent:2 moduleIdentifier:@"com.apple.accessibility.controlcenter.hearingdevices" containerBundleIdentifier:@"com.apple.Preferences" size:0];
  mEMORY[0x277CFC830] = [MEMORY[0x277CFC830] sharedInstance];
  [mEMORY[0x277CFC830] handleIconElementRequest:v3 completionHandler:&__block_literal_global];
}

void __78__HMHearingAidAdjustSoundInControlCenterViewController_addControlCenterModule__block_invoke(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = [a3 localizedDescription];
    NSLog(&cfstr_HearingAidAddc.isa, v4);
  }
}

- (BOOL)isiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end