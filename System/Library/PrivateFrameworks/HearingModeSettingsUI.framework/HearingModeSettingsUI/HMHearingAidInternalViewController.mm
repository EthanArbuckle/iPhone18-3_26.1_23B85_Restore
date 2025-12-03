@interface HMHearingAidInternalViewController
- (id)hearingAidEnrolled;
- (id)specifiers;
- (void)faultCheckCancelled:(id)cancelled;
- (void)faultCheckCompleted:(id)completed;
- (void)faultCheckCompleted:(id)completed status:(unint64_t)status;
- (void)fitNoiseCheckCancelled:(id)cancelled;
- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status;
- (void)hearingAidEnrollmentCancelled:(id)cancelled;
- (void)hearingAidEnrollmentCompleted:(id)completed status:(unint64_t)status;
- (void)presentFitTestAnimationViewTester;
- (void)pushEnrollmentViewControllerWithDevice;
- (void)pushEnrollmentViewControllerWithDeviceAndAudiogramSample;
- (void)pushFaultCheckViewController;
- (void)pushFaultCheckViewControllerForFailedResult;
- (void)pushFaultCheckViewControllerForUnknownResult;
- (void)pushFitNoiseCheckViewController;
- (void)pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample;
- (void)resetOcclusionData;
- (void)setHearingAidEnrolled:(id)enrolled;
- (void)viewDidLoad;
@end

@implementation HMHearingAidInternalViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HMHearingAidInternalViewController;
  [(HMHearingAidInternalViewController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v33[1] = *MEMORY[0x277D85DE8];
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"bt-address"];
  address = self->_address;
  self->_address = v4;

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v7 = [mEMORY[0x277CF3248] deviceFromAddressString:self->_address];
  device = self->_device;
  self->_device = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Hearing Aid Enrollment" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v9 addObject:v31];
  v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Hearing Aid Enrolled" target:self set:sel_setHearingAidEnrolled_ get:sel_hearingAidEnrolled detail:0 cell:6 edit:0];
  [v9 addObject:v30];
  v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enroll with Device" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v29 setButtonAction:sel_pushEnrollmentViewControllerWithDevice];
  [v9 addObject:v29];
  v28 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enroll with Device & Audiogram Sample" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v28 setButtonAction:sel_pushEnrollmentViewControllerWithDeviceAndAudiogramSample];
  [v9 addObject:v28];
  v27 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Enroll Media Assist with Device & Audiogram Sample" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v27 setButtonAction:sel_pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample];
  [v9 addObject:v27];
  v26 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Fit Noise Check" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v9 addObject:v26];
  v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Fit Noise Check" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v10 setButtonAction:sel_pushFitNoiseCheckViewController];
  [v9 addObject:v10];
  v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Fault Check" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v9 addObject:v25];
  v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Fault Check" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v11 setButtonAction:sel_pushFaultCheckViewController];
  [v9 addObject:v11];
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Fit Test Animation Tester" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v12 setButtonAction:sel_presentFitTestAnimationViewTester];
  [v9 addObject:v12];
  v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Occlusion" target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v9 addObject:v13];
  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Occlusion Test" target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  v15 = self->_address;
  v32 = @"bt-address";
  v33[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  [v14 setUserInfo:v16];

  [v9 addObject:v14];
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Reset history" target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v17 setButtonAction:sel_resetOcclusionData];
  [v9 addObject:v17];
  v18 = *MEMORY[0x277D3FC48];
  v19 = *(&self->super.super.super.super.super.isa + v18);
  *(&self->super.super.super.super.super.isa + v18) = v9;
  v20 = v9;

  v21 = *(&self->super.super.super.super.super.isa + v18);
  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)hearingAidEnrolled
{
  v2 = MEMORY[0x277CCABB0];
  hearingAidEnrolled = [(BluetoothDevice *)self->_device hearingAidEnrolled];

  return [v2 numberWithBool:hearingAidEnrolled];
}

- (void)setHearingAidEnrolled:(id)enrolled
{
  bOOLValue = [enrolled BOOLValue];
  device = self->_device;

  [(BluetoothDevice *)device setHearingAidEnrolled:bOOLValue];
}

- (void)pushEnrollmentViewControllerWithDevice
{
  v5 = [objc_alloc(MEMORY[0x277D12C18]) initWithDeviceAddress:self->_address withAudiogramSample:0];
  [v5 setHearingAidEnrollmentDelegate:self];
  v3 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];
  NSLog(&cfstr_HearingAidEnro_2.isa, v3);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController presentViewController:v3 animated:1 completion:0];
}

