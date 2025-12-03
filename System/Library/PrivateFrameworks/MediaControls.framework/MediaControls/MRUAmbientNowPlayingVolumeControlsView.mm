@interface MRUAmbientNowPlayingVolumeControlsView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (MRUAmbientNowPlayingVolumeControlsView)initWithFrame:(CGRect)frame;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (id)_packageStateForVolume:(float)volume;
- (void)createConstraints;
- (void)dealloc;
- (void)invalidateIdleTimer;
- (void)resetIdleTimer;
- (void)setDataSource:(id)source;
- (void)setOnScreen:(BOOL)screen;
- (void)setSliderExpanded:(BOOL)expanded;
- (void)setVolumeController:(id)controller;
- (void)sliderTouchDown:(id)down;
- (void)sliderTouchUp:(id)up;
- (void)sliderValueChanged:(id)changed;
- (void)updatePackageWithValue:(float)value;
- (void)updateVisibility;
- (void)updateVolumeAnimated:(BOOL)animated;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation MRUAmbientNowPlayingVolumeControlsView

- (MRUAmbientNowPlayingVolumeControlsView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = MRUAmbientNowPlayingVolumeControlsView;
  v3 = [(MRUAmbientNowPlayingVolumeControlsView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[MRUSlider alloc] initWithStyle:1];
    slider = v3->_slider;
    v3->_slider = v4;

    [(MRUSlider *)v3->_slider setExpansionFactor:1.78571429];
    [(MRUSlider *)v3->_slider setHitRectInset:-24.0, -24.0, -24.0, 0.0];
    [(MRUSlider *)v3->_slider addTarget:v3 action:sel_sliderTouchUp_ forControlEvents:64];
    [(MRUSlider *)v3->_slider addTarget:v3 action:sel_sliderTouchDown_ forControlEvents:1];
    [(MRUSlider *)v3->_slider addTarget:v3 action:sel_sliderValueChanged_ forControlEvents:4096];
    [(MRUAmbientNowPlayingVolumeControlsView *)v3 addSubview:v3->_slider];
    v6 = objc_alloc_init(MRUCAPackageView);
    packageView = v3->_packageView;
    v3->_packageView = v6;

    traitCollection = [(MRUAmbientNowPlayingVolumeControlsView *)v3 traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    memset(&v19, 0, sizeof(v19));
    if (layoutDirection == 1)
    {
      CATransform3DMakeScale(&v19, -1.0, 1.0, 1.0);
    }

    else
    {
      v10 = *(MEMORY[0x1E69792E8] + 80);
      *&v19.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v19.m33 = v10;
      v11 = *(MEMORY[0x1E69792E8] + 112);
      *&v19.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v19.m43 = v11;
      v12 = *(MEMORY[0x1E69792E8] + 16);
      *&v19.m11 = *MEMORY[0x1E69792E8];
      *&v19.m13 = v12;
      v13 = *(MEMORY[0x1E69792E8] + 48);
      *&v19.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v19.m23 = v13;
    }

    v14 = +[MRUAssetsProvider volumeBoldPackageName];
    v18 = v19;
    v15 = [MRUCAPackageAsset packageNamed:v14 glyphState:0 permanentTransform:&v18];
    [(MRUCAPackageView *)v3->_packageView setAsset:v15];

    [(MRUCAPackageView *)v3->_packageView setScale:1.25];
    [(MRUSlider *)v3->_slider setMaximumValueView:v3->_packageView];
    v3->_sliderExpanded = 0;
    v3->_ignoreAnimationForVolumeEvents = 1;
    [(MRUAmbientNowPlayingVolumeControlsView *)v3 createConstraints];
    [(MRUAmbientNowPlayingVolumeControlsView *)v3 updateVisibility];
    mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
    [mEMORY[0x1E6970A38] addVolumeDisplay:v3];
  }

  return v3;
}

- (void)dealloc
{
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] removeVolumeDisplay:self];

  v4.receiver = self;
  v4.super_class = MRUAmbientNowPlayingVolumeControlsView;
  [(MRUAmbientNowPlayingVolumeControlsView *)&v4 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v2 = 32.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)createConstraints
{
  v16[4] = *MEMORY[0x1E69E9840];
  [(MRUSlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MRUSlider *)self->_slider leadingAnchor];
  leadingAnchor2 = [(MRUAmbientNowPlayingVolumeControlsView *)self leadingAnchor];
  v3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v16[0] = v3;
  trailingAnchor = [(MRUSlider *)self->_slider trailingAnchor];
  trailingAnchor2 = [(MRUAmbientNowPlayingVolumeControlsView *)self trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v16[1] = v6;
  centerYAnchor = [(MRUSlider *)self->_slider centerYAnchor];
  centerYAnchor2 = [(MRUAmbientNowPlayingVolumeControlsView *)self centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v16[2] = v9;
  heightAnchor = [(MRUSlider *)self->_slider heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:14.0];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [v13 activateConstraints:v12];
}

- (CGRect)hitRect
{
  v10.receiver = self;
  v10.super_class = MRUAmbientNowPlayingVolumeControlsView;
  [(MRUAmbientNowPlayingVolumeControlsView *)&v10 hitRect];
  v3 = v2 + -24.0;
  v5 = v4 + -24.0;
  v7 = v6 - (-24.0 + 0.0);
  v9 = v8 - (-24.0 + -24.0);
  result.size.height = v9;
  result.size.width = v7;
  result.origin.y = v5;
  result.origin.x = v3;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MRUAmbientNowPlayingVolumeControlsView *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)setSliderExpanded:(BOOL)expanded
{
  if (self->_sliderExpanded != expanded)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_sliderExpanded = expanded;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__MRUAmbientNowPlayingVolumeControlsView_setSliderExpanded___block_invoke;
    v6[3] = &unk_1E7663898;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithSpringDuration:4 bounce:v6 initialSpringVelocity:0 delay:0.25 options:0.25 animations:0.0 completion:0.0];
    [(MRUAmbientNowPlayingVolumeControlsView *)self resetIdleTimer];
  }
}

