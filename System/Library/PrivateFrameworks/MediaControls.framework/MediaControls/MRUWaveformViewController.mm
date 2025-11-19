@interface MRUWaveformViewController
- (CAFrameRateRange)framerateRangeForData:(id)a3;
- (MRUWaveformViewController)initWithContext:(unint64_t)a3 waveformController:(id)a4;
- (MRUWaveformViewController)initWithContext:(unint64_t)a3 waveformController:(id)a4 settings:(id)a5;
- (void)loadView;
- (void)processInfoPowerStateDidChange:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)updateState;
- (void)updateVisibility;
- (void)updateWaveformWithData:(id)a3 immediately:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)waveformController:(id)a3 artworkImageDidChange:(id)a4;
- (void)waveformControllerTrackDidChange:(id)a3;
@end

@implementation MRUWaveformViewController

- (MRUWaveformViewController)initWithContext:(unint64_t)a3 waveformController:(id)a4 settings:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MRUWaveformViewController;
  v11 = [(MRUWaveformViewController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_settings, a5);
    objc_storeStrong(&v12->_controller, a4);
    v12->_context = a3;
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v12 selector:sel_processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

    v14 = [MEMORY[0x1E696AE30] processInfo];
    v12->_lowPowerModeEnabled = [v14 isLowPowerModeEnabled];

    v19[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16 = [(MRUWaveformViewController *)v12 registerForTraitChanges:v15 withAction:sel_updateVisibility];
  }

  return v12;
}

- (MRUWaveformViewController)initWithContext:(unint64_t)a3 waveformController:(id)a4
{
  v6 = a4;
  v7 = +[MRUWaveformSettings currentSettings];
  v8 = [(MRUWaveformViewController *)self initWithContext:a3 waveformController:v6 settings:v7];

  return v8;
}

- (void)loadView
{
  v3 = [MRUWaveformView alloc];
  v4 = [(MRUWaveformView *)v3 initWithFrame:self->_context context:self->_settings settings:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUWaveformViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MRUWaveformViewController;
  [(MRUWaveformViewController *)&v3 viewDidLoad];
  [(MRUWaveformController *)self->_controller setDelegate:self];
  [(MRUWaveformViewController *)self updateState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUWaveformViewController;
  [(MRUWaveformViewController *)&v4 viewWillAppear:a3];
  self->_hasAppeared = 1;
  [(MRUWaveformViewController *)self updateVisibility];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUWaveformViewController;
  [(MRUWaveformViewController *)&v4 viewWillDisappear:a3];
  self->_hasAppeared = 0;
  [(MRUWaveformViewController *)self updateVisibility];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRUWaveformViewController *)self updateVisibility];
  }
}

- (void)updateVisibility
{
  if ([(MRUWaveformViewController *)self isOnScreen]&& self->_hasAppeared)
  {
    v4 = [(MRUWaveformViewController *)self traitCollection];
    -[MRUWaveformController setVisible:](self->_controller, "setVisible:", [v4 mr_shouldDim] ^ 1);
  }

  else
  {
    controller = self->_controller;

    [(MRUWaveformController *)controller setVisible:0];
  }
}

- (void)updateWaveformWithData:(id)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MRUWaveformViewController *)self framerateRangeForData:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(MRUWaveformController *)self->_controller isPlaying];
  settings = self->_settings;
  if (v13)
  {
    [(MRUWaveformSettings *)settings animationDuration];
    v16 = v15;
    [(MRUWaveformSettings *)self->_settings springDamping];
  }

  else
  {
    [(MRUWaveformSettings *)settings pausedAnimationDuration];
    v16 = v18;
    [(MRUWaveformSettings *)self->_settings pausedSpringDamping];
  }

  v19 = MEMORY[0x1E69DD250];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __64__MRUWaveformViewController_updateWaveformWithData_immediately___block_invoke;
  v27 = &unk_1E76639F8;
  v20 = v17;
  v30 = v8;
  v31 = v10;
  v32 = v12;
  v28 = self;
  v21 = v6;
  v29 = v21;
  [v19 animateWithDuration:0 delay:&v24 usingSpringWithDamping:0 initialSpringVelocity:v16 options:0.0 animations:v20 completion:0.0];
  if (v4)
  {
    [MEMORY[0x1E6979518] setUpdateDeadline:{CACurrentMediaTime() + (1.0 / v12), v24, v25, v26, v27, v28}];
    [MEMORY[0x1E6979518] flush];
  }

  waveformData = self->_waveformData;
  self->_waveformData = v21;
  v23 = v21;
}

