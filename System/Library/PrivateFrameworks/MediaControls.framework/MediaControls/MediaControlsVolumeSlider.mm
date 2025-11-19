@interface MediaControlsVolumeSlider
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (MediaControlsVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)_thumbImageForStyle:(int64_t)a3;
- (id)createThumbView;
- (void)providedStylesDidChangeForProvider:(id)a3;
- (void)setMaximumTrackVisualProvider:(id)a3;
- (void)setMinimumTrackVisualProvider:(id)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)tintColorDidChange;
@end

@implementation MediaControlsVolumeSlider

- (MediaControlsVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = MediaControlsVolumeSlider;
  v4 = [(MPVolumeSlider *)&v6 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIEdgeInsetsMakeWithEdges();
  [(MPVolumeSlider *)v4 setHitRectInsets:?];

  return v4;
}

- (id)createThumbView
{
  v20.receiver = self;
  v20.super_class = MediaControlsVolumeSlider;
  v3 = [(MPVolumeSlider *)&v20 createThumbView];
  v4 = [(MediaControlsVolumeSlider *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  if (v6 <= 0.00000011920929)
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
  }

  [v3 setClipsToBounds:0];
  v8 = [MEMORY[0x1E69DC888] blackColor];
  v9 = [v8 CGColor];
  v10 = [v3 layer];
  [v10 setShadowColor:v9];

  UIRoundToScale();
  v12 = v11;
  v13 = [v3 layer];
  [v13 setShadowOffset:{0.0, v12}];

  UIRoundToScale();
  v15 = v14;
  v16 = [v3 layer];
  [v16 setShadowRadius:v15];

  v17 = [v3 layer];
  LODWORD(v18) = 1045220557;
  [v17 setShadowOpacity:v18];

  return v3;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  v26.receiver = self;
  v26.super_class = MediaControlsVolumeSlider;
  [(MediaControlsVolumeSlider *)&v26 thumbRectForBounds:a3.origin.x trackRect:a3.origin.y value:a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, LODWORD(a5)];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(MediaControlsVolumeSlider *)self traitCollection];
  [v14 displayScale];
  UIRoundToScale();
  v16 = v9 - v15;

  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, v11, v13}];
  v18 = [v17 CGPath];
  v19 = [(MPVolumeSlider *)self thumbView];
  v20 = [v19 layer];
  [v20 setShadowPath:v18];

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

- (CGRect)trackRectForBounds:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MediaControlsVolumeSlider;
  [(MediaControlsVolumeSlider *)&v12 trackRectForBounds:?];
  v4 = [(MediaControlsVolumeSlider *)self traitCollection];
  [v4 displayScale];

  v5 = [(MediaControlsVolumeSlider *)self minimumValueImage];
  if (v5)
  {
    v6 = v5;
    v7 = [(MediaControlsVolumeSlider *)self maximumValueImage];

    if (v7)
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

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
{
  UIRectCenteredYInRect();

  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
{
  UIRectCenteredYInRect();

  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
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
  y = a3.y;
  x = a3.x;

  return CGRectContainsPoint(*&v37, *&x);
}

- (id)_thumbImageForStyle:(int64_t)a3
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
  v5 = [v3 imageNamed:@"CC-Volume-Knob" inBundle:v4];

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
    v3 = [(MediaControlsVolumeSlider *)self tintColor];
    [(MediaControlsVolumeSlider *)self setMinimumTrackTintColor:v3];

    v4 = [(MediaControlsVolumeSlider *)self tintColor];
    v5 = [(MediaControlsVolumeSlider *)self traitCollection];
    v6 = [v4 secondaryColorForInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

    v7 = [(MediaControlsVolumeSlider *)self _minValueView];
    [v7 setTintColor:v6];

    v8 = [(MediaControlsVolumeSlider *)self _maxValueView];
    [v8 setTintColor:v6];

    v9 = [(MediaControlsVolumeSlider *)self tintColor];
    v10 = [(MediaControlsVolumeSlider *)self traitCollection];
    v11 = [v9 tertiaryColorForInterfaceStyle:{objc_msgSend(v10, "userInterfaceStyle")}];

    [(MediaControlsVolumeSlider *)self setMaximumTrackTintColor:v11];
  }
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v15 = v5;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    v7 = self->_visualStylingProvider;
    v8 = [(MediaControlsVolumeSlider *)self _minValueView];
    [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:v8];

    v9 = self->_visualStylingProvider;
    v10 = [(MediaControlsVolumeSlider *)self _maxValueView];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    v11 = self->_visualStylingProvider;
    v12 = [(MediaControlsVolumeSlider *)self _minValueView];
    [(MTVisualStylingProvider *)v11 automaticallyUpdateView:v12 withStyle:1];

    v13 = self->_visualStylingProvider;
    v14 = [(MediaControlsVolumeSlider *)self _maxValueView];
    [(MTVisualStylingProvider *)v13 automaticallyUpdateView:v14 withStyle:1];

    visualStylingProvider = [(MediaControlsVolumeSlider *)self providedStylesDidChangeForProvider:self->_visualStylingProvider];
    v5 = v15;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, v5);
}

- (void)setMinimumTrackVisualProvider:(id)a3
{
  v6 = [a3 _visualStylingForStyle:0];
  v4 = [v6 color];
  [(MediaControlsVolumeSlider *)self setMinimumTrackTintColor:v4];

  v5 = [(MediaControlsVolumeSlider *)self _minTrackView];
  [v5 mt_replaceVisualStyling:v6];
}

- (void)setMaximumTrackVisualProvider:(id)a3
{
  v6 = [a3 _visualStylingForStyle:1];
  v4 = [v6 color];
  [(MediaControlsVolumeSlider *)self setMaximumTrackTintColor:v4];

  v5 = [(MediaControlsVolumeSlider *)self _maxTrackView];
  [v5 mt_replaceVisualStyling:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v6.receiver = self;
  v6.super_class = MediaControlsVolumeSlider;
  v4 = [(MediaControlsVolumeSlider *)&v6 gestureRecognizerShouldBegin:a3];
  if (v4)
  {
    LOBYTE(v4) = ![(MPVolumeSlider *)self isTracking];
  }

  return v4;
}

- (void)providedStylesDidChangeForProvider:(id)a3
{
  v4 = a3;
  [(MediaControlsVolumeSlider *)self setMinimumTrackVisualProvider:v4];
  [(MediaControlsVolumeSlider *)self setMaximumTrackVisualProvider:v4];
}

@end