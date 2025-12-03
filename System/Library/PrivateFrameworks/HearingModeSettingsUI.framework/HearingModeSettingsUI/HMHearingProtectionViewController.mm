@interface HMHearingProtectionViewController
- (BOOL)isCurrentNoiseModeOffWithDevice:(id)device;
- (BOOL)isPPEEnabled;
- (BOOL)reduceLoudNoiseEnabled;
- (BOOL)shouldShowPPE;
- (id)getHeadphoneAudioSpecifierFooter;
- (id)getSafetyDeviceType;
- (id)reduceLoudNoiseEnabledString;
- (id)setupListenerWithDevice:(id)device;
- (id)specifiers;
- (void)disablePPE;
- (void)enablePPE;
- (void)jumpToHeadphoneSafety;
- (void)openSafetyInformation;
- (void)presentFitTestController:(id)controller;
- (void)setReduceLoudNoiseEnabled:(id)enabled;
- (void)setupPPE;
- (void)submitHPDeviceAnalyticsWithPid:(int64_t)pid lsrValue:(BOOL)value;
- (void)userDidTapLoudSoundReductionLink:(id)link;
- (void)viewDidLoad;
@end

@implementation HMHearingProtectionViewController

- (id)specifiers
{
  v3 = objc_opt_new();
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [mEMORY[0x277CF3248] deviceFromAddressString:self->_address];
  btDevice = self->_btDevice;
  self->_btDevice = v5;

  loudSoundSpecifier = [(HMHearingProtectionViewController *)self loudSoundSpecifier];
  [v3 addObjectsFromArray:loudSoundSpecifier];

  v8 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  headphoneDevice = [(HMHearingProtectionViewController *)self headphoneDevice];
  v10 = [(AnyHearingFeatureContentProvider *)v8 initWithDevice:headphoneDevice];

  if ([(AnyHearingFeatureContentProvider *)v10 featureFlag])
  {
    deviceMarketingName = [(AnyHearingFeatureContentProvider *)v10 deviceMarketingName];
  }

  else
  {
    deviceMarketingName = @"AirPods Pro";
  }

  if ([(AnyHearingFeatureContentProvider *)v10 featureFlag])
  {
    devicePlatformName = [(AnyHearingFeatureContentProvider *)v10 devicePlatformName];
  }

  else
  {
    devicePlatformName = @"AirPods";
  }

  v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FIT_TEST_GROUP_ID"];
  featureTitleSettings = [(AnyHearingFeatureContentProvider *)v10 featureTitleSettings];
  if (!featureTitleSettings)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    featureTitleSettings = [v13 localizedStringForKey:@"Ear Tip Fit Test" value:&stru_28643BDD8 table:0];
  }

  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:featureTitleSettings target:self set:0 get:0 detail:0 cell:13 edit:0];
  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Test the fit of your %@ ear tips to determine which size provides the best protection and sound quality. Properly fitting and functioning %@ are required for Hearing Protection to work as intended." value:&stru_28643BDD8 table:0];
  v18 = [v15 localizedStringWithFormat:v17, deviceMarketingName, devicePlatformName];

  featureFooterSettings = [(AnyHearingFeatureContentProvider *)v10 featureFooterSettings];
  v20 = featureFooterSettings;
  if (featureFooterSettings)
  {
    v21 = featureFooterSettings;
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
    safetySetupSpecifiers = [(HMHearingProtectionViewController *)self safetySetupSpecifiers];
    [v3 addObjectsFromArray:safetySetupSpecifiers];
  }

  aboutSpecifiers = [(HMHearingProtectionViewController *)self aboutSpecifiers];
  [v3 addObjectsFromArray:aboutSpecifiers];

  lineSeparatorSpecifiers = [(HMHearingProtectionViewController *)self lineSeparatorSpecifiers];
  [v3 addObjectsFromArray:lineSeparatorSpecifiers];

  v27 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADPHONE_SAFETY_GROUP_ID"];
  getHeadphoneAudioSpecifierFooter = [(HMHearingProtectionViewController *)self getHeadphoneAudioSpecifierFooter];
  [v27 setObject:getHeadphoneAudioSpecifierFooter forKeyedSubscript:v23];

  [v3 addObject:v27];
  v29 = MEMORY[0x277D3FAD8];
  getSafetyDeviceType = [(HMHearingProtectionViewController *)self getSafetyDeviceType];
  v31 = [v29 preferenceSpecifierNamed:getSafetyDeviceType target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v31 setButtonAction:sel_jumpToHeadphoneSafety];
  [v3 addObject:v31];
  objc_storeStrong((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v3);

  return v3;
}

