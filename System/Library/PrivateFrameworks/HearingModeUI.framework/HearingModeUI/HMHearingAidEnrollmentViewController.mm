@interface HMHearingAidEnrollmentViewController
- (HMHearingAidEnrollmentViewController)initWithBluetoothUUID:(id)d withAudiogramSample:(id)sample;
- (HMHearingAidEnrollmentViewController)initWithDeviceAddress:(id)address withAudiogramSample:(id)sample;
- (HearingAidEnrollmentDelegate)hearingAidEnrollmentDelegate;
- (id)_cancelButtonBarButton;
- (id)getInvalidAudiograms;
- (id)getValidAudiograms;
- (void)completeStep:(int)step;
- (void)dismissHearingAidEnrollment;
- (void)enrollHearingAid;
- (void)initAudiogramSample:(id)sample;
- (void)initHearingModeService;
- (void)moveToStep:(int)step;
- (void)selectAudiogram:(id)audiogram;
- (void)showInstructionForUse;
- (void)updateAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms;
- (void)viewDidLoad;
@end

@implementation HMHearingAidEnrollmentViewController

- (HMHearingAidEnrollmentViewController)initWithBluetoothUUID:(id)d withAudiogramSample:(id)sample
{
  dCopy = d;
  sampleCopy = sample;
  if (dCopy)
  {
    mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
    connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__HMHearingAidEnrollmentViewController_initWithBluetoothUUID_withAudiogramSample___block_invoke;
    v23[3] = &unk_2796F3CE8;
    v11 = dCopy;
    v24 = v11;
    v12 = [connectedHeadphones bs_filter:v23];
    allValues = [v12 allValues];
    firstObject = [allValues firstObject];
    headphoneDevice = self->_headphoneDevice;
    self->_headphoneDevice = firstObject;

    NSLog(&cfstr_HearingAidInit.isa, v11);
    v22.receiver = self;
    v22.super_class = HMHearingAidEnrollmentViewController;
    v16 = [(HMHearingAidEnrollmentViewController *)&v22 initWithTitle:@"Hearing Aid Enrollment" detailText:0 icon:0];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_uuid, d);
      v18 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:v11];
      device = v17->_device;
      v17->_device = v18;

      [(HMHearingAidEnrollmentViewController *)v17 initAudiogramSample:sampleCopy];
    }

    self = v17;

    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_HearingAidCann.isa);
    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __82__HMHearingAidEnrollmentViewController_initWithBluetoothUUID_withAudiogramSample___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cbDevice];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (HMHearingAidEnrollmentViewController)initWithDeviceAddress:(id)address withAudiogramSample:(id)sample
{
  addressCopy = address;
  sampleCopy = sample;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:addressCopy];

  if (v8)
  {
    v9 = [(HMHearingAidEnrollmentViewController *)self initWithBluetoothUUID:addressCopy withAudiogramSample:sampleCopy];
  }

  else
  {
    if (!addressCopy)
    {
      NSLog(&cfstr_HearingAidCann_0.isa);
      v20 = 0;
      goto LABEL_8;
    }

    NSLog(&cfstr_HearingAidInit_0.isa, addressCopy);
    v22.receiver = self;
    v22.super_class = HMHearingAidEnrollmentViewController;
    v10 = [(HMHearingAidEnrollmentViewController *)&v22 initWithTitle:@"Hearing Aid Enrollment" detailText:0 icon:0];
    if (v10)
    {
      v11 = [addressCopy stringByReplacingOccurrencesOfString:@"-" withString:@":"];
      address = v10->_address;
      v10->_address = v11;

      v13 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:addressCopy];
      device = v10->_device;
      v10->_device = v13;

      v15 = [addressCopy stringByReplacingOccurrencesOfString:@":" withString:@"-"];
      mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
      connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
      v18 = [connectedHeadphones objectForKeyedSubscript:v15];
      headphoneDevice = v10->_headphoneDevice;
      v10->_headphoneDevice = v18;

      [(HMHearingAidEnrollmentViewController *)v10 initAudiogramSample:sampleCopy];
    }

    v9 = v10;
  }

  self = v9;
  v20 = v9;
LABEL_8:

  return v20;
}

