@interface MediaControlsVolumeContainerView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)frame;
- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)frame slider:(id)slider;
- (void)_updateVolumeCapabilities;
- (void)_updateVolumeStyle;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setOnScreen:(BOOL)screen;
- (void)setStyle:(int64_t)style;
- (void)setTransitioning:(BOOL)transitioning;
- (void)setVisualStylingProvider:(id)provider;
- (void)setVolumeSlider:(id)slider;
@end

@implementation MediaControlsVolumeContainerView

- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [(MPVolumeSlider *)[MediaControlsVolumeSlider alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  height = [(MediaControlsVolumeContainerView *)self initWithFrame:v8 slider:x, y, width, height];

  return height;
}

- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)frame slider:(id)slider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sliderCopy = slider;
  v16.receiver = self;
  v16.super_class = MediaControlsVolumeContainerView;
  height = [(MediaControlsVolumeContainerView *)&v16 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(MediaControlsVolumeContainerView *)height setVolumeSlider:sliderCopy];
    [(MediaControlsVolumeContainerView *)v11 addSubview:v11->_volumeSlider];
    height2 = [[MediaControlsRelativeVolumeStepper alloc] initWithFrame:x, y, width, height];
    volumeStepper = v11->_volumeStepper;
    v11->_volumeStepper = height2;

    volumeController = [sliderCopy volumeController];
    [(MediaControlsRelativeVolumeStepper *)v11->_volumeStepper setVolumeController:volumeController];

    [(MediaControlsRelativeVolumeStepper *)v11->_volumeStepper setHidden:1];
    [(MediaControlsVolumeContainerView *)v11 addSubview:v11->_volumeStepper];
    [(MediaControlsVolumeSlider *)v11->_volumeSlider layoutIfNeeded];
    [(MediaControlsVolumeContainerView *)v11 _updateVolumeStyle];
    [(MediaControlsVolumeContainerView *)v11 _updateVolumeCapabilities];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970440] object:0];

  v4.receiver = self;
  v4.super_class = MediaControlsVolumeContainerView;
  [(MediaControlsVolumeContainerView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MediaControlsVolumeContainerView;
  [(MediaControlsVolumeContainerView *)&v15 layoutSubviews];
  [(MediaControlsVolumeContainerView *)self bounds];
  [(MediaControlsRelativeVolumeStepper *)self->_volumeStepper setFrame:?];
  volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [(MediaControlsVolumeContainerView *)self bounds];
  [volumeSlider sizeThatFits:{v4, v5}];

  [(MediaControlsVolumeContainerView *)self bounds];
  UIRectCenteredIntegralRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  volumeSlider2 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [volumeSlider2 setFrame:{v7, v9, v11, v13}];
}

- (void)setVolumeSlider:(id)slider
{
  sliderCopy = slider;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E6970440];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970440] object:0];

  volumeSlider = self->_volumeSlider;
  self->_volumeSlider = sliderCopy;
  v8 = sliderCopy;

  volumeController = [(MPVolumeSlider *)v8 volumeController];
  [(MediaControlsRelativeVolumeStepper *)self->_volumeStepper setVolumeController:volumeController];

  [(MediaControlsVolumeSlider *)self->_volumeSlider setVisualStylingProvider:self->_visualStylingProvider];
  v10 = +[MediaControlsTheme volumeMinImage];
  [(MediaControlsVolumeSlider *)self->_volumeSlider setMinimumValueImage:v10];

  v11 = +[MediaControlsTheme volumeMaxImage];
  [(MediaControlsVolumeSlider *)self->_volumeSlider setMaximumValueImage:v11];

  _minValueView = [(MediaControlsVolumeSlider *)self->_volumeSlider _minValueView];
  [_minValueView setContentMode:4];

  _maxValueView = [(MediaControlsVolumeSlider *)self->_volumeSlider _maxValueView];
  [_maxValueView setContentMode:4];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__updateVolumeCapabilities name:v6 object:v8];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MediaControlsVolumeContainerView *)self _updateVolumeStyle];

    [(MediaControlsVolumeContainerView *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MediaControlsVolumeContainerView;
  [(MediaControlsVolumeContainerView *)&v3 didMoveToSuperview];
  [(MediaControlsVolumeContainerView *)self _updateVolumeStyle];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MediaControlsVolumeContainerView;
  [(MediaControlsVolumeContainerView *)&v3 didMoveToWindow];
  [(MediaControlsVolumeContainerView *)self _updateVolumeStyle];
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    transitioningCopy = transitioning;
    self->_transitioning = transitioning;
    if (transitioning || self->_style == 1)
    {
      volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
      [volumeSlider setHidden:!transitioningCopy];
    }
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
    [volumeSlider _setIsOffScreen:!screenCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [volumeSlider sizeThatFits:{width, height}];
  v8 = v7;

  traitCollection = [(MediaControlsVolumeContainerView *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_visualStylingProvider != providerCopy)
  {
    v10 = providerCopy;
    objc_storeStrong(&self->_visualStylingProvider, provider);
    visualStylingProvider = self->_visualStylingProvider;
    volumeStepper = [(MediaControlsVolumeContainerView *)self volumeStepper];
    [volumeStepper setVisualStylingProvider:visualStylingProvider];

    v8 = self->_visualStylingProvider;
    volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
    [volumeSlider setVisualStylingProvider:v8];

    providerCopy = v10;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [volumeSlider hitRectInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  volumeSlider2 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  thumbView = [volumeSlider2 thumbView];
  [thumbView frame];
  v18 = v10 + v17;
  v20 = v8 + v19;
  v22 = v21 - (v10 + v14);
  v24 = v23 - (v8 + v12);

  [touchCopy locationInView:self];
  v26 = v25;
  v28 = v27;

  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  v33 = v26;
  v34 = v28;

  return CGRectContainsPoint(*&v29, *&v33);
}

- (void)_updateVolumeStyle
{
  style = self->_style;
  volumeSlider = [(MediaControlsVolumeContainerView *)self volumeSlider];
  v5 = volumeSlider;
  if (style == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [volumeSlider setAlpha:v6];

  volumeStepper = [(MediaControlsVolumeContainerView *)self volumeStepper];
  [volumeStepper setAlpha:v6];

  [(MediaControlsVolumeContainerView *)self _updateVolumeCapabilities];
}

- (void)_updateVolumeCapabilities
{
  volumeController = [(MPVolumeSlider *)self->_volumeSlider volumeController];
  volumeCapabilities = [volumeController volumeCapabilities];

  if (self->_volumeCapabilities == volumeCapabilities)
  {
    return;
  }

  self->_volumeCapabilities = volumeCapabilities;
  if ((volumeCapabilities & 2) != 0)
  {
    volumeSlider = self->_volumeSlider;
    goto LABEL_6;
  }

  volumeSlider = self->_volumeSlider;
  if ((volumeCapabilities & 1) == 0)
  {
LABEL_6:
    [(MPVolumeSlider *)volumeSlider setHidden:0];
    v6 = 1;
    goto LABEL_7;
  }

  [(MPVolumeSlider *)volumeSlider setHidden:1];
  v6 = 0;
LABEL_7:
  [(MediaControlsRelativeVolumeStepper *)self->_volumeStepper setHidden:v6];

  [(MediaControlsVolumeContainerView *)self setNeedsLayout];
}

@end