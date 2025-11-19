@interface HMHearingProtectionViewController
- (BOOL)isCurrentNoiseModeOffWithDevice:(id)a3;
- (BOOL)isPPEEnabled;
- (BOOL)reduceLoudNoiseEnabled;
- (BOOL)shouldShowPPE;
- (id)getHeadphoneAudioSpecifierFooter;
- (id)getSafetyDeviceType;
- (id)reduceLoudNoiseEnabledString;
- (id)setupListenerWithDevice:(id)a3;
- (id)specifiers;
- (void)disablePPE;
- (void)enablePPE;
- (void)jumpToHeadphoneSafety;
- (void)openSafetyInformation;
- (void)presentFitTestController:(id)a3;
- (void)setReduceLoudNoiseEnabled:(id)a3;
- (void)setupPPE;
- (void)submitHPDeviceAnalyticsWithPid:(int64_t)a3 lsrValue:(BOOL)a4;
- (void)userDidTapLoudSoundReductionLink:(id)a3;
- (void)viewDidLoad;
@end

@implementation HMHearingProtectionViewController

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 deviceFromAddressString:self->_address];
  btDevice = self->_btDevice;
  self->_btDevice = v5;

  v7 = [(HMHearingProtectionViewController *)self loudSoundSpecifier];
  [v3 addObjectsFromArray:v7];

  v8 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  v9 = [(HMHearingProtectionViewController *)self headphoneDevice];
  v10 = [(AnyHearingFeatureContentProvider *)v8 initWithDevice:v9];

  if ([(AnyHearingFeatureContentProvider *)v10 featureFlag])
  {
    v34 = [(AnyHearingFeatureContentProvider *)v10 deviceMarketingName];
  }

  else
  {
    v34 = @"AirPods Pro";
  }

  if ([(AnyHearingFeatureContentProvider *)v10 featureFlag])
  {
    v33 = [(AnyHearingFeatureContentProvider *)v10 devicePlatformName];
  }

  else
  {
    v33 = @"AirPods";
  }

  v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIT_TEST_GROUP_ID"];
  v12 = [(AnyHearingFeatureContentProvider *)v10 featureTitleSettings];
  if (!v12)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"Ear Tip Fit Test" value:&stru_28643BDD8 table:0];
  }

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Test the fit of your %@ ear tips to determine which size provides the best protection and sound quality. Properly fitting and functioning %@ are required for Hearing Protection to work as intended." value:&stru_28643BDD8 table:0];
  v18 = [v15 localizedStringWithFormat:v17, v34, v33];

  v19 = [(AnyHearingFeatureContentProvider *)v10 featureFooterSettings];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D3FF88];
  [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v14 setButtonAction:sel_presentFitTestController_];
  [v3 addObject:v11];
  [v3 addObject:v14];
  if (![(HMHearingProtectionViewController *)self isPPEEnabled]&& [(HMHearingProtectionViewController *)self shouldShowPPE])
  {
    v24 = [(HMHearingProtectionViewController *)self safetySetupSpecifiers];
    [v3 addObjectsFromArray:v24];
  }

  v25 = [(HMHearingProtectionViewController *)self aboutSpecifiers];
  [v3 addObjectsFromArray:v25];

  v26 = [(HMHearingProtectionViewController *)self lineSeparatorSpecifiers];
  [v3 addObjectsFromArray:v26];

  v27 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADPHONE_SAFETY_GROUP_ID"];
  v28 = [(HMHearingProtectionViewController *)self getHeadphoneAudioSpecifierFooter];
  [v27 setObject:v28 forKeyedSubscript:v23];

  [v3 addObject:v27];
  v29 = MEMORY[0x277D3FAD8];
  v30 = [(HMHearingProtectionViewController *)self getSafetyDeviceType];
  v31 = [v29 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v31 setButtonAction:sel_jumpToHeadphoneSafety];
  [v3 addObject:v31];
  objc_storeStrong((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v3);

  return v3;
}

- (id)getHeadphoneAudioSpecifierFooter
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = @"Loud headphone audio can affect your hearing over time. Your iPad can analyze headphone audio and reduce any sound that is over a set decibel level.";
  }

  else
  {
    v6 = @"Loud headphone audio can affect your hearing over time. Your iPhone can analyze headphone audio and reduce any sound that is over a set decibel level.";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28643BDD8 table:0];

  return v7;
}

- (id)getSafetyDeviceType
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = @"Headphone Safety on iPad";
  }

  else
  {
    v6 = @"Headphone Safety on iPhone";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28643BDD8 table:0];

  return v7;
}