- (void)initAudiogramSample:(id)sample
{
  sampleCopy = sample;
  if (sampleCopy)
  {
    NSLog(&cfstr_HearingAidAudi.isa);
    v4 = sampleCopy;
    selectedAudiogram = self->_selectedAudiogram;
    self->_selectedAudiogram = v4;
    v6 = 1;
  }

  else
  {
    NSLog(&cfstr_HearingAidAudi_0.isa);
    v6 = 0;
    selectedAudiogram = self->_selectedAudiogram;
    self->_selectedAudiogram = 0;
  }

  self->audiogramPassedIn = v6;
  [(HMHearingAidEnrollmentViewController *)self initHearingModeService];
}

- (void)initHearingModeService
{
  NSLog(&cfstr_HearingAidInit_1.isa, a2);
  v3 = objc_alloc_init(MEMORY[0x277D12B98]);
  hearingModeClient = self->_hearingModeClient;
  self->_hearingModeClient = v3;

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke;
  v8[3] = &unk_2796F3D10;
  objc_copyWeak(&v9, &location);
  [(HMServiceClient *)self->_hearingModeClient setAudiogramsAvailableHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke_2;
  v7[3] = &unk_2796F3D38;
  v7[4] = self;
  [(HMServiceClient *)self->_hearingModeClient setDeviceRecordChangedHandler:v7];
  v5 = self->_hearingModeClient;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke_3;
  v6[3] = &unk_2796F3D60;
  v6[4] = self;
  [(HMServiceClient *)v5 activateWithCompletion:v6];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  if (a4)
  {
    NSLog(&cfstr_HearingAidCann_1.isa);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateAudiograms:v9 invalidAudiograms:v7];
  }
}

void __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  NSLog(&cfstr_HearingAidDevi.isa, v11);
  v3 = *(*(a1 + 32) + 1224);
  v4 = [v11 bluetoothAddress];
  if ([v3 isEqualToString:v4])
  {
  }

  else
  {
    v5 = *(*(a1 + 32) + 1232);
    v6 = [v11 bluetoothUUID];
    LODWORD(v5) = [v5 isEqualToString:v6];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v7 = [v11 bluetoothUUID];
  NSLog(&cfstr_HearingAidUpda.isa, v7);

  v8 = [v11 bluetoothUUID];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1248);
  *(v9 + 1248) = v8;

LABEL_5:
}

void __62__HMHearingAidEnrollmentViewController_initHearingModeService__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_HearingAidFail.isa, a2);
    [*(*(a1 + 32) + 1320) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1320);
    *(v3 + 1320) = 0;
  }

  else
  {
    NSLog(&cfstr_HearingAidOkTo.isa);
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HMHearingAidEnrollmentViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(HMHearingAidEnrollmentViewController *)self moveToStep:0];
}

- (void)dismissHearingAidEnrollment
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HearingModeUpdated" object:0];

  navigationController = [(HMHearingAidEnrollmentViewController *)self navigationController];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v6 isEqualToString:@"HKNavigationController"];

  if (v7)
  {
    NSLog(&cfstr_HearingAidSubm.isa);
    v8 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
    [v8 updateKeyWithKey:0 value:{-[BluetoothDevice productId](self->_device, "productId")}];

    v9 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
    [v9 submitEvent];
  }

  navigationController2 = [(HMHearingAidEnrollmentViewController *)self navigationController];
  [navigationController2 dismissViewControllerAnimated:1 completion:&__block_literal_global_1];
}

- (void)enrollHearingAid
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277D12B78]);
  [v4 setSelectedAudiogram:self->_selectedAudiogram];
  hearingModeClient = self->_hearingModeClient;
  deviceIdentifier = self->_deviceIdentifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke;
  v8[3] = &unk_2796F3D88;
  v8[4] = self;
  v9 = v3;
  v7 = v3;
  [(HMServiceClient *)hearingModeClient modifyDeviceConfig:v4 identifier:deviceIdentifier completion:v8];
}

void __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = "Failed";
  if (!a2)
  {
    v3 = "Succeeded";
  }

  NSLog(&cfstr_HearingAidAudi_1.isa, v3);
  v4 = objc_alloc_init(MEMORY[0x277D12B78]);
  [v4 setEnrollHearingAssist:1];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 1320);
  v8 = *(v6 + 1248);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_2;
  v9[3] = &unk_2796F3D88;
  v9[4] = v6;
  v10 = v5;
  [v7 modifyDeviceConfig:v4 identifier:v8 completion:v9];
}

