@interface MRUNowPlayingVolumeControlsView
- (CGSize)sizeThatFits:(CGSize)result;
- (MRUNowPlayingVolumeControlsView)initWithFrame:(CGRect)frame;
- (MRUNowPlayingVolumeControlsViewDelegate)delegate;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setContentScale:(double)scale;
- (void)setLayout:(int64_t)layout;
- (void)setOnScreen:(BOOL)screen;
- (void)setStylingProvider:(id)provider;
- (void)setVolumeController:(id)controller;
- (void)sliderLongPressActionDidFinish:(id)finish;
- (void)sliderValueChanged:(id)changed;
- (void)updateVisibility;
- (void)updateVisualStyling;
- (void)updateVolumeAnimated:(BOOL)animated;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation MRUNowPlayingVolumeControlsView

- (MRUNowPlayingVolumeControlsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = MRUNowPlayingVolumeControlsView;
  v7 = [(MRUNowPlayingVolumeControlsView *)&v27 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_contentScale = 1.0;
    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:14.0];
    v10 = [(MRUSlider *)[MRUGroupSlider alloc] initWithStyle:1];
    slider = v8->_slider;
    v8->_slider = v10;

    [(MRUSlider *)v8->_slider setHitRectInset:-24.0, -24.0, -24.0, -24.0];
    [(MRUSlider *)v8->_slider setExpansionFactor:1.71428571];
    [(MRUSlider *)v8->_slider setStretchLimit:12.0];
    [(MRUSlider *)v8->_slider setDelegate:v8];
    objc_initWeak(&location, v8);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__MRUNowPlayingVolumeControlsView_initWithFrame___block_invoke;
    v24[3] = &unk_1E7664140;
    objc_copyWeak(&v25, &location);
    [(MRUSlider *)v8->_slider setAnimations:v24];
    v12 = +[MRUAssetsProvider volumeMin];
    v13 = [v12 imageWithConfiguration:v9];
    [(MRUGroupSlider *)v8->_slider setMinimumValueImage:v13];

    v14 = +[MRUAssetsProvider volumeMax];
    v15 = [v14 imageWithConfiguration:v9];
    [(MRUGroupSlider *)v8->_slider setMaximumValueImage:v15];

    [(MRUGroupSlider *)v8->_slider addTarget:v8 action:sel_sliderValueChanged_ forControlEvents:4096];
    [(MRUNowPlayingVolumeControlsView *)v8 addSubview:v8->_slider];
    height = [[MRUStepper alloc] initWithFrame:x, y, width, height];
    stepper = v8->_stepper;
    v8->_stepper = height;

    [(MRUStepper *)v8->_stepper setDelegate:v8];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:14.0];
    [(MRUStepper *)v8->_stepper setPreferredSymbolConfiguration:v18];

    v19 = +[MRUAssetsProvider volumeRelativeMinus];
    [(MRUStepper *)v8->_stepper setDecrementImage:v19];

    v20 = +[MRUAssetsProvider volumeRelativePlus];
    [(MRUStepper *)v8->_stepper setIncrementImage:v20];

    [(MRUNowPlayingVolumeControlsView *)v8 addSubview:v8->_stepper];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v22 = [(MRUNowPlayingVolumeControlsView *)v8 registerForTraitChanges:v21 withAction:sel_updateVisualStyling];

    [(MRUNowPlayingVolumeControlsView *)v8 updateVisibility];
    [(MRUNowPlayingVolumeControlsView *)v8 setAccessibilityIdentifier:@"UIA.MediaControls.NowPlaying.VolumeView"];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __49__MRUNowPlayingVolumeControlsView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVisualStyling];
}

