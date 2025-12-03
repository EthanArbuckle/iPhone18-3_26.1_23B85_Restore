@interface HearingModeUIService
+ (BOOL)shouldShowFeatureForDevice:(id)device;
- (BOOL)_getHearingAssist;
- (BOOL)_showOcclusionDetectionPlacard;
- (BOOL)featureCapable;
- (BOOL)shouldShowHearingAid;
- (BOOL)shouldShowHearingProtection;
- (BOOL)shouldShowHearingTest;
- (HearingModeUIService)initWithDevice:(id)device;
- (HearingModeUIService)initWithDeviceAddress:(id)address;
- (HearingModeUIServiceDelegate)delegate;
- (id)_getHearingAssistPayload:(id)payload device:(id)device inUsecase:(int64_t)usecase;
- (id)decoratedSpecifiers:(id)specifiers device:(id)device;
- (id)enrollmentViewController;
- (id)getHearingAidLink:(id)link;
- (id)getHearingAidMode;
- (id)getHearingAidModeString;
- (id)getHearingAidString:(id)string;
- (id)occlusionDetectionSpecifiers;
- (id)specifiers;
- (void)_showOcclusionTutorial;
- (void)configHearingModeClient;
- (void)dealloc;
- (void)hearingTestTapped;
- (void)presentCapabilityAlertForHearingAssistance:(BOOL)assistance device:(id)device;
- (void)presentHearingAssistWelcomeFlow;
- (void)setHearingAidMode:(id)mode;
- (void)setTopLevelCellClass:(id)class;
- (void)submitHADeviceAnalyticsWithEnrolled:(int64_t)enrolled;
- (void)userDidTapHearingHealthLearnMore:(id)more;
@end

@implementation HearingModeUIService

+ (BOOL)shouldShowFeatureForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    v4 = deviceCopy;
    hearingAidSupport = [v4 hearingAidSupport];
    if (hearingAidSupport)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    address = [v4 address];

    NSLog(&cfstr_HearingAidShou.isa, v6, address, v6, "YES");
  }

  else
  {
    NSLog(&cfstr_HearingAidFeat.isa);
    LOBYTE(hearingAidSupport) = 0;
  }

  return hearingAidSupport;
}

- (BOOL)featureCapable
{
  shouldShowHearingAid = [(HearingModeUIService *)self shouldShowHearingAid];
  shouldShowHearingProtection = [(HearingModeUIService *)self shouldShowHearingProtection];
  shouldShowHearingTest = [(HearingModeUIService *)self shouldShowHearingTest];
  v6 = shouldShowHearingTest;
  v7 = "NO";
  if (shouldShowHearingAid)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (shouldShowHearingProtection)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if (shouldShowHearingTest)
  {
    v7 = "YES";
  }

  NSLog(&cfstr_Featurecapable.isa, self->_address, v8, v9, v7);
  return shouldShowHearingAid || shouldShowHearingProtection || v6;
}

- (HearingModeUIService)initWithDevice:(id)device
{
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = HearingModeUIService;
  v6 = [(HearingModeUIService *)&v24 init];
  if (v6)
  {
    NSLog(&cfstr_HearingAidHkCh.isa);
    [MEMORY[0x277CCD258] checkCurrentCountry];
    objc_storeStrong(&v6->_device, device);
    address = [(BluetoothDevice *)v6->_device address];
    address = v6->_address;
    v6->_address = address;

    v9 = objc_alloc_init(_TtC21HearingModeSettingsUI20HMHearingTestService);
    hearingTestService = v6->_hearingTestService;
    v6->_hearingTestService = v9;

    [(HearingModeUIService *)v6 configHearingModeClient];
    address2 = [(BluetoothDevice *)v6->_device address];
    v12 = [address2 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

    mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
    connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
    v15 = [connectedHeadphones objectForKeyedSubscript:v12];
    headphoneDevice = v6->_headphoneDevice;
    v6->_headphoneDevice = v15;

    v17 = [_TtC21HearingModeSettingsUI27HearingAssistFlowController alloc];
    v18 = v6->_headphoneDevice;
    hmsClient = [(HearingModeUIService *)v6 hmsClient];
    v20 = [(HearingAssistFlowController *)v17 initWithDevice:v18 serviceClient:hmsClient flow:0];
    hearingAssistFlowController = v6->_hearingAssistFlowController;
    v6->_hearingAssistFlowController = v20;

    if (!v6->_headphoneDevice)
    {
      NSLog(&cfstr_HearingAidNoHe.isa);

      v22 = 0;
      goto LABEL_6;
    }
  }

  v22 = v6;
LABEL_6:

  return v22;
}

- (HearingModeUIService)initWithDeviceAddress:(id)address
{
  addressCopy = address;
  v12.receiver = self;
  v12.super_class = HearingModeUIService;
  v6 = [(HearingModeUIService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_address, address);
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    v9 = [mEMORY[0x277CF3248] deviceFromAddressString:addressCopy];
    device = v7->_device;
    v7->_device = v9;
  }

  return v7;
}

- (id)occlusionDetectionSpecifiers
{
  if ([(HearingModeUIService *)self _showOcclusionDetectionPlacard])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Occlusion Detection" value:&stru_28643BDD8 table:0];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v7 setIdentifier:@"OCCLUSION_DETECTION_ID"];
    [(HearingModeUIService *)self setTopLevelCellClass:v7];
    v8 = [(HearingModeUIService *)self _getOcclusionPayload:self->_address device:self->_headphoneDevice inUsecase:1];
    [v7 setUserInfo:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v9 addObject:v7];
    v10 = [(HearingModeUIService *)self decoratedSpecifiers:v9 device:self->_headphoneDevice];
    v11 = MEMORY[0x277D3FAD8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"More Information…" value:&stru_28643BDD8 table:0];
    v14 = [v11 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v14 setButtonAction:sel__showOcclusionTutorial];
    [v3 addObjectsFromArray:v10];
    [v3 addObject:v14];
  }

  else
  {
    NSLog(&cfstr_OcclusionNotDe.isa);
    v3 = 0;
  }

  return v3;
}

