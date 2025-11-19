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
  v3 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
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

  v11 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  v13 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  [v12 addSubview:v13];

  v14 = [MEMORY[0x277D75348] clearColor];
  v15 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  [v15 setBackgroundColor:v14];

  v29 = MEMORY[0x277CCAAD0];
  v38 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  v36 = [v38 leadingAnchor];
  v37 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  v31 = [v33 trailingAnchor];
  v32 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  v30 = [v32 trailingAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v41[1] = v28;
  v27 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  v16 = [v27 topAnchor];
  v17 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  v18 = [v17 topAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v41[2] = v19;
  v20 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self micaView];
  v21 = [v20 bottomAnchor];
  v22 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self contentView];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v41[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v29 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateButtonTray
{
  v6 = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Done" value:&stru_286444CA0 table:0];

  [v6 setTitle:v4 forState:0];
  [v6 addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  v5 = [(HMHearingAidAdjustSoundInControlCenterViewController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)mainButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completeStep:4];
}

- (void)addControlCenterModule
{
  v3 = [objc_alloc(MEMORY[0x277CFC850]) initWithIntent:2 moduleIdentifier:@"com.apple.accessibility.controlcenter.hearingdevices" containerBundleIdentifier:@"com.apple.Preferences" size:0];
  v2 = [MEMORY[0x277CFC830] sharedInstance];
  [v2 handleIconElementRequest:v3 completionHandler:&__block_literal_global];
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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end