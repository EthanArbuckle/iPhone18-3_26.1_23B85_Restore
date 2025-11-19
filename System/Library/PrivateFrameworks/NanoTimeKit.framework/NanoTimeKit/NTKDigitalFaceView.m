@interface NTKDigitalFaceView
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_createTimeViewIfNecessary;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)invalidateDigitalTimeLabelStyle;
- (void)layoutSubviews;
- (void)setViewMode:(int64_t)a3 updateTimeViewStyle:(BOOL)a4;
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
  v3 = [(NTKFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKFaceView *)self setTimeView:0];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKDigitalFaceView;
  [(NTKFaceView *)&v7 layoutSubviews];
  v3 = [(NTKFaceView *)self timeView];
  [v3 setFrameUsingCurrentStyle];

  v4 = [(NTKFaceView *)self rootContainerView];
  v5 = [(NTKFaceView *)self timeView];
  v6 = [(NTKFaceView *)self complicationContainerView];
  [v4 insertSubview:v5 belowSubview:v6];
}

- (void)setViewMode:(int64_t)a3 updateTimeViewStyle:(BOOL)a4
{
  self->_viewMode = a3;
  if (a4)
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
  v11 = [(NTKFaceView *)self timeView];
  v12 = [(NTKDigitalFaceView *)self _digitalTimeLabelStyleFromViewMode:self->_viewMode faceBounds:v4, v6, v8, v10];
  [v11 setStyle:v12];

  [(NTKDigitalFaceView *)self setNeedsLayout];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [(NTKFaceView *)self device];
  v9 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v8 applyAdvanceFudge:x forDevice:y, width, height, 0.0];

  return v9;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = NTKDigitalFaceView;
  [NTKFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v6 = [(NTKFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [v6 setAlpha:?];
}

- (void)_createTimeViewIfNecessary
{
  v3 = [(NTKFaceView *)self timeView];

  if (!v3)
  {
    v4 = [(NTKDigitalFaceView *)self _timeLabelOptions];
    v5 = [(NTKFaceView *)self device];
    v9 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:v4 forDevice:v5];

    [v9 setUsesLegibility:{-[NTKDigitalFaceView _timeLabelUsesLegibility](self, "_timeLabelUsesLegibility")}];
    v6 = [MEMORY[0x277D75348] whiteColor];
    [v9 setTextColor:v6];

    v7 = +[NTKTimeOffsetManager sharedManager];
    [v7 timeOffset];
    [v9 setTimeOffset:?];

    [(NTKFaceView *)self setTimeView:v9];
    v8 = [(NTKFaceView *)self rootContainerView];
    [v8 addSubview:v9];

    [(NTKDigitalFaceView *)self invalidateDigitalTimeLabelStyle];
  }
}

@end