- (id)specifiers
{
  v48[1] = *MEMORY[0x277D85DE8];
  shouldShowHearingAid = [(HearingModeUIService *)self shouldShowHearingAid];
  shouldShowHearingProtection = [(HearingModeUIService *)self shouldShowHearingProtection];
  shouldShowHearingTest = [(HearingModeUIService *)self shouldShowHearingTest];
  v6 = shouldShowHearingTest;
  v7 = "NO";
  if (shouldShowHearingAid)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (shouldShowHearingProtection)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if (shouldShowHearingTest)
  {
    v7 = "YES";
  }

  NSLog(&cfstr_SpecifiersForS.isa, self->_address, v8, v9, v7);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!shouldShowHearingAid && !shouldShowHearingProtection && !v6)
  {
    NSLog(&cfstr_HearingAidRetu.isa, self->_address);
    v11 = v10;
    goto LABEL_21;
  }

  v12 = MEMORY[0x277D3FAD8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Hearing Health" value:&stru_28643BDD8 table:0];
  v15 = [v12 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v16 = [(HearingModeUIService *)self getHearingAidString:self->_address];
  [v15 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v15 setProperty:v18 forKey:*MEMORY[0x277D3FF48]];

  [v15 setProperty:v16 forKey:*MEMORY[0x277D3FF70]];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"Learn more…" value:&stru_28643BDD8 table:0];
  v50.location = [v16 rangeOfString:v20];
  v21 = NSStringFromRange(v50);
  [v15 setProperty:v21 forKey:*MEMORY[0x277D3FF58]];

  v22 = 0x277D3F000uLL;
  v23 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v15 setProperty:v23 forKey:*MEMORY[0x277D3FF68]];

  [v15 setProperty:@"userDidTapHearingHealthLearnMore:" forKey:*MEMORY[0x277D3FF50]];
  [v15 setIdentifier:@"HEARING_GROUP_ID"];
  [v10 addObject:v15];
  if (shouldShowHearingProtection)
  {
    v34 = MEMORY[0x277D3FAD8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"Hearing Protection" value:&stru_28643BDD8 table:0];
    v37 = [v34 preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:objc_opt_class() cell:-1 edit:0];

    [v37 setIdentifier:@"HEARING_PROTECTION_ID"];
    [(HearingModeUIService *)self setTopLevelCellClass:v37];
    v38 = [(HearingModeUIService *)self _getHearingProtectionPayload:self->_address device:self->_headphoneDevice inUsecase:1];
    [v37 setUserInfo:v38];

    [v10 addObject:v37];
    if (!shouldShowHearingAid)
    {
LABEL_15:
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if (!shouldShowHearingAid)
  {
    goto LABEL_15;
  }

  hearingAidEnrolled = [(BluetoothDevice *)self->_device hearingAidEnrolled];
  v40 = "NO";
  if (hearingAidEnrolled)
  {
    v40 = "YES";
  }

  NSLog(&cfstr_HearingAidEnro.isa, v40);
  v41 = MEMORY[0x277D3FAD8];
  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"Hearing Assistance" value:&stru_28643BDD8 table:0];
  if (hearingAidEnrolled)
  {
    v22 = 0x277D3F000;
    v44 = [v41 preferenceSpecifierNamed:v43 target:self set:0 get:sel_getHearingAidModeString detail:objc_opt_class() cell:-1 edit:0];

    [(HearingModeUIService *)self setTopLevelCellClass:v44];
    v45 = [(HearingModeUIService *)self _getHearingAssistPayload:self->_address device:self->_headphoneDevice inUsecase:3];
    [v44 setUserInfo:v45];

    [v44 setIdentifier:@"HEARING_ASSIST_ID"];
  }

  else
  {
    v44 = [v41 preferenceSpecifierNamed:v43 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v44 setButtonAction:sel_presentHearingAssistWelcomeFlow];
    [v44 setIdentifier:@"HEARING_ASSIST_ID"];
    [(HearingModeUIService *)self setTopLevelCellClass:v44];
    v46 = [(HearingModeUIService *)self _getHearingAssistPayload:self->_address device:self->_headphoneDevice inUsecase:2];
    [v44 setUserInfo:v46];
  }

  [v10 addObject:v44];

  [(HearingModeUIService *)self submitHADeviceAnalyticsWithEnrolled:hearingAidEnrolled];
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_16:
  v24 = *(v22 + 2776);
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"Take a Hearing Test" value:&stru_28643BDD8 table:0];
  v27 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v27 setButtonAction:sel_hearingTestTapped];
  [v27 setIdentifier:@"HEARING_TEST_ID"];
  [v10 addObject:v27];