- (id)getHeadphoneAudioSpecifierFooter
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
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

- (void)presentFitTestController:(id)controller
{
  v4 = [_TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider alloc];
  headphoneDevice = [(HMHearingProtectionViewController *)self headphoneDevice];
  v18 = [(AnyHearingFeatureContentProvider *)v4 initWithDevice:headphoneDevice];

  btDevice = self->_btDevice;
  headphoneDevice2 = [(HMHearingProtectionViewController *)self headphoneDevice];
  v8 = [(AnyHearingFeatureContentProvider *)v18 fitWelcomeControllerWithBluetoothDevice:btDevice contentProvider:headphoneDevice2];

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
  navigationItem = [(HMFitTestWelcomeController *)v11 navigationItem];
  [navigationItem setLeftBarButtonItem:v12];

  v14 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v11];
  navigationBar = [v14 navigationBar];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [navigationBar setBackgroundColor:systemBackgroundColor];

  navigationBar2 = [v14 navigationBar];
  [navigationBar2 _setHidesShadow:1];

  [v14 setModalPresentationStyle:2];
  [(HMHearingProtectionViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)setReduceLoudNoiseEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  v5 = "Off";
  if (bOOLValue)
  {
    v5 = "On";
  }

  NSLog(&cfstr_HearingProtect.isa, v5);
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  [mEMORY[0x277D12DF8] setActiveHearingProtectionEnabled:bOOLValue forAddress:self->_address];
}

- (BOOL)reduceLoudNoiseEnabled
{
  mEMORY[0x277D12DF8] = [MEMORY[0x277D12DF8] sharedInstance];
  LOBYTE(self) = [mEMORY[0x277D12DF8] activeHearingProtectionEnabledForAddress:self->_address];

  return self;
}

- (id)reduceLoudNoiseEnabledString
{
  reduceLoudNoiseEnabled = [(HMHearingProtectionViewController *)self reduceLoudNoiseEnabled];
  v4 = reduceLoudNoiseEnabled;
  v5 = "Off";
  if (reduceLoudNoiseEnabled)
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
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:0];
}

- (void)viewDidLoad
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"bt-address"];
  address = self->_address;
  self->_address = v4;

  v6 = [(NSString *)self->_address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
  connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
  v9 = [connectedHeadphones objectForKeyedSubscript:v6];
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

- (void)userDidTapLoudSoundReductionLink:(id)link
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/guide/airpods/customize-transparency-mode-turn-conversation-dev966f5f818/web"];
  [defaultWorkspace openSensitiveURL:v3 withOptions:0];
}

- (BOOL)isCurrentNoiseModeOffWithDevice:(id)device
{
  deviceCopy = device;
  v4 = sub_252003E70();

  return v4 == 1;
}

- (void)submitHPDeviceAnalyticsWithPid:(int64_t)pid lsrValue:(BOOL)value
{
  v6 = [objc_allocWithZone(sub_252003D10()) init];
  v4 = sub_252004860();
  sub_252003CC0();

  v5 = sub_2520047F0();
  sub_252003CC0();

  sub_252003CD0();
}

- (id)setupListenerWithDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
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
  selfCopy = self;
  HMHearingProtectionViewController.openSafetyInformation()();
}

- (void)setupPPE
{
  type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
  v7 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v8 = &off_28643AF98;
  *&v6 = self;
  selfCopy = self;
  sub_251FE9B20(&v6);
  v4 = v3;
  [(HMHearingProtectionViewController *)selfCopy presentViewController:v3 animated:1 completion:0];
}

- (BOOL)shouldShowPPE
{
  selfCopy = self;
  v3 = HMHearingProtectionViewController.shouldShowPPE()();

  return v3;
}

- (BOOL)isPPEEnabled
{
  selfCopy = self;
  headphoneDevice = [(HMHearingProtectionViewController *)selfCopy headphoneDevice];
  if (headphoneDevice)
  {
    v4 = headphoneDevice;
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
  selfCopy = self;
  HMHearingProtectionViewController.disablePPE()();
}

- (void)enablePPE
{
  selfCopy = self;
  HMHearingProtectionViewController.enablePPE()();
}

@end