- (void)presentFitTestController:(id)a3
{
  v4 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  v5 = [(HMHearingProtectionViewController *)self headphoneDevice];
  v18 = [(AnyHearingFeatureContentProvider *)v4 initWithDevice:v5];

  btDevice = self->_btDevice;
  v7 = [(HMHearingProtectionViewController *)self headphoneDevice];
  v8 = [(AnyHearingFeatureContentProvider *)v18 fitWelcomeControllerWithBluetoothDevice:btDevice contentProvider:v7];

  v9 = [[HMFitTestWelcomeController alloc] initWithHeadphoneDevice:self->_headphoneDevice];
  [(HMFitTestWelcomeController *)v9 setCurrentDevice:self->_btDevice];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelFitTest];
  v13 = [(HMFitTestWelcomeController *)v11 navigationItem];
  [v13 setLeftBarButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v11];
  v15 = [v14 navigationBar];
  v16 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v15 setBackgroundColor:v16];

  v17 = [v14 navigationBar];
  [v17 _setHidesShadow:1];

  [v14 setModalPresentationStyle:2];
  [(HMHearingProtectionViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)setReduceLoudNoiseEnabled:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = "Off";
  if (v4)
  {
    v5 = "On";
  }

  NSLog(&cfstr_HearingProtect.isa, v5);
  v6 = [MEMORY[0x277D12DF8] sharedInstance];
  [v6 setActiveHearingProtectionEnabled:v4 forAddress:self->_address];
}

- (BOOL)reduceLoudNoiseEnabled
{
  v3 = [MEMORY[0x277D12DF8] sharedInstance];
  LOBYTE(self) = [v3 activeHearingProtectionEnabledForAddress:self->_address];

  return self;
}

- (id)reduceLoudNoiseEnabledString
{
  v3 = [(HMHearingProtectionViewController *)self reduceLoudNoiseEnabled];
  v4 = v3;
  v5 = "Off";
  if (v3)
  {
    v5 = "On";
  }

  NSLog(&cfstr_HearingProtect_0.isa, v5);
  if (self->_headphoneDevice)
  {
    NSLog(&cfstr_HearingProtect_1.isa);
    v6 = [(HMHearingProtectionViewController *)self isCurrentNoiseModeOffWithDevice:self->_headphoneDevice];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v6)
    {
      v8 = @"Not Active";
      goto LABEL_10;
    }

    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = @"On";
    goto LABEL_10;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = @"Off";
LABEL_10:
  v9 = [v7 localizedStringForKey:v8 value:&stru_28643BDD8 table:0];

  return v9;
}

- (void)jumpToHeadphoneSafety
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)viewDidLoad
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"bt-address"];
  address = self->_address;
  self->_address = v4;

  v6 = [(NSString *)self->_address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  v7 = [MEMORY[0x277D0FC08] shared];
  v8 = [v7 connectedHeadphones];
  v9 = [v8 objectForKeyedSubscript:v6];
  headphoneDevice = self->_headphoneDevice;
  self->_headphoneDevice = v9;

  if (self->_headphoneDevice)
  {
    NSLog(&cfstr_HearingProtect_2.isa);
    v11 = [(HMHearingProtectionViewController *)self setupListenerWithDevice:self->_headphoneDevice];
    headphoneObserver = self->headphoneObserver;
    self->headphoneObserver = v11;
  }

  v13.receiver = self;
  v13.super_class = HMHearingProtectionViewController;
  [(HMHearingProtectionViewController *)&v13 viewDidLoad];
}

- (void)userDidTapLoudSoundReductionLink:(id)a3
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/guide/airpods/customize-transparency-mode-turn-conversation-dev966f5f818/web"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (BOOL)isCurrentNoiseModeOffWithDevice:(id)a3
{
  v3 = a3;
  v4 = sub_252003E70();

  return v4 == 1;
}

- (void)submitHPDeviceAnalyticsWithPid:(int64_t)a3 lsrValue:(BOOL)a4
{
  v6 = [objc_allocWithZone(sub_252003D10()) init];
  v4 = sub_252004860();
  sub_252003CC0();

  v5 = sub_2520047F0();
  sub_252003CC0();

  sub_252003CD0();
}

- (id)setupListenerWithDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  HMHearingProtectionViewController.setupListener(device:)(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7, v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_252004B70();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)openSafetyInformation
{
  v2 = self;
  HMHearingProtectionViewController.openSafetyInformation()();
}

- (void)setupPPE
{
  type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
  v7 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v8 = &off_28643AF98;
  *&v6 = self;
  v5 = self;
  sub_251FE9B20(&v6);
  v4 = v3;
  [(HMHearingProtectionViewController *)v5 presentViewController:v3 animated:1 completion:0];
}

- (BOOL)shouldShowPPE
{
  v2 = self;
  v3 = HMHearingProtectionViewController.shouldShowPPE()();

  return v3;
}

- (BOOL)isPPEEnabled
{
  v2 = self;
  v3 = [(HMHearingProtectionViewController *)v2 headphoneDevice];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252003E60();

    LODWORD(v4) = sub_252004190();
    return v4 == 1;
  }

  else
  {

    return 0;
  }
}

- (void)disablePPE
{
  v2 = self;
  HMHearingProtectionViewController.disablePPE()();
}

- (void)enablePPE
{
  v2 = self;
  HMHearingProtectionViewController.enablePPE()();
}

@end