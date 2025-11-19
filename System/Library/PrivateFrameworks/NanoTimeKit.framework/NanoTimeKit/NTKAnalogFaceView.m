@interface NTKAnalogFaceView
- (CGPoint)_contentCenterOffset;
- (NTKAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_complicationContainerViewForSlot:(id)a3;
- (void)_applyDataMode;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_cleanupAfterEditing;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_createTimeViewIfNecessary;
- (void)_handleLocaleDidChange;
- (void)_loadContentToReplaceUnadornedSnapshot;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_setContentViewsOpaque:(BOOL)a3;
- (void)_setTimeViewBehindContentView:(BOOL)a3;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation NTKAnalogFaceView

- (NTKAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v18.receiver = self;
  v18.super_class = NTKAnalogFaceView;
  v5 = [(NTKFaceView *)&v18 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKAnalogFaceView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    timeViewContainer = v5->_timeViewContainer;
    v5->_timeViewContainer = v7;

    v9 = v5->_timeViewContainer;
    v10 = [(NTKFaceView *)v5 rootContainerView];
    [(UIView *)v9 addSubview:v10];

    [(NTKAnalogFaceView *)v5 insertSubview:v5->_timeViewContainer atIndex:0];
    v11 = [(NTKFaceView *)v5 foregroundContainerView];
    v12 = [v11 layer];
    v13 = [(NTKFaceView *)v5 device];
    [v13 screenScale];
    [v12 setRasterizationScale:?];

    v14 = objc_alloc_init(NTKContainerView);
    dialComplicationContainerView = v5->_dialComplicationContainerView;
    v5->_dialComplicationContainerView = &v14->super;

    v16 = [(NTKFaceView *)v5 complicationContainerView];
    [v16 addSubview:v5->_dialComplicationContainerView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v27 layoutSubviews];
  v3 = [(NTKAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x2318D8E70](v3);
  v14 = v13;
  [(NTKAnalogFaceView *)self _contentCenterOffset];
  v16 = v12 + v15;
  [(NTKAnalogFaceView *)self _contentCenterOffset];
  v18 = v14 + v17;
  [(UIView *)self->_timeViewContainer setFrame:v5, v7, v9, v11];
  v19 = [(NTKFaceView *)self contentView];
  [v19 setCenter:{v16, v18}];

  v20 = [(NTKFaceView *)self contentView];
  [v20 setBounds:{v5, v7, v9, v11}];

  v21 = [(NTKFaceView *)self timeView];
  [v21 setCenter:{v16, v18}];

  v22 = [(NTKFaceView *)self timeView];
  [v22 setBounds:{v5, v7, v9, v11}];

  v23 = [(NTKFaceView *)self complicationContainerView];
  [v23 setCenter:{v12, v14}];

  v24 = [(NTKFaceView *)self complicationContainerView];
  [v24 setBounds:{v5, v7, v9, v11}];

  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
  dialComplicationContainerView = self->_dialComplicationContainerView;
  v26 = [(NTKFaceView *)self complicationContainerView];
  [v26 bounds];
  [(UIView *)dialComplicationContainerView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _loadSnapshotContentViews];
  [(NTKAnalogFaceView *)self _createTimeViewIfNecessary];
  v3 = [(NTKFaceView *)self timeView];
  [v3 setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];

  [(NTKAnalogFaceView *)self _setContentViewsOpaque:1];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _unloadSnapshotContentViews];
  v3 = [(NTKFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKFaceView *)self setTimeView:0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v2 dealloc];
}

- (void)_handleLocaleDidChange
{
  v3.receiver = self;
  v3.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v3 _handleLocaleDidChange];
  [(NTKFaceView *)self reloadSnapshotContentViews];
}

- (void)_applyDataMode
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _applyDataMode];
  v3 = [(NTKFaceView *)self timeView];
  [v3 setDataMode:{-[NTKFaceView dataMode](self, "dataMode")}];
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _applyShowContentForUnadornedSnapshot];
  v3 = [(NTKFaceView *)self timeView];
  [v3 setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
}

