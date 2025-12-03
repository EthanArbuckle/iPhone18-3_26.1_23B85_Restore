@interface NTKAnalogFaceView
- (CGPoint)_contentCenterOffset;
- (NTKAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_complicationContainerViewForSlot:(id)slot;
- (void)_applyDataMode;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_cleanupAfterEditing;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_createTimeViewIfNecessary;
- (void)_handleLocaleDidChange;
- (void)_loadContentToReplaceUnadornedSnapshot;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_setContentViewsOpaque:(BOOL)opaque;
- (void)_setTimeViewBehindContentView:(BOOL)view;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation NTKAnalogFaceView

- (NTKAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = NTKAnalogFaceView;
  v5 = [(NTKFaceView *)&v18 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKAnalogFaceView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    timeViewContainer = v5->_timeViewContainer;
    v5->_timeViewContainer = v7;

    v9 = v5->_timeViewContainer;
    rootContainerView = [(NTKFaceView *)v5 rootContainerView];
    [(UIView *)v9 addSubview:rootContainerView];

    [(NTKAnalogFaceView *)v5 insertSubview:v5->_timeViewContainer atIndex:0];
    foregroundContainerView = [(NTKFaceView *)v5 foregroundContainerView];
    layer = [foregroundContainerView layer];
    device = [(NTKFaceView *)v5 device];
    [device screenScale];
    [layer setRasterizationScale:?];

    v14 = objc_alloc_init(NTKContainerView);
    dialComplicationContainerView = v5->_dialComplicationContainerView;
    v5->_dialComplicationContainerView = &v14->super;

    complicationContainerView = [(NTKFaceView *)v5 complicationContainerView];
    [complicationContainerView addSubview:v5->_dialComplicationContainerView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v27 layoutSubviews];
  bounds = [(NTKAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x2318D8E70](bounds);
  v14 = v13;
  [(NTKAnalogFaceView *)self _contentCenterOffset];
  v16 = v12 + v15;
  [(NTKAnalogFaceView *)self _contentCenterOffset];
  v18 = v14 + v17;
  [(UIView *)self->_timeViewContainer setFrame:v5, v7, v9, v11];
  contentView = [(NTKFaceView *)self contentView];
  [contentView setCenter:{v16, v18}];

  contentView2 = [(NTKFaceView *)self contentView];
  [contentView2 setBounds:{v5, v7, v9, v11}];

  timeView = [(NTKFaceView *)self timeView];
  [timeView setCenter:{v16, v18}];

  timeView2 = [(NTKFaceView *)self timeView];
  [timeView2 setBounds:{v5, v7, v9, v11}];

  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  [complicationContainerView setCenter:{v12, v14}];

  complicationContainerView2 = [(NTKFaceView *)self complicationContainerView];
  [complicationContainerView2 setBounds:{v5, v7, v9, v11}];

  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
  dialComplicationContainerView = self->_dialComplicationContainerView;
  complicationContainerView3 = [(NTKFaceView *)self complicationContainerView];
  [complicationContainerView3 bounds];
  [(UIView *)dialComplicationContainerView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _loadSnapshotContentViews];
  [(NTKAnalogFaceView *)self _createTimeViewIfNecessary];
  timeView = [(NTKFaceView *)self timeView];
  [timeView setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];

  [(NTKAnalogFaceView *)self _setContentViewsOpaque:1];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _unloadSnapshotContentViews];
  timeView = [(NTKFaceView *)self timeView];
  [timeView removeFromSuperview];

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
  timeView = [(NTKFaceView *)self timeView];
  [timeView setDataMode:{-[NTKFaceView dataMode](self, "dataMode")}];
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v4.receiver = self;
  v4.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v4 _applyShowContentForUnadornedSnapshot];
  timeView = [(NTKFaceView *)self timeView];
  [timeView setHidden:{-[NTKFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
}

- (void)_loadContentToReplaceUnadornedSnapshot
{
  v3.receiver = self;
  v3.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v3 _loadContentToReplaceUnadornedSnapshot];
  [(NTKAnalogFaceView *)self _updateDateComplicationPositionIfNecessary];
}

- (id)_complicationContainerViewForSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKAnalogFaceView *)self _isComplicationSlotInsideDial:slotCopy])
  {
    v5 = self->_dialComplicationContainerView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKAnalogFaceView;
    v5 = [(NTKFaceView *)&v8 _complicationContainerViewForSlot:slotCopy];
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
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  layer = [foregroundContainerView layer];
  [layer setShouldRasterize:0];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKAnalogFaceView;
  [(NTKFaceView *)&v5 _configureForEditMode:?];
  [(NTKAnalogFaceView *)self _setTimeViewBehindContentView:[(NTKAnalogFaceView *)self _timeViewBehindContentForEditMode:mode]];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v18.receiver = self;
  v18.super_class = NTKAnalogFaceView;
  [NTKFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  if (fraction >= 0.5)
  {
    modeCopy = editMode;
  }

  else
  {
    modeCopy = mode;
  }

  [(NTKAnalogFaceView *)self _setTimeViewBehindContentView:[(NTKAnalogFaceView *)self _timeViewBehindContentForEditMode:modeCopy]];
  [(NTKAnalogFaceView *)self _shouldRasterizeForegroundContainerViewForEditMode:editMode];
  [(NTKAnalogFaceView *)self _shouldRasterizeForegroundContainerViewForEditMode:mode];
  CLKInterpolateBetweenFloatsUnclipped();
  v11 = v10;
  v12 = v10 == 1.0;
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  layer = [foregroundContainerView layer];
  shouldRasterize = [layer shouldRasterize];

  if (v12 != shouldRasterize)
  {
    foregroundContainerView2 = [(NTKFaceView *)self foregroundContainerView];
    layer2 = [foregroundContainerView2 layer];
    [layer2 setShouldRasterize:v11 == 1.0];
  }
}

- (void)_setContentViewsOpaque:(BOOL)opaque
{
  if (self->__contentViewsOpaque != opaque)
  {
    self->__contentViewsOpaque = opaque;
    contentView = [(NTKFaceView *)self contentView];
    [contentView setOpaque:self->__contentViewsOpaque];
  }
}

- (void)_configureTimeView:(id)view
{
  v3 = MEMORY[0x277D75348];
  viewCopy = view;
  whiteColor = [v3 whiteColor];
  minuteHandView = [viewCopy minuteHandView];
  [minuteHandView setColor:whiteColor];

  hourHandView = [viewCopy hourHandView];

  [hourHandView setColor:whiteColor];
}

- (CGPoint)_contentCenterOffset
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_setTimeViewBehindContentView:(BOOL)view
{
  if (self->__timeViewBehindContentView != view)
  {
    self->__timeViewBehindContentView = view;
    timeView = [(NTKFaceView *)self timeView];
    timeViewBehindContentView = self->__timeViewBehindContentView;
    v8 = timeView;
    superview = [timeView superview];
    v7 = superview;
    if (timeViewBehindContentView)
    {
      [superview sendSubviewToBack:v8];
    }

    else
    {
      [superview bringSubviewToFront:v8];
    }
  }
}

- (void)_createTimeViewIfNecessary
{
  timeView = [(NTKFaceView *)self timeView];

  if (!timeView)
  {
    v4 = objc_alloc([objc_opt_class() _timeViewClass]);
    device = [(NTKFaceView *)self device];
    v6 = [v4 initForDevice:device];

    [(NTKAnalogFaceView *)self bounds];
    [v6 setFrame:?];
    [(NTKFaceView *)self setTimeView:v6];
    [(UIView *)self->_timeViewContainer addSubview:v6];
    [(NTKAnalogFaceView *)self _configureTimeView:v6];
  }
}

@end