LABEL_17:
  if (IsAppleInternalBuild() && +[HearingAidUtils isHearingAidInternalEnabled])
  {
    v28 = [*(v22 + 2776) preferenceSpecifierNamed:@"Hearing Aid Internal" target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v28 setIdentifier:@"HEARING_INTERNAL_GROUP_ID"];
    [v10 addObject:v28];
    v29 = [*(v22 + 2776) preferenceSpecifierNamed:@"Hearing Aid Internal" target:self set:0 get:0 detail:objc_opt_class() cell:-1 edit:0];
    address = self->_address;
    v47 = @"bt-address";
    v48[0] = address;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v29 setUserInfo:v31];

    [v29 setIdentifier:@"HEARING_INTERNAL_ID"];
    [v10 addObject:v29];
  }

  v11 = [(HearingModeUIService *)self decoratedSpecifiers:v10 device:self->_headphoneDevice];

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)userDidTapHearingHealthLearnMore:(id)more
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [(HearingModeUIService *)self getHearingAidLink:self->_address];
  v6 = [v4 URLWithString:v5];
  [defaultWorkspace openSensitiveURL:v6 withOptions:0];
}

- (BOOL)shouldShowHearingAid
{
  if (_os_feature_enabled_impl())
  {
    if (([(BluetoothDevice *)self->_device hearingAidSupport]& 1) != 0 || [(BluetoothDevice *)self->_device productId]== 8212 || [(BluetoothDevice *)self->_device productId]== 8228)
    {
      v3 = "YES";
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v3 = "NO";
    }

    address = [(BluetoothDevice *)self->_device address];
    NSLog(&cfstr_HearingAidShou_0.isa, v3, address);
  }

  else
  {
    NSLog(&cfstr_HearingAidFeat.isa);
    return 0;
  }

  return v4;
}

- (id)getHearingAidModeString
{
  _getHearingAssist = [(HearingModeUIService *)self _getHearingAssist];
  v3 = "Disabled";
  if (_getHearingAssist)
  {
    v3 = "Enabled";
    v4 = @"On";
  }

  else
  {
    v4 = @"Off";
  }

  NSLog(&cfstr_HearingAidGetH.isa, v3);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_28643BDD8 table:0];

  return v6;
}

- (id)getHearingAidMode
{
  _getHearingAssist = [(HearingModeUIService *)self _getHearingAssist];
  v3 = "Disabled";
  if (_getHearingAssist)
  {
    v3 = "Enabled";
  }

  NSLog(&cfstr_HearingAidGetH.isa, v3);
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:_getHearingAssist];
}

- (void)setHearingAidMode:(id)mode
{
  bOOLValue = [mode BOOLValue];
  v5 = "Disabled";
  if (bOOLValue)
  {
    v5 = "Enabled";
  }

  NSLog(&cfstr_HearingAidSetH.isa, v5);
  [(BluetoothDevice *)self->_device setHearingAidEnabled:bOOLValue];
  device = self->_device;

  [(BluetoothDevice *)device setListeningMode:3];
}