void __64__MRUWaveformViewController_updateWaveformWithData_immediately___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MRUWaveformViewController_updateWaveformWithData_immediately___block_invoke_2;
  v7[3] = &unk_1E76639D0;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  LODWORD(v4) = *(a1 + 48);
  LODWORD(v5) = *(a1 + 52);
  LODWORD(v6) = *(a1 + 56);
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1966083 updateReason:v7 animations:{v4, v5, v6}];
}

void __64__MRUWaveformViewController_updateWaveformWithData_immediately___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setWaveformData:v1];
}

- (CAFrameRateRange)framerateRangeForData:(id)a3
{
  v4 = a3;
  if ([(MRUWaveformSettings *)self->_settings supportsVariableFramerate])
  {
    [v4 maxAbsoluteDifferenceFrom:self->_waveformData];
    v6 = v5;
    v7 = [(MRUWaveformSettings *)self->_settings minimumFramerate];
    v8 = [(MRUWaveformViewController *)self context];
    settings = self->_settings;
    if (v8)
    {
      v10 = [(MRUWaveformSettings *)settings maximumFramerate];
    }

    else
    {
      v10 = [(MRUWaveformSettings *)settings maximumJindoFramerate];
    }

    if (self->_lowPowerModeEnabled)
    {
      v10 = [(MRUWaveformSettings *)self->_settings lowPowerModeMaximumFramerate];
    }

    v16 = v10;
    [(MRUWaveformSettings *)self->_settings framerateThreshold];
    v18 = v7 + ((v6 / v17) * (v16 - v7));
    if (v18 <= v16)
    {
      v13 = v18;
    }

    else
    {
      v13 = v16;
    }

    v14 = v7;
    v15 = v16;
  }

  else
  {
    v11 = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    v12 = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    v13 = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    v14 = v11;
    v15 = v12;
  }

  v25 = CAFrameRateRangeMake(v14, v15, v13);
  minimum = v25.minimum;
  maximum = v25.maximum;
  preferred = v25.preferred;

  v22 = minimum;
  v23 = maximum;
  v24 = preferred;
  result.preferred = v24;
  result.maximum = v23;
  result.minimum = v22;
  return result;
}

- (void)updateState
{
  v3 = [(MRUWaveformController *)self->_controller artworkImage];
  v4 = [(MRUWaveformViewController *)self view];
  [v4 setArtworkImage:v3];

  v5 = [(MRUWaveformController *)self->_controller waveform];
  [(MRUWaveformViewController *)self updateWaveformWithData:v5 immediately:0];
}

- (void)waveformControllerTrackDidChange:(id)a3
{
  v4 = a3;
  self->_delayArtworkChange = 1;
  v5 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MRUWaveformViewController_waveformControllerTrackDidChange___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

void __62__MRUWaveformViewController_waveformControllerTrackDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) artworkImage];
  v3 = [*(a1 + 32) view];
  [v3 setArtworkImage:v2];

  *(*(a1 + 32) + 994) = 0;
}

- (void)waveformController:(id)a3 artworkImageDidChange:(id)a4
{
  if (!a4 || !self->_delayArtworkChange)
  {
    v5 = a4;
    v6 = [(MRUWaveformViewController *)self view];
    [v6 setArtworkImage:v5];
  }
}

- (void)processInfoPowerStateDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MRUWaveformViewController_processInfoPowerStateDidChange___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__MRUWaveformViewController_processInfoPowerStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [*(a1 + 32) setLowPowerModeEnabled:{objc_msgSend(v2, "isLowPowerModeEnabled")}];
}

@end