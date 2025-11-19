@interface HMFitNoiseCheckViewController
+ (void)prepareFitTest;
- (FitNoiseCheckDelegate)fitNoiseCheckDelegate;
- (HMFitNoiseCheckViewController)initWithDeviceAddress:(id)a3;
- (void)continueButtonTapped;
- (void)setupPlayer;
- (void)startListeningForNoiseLevelChange;
- (void)stopListeningForNoiseLevelChange;
- (void)updateButtonTray;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HMFitNoiseCheckViewController

- (HMFitNoiseCheckViewController)initWithDeviceAddress:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Find a quiet place where you can focus and take the test." value:&stru_286444CA0 table:0];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Too much background noise can cause inaccurate results in your test." value:&stru_286444CA0 table:0];

  v30.receiver = self;
  v30.super_class = HMFitNoiseCheckViewController;
  v10 = [(HMFitNoiseCheckViewController *)&v30 initWithTitle:v7 detailText:v9 icon:0 contentLayout:1];
  if (v10)
  {
    NSLog(&cfstr_FitNoiseCheckI.isa, v5);
    objc_storeStrong(&v10->_deviceAddress, a3);
    v11 = [MEMORY[0x277CF3248] sharedInstance];
    v12 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v13 = [MEMORY[0x277D0FC08] shared];
    v14 = [v13 connectedHeadphones];
    v15 = [v14 objectForKeyedSubscript:v12];
    headphoneDevice = v10->_headphoneDevice;
    v10->_headphoneDevice = v15;

    if (!v10->_headphoneDevice)
    {
      v17 = [MEMORY[0x277D0FC08] shared];
      v18 = [v17 connectedHeadphones];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__HMFitNoiseCheckViewController_initWithDeviceAddress___block_invoke;
      v28[3] = &unk_2796F3CE8;
      v29 = v5;
      v19 = [v18 bs_filter:v28];
      v20 = [v19 allValues];
      v21 = [v20 firstObject];
      v22 = v10->_headphoneDevice;
      v10->_headphoneDevice = v21;
    }

    v23 = objc_alloc_init(_TtC13HearingModeUI19HMNoiseCheckService);
    noiseCheckService = v10->_noiseCheckService;
    v10->_noiseCheckService = v23;

    v25 = [[_TtC13HearingModeUI22HMFitNoiseCheckTopView alloc] initWithService:v10->_noiseCheckService hpDevice:v10->_headphoneDevice];
    fitNoiseCheckTopView = v10->_fitNoiseCheckTopView;
    v10->_fitNoiseCheckTopView = v25;
  }

  return v10;
}

uint64_t __55__HMFitNoiseCheckViewController_initWithDeviceAddress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cbDevice];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = HMFitNoiseCheckViewController;
  [(HMHearingTitle2BaseWelcomeController *)&v22 viewDidLoad];
  v3 = [(HMFitNoiseCheckViewController *)self contentView];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckDelegate];
  [(OBWelcomeController *)self fitNoiseSetupCancelButtonWithFitDelegate:v5];

  v6 = [(HMFitNoiseCheckViewController *)self contentView];
  v7 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckTopView];
  [v6 addSubview:v7];

  v8 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckTopView];
  v9 = [(HMFitNoiseCheckViewController *)self contentView];
  [v8 pinToOther:v9];

  v10 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckTopView];
  [v10 transitionToNoiseNudging];

  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckTopView];
  [v12 setBackgroundColor:v11];

  v13 = [MEMORY[0x277D37638] accessoryButton];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Show Suggestions To Reduce Noise" value:&stru_286444CA0 table:0];
  [v13 setTitle:v15 forState:0];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D750C8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__HMFitNoiseCheckViewController_viewDidLoad__block_invoke;
  v19[3] = &unk_2796F3DB0;
  objc_copyWeak(&v20, &location);
  v19[4] = self;
  v17 = [v16 actionWithHandler:v19];
  [v13 addAction:v17 forControlEvents:64];

  v18 = [(HMFitNoiseCheckViewController *)self headerView];
  [v18 addAccessoryButton:v13];

  [(HMFitNoiseCheckViewController *)self updateButtonTray];
  [(HMFitNoiseCheckViewController *)self setupPlayer];
  [(HMFitNoiseCheckViewController *)self startListeningForNoiseLevelChange];
  [(HMFitNoiseCheckViewController *)self setModalInPresentation:1];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __44__HMFitNoiseCheckViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showAirpodsNoiseReductionControllerWithHeadphoneDevice:*(*(a1 + 32) + 1232)];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMFitNoiseCheckViewController_viewDidDisappear___block_invoke;
  block[3] = &unk_2796F3DD8;
  block[4] = self;
  dispatch_async(v4, block);
}

