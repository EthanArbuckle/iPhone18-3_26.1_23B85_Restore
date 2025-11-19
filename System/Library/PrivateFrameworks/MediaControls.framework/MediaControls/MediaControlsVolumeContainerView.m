@interface MediaControlsVolumeContainerView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)a3;
- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)a3 slider:(id)a4;
- (void)_updateVolumeCapabilities;
- (void)_updateVolumeStyle;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setOnScreen:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)setVolumeSlider:(id)a3;
@end

@implementation MediaControlsVolumeContainerView

- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MPVolumeSlider *)[MediaControlsVolumeSlider alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = [(MediaControlsVolumeContainerView *)self initWithFrame:v8 slider:x, y, width, height];

  return v9;
}

- (MediaControlsVolumeContainerView)initWithFrame:(CGRect)a3 slider:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = MediaControlsVolumeContainerView;
  v10 = [(MediaControlsVolumeContainerView *)&v16 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(MediaControlsVolumeContainerView *)v10 setVolumeSlider:v9];
    [(MediaControlsVolumeContainerView *)v11 addSubview:v11->_volumeSlider];
    v12 = [[MediaControlsRelativeVolumeStepper alloc] initWithFrame:x, y, width, height];
    volumeStepper = v11->_volumeStepper;
    v11->_volumeStepper = v12;

    v14 = [v9 volumeController];
    [(MediaControlsRelativeVolumeStepper *)v11->_volumeStepper setVolumeController:v14];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6970440] object:0];

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
  v3 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [(MediaControlsVolumeContainerView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];

  [(MediaControlsVolumeContainerView *)self bounds];
  UIRectCenteredIntegralRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (void)setVolumeSlider:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E6970440];
  [v5 removeObserver:self name:*MEMORY[0x1E6970440] object:0];

  volumeSlider = self->_volumeSlider;
  self->_volumeSlider = v4;
  v8 = v4;

  v9 = [(MPVolumeSlider *)v8 volumeController];
  [(MediaControlsRelativeVolumeStepper *)self->_volumeStepper setVolumeController:v9];

  [(MediaControlsVolumeSlider *)self->_volumeSlider setVisualStylingProvider:self->_visualStylingProvider];
  v10 = +[MediaControlsTheme volumeMinImage];
  [(MediaControlsVolumeSlider *)self->_volumeSlider setMinimumValueImage:v10];

  v11 = +[MediaControlsTheme volumeMaxImage];
  [(MediaControlsVolumeSlider *)self->_volumeSlider setMaximumValueImage:v11];

  v12 = [(MediaControlsVolumeSlider *)self->_volumeSlider _minValueView];
  [v12 setContentMode:4];

  v13 = [(MediaControlsVolumeSlider *)self->_volumeSlider _maxValueView];
  [v13 setContentMode:4];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel__updateVolumeCapabilities name:v6 object:v8];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
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

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    v3 = a3;
    self->_transitioning = a3;
    if (a3 || self->_style == 1)
    {
      v4 = [(MediaControlsVolumeContainerView *)self volumeSlider];
      [v4 setHidden:!v3];
    }
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    v5 = [(MediaControlsVolumeContainerView *)self volumeSlider];
    [v5 _setIsOffScreen:!v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;

  v9 = [(MediaControlsVolumeContainerView *)self traitCollection];
  [v9 displayScale];
  UIRoundToScale();
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_visualStylingProvider != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_visualStylingProvider, a3);
    visualStylingProvider = self->_visualStylingProvider;
    v7 = [(MediaControlsVolumeContainerView *)self volumeStepper];
    [v7 setVisualStylingProvider:visualStylingProvider];

    v8 = self->_visualStylingProvider;
    v9 = [(MediaControlsVolumeContainerView *)self volumeSlider];
    [v9 setVisualStylingProvider:v8];

    v5 = v10;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  [v6 hitRectInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  v16 = [v15 thumbView];
  [v16 frame];
  v18 = v10 + v17;
  v20 = v8 + v19;
  v22 = v21 - (v10 + v14);
  v24 = v23 - (v8 + v12);

  [v5 locationInView:self];
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
  v4 = [(MediaControlsVolumeContainerView *)self volumeSlider];
  v5 = v4;
  if (style == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];

  v7 = [(MediaControlsVolumeContainerView *)self volumeStepper];
  [v7 setAlpha:v6];

  [(MediaControlsVolumeContainerView *)self _updateVolumeCapabilities];
}

- (void)_updateVolumeCapabilities
{
  v3 = [(MPVolumeSlider *)self->_volumeSlider volumeController];
  v4 = [v3 volumeCapabilities];

  if (self->_volumeCapabilities == v4)
  {
    return;
  }

  self->_volumeCapabilities = v4;
  if ((v4 & 2) != 0)
  {
    volumeSlider = self->_volumeSlider;
    goto LABEL_6;
  }

  volumeSlider = self->_volumeSlider;
  if ((v4 & 1) == 0)
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