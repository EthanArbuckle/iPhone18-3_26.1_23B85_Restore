@interface MRUAmbientNowPlayingVolumeControlsView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (MRUAmbientNowPlayingVolumeControlsView)initWithFrame:(CGRect)a3;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (id)_packageStateForVolume:(float)a3;
- (void)createConstraints;
- (void)dealloc;
- (void)invalidateIdleTimer;
- (void)resetIdleTimer;
- (void)setDataSource:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setSliderExpanded:(BOOL)a3;
- (void)setVolumeController:(id)a3;
- (void)sliderTouchDown:(id)a3;
- (void)sliderTouchUp:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)updatePackageWithValue:(float)a3;
- (void)updateVisibility;
- (void)updateVolumeAnimated:(BOOL)a3;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation MRUAmbientNowPlayingVolumeControlsView

- (MRUAmbientNowPlayingVolumeControlsView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = MRUAmbientNowPlayingVolumeControlsView;
  v3 = [(MRUAmbientNowPlayingVolumeControlsView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v8 = [(MRUAmbientNowPlayingVolumeControlsView *)v3 traitCollection];
    v9 = [v8 layoutDirection];

    memset(&v19, 0, sizeof(v19));
    if (v9 == 1)
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
    v16 = [MEMORY[0x1E6970A38] sharedInstance];
    [v16 addVolumeDisplay:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6970A38] sharedInstance];
  [v3 removeVolumeDisplay:self];

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
  v15 = [(MRUSlider *)self->_slider leadingAnchor];
  v14 = [(MRUAmbientNowPlayingVolumeControlsView *)self leadingAnchor];
  v3 = [v15 constraintEqualToAnchor:v14];
  v16[0] = v3;
  v4 = [(MRUSlider *)self->_slider trailingAnchor];
  v5 = [(MRUAmbientNowPlayingVolumeControlsView *)self trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v16[1] = v6;
  v7 = [(MRUSlider *)self->_slider centerYAnchor];
  v8 = [(MRUAmbientNowPlayingVolumeControlsView *)self centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v16[2] = v9;
  v10 = [(MRUSlider *)self->_slider heightAnchor];
  v11 = [v10 constraintEqualToConstant:14.0];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MRUAmbientNowPlayingVolumeControlsView *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)setSliderExpanded:(BOOL)a3
{
  if (self->_sliderExpanded != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_sliderExpanded = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__MRUAmbientNowPlayingVolumeControlsView_setSliderExpanded___block_invoke;
    v6[3] = &unk_1E7663898;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithSpringDuration:4 bounce:v6 initialSpringVelocity:0 delay:0.25 options:0.25 animations:0.0 completion:0.0];
    [(MRUAmbientNowPlayingVolumeControlsView *)self resetIdleTimer];
  }
}

- (void)setVolumeController:(id)a3
{
  v4 = a3;
  [(MRUVolumeController *)self->_volumeController setDelegate:0];
  volumeController = self->_volumeController;
  self->_volumeController = v4;
  v6 = v4;

  [(MRUVolumeController *)self->_volumeController setDelegate:self];
  self->_ignoreAnimationForVolumeEvents = 1;
  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)setDataSource:(id)a3
{
  [(MPVolumeController *)self->_volumeController setDataSource:a3];
  onScreen = self->_onScreen;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:onScreen];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];
    v4 = [MEMORY[0x1E6970A38] sharedInstance];
    [v4 setNeedsUpdate];
  }
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = a3;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:[(MRUAmbientNowPlayingVolumeControlsView *)self isOnScreen]];
  }

  if ([v5 isVolumeControlAvailable])
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

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  v5 = [(MRUAmbientNowPlayingVolumeControlsView *)self isOnScreen:a3];

  [(MRUAmbientNowPlayingVolumeControlsView *)self updateVolumeAnimated:v5];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = [(MRUAmbientNowPlayingVolumeControlsView *)self window];
  v3 = [v2 windowScene];

  return v3;
}

- (NSString)volumeAudioCategory
{
  v2 = [(MPVolumeController *)self->_volumeController volumeAudioCategory];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Audio/Video";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)updateVolumeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MPVolumeController *)self->_volumeController isVolumeControlAvailable];
  [(MRUVolumeController *)self->_volumeController volumeValue];
  v7 = v6;
  [(MRUSlider *)self->_slider value];
  *&v8 = *&v8 - v7;
  if (*&v8 < 0.0)
  {
    *&v8 = -*&v8;
  }

  v9 = v3 && !self->_ignoreAnimationForVolumeEvents;
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

  [(MRUAmbientNowPlayingVolumeControlsView *)self setUserInteractionEnabled:self->_onScreen && v5];
  *&v10 = v7;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updatePackageWithValue:v10];
}

- (void)updatePackageWithValue:(float)a3
{
  v6 = [(MRUAmbientNowPlayingVolumeControlsView *)self _packageStateForVolume:?];
  v4 = [(MRUCAPackageView *)self->_packageView glyphState];
  v5 = [v4 isEqualToString:v6];

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

- (void)sliderTouchDown:(id)a3
{
  [(MRUAmbientNowPlayingVolumeControlsView *)self setSliderExpanded:1];

  [(MRUAmbientNowPlayingVolumeControlsView *)self invalidateIdleTimer];
}

- (void)sliderValueChanged:(id)a3
{
  volumeController = self->_volumeController;
  v5 = a3;
  [v5 value];
  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];
  [v5 value];
  v7 = v6;

  LODWORD(v8) = v7;

  [(MRUAmbientNowPlayingVolumeControlsView *)self updatePackageWithValue:v8];
}

- (void)sliderTouchUp:(id)a3
{
  volumeController = self->_volumeController;
  [a3 value];
  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];

  [(MRUAmbientNowPlayingVolumeControlsView *)self resetIdleTimer];
}

- (id)_packageStateForVolume:(float)a3
{
  if ([(MPVolumeController *)self->_volumeController isVolumeControlAvailable])
  {
    *&v4 = a3;
    v5 = [MRUSystemVolumeController packageStateForVolumeValue:v4];
  }

  else
  {
    v5 = @"off";
  }

  return v5;
}

@end