void *__50__HMFitNoiseCheckViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1240);
  if (result)
  {
    return [result stop];
  }

  return result;
}

- (void)setupPlayer
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"E+D-US_ML" ofType:@"wav"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CB83F8] sharedInstance];
  v20 = 0;
  [v6 setActive:1 error:&v20];
  v7 = v20;

  if (v7)
  {
    NSLog(&cfstr_NoisePreCheckS.isa, v7);
  }

  else
  {
    v8 = [MEMORY[0x277CB83F8] sharedInstance];
    v9 = *MEMORY[0x277CB8030];
    v19 = 0;
    [v8 setCategory:v9 error:&v19];
    v7 = v19;

    if (v7)
    {
      NSLog(&cfstr_NoisePreCheckS_0.isa, v7);
    }

    else
    {
      v10 = [MEMORY[0x277CB83F8] sharedInstance];
      v11 = *MEMORY[0x277CB80C0];
      v18 = 0;
      [v10 setMode:v11 error:&v18];
      v12 = v18;

      if (v12)
      {
        NSLog(&cfstr_NoisePreCheckS_1.isa, v12);
      }

      v17 = v12;
      v13 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:v5 error:&v17];
      v7 = v17;

      player = self->_player;
      self->_player = v13;

      [(AVAudioPlayer *)self->_player setNumberOfLoops:-1];
      [(AVAudioPlayer *)self->_player prepareToPlay];
      NSLog(&cfstr_NoisePreCheckS_2.isa);
      v15 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__HMFitNoiseCheckViewController_setupPlayer__block_invoke;
      block[3] = &unk_2796F3DD8;
      block[4] = self;
      dispatch_async(v15, block);
    }
  }
}

void *__44__HMFitNoiseCheckViewController_setupPlayer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1240);
  if (result)
  {
    [result setVolume:0.0];
    [*(*(a1 + 32) + 1240) setCurrentTime:0.0];
    v3 = *(*(a1 + 32) + 1240);

    return [v3 play];
  }

  return result;
}

- (void)updateButtonTray
{
  v6 = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Next" value:&stru_286444CA0 table:0];

  [v6 setTitle:v4 forState:0];
  [v6 addTarget:self action:sel_continueButtonTapped forControlEvents:64];
  [v6 setEnabled:0];
  v5 = [(HMFitNoiseCheckViewController *)self buttonTray];
  [v5 addButton:v6];
}

- (void)continueButtonTapped
{
  NSLog(&cfstr_FitNoiseCheckC.isa, a2);
  v3 = [_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController alloc];
  v4 = [(HMFitNoiseCheckViewController *)self fitNoiseCheckDelegate];
  v7 = [(FitNoiseAirpodPlacementVideoController *)v3 initWithNoiseDelegate:v4 btAddress:self->_deviceAddress hpDevice:self->_headphoneDevice];

  v5 = [(HMFitNoiseCheckViewController *)self navigationController];
  NSLog(&cfstr_FitNoiseCheckP.isa, v7, v5);

  v6 = [(HMFitNoiseCheckViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (FitNoiseCheckDelegate)fitNoiseCheckDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fitNoiseCheckDelegate);

  return WeakRetained;
}

+ (void)prepareFitTest
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_252064864();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_252064844();
  v7 = sub_252064834();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_25205276C(0, 0, v5, &unk_2520689C8, v8);
}

- (void)startListeningForNoiseLevelChange
{
  v2 = self;
  HMFitNoiseCheckViewController.startListeningForNoiseLevelChange()();
}

- (void)stopListeningForNoiseLevelChange
{
  sub_252064284();
  sub_2520535AC();
  v3 = self;
  v4 = sub_252064894();
  swift_beginAccess();
  objc_setAssociatedObject(v3, &byte_27F4CD4B0, v4, 1);
  swift_endAccess();

  v5 = [(HMFitNoiseCheckViewController *)v3 fitNoiseCheckTopView];
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_provider);

  (*(*v6 + 296))();
}

@end