- (void)setVolumeController:(id)controller
{
  controllerCopy = controller;
  [(MRUVolumeController *)self->_volumeController setDelegate:0];
  volumeController = self->_volumeController;
  self->_volumeController = controllerCopy;
  v6 = controllerCopy;

  [(MRUVolumeController *)self->_volumeController setDelegate:self];
  self->_ignoreAnimationForVolumeEvents = 1;
  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)setDataSource:(id)source
{
  [(MPVolumeController *)self->_volumeController setDataSource:source];
  onScreen = self->_onScreen;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:onScreen];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];
    mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
    [mEMORY[0x1E6970A38] setNeedsUpdate];
  }
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:[(MRUAmbientNowPlayingVolumeControlsView *)self isOnScreen]];
  }

  if ([controllerCopy isVolumeControlAvailable])
  {
    if (self->_sliderExpanded && self->_idleTimer)
    {
      [(MRUAmbientNowPlayingVolumeControlsView *)self resetIdleTimer];
    }
  }

  else
  {
    [(MRUAmbientNowPlayingVolumeControlsView *)self setSliderExpanded:0];
  }
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  v5 = [(MRUAmbientNowPlayingVolumeControlsView *)self isOnScreen:controller];

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:v5];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  window = [(MRUAmbientNowPlayingVolumeControlsView *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (NSString)volumeAudioCategory
{
  volumeAudioCategory = [(MPVolumeController *)self->_volumeController volumeAudioCategory];
  v3 = volumeAudioCategory;
  if (volumeAudioCategory)
  {
    v4 = volumeAudioCategory;
  }

  else
  {
    v4 = @"Audio/Video";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)updateVolumeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isVolumeControlAvailable = [(MPVolumeController *)self->_volumeController isVolumeControlAvailable];
  [(MRUVolumeController *)self->_volumeController volumeValue];
  v7 = v6;
  [(MRUSlider *)self->_slider value];
  *&v8 = *&v8 - v7;
  if (*&v8 < 0.0)
  {
    *&v8 = -*&v8;
  }

  v9 = animatedCopy && !self->_ignoreAnimationForVolumeEvents;
  if (*&v8 > 0.00000011921)
  {
    *&v8 = v7;
    [(MRUSlider *)self->_slider setValue:v9 animated:v8];
    if (self->_ignoreAnimationForVolumeEvents)
    {
      self->_ignoreAnimationForVolumeEvents = 0;
    }

    else
    {
      [(MRUAmbientNowPlayingVolumeControlsView *)self setSliderExpanded:[(MPVolumeController *)self->_volumeController isVolumeControlAvailable]];
    }
  }

  [(MRUAmbientNowPlayingVolumeControlsView *)self setUserInteractionEnabled:self->_onScreen && isVolumeControlAvailable];
  *&v10 = v7;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updatePackageWithValue:v10];
}

- (void)updatePackageWithValue:(float)value
{
  v6 = [(MRUAmbientNowPlayingVolumeControlsView *)self _packageStateForVolume:?];
  glyphState = [(MRUCAPackageView *)self->_packageView glyphState];
  v5 = [glyphState isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(MRUCAPackageView *)self->_packageView setGlyphState:v6];
  }
}

- (void)updateVisibility
{
  v3 = [(MRUAmbientNowPlayingVolumeControlsView *)self sliderExpanded]^ 1;
  slider = self->_slider;

  [(MRUSlider *)slider setFluidTrackHidden:v3];
}

- (void)invalidateIdleTimer
{
  [(MSVTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;
}

- (void)resetIdleTimer
{
  [(MRUAmbientNowPlayingVolumeControlsView *)self invalidateIdleTimer];
  if (self->_sliderExpanded && ([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__MRUAmbientNowPlayingVolumeControlsView_resetIdleTimer__block_invoke;
    v5[3] = &unk_1E7663898;
    v5[4] = self;
    v3 = [MEMORY[0x1E69B14D8] timerWithInterval:0 repeats:v5 block:5.0];
    idleTimer = self->_idleTimer;
    self->_idleTimer = v3;
  }
}

- (void)sliderTouchDown:(id)down
{
  [(MRUAmbientNowPlayingVolumeControlsView *)self setSliderExpanded:1];

  [(MRUAmbientNowPlayingVolumeControlsView *)self invalidateIdleTimer];
}

- (void)sliderValueChanged:(id)changed
{
  volumeController = self->_volumeController;
  changedCopy = changed;
  [changedCopy value];
  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];
  [changedCopy value];
  v7 = v6;

  LODWORD(v8) = v7;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updatePackageWithValue:v8];
}

- (void)sliderTouchUp:(id)up
{
  volumeController = self->_volumeController;
  [up value];
  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];

  [(MRUAmbientNowPlayingVolumeControlsView *)self resetIdleTimer];
}

- (id)_packageStateForVolume:(float)volume
{
  if ([(MPVolumeController *)self->_volumeController isVolumeControlAvailable])
  {
    *&v4 = volume;
    v5 = [MRUSystemVolumeController packageStateForVolumeValue:v4];
  }

  else
  {
    v5 = @"off";
  }

  return v5;
}

@end