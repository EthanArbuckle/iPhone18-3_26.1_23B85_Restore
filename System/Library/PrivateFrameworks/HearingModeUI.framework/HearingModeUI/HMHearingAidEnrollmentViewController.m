@interface HMHearingAidEnrollmentViewController
- (HMHearingAidEnrollmentViewController)initWithBluetoothUUID:(id)a3 withAudiogramSample:(id)a4;
- (HMHearingAidEnrollmentViewController)initWithDeviceAddress:(id)a3 withAudiogramSample:(id)a4;
- (HearingAidEnrollmentDelegate)hearingAidEnrollmentDelegate;
- (id)_cancelButtonBarButton;
- (id)getInvalidAudiograms;
- (id)getValidAudiograms;
- (void)completeStep:(int)a3;
- (void)dismissHearingAidEnrollment;
- (void)enrollHearingAid;
- (void)initAudiogramSample:(id)a3;
- (void)initHearingModeService;
- (void)moveToStep:(int)a3;
- (void)selectAudiogram:(id)a3;
- (void)showInstructionForUse;
- (void)updateAudiograms:(id)a3 invalidAudiograms:(id)a4;
- (void)viewDidLoad;
@end

@implementation HMHearingAidEnrollmentViewController

- (HMHearingAidEnrollmentViewController)initWithBluetoothUUID:(id)a3 withAudiogramSample:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [MEMORY[0x277D0FC08] shared];
    v10 = [v9 connectedHeadphones];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__HMHearingAidEnrollmentViewController_initWithBluetoothUUID_withAudiogramSample___block_invoke;
    v23[3] = &unk_2796F3CE8;
    v11 = v7;
    v24 = v11;
    v12 = [v10 bs_filter:v23];
    v13 = [v12 allValues];
    v14 = [v13 firstObject];
    headphoneDevice = self->_headphoneDevice;
    self->_headphoneDevice = v14;

    NSLog(&cfstr_HearingAidInit.isa, v11);
    v22.receiver = self;
    v22.super_class = HMHearingAidEnrollmentViewController;
    v16 = [(HMHearingAidEnrollmentViewController *)&v22 initWithTitle:@"Hearing Aid Enrollment" detailText:0 icon:0];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_uuid, a3);
      v18 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:v11];
      device = v17->_device;
      v17->_device = v18;

      [(HMHearingAidEnrollmentViewController *)v17 initAudiogramSample:v8];
    }

    self = v17;

    v20 = self;
  }

  else
  {
    NSLog(&cfstr_HearingAidCann.isa);
    v20 = 0;
  }

  return v20;
}

uint64_t __82__HMHearingAidEnrollmentViewController_initWithBluetoothUUID_withAudiogramSample___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cbDevice];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (HMHearingAidEnrollmentViewController)initWithDeviceAddress:(id)a3 withAudiogramSample:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];

  if (v8)
  {
    v9 = [(HMHearingAidEnrollmentViewController *)self initWithBluetoothUUID:v6 withAudiogramSample:v7];
  }

  else
  {
    if (!v6)
    {
      NSLog(&cfstr_HearingAidCann_0.isa);
      v20 = 0;
      goto LABEL_8;
    }

    NSLog(&cfstr_HearingAidInit_0.isa, v6);
    v22.receiver = self;
    v22.super_class = HMHearingAidEnrollmentViewController;
    v10 = [(HMHearingAidEnrollmentViewController *)&v22 initWithTitle:@"Hearing Aid Enrollment" detailText:0 icon:0];
    if (v10)
    {
      v11 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@":"];
      address = v10->_address;
      v10->_address = v11;

      v13 = [HearingAidUtils getBluetoothDeviceFromAddressOrUUID:v6];
      device = v10->_device;
      v10->_device = v13;

      v15 = [v6 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
      v16 = [MEMORY[0x277D0FC08] shared];
      v17 = [v16 connectedHeadphones];
      v18 = [v17 objectForKeyedSubscript:v15];
      headphoneDevice = v10->_headphoneDevice;
      v10->_headphoneDevice = v18;

      [(HMHearingAidEnrollmentViewController *)v10 initAudiogramSample:v7];
    }

    v9 = v10;
  }

  self = v9;
  v20 = v9;
LABEL_8:

  return v20;
}