- (void)dealloc
{
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] removeVolumeDisplay:self];

  v4.receiver = self;
  v4.super_class = MRUNowPlayingVolumeControlsView;
  [(MRUNowPlayingVolumeControlsView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MRUNowPlayingVolumeControlsView;
  [(MRUNowPlayingVolumeControlsView *)&v24 layoutSubviews];
  [(MRUNowPlayingVolumeControlsView *)self bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v7 = CGRectGetWidth(v25);
  v8 = 28.0;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v9 = CGRectGetHeight(v26);
  if (v9 <= 28.0)
  {
    v8 = v9;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [(MRUStepper *)self->_stepper setFrame:MinX, CGRectGetMinY(v28), v7, v8];
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetMinX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetWidth(v30);
  traitCollection = [(MRUNowPlayingVolumeControlsView *)self traitCollection];
  [traitCollection displayScale];
  v23 = v12;
  UIRectCenteredYInRectScale();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(MRUGroupSlider *)self->_slider setFrame:v14, v16, v18, v20, v23];
  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  v21 = -CGRectGetMinX(v31);
  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  MaxX = CGRectGetMaxX(v32);
  [(MRUNowPlayingVolumeControlsView *)self bounds];
  [(MRUSlider *)self->_slider setHitRectInset:-24.0, v21, -24.0, MaxX - CGRectGetWidth(v33)];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (self->_layout == 1)
  {
    v3 = &MRUNowPlayingControlHeightCompact;
  }

  else
  {
    v3 = &MRUNowPlayingControlHeight;
  }

  v4 = *v3 * self->_contentScale;
  result.height = v4;
  return result;
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
  [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];

  [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUNowPlayingVolumeControlsView *)self updateVisualStyling];
    [(MRUSlider *)self->_slider setStylingProvider:v6];
    [(MRUStepper *)self->_stepper setStylingProvider:v6];
    providerCopy = v6;
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
    v7 = mEMORY[0x1E6970A38];
    if (screenCopy)
    {
      [mEMORY[0x1E6970A38] addVolumeDisplay:self];
    }

    else
    {
      [mEMORY[0x1E6970A38] removeVolumeDisplay:self];
    }

    [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];
  }
}

- (void)setLayout:(int64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
  }
}

- (void)setContentScale:(double)scale
{
  if (vabdd_f64(self->_contentScale, scale) > 2.22044605e-16)
  {
    self->_contentScale = scale;
    [(MRUNowPlayingVolumeControlsView *)self setNeedsLayout];
  }
}

- (void)sliderValueChanged:(id)changed
{
  volumeController = self->_volumeController;
  [changed value];

  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  if (([(MRUGroupSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:[(MRUNowPlayingVolumeControlsView *)self isOnScreen]];
    delegate = [(MRUNowPlayingVolumeControlsView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(MRUNowPlayingVolumeControlsView *)self delegate];
      *&v8 = change;
      [delegate2 volumeControlsView:self volumeValueDidChange:v8];
    }
  }
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  v5 = [(MRUNowPlayingVolumeControlsView *)self isOnScreen:controller];

  [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:v5];
}

- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change
{
  v4 = *&change;
  delegate = [(MRUNowPlayingVolumeControlsView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(MRUNowPlayingVolumeControlsView *)self delegate];
    [delegate2 volumeControlsView:self volumeCapabiltiesDidChange:v4];
  }

  [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)sliderLongPressActionDidFinish:(id)finish
{
  [(MRUVolumeGroupCoordinator *)self->_volumeGroupCoordinator equalizeVolumes];
  volumeGroupCoordinator = self->_volumeGroupCoordinator;

  [(MRUVolumeGroupCoordinator *)volumeGroupCoordinator finishEqualization];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  window = [(MRUNowPlayingVolumeControlsView *)self window];
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
  v7 = fminf(fmaxf(v6, 0.0), 1.0);
  [(MRUGroupSlider *)self->_slider value];
  *&v8 = *&v8 - v7;
  if (*&v8 < 0.0)
  {
    *&v8 = -*&v8;
  }

  v9 = !self->_ignoreAnimationForVolumeEvents;
  v10 = v9 & animatedCopy;
  if (!v9 && *&v8 > 0.00000011921)
  {
    v10 = 0;
    self->_ignoreAnimationForVolumeEvents = 0;
  }

  if (*&v8 > 0.00000011921)
  {
    *&v8 = v7;
    [(MRUGroupSlider *)self->_slider setValue:v10 animated:v8];
  }

  slider = self->_slider;
  v12 = self->_onScreen && isVolumeControlAvailable;

  [(MRUGroupSlider *)slider setEnabled:v12];
}

- (void)updateVisibility
{
  volumeCapabilities = [(MPVolumeController *)self->_volumeController volumeCapabilities];
  v4 = (volumeCapabilities & 5) == 0;
  [(MRUGroupSlider *)self->_slider setHidden:(volumeCapabilities & 5) != 0];
  [(MRUStepper *)self->_stepper setHidden:v4];
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] setNeedsUpdate];
}

- (void)updateVisualStyling
{
  if ([(MRUGroupSlider *)self->_slider isTracking])
  {
    stylingProvider = self->_stylingProvider;
    v4 = 0;
  }

  else
  {
    traitCollection = [(MRUNowPlayingVolumeControlsView *)self traitCollection];
    mr_shouldDim = [traitCollection mr_shouldDim];

    stylingProvider = self->_stylingProvider;
    if (mr_shouldDim)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  v7 = [(MRUVisualStylingProvider *)stylingProvider blendColorForStyle:v4];
  [(MRUGroupSlider *)self->_slider setTintColor:v7];
}

- (MRUNowPlayingVolumeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end