- (void)pushEnrollmentViewControllerWithDeviceAndAudiogramSample
{
  v3 = [objc_alloc(MEMORY[0x277D12B90]) initWithDeviceAddress:self->_address];
  hearingModeService = self->_hearingModeService;
  self->_hearingModeService = v3;

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __94__HMHearingAidInternalViewController_pushEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke;
  v8 = &unk_2796F1D98;
  objc_copyWeak(&v9, &location);
  [(HMEnrollmentService *)self->_hearingModeService setAudiogramsAvailableHandler:&v5];
  [(HMEnrollmentService *)self->_hearingModeService activate:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __94__HMHearingAidInternalViewController_pushEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    NSLog(&cfstr_HearingAidCann.isa);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v23 + 1) + 8 * v11) description];
          NSLog(&cfstr_HearingAidVali_0.isa, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    if (v7 && [v7 count])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v14 = objc_alloc(MEMORY[0x277D12C18]);
      v15 = WeakRetained[182];
      v16 = [v7 objectAtIndexedSubscript:0];
      v17 = [v14 initWithDeviceAddress:v15 withAudiogramSample:v16];

      [v17 setHearingAidEnrollmentDelegate:WeakRetained];
      v18 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v17];
      NSLog(&cfstr_HearingAidEnro_2.isa, v18);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__HMHearingAidInternalViewController_pushEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke_2;
      block[3] = &unk_2796F1D70;
      block[4] = WeakRetained;
      v22 = v18;
      v19 = v18;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      NSLog(&cfstr_HearingAidNoVa.isa);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __94__HMHearingAidInternalViewController_pushEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample
{
  v3 = [objc_alloc(MEMORY[0x277D12B90]) initWithDeviceAddress:self->_address];
  hearingModeService = self->_hearingModeService;
  self->_hearingModeService = v3;

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __105__HMHearingAidInternalViewController_pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke;
  v8 = &unk_2796F1D98;
  objc_copyWeak(&v9, &location);
  [(HMEnrollmentService *)self->_hearingModeService setAudiogramsAvailableHandler:&v5];
  [(HMEnrollmentService *)self->_hearingModeService activate:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __105__HMHearingAidInternalViewController_pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    NSLog(&cfstr_MediaAssistCan.isa);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v23 + 1) + 8 * v11) description];
          NSLog(&cfstr_MediaAssistVal.isa, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    if (v7 && [v7 count])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v14 = objc_alloc_init(_TtC21HearingModeSettingsUI33_HearingAidInternalViewController);
      v15 = WeakRetained[182];
      v16 = [v7 objectAtIndexedSubscript:0];
      v17 = [(_HearingAidInternalViewController *)v14 makeMediaAssistViewControllerWithAddress:v15 audiogramSample:v16];

      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v17];
        NSLog(&cfstr_MediaAssistPre.isa, v18);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __105__HMHearingAidInternalViewController_pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke_2;
        block[3] = &unk_2796F1D70;
        block[4] = WeakRetained;
        v22 = v18;
        v19 = v18;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        NSLog(&cfstr_MediaAssistInv.isa);
      }
    }

    else
    {
      NSLog(&cfstr_MediaAssistNoV.isa);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __105__HMHearingAidInternalViewController_pushMediaAssistEnrollmentViewControllerWithDeviceAndAudiogramSample__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)pushFitNoiseCheckViewController
{
  [MEMORY[0x277D12C08] prepareFitTest];
  v3 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMHearingAidInternalViewController_pushFitNoiseCheckViewController__block_invoke;
  block[3] = &unk_2796F1DC0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __69__HMHearingAidInternalViewController_pushFitNoiseCheckViewController__block_invoke(uint64_t a1)
{
  v5 = [objc_alloc(MEMORY[0x277D12C08]) initWithDeviceAddress:*(*(a1 + 32) + 1456)];
  v2 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];
  [v2 setModalPresentationStyle:2];
  [v5 setFitNoiseCheckDelegate:*(a1 + 32)];
  v3 = [*(a1 + 32) navigationController];
  NSLog(&cfstr_FitNoiseCheckP.isa, v5, v3);

  v4 = [*(a1 + 32) navigationController];
  [v4 presentViewController:v2 animated:1 completion:0];
}