void __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = "Failed";
  if (!a2)
  {
    v3 = "Succeeded";
  }

  NSLog(&cfstr_HearingAidEnro_0.isa, v3);
  v4 = objc_alloc_init(MEMORY[0x277D12B78]);
  [v4 setEnableHearingAid:1];
  [v4 setEnableSwipeGain:2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 1320);
  v8 = *(v6 + 1248);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_3;
  v9[3] = &unk_2796F3D88;
  v9[4] = v6;
  v10 = v5;
  [v7 modifyDeviceConfig:v4 identifier:v8 completion:v9];
}

void __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = "Failed";
  if (!a2)
  {
    v4 = "Succeeded";
  }

  NSLog(&cfstr_HearingAidEnab.isa, v4);
  if (!a2)
  {
    [*(*(a1 + 32) + 1240) setListeningMode:3];
  }

  v5 = objc_alloc_init(MEMORY[0x277D12B78]);
  [v5 setEnablePMEMedia:1];
  [v5 setEnablePMEVoice:1];
  [v5 setEnableMediaAssist:1];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1320);
  v8 = *(v6 + 1248);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_4;
  v9[3] = &unk_2796F3D60;
  v10 = *(a1 + 40);
  [v7 modifyDeviceConfig:v5 identifier:v8 completion:v9];
}

void __56__HMHearingAidEnrollmentViewController_enrollHearingAid__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = "Failed";
  if (a2)
  {
    v4 = 12;
  }

  else
  {
    v3 = "Succeeded";
    v4 = 11;
  }

  NSLog(&cfstr_HearingAidPmeC.isa, v3);
  v5 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
  [v5 updateKeyWithKey:4 value:v4];

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)moveToStep:(int)step
{
  v54[4] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_HearingAidMove.isa, a2, step);
  if (step <= 1)
  {
    if (step)
    {
      if (step == 1)
      {
        if (!self->_adjustModeInfoViewController)
        {
          v10 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:self->_headphoneDevice];
          v11 = [[HMHearingAidTimeToAdjustInfoViewController alloc] initWithContentProvider:v10];
          adjustModeInfoViewController = self->_adjustModeInfoViewController;
          self->_adjustModeInfoViewController = v11;

          [(HMHearingAidTimeToAdjustInfoViewController *)self->_adjustModeInfoViewController setDelegate:self];
        }

        navigationController = [(HMHearingAidEnrollmentViewController *)self navigationController];
        [navigationController pushViewController:self->_adjustModeInfoViewController animated:1];

        v8 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
        v52 = v8;
        v9 = 8;
        goto LABEL_18;
      }
    }

    else
    {
      if (!self->_hearingAidIntroViewController)
      {
        v53 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:self->_headphoneDevice];
        v23 = [[HMHearingAidIntroViewController alloc] initWithContentProvider:v53];
        hearingAidIntroViewController = self->_hearingAidIntroViewController;
        self->_hearingAidIntroViewController = v23;

        [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController setDelegate:self];
        [(HMHearingAidEnrollmentViewController *)self addChildViewController:self->_hearingAidIntroViewController];
        [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController didMoveToParentViewController:self];
        view = [(HMHearingAidEnrollmentViewController *)self view];
        view2 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        [view addSubview:view2];

        v42 = MEMORY[0x277CCAAD0];
        view3 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        topAnchor = [view3 topAnchor];
        view4 = [(HMHearingAidEnrollmentViewController *)self view];
        topAnchor2 = [view4 topAnchor];
        v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v54[0] = v47;
        view5 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        heightAnchor = [view5 heightAnchor];
        view6 = [(HMHearingAidEnrollmentViewController *)self view];
        heightAnchor2 = [view6 heightAnchor];
        v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v54[1] = v41;
        view7 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        leadingAnchor = [view7 leadingAnchor];
        view8 = [(HMHearingAidEnrollmentViewController *)self view];
        leadingAnchor2 = [view8 leadingAnchor];
        v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v54[2] = v30;
        view9 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        trailingAnchor = [view9 trailingAnchor];
        view10 = [(HMHearingAidEnrollmentViewController *)self view];
        trailingAnchor2 = [view10 trailingAnchor];
        v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v54[3] = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
        [v42 activateConstraints:v36];
      }

      v37 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
      [v37 updateKeyWithKey:4 value:7];

      v38 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
      [v38 updateKeyWithKey:5 value:1];
    }

    goto LABEL_27;
  }

  if (step == 2)
  {
    if (!self->_setupCompleteViewController)
    {
      v14 = [HMHearingAidSetupCompleteViewController alloc];
      name = [(BluetoothDevice *)self->_device name];
      v16 = [(HMHearingAidSetupCompleteViewController *)v14 initWithDeviceName:name];
      setupCompleteViewController = self->_setupCompleteViewController;
      self->_setupCompleteViewController = v16;

      [(HMHearingAidSetupCompleteViewController *)self->_setupCompleteViewController setDelegate:self];
    }

    if (!self->_instructionForUseViewController)
    {
      v18 = objc_alloc_init(HMHearingAidInstructionsForUseViewController);
      instructionForUseViewController = self->_instructionForUseViewController;
      self->_instructionForUseViewController = &v18->super.super;
    }

    navigationController2 = [(HMHearingAidEnrollmentViewController *)self navigationController];
    [navigationController2 pushViewController:self->_setupCompleteViewController animated:1];

    v8 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
    v52 = v8;
    v9 = 9;
    goto LABEL_18;
  }

  if (step != 3)
  {
    if (step == 4)
    {
      if (!self->_adjustSoundInfoViewController)
      {
        v5 = objc_alloc_init(HMHearingAidAdjustSoundInControlCenterViewController);
        adjustSoundInfoViewController = self->_adjustSoundInfoViewController;
        self->_adjustSoundInfoViewController = v5;

        [(HMHearingAidAdjustSoundInControlCenterViewController *)self->_adjustSoundInfoViewController setDelegate:self];
      }

      navigationController3 = [(HMHearingAidEnrollmentViewController *)self navigationController];
      [navigationController3 pushViewController:self->_adjustSoundInfoViewController animated:1];

      v8 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
      v52 = v8;
      v9 = 10;
LABEL_18:
      [v8 updateKeyWithKey:4 value:v9];
      v21 = *MEMORY[0x277D85DE8];

      return;
    }

LABEL_27:
    v39 = *MEMORY[0x277D85DE8];
    return;
  }

  v22 = *MEMORY[0x277D85DE8];

  [(HMHearingAidEnrollmentViewController *)self dismissHearingAidEnrollment];
}

