@interface MRUNowPlayingVolumeControlsView
- (CGSize)sizeThatFits:(CGSize)result;
- (MRUNowPlayingVolumeControlsView)initWithFrame:(CGRect)a3;
- (MRUNowPlayingVolumeControlsViewDelegate)delegate;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setContentScale:(double)a3;
- (void)setLayout:(int64_t)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setVolumeController:(id)a3;
- (void)sliderLongPressActionDidFinish:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)updateVisibility;
- (void)updateVisualStyling;
- (void)updateVolumeAnimated:(BOOL)a3;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation MRUNowPlayingVolumeControlsView

- (MRUNowPlayingVolumeControlsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v16 = [[MRUStepper alloc] initWithFrame:x, y, width, height];
    stepper = v8->_stepper;
    v8->_stepper = v16;

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
  v3 = [MEMORY[0x1E6970A38] sharedInstance];
  [v3 removeVolumeDisplay:self];

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
  v11 = [(MRUNowPlayingVolumeControlsView *)self traitCollection];
  [v11 displayScale];
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

- (void)setVolumeController:(id)a3
{
  v4 = a3;
  [(MRUVolumeController *)self->_volumeController setDelegate:0];
  volumeController = self->_volumeController;
  self->_volumeController = v4;
  v6 = v4;

  [(MRUVolumeController *)self->_volumeController setDelegate:self];
  self->_ignoreAnimationForVolumeEvents = 1;
  [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];

  [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUNowPlayingVolumeControlsView *)self updateVisualStyling];
    [(MRUSlider *)self->_slider setStylingProvider:v6];
    [(MRUStepper *)self->_stepper setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    v6 = [MEMORY[0x1E6970A38] sharedInstance];
    v7 = v6;
    if (v4)
    {
      [v6 addVolumeDisplay:self];
    }

    else
    {
      [v6 removeVolumeDisplay:self];
    }

    [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:0];
  }
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUNowPlayingVolumeControlsView *)self setNeedsLayout];
  }
}

- (void)sliderValueChanged:(id)a3
{
  volumeController = self->_volumeController;
  [a3 value];

  [MPVolumeController setVolume:"setVolume:withNotificationDelay:" withNotificationDelay:?];
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  if (([(MRUGroupSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:[(MRUNowPlayingVolumeControlsView *)self isOnScreen]];
    v6 = [(MRUNowPlayingVolumeControlsView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(MRUNowPlayingVolumeControlsView *)self delegate];
      *&v8 = a4;
      [v9 volumeControlsView:self volumeValueDidChange:v8];
    }
  }
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  v5 = [(MRUNowPlayingVolumeControlsView *)self isOnScreen:a3];

  [(MRUNowPlayingVolumeControlsView *)self updateVolumeAnimated:v5];
}

- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [(MRUNowPlayingVolumeControlsView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MRUNowPlayingVolumeControlsView *)self delegate];
    [v8 volumeControlsView:self volumeCapabiltiesDidChange:v4];
  }

  [(MRUNowPlayingVolumeControlsView *)self updateVisibility];
}

- (void)sliderLongPressActionDidFinish:(id)a3
{
  [(MRUVolumeGroupCoordinator *)self->_volumeGroupCoordinator equalizeVolumes];
  volumeGroupCoordinator = self->_volumeGroupCoordinator;

  [(MRUVolumeGroupCoordinator *)volumeGroupCoordinator finishEqualization];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = [(MRUNowPlayingVolumeControlsView *)self window];
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
  v7 = fminf(fmaxf(v6, 0.0), 1.0);
  [(MRUGroupSlider *)self->_slider value];
  *&v8 = *&v8 - v7;
  if (*&v8 < 0.0)
  {
    *&v8 = -*&v8;
  }

  v9 = !self->_ignoreAnimationForVolumeEvents;
  v10 = v9 & v3;
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
  v12 = self->_onScreen && v5;

  [(MRUGroupSlider *)slider setEnabled:v12];
}

- (void)updateVisibility
{
  v3 = [(MPVolumeController *)self->_volumeController volumeCapabilities];
  v4 = (v3 & 5) == 0;
  [(MRUGroupSlider *)self->_slider setHidden:(v3 & 5) != 0];
  [(MRUStepper *)self->_stepper setHidden:v4];
  v5 = [MEMORY[0x1E6970A38] sharedInstance];
  [v5 setNeedsUpdate];
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
    v5 = [(MRUNowPlayingVolumeControlsView *)self traitCollection];
    v6 = [v5 mr_shouldDim];

    stylingProvider = self->_stylingProvider;
    if (v6)
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