- (void)_loadContentToReplaceUnadornedSnapshot
{
  v3.receiver = self;
  v3.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v3 _loadContentToReplaceUnadornedSnapshot];
  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (id)_complicationContainerViewForSlot:(id)a3
{
  v4 = a3;
  if ([(NTKAnalogFaceView *)self _isComplicationSlotInsideDial:v4])
  {
    v5 = self->_dialComplicationContainerView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKAnalogFaceView;
    v5 = [(NTKFaceView *)&v8 _complicationContainerViewForSlot:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v3 _prepareForEditing];
  [(NTKAnalogFaceView *)self _setContentViewsOpaque:0];
  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (void)_cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v5 _cleanupAfterEditing];
  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
  [(NTKAnalogFaceView *)self _setContentViewsOpaque:1];
  v3 = [(NTKFaceView *)self foregroundContainerView];
  v4 = [v3 layer];
  [v4 setShouldRasterize:0];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v5 _configureForEditMode:?];
  [(NTKAnalogFaceView *)self _setTimeViewBehindContentView:[(NTKAnalogFaceView *)self _timeViewBehindContentForEditMode:a3]];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v18.receiver = self;
  v18.super_class = NTKAnalogFaceView;
  [NTKFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  if (a3 >= 0.5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  [(NTKAnalogFaceView *)self _setTimeViewBehindContentView:[(NTKAnalogFaceView *)self _timeViewBehindContentForEditMode:v9]];
  [(NTKAnalogFaceView *)self _shouldRasterizeForegroundContainerViewForEditMode:a5];
  [(NTKAnalogFaceView *)self _shouldRasterizeForegroundContainerViewForEditMode:a4];
  CLKInterpolateBetweenFloatsUnclipped();
  v11 = v10;
  v12 = v10 == 1.0;
  v13 = [(NTKFaceView *)self foregroundContainerView];
  v14 = [v13 layer];
  v15 = [v14 shouldRasterize];

  if (v12 != v15)
  {
    v16 = [(NTKFaceView *)self foregroundContainerView];
    v17 = [v16 layer];
    [v17 setShouldRasterize:v11 == 1.0];
  }
}

- (void)_setContentViewsOpaque:(BOOL)a3
{
  if (self->__contentViewsOpaque != a3)
  {
    self->__contentViewsOpaque = a3;
    v4 = [(NTKFaceView *)self contentView];
    [v4 setOpaque:self->__contentViewsOpaque];
  }
}

- (void)_configureTimeView:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v7 = [v3 whiteColor];
  v5 = [v4 minuteHandView];
  [v5 setColor:v7];

  v6 = [v4 hourHandView];

  [v6 setColor:v7];
}

- (CGPoint)_contentCenterOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_setTimeViewBehindContentView:(BOOL)a3
{
  if (self->__timeViewBehindContentView != a3)
  {
    self->__timeViewBehindContentView = a3;
    v4 = [(NTKFaceView *)self timeView];
    timeViewBehindContentView = self->__timeViewBehindContentView;
    v8 = v4;
    v6 = [v4 superview];
    v7 = v6;
    if (timeViewBehindContentView)
    {
      [v6 sendSubviewToBack:v8];
    }

    else
    {
      [v6 bringSubviewToFront:v8];
    }
  }
}

- (void)_createTimeViewIfNecessary
{
  v3 = [(NTKFaceView *)self timeView];

  if (!v3)
  {
    v4 = objc_alloc([objc_opt_class() _timeViewClass]);
    v5 = [(NTKFaceView *)self device];
    v6 = [v4 initForDevice:v5];

    [(NTKAnalogFaceView *)self bounds];
    [v6 setFrame:?];
    [(NTKFaceView *)self setTimeView:v6];
    [(UIView *)self->_timeViewContainer addSubview:v6];
    [(NTKAnalogFaceView *)self _configureTimeView:v6];
  }
}

@end