- (void)completeStep:(int)step
{
  NSLog(&cfstr_HearingAidComp.isa, a2, step);
  if (step < 2)
  {
    v5 = (step + 1);
    selfCopy2 = self;
  }

  else
  {
    if ((step - 3) < 2)
    {

      [(HMHearingAidEnrollmentViewController *)self dismissHearingAidEnrollment];
      return;
    }

    if (step != 2)
    {
      return;
    }

    [(HMHearingAidEnrollmentViewController *)self enrollHearingAid];
    selfCopy2 = self;
    v5 = 4;
  }

  [(HMHearingAidEnrollmentViewController *)selfCopy2 moveToStep:v5];
}

- (void)updateAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms
{
  audiogramsCopy = audiograms;
  invalidAudiogramsCopy = invalidAudiograms;
  NSLog(&cfstr_HearingAidUpda_0.isa);
  validAudiograms = self->_validAudiograms;
  self->_validAudiograms = audiogramsCopy;
  v10 = audiogramsCopy;

  invalidAudiograms = self->_invalidAudiograms;
  self->_invalidAudiograms = invalidAudiogramsCopy;
}

- (id)getValidAudiograms
{
  NSLog(&cfstr_HearingAidGetV.isa, a2);
  validAudiograms = self->_validAudiograms;

  return validAudiograms;
}

- (id)getInvalidAudiograms
{
  NSLog(&cfstr_HearingAidGetI.isa, a2);
  invalidAudiograms = self->_invalidAudiograms;

  return invalidAudiograms;
}

- (void)selectAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  v5 = [(HKAudiogramSample *)audiogramCopy description];
  NSLog(&cfstr_HearingAidSetA.isa, v5);

  selectedAudiogram = self->_selectedAudiogram;
  self->_selectedAudiogram = audiogramCopy;
}

- (void)showInstructionForUse
{
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_instructionForUseViewController];
  navigationController = [(HMHearingAidEnrollmentViewController *)self navigationController];
  [navigationController presentViewController:v4 animated:1 completion:0];
}

- (id)_cancelButtonBarButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelHearingAidEnrollment];

  return v2;
}

- (HearingAidEnrollmentDelegate)hearingAidEnrollmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hearingAidEnrollmentDelegate);

  return WeakRetained;
}

@end