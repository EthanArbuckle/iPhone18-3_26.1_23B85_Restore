@interface MediaControlsVolumeSlider
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (MediaControlsVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)_thumbImageForStyle:(int64_t)style;
- (id)createThumbView;
- (void)providedStylesDidChangeForProvider:(id)provider;
- (void)setMaximumTrackVisualProvider:(id)provider;
- (void)setMinimumTrackVisualProvider:(id)provider;
- (void)setVisualStylingProvider:(id)provider;
- (void)tintColorDidChange;
@end

@implementation MediaControlsVolumeSlider

- (MediaControlsVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MediaControlsVolumeSlider;
  v4 = [(MPVolumeSlider *)&v6 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  UIEdgeInsetsMakeWithEdges();
  [(MPVolumeSlider *)v4 setHitRectInsets:?];

  return v4;
}

- (id)createThumbView
{
  v20.receiver = self;
  v20.super_class = MediaControlsVolumeSlider;
  createThumbView = [(MPVolumeSlider *)&v20 createThumbView];
  traitCollection = [(MediaControlsVolumeSlider *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  if (v6 <= 0.00000011920929)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
  }

  [createThumbView setClipsToBounds:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [createThumbView layer];
  [layer setShadowColor:cGColor];

  UIRoundToScale();
  v12 = v11;
  layer2 = [createThumbView layer];
  [layer2 setShadowOffset:{0.0, v12}];

  UIRoundToScale();
  v15 = v14;
  layer3 = [createThumbView layer];
  [layer3 setShadowRadius:v15];

  layer4 = [createThumbView layer];
  LODWORD(v18) = 1045220557;
  [layer4 setShadowOpacity:v18];

  return createThumbView;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  v26.receiver = self;
  v26.super_class = MediaControlsVolumeSlider;
  [(MediaControlsVolumeSlider *)&v26 thumbRectForBounds:bounds.origin.x trackRect:bounds.origin.y value:bounds.size.width, bounds.size.height, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, LODWORD(value)];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  traitCollection = [(MediaControlsVolumeSlider *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v16 = v9 - v15;

  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, v11, v13}];
  cGPath = [v17 CGPath];
  thumbView = [(MPVolumeSlider *)self thumbView];
  layer = [thumbView layer];
  [layer setShadowPath:cGPath];

  v21 = v7;
  v22 = v16;
  v23 = v11;
  v24 = v13;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  v12.receiver = self;
  v12.super_class = MediaControlsVolumeSlider;
  [(MediaControlsVolumeSlider *)&v12 trackRectForBounds:?];
  traitCollection = [(MediaControlsVolumeSlider *)self traitCollection];
  [traitCollection displayScale];

  minimumValueImage = [(MediaControlsVolumeSlider *)self minimumValueImage];
  if (minimumValueImage)
  {
    v6 = minimumValueImage;
    maximumValueImage = [(MediaControlsVolumeSlider *)self maximumValueImage];

    if (maximumValueImage)
    {
      UIRoundToScale();
    }
  }

  UIRoundToScale();
  UIRectCenteredYInRect();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
  UIRectCenteredYInRect();

  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
  UIRectCenteredYInRect();

  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  [(MediaControlsVolumeSlider *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MediaControlsVolumeSlider *)self bounds];
  [(MediaControlsVolumeSlider *)self trackRectForBounds:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(MediaControlsVolumeSlider *)self value];
  LODWORD(v43) = v21;
  [(MediaControlsVolumeSlider *)self thumbRectForBounds:v6 trackRect:v8 value:v10, v12, v14, v16, v18, v20, v43];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(MPVolumeSlider *)self hitRectInsets];
  v31 = v25 + v30;
  v34 = v27 - (v32 + v33);
  v36 = v29 - (v30 + v35);
  v37 = v23 + v32;
  v38 = v31;
  v39 = v34;
  y = inside.y;
  x = inside.x;

  return CGRectContainsPoint(*&v37, *&x);
}

- (id)_thumbImageForStyle:(int64_t)style
{
  v3 = MEMORY[0x1E69DCAB8];
  mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
  v5 = [v3 imageNamed:@"CC-Volume-Knob" inBundle:mediaControlsBundle];

  return v5;
}

- (void)tintColorDidChange
{
  v12.receiver = self;
  v12.super_class = MediaControlsVolumeSlider;
  [(MediaControlsVolumeSlider *)&v12 tintColorDidChange];
  if (self->_visualStylingProvider)
  {
    [(MediaControlsVolumeSlider *)self providedStylesDidChangeForProvider:?];
  }

  else
  {
    tintColor = [(MediaControlsVolumeSlider *)self tintColor];
    [(MediaControlsVolumeSlider *)self setMinimumTrackTintColor:tintColor];

    tintColor2 = [(MediaControlsVolumeSlider *)self tintColor];
    traitCollection = [(MediaControlsVolumeSlider *)self traitCollection];
    v6 = [tintColor2 secondaryColorForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    _minValueView = [(MediaControlsVolumeSlider *)self _minValueView];
    [_minValueView setTintColor:v6];

    _maxValueView = [(MediaControlsVolumeSlider *)self _maxValueView];
    [_maxValueView setTintColor:v6];

    tintColor3 = [(MediaControlsVolumeSlider *)self tintColor];
    traitCollection2 = [(MediaControlsVolumeSlider *)self traitCollection];
    v11 = [tintColor3 tertiaryColorForInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

    [(MediaControlsVolumeSlider *)self setMaximumTrackTintColor:v11];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v15 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    v7 = self->_visualStylingProvider;
    _minValueView = [(MediaControlsVolumeSlider *)self _minValueView];
    [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:_minValueView];

    v9 = self->_visualStylingProvider;
    _maxValueView = [(MediaControlsVolumeSlider *)self _maxValueView];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:_maxValueView];

    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    v11 = self->_visualStylingProvider;
    _minValueView2 = [(MediaControlsVolumeSlider *)self _minValueView];
    [(MTVisualStylingProvider *)v11 automaticallyUpdateView:_minValueView2 withStyle:1];

    v13 = self->_visualStylingProvider;
    _maxValueView2 = [(MediaControlsVolumeSlider *)self _maxValueView];
    [(MTVisualStylingProvider *)v13 automaticallyUpdateView:_maxValueView2 withStyle:1];

    visualStylingProvider = [(MediaControlsVolumeSlider *)self providedStylesDidChangeForProvider:self->_visualStylingProvider];
    providerCopy = v15;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, providerCopy);
}

- (void)setMinimumTrackVisualProvider:(id)provider
{
  v6 = [provider _visualStylingForStyle:0];
  color = [v6 color];
  [(MediaControlsVolumeSlider *)self setMinimumTrackTintColor:color];

  _minTrackView = [(MediaControlsVolumeSlider *)self _minTrackView];
  [_minTrackView mt_replaceVisualStyling:v6];
}

- (void)setMaximumTrackVisualProvider:(id)provider
{
  v6 = [provider _visualStylingForStyle:1];
  color = [v6 color];
  [(MediaControlsVolumeSlider *)self setMaximumTrackTintColor:color];

  _maxTrackView = [(MediaControlsVolumeSlider *)self _maxTrackView];
  [_maxTrackView mt_replaceVisualStyling:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v6.receiver = self;
  v6.super_class = MediaControlsVolumeSlider;
  v4 = [(MediaControlsVolumeSlider *)&v6 gestureRecognizerShouldBegin:begin];
  if (v4)
  {
    LOBYTE(v4) = ![(MPVolumeSlider *)self isTracking];
  }

  return v4;
}

- (void)providedStylesDidChangeForProvider:(id)provider
{
  providerCopy = provider;
  [(MediaControlsVolumeSlider *)self setMinimumTrackVisualProvider:providerCopy];
  [(MediaControlsVolumeSlider *)self setMaximumTrackVisualProvider:providerCopy];
}

@end