- (void)initAudiogramSample:(id)a3
{
  v7 = a3;
  if (v7)
  {
    NSLog(&cfstr_HearingAidAudi.isa);
    v4 = v7;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"HearingModeUpdated" object:0];

  v4 = [(HMHearingAidEnrollmentViewController *)self navigationController];
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

  v10 = [(HMHearingAidEnrollmentViewController *)self navigationController];
  [v10 dismissViewControllerAnimated:1 completion:&__block_literal_global_1];
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

- (void)moveToStep:(int)a3
{
  v54[4] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_HearingAidMove.isa, a2, a3);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (!self->_adjustModeInfoViewController)
        {
          v10 = [[_TtC13HearingModeUI32AnyHearingFeatureContentProvider alloc] initWithDevice:self->_headphoneDevice];
          v11 = [[HMHearingAidTimeToAdjustInfoViewController alloc] initWithContentProvider:v10];
          adjustModeInfoViewController = self->_adjustModeInfoViewController;
          self->_adjustModeInfoViewController = v11;

          [(HMHearingAidTimeToAdjustInfoViewController *)self->_adjustModeInfoViewController setDelegate:self];
        }

        v13 = [(HMHearingAidEnrollmentViewController *)self navigationController];
        [v13 pushViewController:self->_adjustModeInfoViewController animated:1];

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
        v25 = [(HMHearingAidEnrollmentViewController *)self view];
        v26 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        [v25 addSubview:v26];

        v42 = MEMORY[0x277CCAAD0];
        v51 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        v49 = [v51 topAnchor];
        v50 = [(HMHearingAidEnrollmentViewController *)self view];
        v48 = [v50 topAnchor];
        v47 = [v49 constraintEqualToAnchor:v48];
        v54[0] = v47;
        v46 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        v44 = [v46 heightAnchor];
        v45 = [(HMHearingAidEnrollmentViewController *)self view];
        v43 = [v45 heightAnchor];
        v41 = [v44 constraintEqualToAnchor:v43];
        v54[1] = v41;
        v40 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        v27 = [v40 leadingAnchor];
        v28 = [(HMHearingAidEnrollmentViewController *)self view];
        v29 = [v28 leadingAnchor];
        v30 = [v27 constraintEqualToAnchor:v29];
        v54[2] = v30;
        v31 = [(HMHearingAidIntroViewController *)self->_hearingAidIntroViewController view];
        v32 = [v31 trailingAnchor];
        v33 = [(HMHearingAidEnrollmentViewController *)self view];
        v34 = [v33 trailingAnchor];
        v35 = [v32 constraintEqualToAnchor:v34];
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

  if (a3 == 2)
  {
    if (!self->_setupCompleteViewController)
    {
      v14 = [HMHearingAidSetupCompleteViewController alloc];
      v15 = [(BluetoothDevice *)self->_device name];
      v16 = [(HMHearingAidSetupCompleteViewController *)v14 initWithDeviceName:v15];
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

    v20 = [(HMHearingAidEnrollmentViewController *)self navigationController];
    [v20 pushViewController:self->_setupCompleteViewController animated:1];

    v8 = +[_TtC13HearingModeUI25EnrollmentAnalyticManager shared];
    v52 = v8;
    v9 = 9;
    goto LABEL_18;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      if (!self->_adjustSoundInfoViewController)
      {
        v5 = objc_alloc_init(HMHearingAidAdjustSoundInControlCenterViewController);
        adjustSoundInfoViewController = self->_adjustSoundInfoViewController;
        self->_adjustSoundInfoViewController = v5;

        [(HMHearingAidAdjustSoundInControlCenterViewController *)self->_adjustSoundInfoViewController setDelegate:self];
      }

      v7 = [(HMHearingAidEnrollmentViewController *)self navigationController];
      [v7 pushViewController:self->_adjustSoundInfoViewController animated:1];

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

- (void)completeStep:(int)a3
{
  NSLog(&cfstr_HearingAidComp.isa, a2, a3);
  if (a3 < 2)
  {
    v5 = (a3 + 1);
    v6 = self;
  }

  else
  {
    if ((a3 - 3) < 2)
    {

      [(HMHearingAidEnrollmentViewController *)self dismissHearingAidEnrollment];
      return;
    }

    if (a3 != 2)
    {
      return;
    }

    [(HMHearingAidEnrollmentViewController *)self enrollHearingAid];
    v6 = self;
    v5 = 4;
  }

  [(HMHearingAidEnrollmentViewController *)v6 moveToStep:v5];
}

- (void)updateAudiograms:(id)a3 invalidAudiograms:(id)a4
{
  v6 = a3;
  v7 = a4;
  NSLog(&cfstr_HearingAidUpda_0.isa);
  validAudiograms = self->_validAudiograms;
  self->_validAudiograms = v6;
  v10 = v6;

  invalidAudiograms = self->_invalidAudiograms;
  self->_invalidAudiograms = v7;
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

- (void)selectAudiogram:(id)a3
{
  v4 = a3;
  v5 = [(HKAudiogramSample *)v4 description];
  NSLog(&cfstr_HearingAidSetA.isa, v5);

  selectedAudiogram = self->_selectedAudiogram;
  self->_selectedAudiogram = v4;
}

- (void)showInstructionForUse
{
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_instructionForUseViewController];
  v3 = [(HMHearingAidEnrollmentViewController *)self navigationController];
  [v3 presentViewController:v4 animated:1 completion:0];
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