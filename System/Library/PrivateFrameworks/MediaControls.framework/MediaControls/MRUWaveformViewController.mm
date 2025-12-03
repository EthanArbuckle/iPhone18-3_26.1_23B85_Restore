@interface MRUWaveformViewController
- (CAFrameRateRange)framerateRangeForData:(id)data;
- (MRUWaveformViewController)initWithContext:(unint64_t)context waveformController:(id)controller;
- (MRUWaveformViewController)initWithContext:(unint64_t)context waveformController:(id)controller settings:(id)settings;
- (void)loadView;
- (void)processInfoPowerStateDidChange:(id)change;
- (void)setOnScreen:(BOOL)screen;
- (void)updateState;
- (void)updateVisibility;
- (void)updateWaveformWithData:(id)data immediately:(BOOL)immediately;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)waveformController:(id)controller artworkImageDidChange:(id)change;
- (void)waveformControllerTrackDidChange:(id)change;
@end

@implementation MRUWaveformViewController

- (MRUWaveformViewController)initWithContext:(unint64_t)context waveformController:(id)controller settings:(id)settings
{
  v19[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  settingsCopy = settings;
  v18.receiver = self;
  v18.super_class = MRUWaveformViewController;
  v11 = [(MRUWaveformViewController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_settings, settings);
    objc_storeStrong(&v12->_controller, controller);
    v12->_context = context;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel_processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v12->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v19[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16 = [(MRUWaveformViewController *)v12 registerForTraitChanges:v15 withAction:sel_updateVisibility];
  }

  return v12;
}

- (MRUWaveformViewController)initWithContext:(unint64_t)context waveformController:(id)controller
{
  controllerCopy = controller;
  v7 = +[MRUWaveformSettings currentSettings];
  v8 = [(MRUWaveformViewController *)self initWithContext:context waveformController:controllerCopy settings:v7];

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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRUWaveformViewController;
  [(MRUWaveformViewController *)&v4 viewWillAppear:appear];
  self->_hasAppeared = 1;
  [(MRUWaveformViewController *)self updateVisibility];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRUWaveformViewController;
  [(MRUWaveformViewController *)&v4 viewWillDisappear:disappear];
  self->_hasAppeared = 0;
  [(MRUWaveformViewController *)self updateVisibility];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRUWaveformViewController *)self updateVisibility];
  }
}

- (void)updateVisibility
{
  if ([(MRUWaveformViewController *)self isOnScreen]&& self->_hasAppeared)
  {
    traitCollection = [(MRUWaveformViewController *)self traitCollection];
    -[MRUWaveformController setVisible:](self->_controller, "setVisible:", [traitCollection mr_shouldDim] ^ 1);
  }

  else
  {
    controller = self->_controller;

    [(MRUWaveformController *)controller setVisible:0];
  }
}

- (void)updateWaveformWithData:(id)data immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  dataCopy = data;
  [(MRUWaveformViewController *)self framerateRangeForData:dataCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  isPlaying = [(MRUWaveformController *)self->_controller isPlaying];
  settings = self->_settings;
  if (isPlaying)
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
  selfCopy = self;
  v21 = dataCopy;
  v29 = v21;
  [v19 animateWithDuration:0 delay:&v24 usingSpringWithDamping:0 initialSpringVelocity:v16 options:0.0 animations:v20 completion:0.0];
  if (immediatelyCopy)
  {
    [MEMORY[0x1E6979518] setUpdateDeadline:{CACurrentMediaTime() + (1.0 / v12), v24, v25, v26, v27, selfCopy}];
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

- (CAFrameRateRange)framerateRangeForData:(id)data
{
  dataCopy = data;
  if ([(MRUWaveformSettings *)self->_settings supportsVariableFramerate])
  {
    [dataCopy maxAbsoluteDifferenceFrom:self->_waveformData];
    v6 = v5;
    minimumFramerate = [(MRUWaveformSettings *)self->_settings minimumFramerate];
    context = [(MRUWaveformViewController *)self context];
    settings = self->_settings;
    if (context)
    {
      maximumFramerate = [(MRUWaveformSettings *)settings maximumFramerate];
    }

    else
    {
      maximumFramerate = [(MRUWaveformSettings *)settings maximumJindoFramerate];
    }

    if (self->_lowPowerModeEnabled)
    {
      maximumFramerate = [(MRUWaveformSettings *)self->_settings lowPowerModeMaximumFramerate];
    }

    v16 = maximumFramerate;
    [(MRUWaveformSettings *)self->_settings framerateThreshold];
    v18 = minimumFramerate + ((v6 / v17) * (v16 - minimumFramerate));
    if (v18 <= v16)
    {
      nonVariableFramerate3 = v18;
    }

    else
    {
      nonVariableFramerate3 = v16;
    }

    v14 = minimumFramerate;
    v15 = v16;
  }

  else
  {
    nonVariableFramerate = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    nonVariableFramerate2 = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    nonVariableFramerate3 = [(MRUWaveformSettings *)self->_settings nonVariableFramerate];
    v14 = nonVariableFramerate;
    v15 = nonVariableFramerate2;
  }

  v25 = CAFrameRateRangeMake(v14, v15, nonVariableFramerate3);
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
  artworkImage = [(MRUWaveformController *)self->_controller artworkImage];
  view = [(MRUWaveformViewController *)self view];
  [view setArtworkImage:artworkImage];

  waveform = [(MRUWaveformController *)self->_controller waveform];
  [(MRUWaveformViewController *)self updateWaveformWithData:waveform immediately:0];
}

- (void)waveformControllerTrackDidChange:(id)change
{
  changeCopy = change;
  self->_delayArtworkChange = 1;
  v5 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MRUWaveformViewController_waveformControllerTrackDidChange___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

void __62__MRUWaveformViewController_waveformControllerTrackDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) artworkImage];
  v3 = [*(a1 + 32) view];
  [v3 setArtworkImage:v2];

  *(*(a1 + 32) + 994) = 0;
}

- (void)waveformController:(id)controller artworkImageDidChange:(id)change
{
  if (!change || !self->_delayArtworkChange)
  {
    changeCopy = change;
    view = [(MRUWaveformViewController *)self view];
    [view setArtworkImage:changeCopy];
  }
}

- (void)processInfoPowerStateDidChange:(id)change
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