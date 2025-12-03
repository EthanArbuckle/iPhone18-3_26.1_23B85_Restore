@interface NTKWidgetRichComplicationCircularBezelView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)circularCenterPoint;
- (NTKWidgetRichComplicationCircularBezelView)initWithFamily:(int64_t)family;
- (void)_configurePreviewViewController;
- (void)_configureWidgetHostViewController;
- (void)_createHitTestPathIfNecessary;
- (void)_updateBezelContentCenter;
- (void)curvedLabelAngularWidthChanged;
- (void)layoutSubviews;
- (void)setPlatterColor:(id)color;
@end

@implementation NTKWidgetRichComplicationCircularBezelView

- (NTKWidgetRichComplicationCircularBezelView)initWithFamily:(int64_t)family
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationCircularBezelView;
  return [(NTKWidgetRichComplicationInlineView *)&v4 initWithFamily:family];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKWidgetRichComplicationCircularBezelView;
  [(NTKWidgetRichComplicationInlineView *)&v3 layoutSubviews];
  [(NTKWidgetRichComplicationCircularBezelView *)self _updateBezelContentCenter];
  [(NTKWidgetRichComplicationCircularBezelView *)self circularCenterPoint];
  [(UIView *)self->_backgroundPlatterView setCenter:?];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKWidgetRichComplicationCircularBezelView *)self _createHitTestPathIfNecessary];
  [(NTKWidgetRichComplicationCircularBezelView *)self bounds];
  v11.x = x;
  v11.y = y;
  v7 = CGRectContainsPoint(v12, v11);
  if (v7)
  {
    hitTestPath = self->_hitTestPath;

    LOBYTE(v7) = [(UIBezierPath *)hitTestPath containsPoint:x, y];
  }

  return v7;
}

- (void)_createHitTestPathIfNecessary
{
  if (!self->_hitTestPath || ([(NTKWidgetRichComplicationCircularBezelView *)self bounds], !CGRectEqualToRect(v19, self->_hitTestBounds)))
  {
    [(NTKWidgetRichComplicationCircularBezelView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    hitTestShape = self->_hitTestShape;
    device = [(CDRichComplicationView *)self device];
    v13 = [NTKRichComplicationBezelUtilities hitTestPathWithViewBounds:hitTestShape shape:device shapeFrame:v4 forDevice:v6, v8, v10, self->_hitTestShapeFrame.origin.x, self->_hitTestShapeFrame.origin.y, self->_hitTestShapeFrame.size.width, self->_hitTestShapeFrame.size.height];
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = v13;

    [(NTKWidgetRichComplicationCircularBezelView *)self bounds];
    self->_hitTestBounds.origin.x = v15;
    self->_hitTestBounds.origin.y = v16;
    self->_hitTestBounds.size.width = v17;
    self->_hitTestBounds.size.height = v18;
  }
}

- (void)_configureWidgetHostViewController
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationCircularBezelView;
  [(NTKWidgetRichComplicationInlineView *)&v4 _configureWidgetHostViewController];
  [(NTKWidgetRichComplicationCircularBezelView *)self _updateBezelContentCenter];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setShowsWidgetLabel:1];
}

- (void)_configurePreviewViewController
{
  v3.receiver = self;
  v3.super_class = NTKWidgetRichComplicationCircularBezelView;
  [(NTKWidgetRichComplicationView *)&v3 _configurePreviewViewController];
  [(NTKWidgetRichComplicationCircularBezelView *)self _updateBezelContentCenter];
}

- (void)setPlatterColor:(id)color
{
  colorCopy = color;
  backgroundPlatterView = self->_backgroundPlatterView;
  v9 = colorCopy;
  if (colorCopy)
  {
    if (!backgroundPlatterView)
    {
      v6 = objc_opt_new();
      v7 = self->_backgroundPlatterView;
      self->_backgroundPlatterView = v6;

      [(NTKWidgetRichComplicationCircularBezelView *)self addSubview:self->_backgroundPlatterView];
      [(NTKWidgetRichComplicationCircularBezelView *)self insertSubview:self->_backgroundPlatterView atIndex:0];
      colorCopy = v9;
      backgroundPlatterView = self->_backgroundPlatterView;
    }

    [(UIView *)backgroundPlatterView setBackgroundColor:colorCopy];
    [(CDRichComplicationView *)self device];
    objc_claimAutoreleasedReturnValue();
    CDGraphicSubdialComplicationDiameter();
  }

  [(UIView *)backgroundPlatterView removeFromSuperview];
  v8 = self->_backgroundPlatterView;
  self->_backgroundPlatterView = 0;
}

- (void)curvedLabelAngularWidthChanged
{
  v20.receiver = self;
  v20.super_class = NTKWidgetRichComplicationCircularBezelView;
  [(NTKWidgetRichComplicationInlineView *)&v20 curvedLabelAngularWidthChanged];
  [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
  if (fabs(v3) >= 0.00000011920929)
  {
    [(NTKWidgetRichComplicationCircularBezelView *)self bounds];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v14 = 2;
  }

  else
  {
    device = [(CDRichComplicationView *)self device];
    NTKWhistlerSubdialComplicationDiameter(device);

    [(NTKWidgetRichComplicationCircularBezelView *)self circularCenterPoint];
    device2 = [(CDRichComplicationView *)self device];
    CLKRectCenteredAboutPointForDevice();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = 0;
  }

  if (v14 != self->_hitTestShape || (v21.origin.x = v7, v21.origin.y = v9, v21.size.width = v11, v21.size.height = v13, !CGRectEqualToRect(v21, self->_hitTestShapeFrame)))
  {
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = 0;

    self->_hitTestShape = v14;
    self->_hitTestShapeFrame.origin.x = v7;
    self->_hitTestShapeFrame.origin.y = v9;
    self->_hitTestShapeFrame.size.width = v11;
    self->_hitTestShapeFrame.size.height = v13;
  }
}

- (void)_updateBezelContentCenter
{
  [(NTKWidgetRichComplicationCircularBezelView *)self circularCenterPoint];
  v4 = v3;
  v6 = v5;
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setBezelContentCenter:{v4, v6}];
}

- (CGPoint)circularCenterPoint
{
  x = self->_circularCenterPoint.x;
  y = self->_circularCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end