- (void)presentHearingAssistWelcomeFlow
{
  delegate = [(HearingModeUIService *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (([(BluetoothDevice *)self->_device hearingAidSupport]& 1) != 0)
    {
      delegate2 = [(HearingModeUIService *)self delegate];
      flowContainerController = [(HearingAssistFlowController *)self->_hearingAssistFlowController flowContainerController];
      [delegate2 presentViewController:flowContainerController];
    }

    else
    {
      headphoneDevice = self->_headphoneDevice;

      [(HearingModeUIService *)self presentCapabilityAlertForHearingAssistance:1 device:headphoneDevice];
    }
  }
}

- (BOOL)shouldShowHearingTest
{
  if (_os_feature_enabled_impl())
  {
    if (([(BluetoothDevice *)self->_device hearingAidSupport]& 1) != 0 || [(BluetoothDevice *)self->_device productId]== 8212 || [(BluetoothDevice *)self->_device productId]== 8228)
    {
      v3 = "YES";
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v3 = "NO";
    }

    address = [(BluetoothDevice *)self->_device address];
    NSLog(&cfstr_HearingTestSho.isa, v3, address);
  }

  else
  {
    NSLog(&cfstr_HearingTestFea.isa);
    return 0;
  }

  return v4;
}

- (id)enrollmentViewController
{
  v3 = objc_alloc(MEMORY[0x277D12C18]);
  address = [(BluetoothDevice *)self->_device address];
  v5 = [v3 initWithDeviceAddress:address withAudiogramSample:0];

  v6 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];

  return v6;
}

- (void)dealloc
{
  NSLog(&cfstr_Hearingmodeuis.isa, a2);
  [(HMServiceClient *)self->_hmsClient invalidate];
  v3.receiver = self;
  v3.super_class = HearingModeUIService;
  [(HearingModeUIService *)&v3 dealloc];
}

- (HearingModeUIServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configHearingModeClient
{
  selfCopy = self;
  HearingModeUIService.configHearingModeClient()();
}

- (id)decoratedSpecifiers:(id)specifiers device:(id)device
{
  sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
  v6 = sub_2520047B0();
  deviceCopy = device;
  selfCopy = self;
  HearingModeUIService.decoratedSpecifiers(_:device:)(v6);

  v9 = sub_2520047A0();

  return v9;
}

- (BOOL)_showOcclusionDetectionPlacard
{
  selfCopy = self;
  v3 = HearingModeUIService._showOcclusionDetectionPlacard()();

  return v3;
}

- (id)_getHearingAssistPayload:(id)payload device:(id)device inUsecase:(int64_t)usecase
{
  v8 = sub_2520046E0();
  v10 = v9;
  deviceCopy = device;
  selfCopy = self;
  HearingModeUIService._getHearingAssistPayload(_:device:inUsecase:)(v8, v10, deviceCopy, usecase);

  v13 = sub_252004600();

  return v13;
}

- (void)_showOcclusionTutorial
{
  selfCopy = self;
  HearingModeUIService._showOcclusionTutorial()();
}

- (void)hearingTestTapped
{
  selfCopy = self;
  HearingModeUIService.hearingTestTapped()();
}

- (BOOL)_getHearingAssist
{
  selfCopy = self;
  Hearing = HearingModeUIService._getHearingAssist()();

  return Hearing;
}

- (void)presentCapabilityAlertForHearingAssistance:(BOOL)assistance device:(id)device
{
  assistanceCopy = assistance;
  deviceCopy = device;
  selfCopy = self;
  HearingModeUIService.presentCapabilityAlert(forHearingAssistance:device:)(assistanceCopy, deviceCopy);
}

- (void)submitHADeviceAnalyticsWithEnrolled:(int64_t)enrolled
{
  selfCopy = self;
  HearingModeUIService.submitHADeviceAnalytics(enrolled:)(enrolled);
}

- (id)getHearingAidString:(id)string
{
  v4 = sub_2520046E0();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  HearingModeUIService.getHearingAidString(_:)(v8);

  v9 = sub_2520046B0();

  return v9;
}

- (id)getHearingAidLink:(id)link
{
  sub_2520046E0();
  selfCopy = self;
  _sSo20HearingModeUIServiceC0aB10SettingsUIE03getA7AidLinkyS2SF_0();

  v5 = sub_2520046B0();

  return v5;
}

- (void)setTopLevelCellClass:(id)class
{
  sub_2520042F0();
  classCopy = class;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC0, &unk_2520077E0);
  [classCopy setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  swift_unknownObjectRelease();
}

- (BOOL)shouldShowHearingProtection
{
  selfCopy = self;
  v3 = HearingModeUIService.shouldShowHearingProtection()();

  return v3;
}

@end