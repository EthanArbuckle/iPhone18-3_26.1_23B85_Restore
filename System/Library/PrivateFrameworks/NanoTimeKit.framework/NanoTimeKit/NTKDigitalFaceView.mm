@interface NTKDigitalFaceView
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_createTimeViewIfNecessary;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)invalidateDigitalTimeLabelStyle;
- (void)layoutSubviews;
- (void)setViewMode:(int64_t)mode updateTimeViewStyle:(BOOL)style;
@end

@implementation NTKDigitalFaceView

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKDigitalFaceView;
  [(NTKFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKDigitalFaceView *)self _createTimeViewIfNecessary];
  [(NTKDigitalFaceView *)self setViewMode:0];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKDigitalFaceView;
  [(NTKFaceView *)&v4 _unloadSnapshotContentViews];
  timeView = [(NTKFaceView *)self timeView];
  [timeView removeFromSuperview];

  [(NTKFaceView *)self setTimeView:0];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKDigitalFaceView;
  [(NTKFaceView *)&v7 layoutSubviews];
  timeView = [(NTKFaceView *)self timeView];
  [timeView setFrameUsingCurrentStyle];

  rootContainerView = [(NTKFaceView *)self rootContainerView];
  timeView2 = [(NTKFaceView *)self timeView];
  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  [rootContainerView insertSubview:timeView2 belowSubview:complicationContainerView];
}

- (void)setViewMode:(int64_t)mode updateTimeViewStyle:(BOOL)style
{
  self->_viewMode = mode;
  if (style)
  {
    [(NTKDigitalFaceView *)self invalidateDigitalTimeLabelStyle];
  }
}

- (void)invalidateDigitalTimeLabelStyle
{
  [(NTKDigitalFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  timeView = [(NTKFaceView *)self timeView];
  v12 = [(NTKDigitalFaceView *)self _digitalTimeLabelStyleFromViewMode:self->_viewMode faceBounds:v4, v6, v8, v10];
  [timeView setStyle:v12];

  [(NTKDigitalFaceView *)self setNeedsLayout];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = [(NTKFaceView *)self device];
  v9 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:device applyAdvanceFudge:x forDevice:y, width, height, 0.0];

  return v9;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v7.receiver = self;
  v7.super_class = NTKDigitalFaceView;
  [NTKFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  timeView = [(NTKFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];
}

- (void)_createTimeViewIfNecessary
{
  timeView = [(NTKFaceView *)self timeView];

  if (!timeView)
  {
    _timeLabelOptions = [(NTKDigitalFaceView *)self _timeLabelOptions];
    device = [(NTKFaceView *)self device];
    v9 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:_timeLabelOptions forDevice:device];

    [v9 setUsesLegibility:{-[NTKDigitalFaceView _timeLabelUsesLegibility](self, "_timeLabelUsesLegibility")}];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v9 setTextColor:whiteColor];

    v7 = +[NTKTimeOffsetManager sharedManager];
    [v7 timeOffset];
    [v9 setTimeOffset:?];

    [(NTKFaceView *)self setTimeView:v9];
    rootContainerView = [(NTKFaceView *)self rootContainerView];
    [rootContainerView addSubview:v9];

    [(NTKDigitalFaceView *)self invalidateDigitalTimeLabelStyle];
  }
}

@end