- (void)presentFitTestAnimationViewTester
{
  v5 = objc_alloc_init(HMTestFitNoiseCheckTopViewController);
  v3 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];
  [v3 setModalPresentationStyle:2];
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController presentViewController:v3 animated:1 completion:0];
}

- (void)pushFaultCheckViewController
{
  v4 = [objc_alloc(MEMORY[0x277D12BF8]) initWithDeviceAddress:self->_address];
  [v4 setFaultCheckDelegate:self];
  NSLog(&cfstr_FaultCheckForF.isa, v4);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)pushFaultCheckViewControllerForFailedResult
{
  v4 = [objc_alloc(MEMORY[0x277D12BF8]) initWithDeviceAddress:self->_address withResult:0];
  [v4 setFaultCheckDelegate:self];
  NSLog(&cfstr_FaultCheckForF.isa, v4);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)pushFaultCheckViewControllerForUnknownResult
{
  v4 = [objc_alloc(MEMORY[0x277D12BF8]) initWithDeviceAddress:self->_address withResult:1];
  [v4 setFaultCheckDelegate:self];
  NSLog(&cfstr_FaultCheckForU.isa, v4);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)hearingAidEnrollmentCompleted:(id)completed status:(unint64_t)status
{
  NSLog(&cfstr_HearingAidEnro_3.isa, a2, status, completed);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)hearingAidEnrollmentCancelled:(id)cancelled
{
  NSLog(&cfstr_HearingAidEnro_4.isa, a2, cancelled);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)fitNoiseCheckCompleted:(id)completed status:(unint64_t)status
{
  NSLog(&cfstr_FitNoiseCheckC.isa, a2, status, completed);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)fitNoiseCheckCancelled:(id)cancelled
{
  NSLog(&cfstr_FitNoiseCheckC_0.isa, a2, cancelled);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)faultCheckCompleted:(id)completed status:(unint64_t)status
{
  NSLog(&cfstr_FaultCheckComp.isa, a2, status, completed);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)faultCheckCompleted:(id)completed
{
  NSLog(&cfstr_FaultCheckComp_0.isa, a2, completed);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)faultCheckCancelled:(id)cancelled
{
  NSLog(&cfstr_FaultCheckCanc.isa, a2, cancelled);
  navigationController = [(HMHearingAidInternalViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)resetOcclusionData
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:@"reset-occlusion-counts" forKeyedSubscript:@"msg-identifier"];
  [v8 setObject:self->_address forKeyedSubscript:@"bt-address"];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.HearingModeService" object:0 userInfo:v8 options:2];

  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reset occlusion history!"];
  v6 = [v4 alertControllerWithTitle:@"Reset Occlusion History" message:v5 preferredStyle:0];

  v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Done" style:1 handler:0];
  [v6 addAction:v7];
  [(HMHearingAidInternalViewController *)self presentViewController:v6 animated:1 completion:0];
}

@end