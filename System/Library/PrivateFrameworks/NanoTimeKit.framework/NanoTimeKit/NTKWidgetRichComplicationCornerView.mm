@interface NTKWidgetRichComplicationCornerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKWidgetRichComplicationCornerView)initWithFamily:(int64_t)family;
- (int64_t)_widgetPositionFromComplicationPosition:(int64_t)position;
- (void)_configurePreviewViewController;
- (void)_configureWidgetHostViewController;
- (void)_createHitTestPathIfNecessary;
- (void)_updatePosition;
- (void)setCornerComplicationPosition:(int64_t)position;
@end

@implementation NTKWidgetRichComplicationCornerView

- (NTKWidgetRichComplicationCornerView)initWithFamily:(int64_t)family
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationCornerView;
  return [(NTKWidgetRichComplicationView *)&v4 initWithFamily:family];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKWidgetRichComplicationCornerView *)self _createHitTestPathIfNecessary];
  [(NTKWidgetRichComplicationCornerView *)self bounds];
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
  if (!self->_hitTestPath || ([(NTKWidgetRichComplicationCornerView *)self bounds], !CGRectEqualToRect(v19, self->_hitTestBounds)))
  {
    [(NTKWidgetRichComplicationCornerView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    cornerComplicationPosition = self->_cornerComplicationPosition;
    device = [(CDRichComplicationView *)self device];
    v13 = [(CDRichComplicationCornerUtilities *)NTKRichComplicationCornerUtilities hitTestPathWithViewBounds:cornerComplicationPosition position:device forDevice:v4, v6, v8, v10];
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = v13;

    [(NTKWidgetRichComplicationCornerView *)self bounds];
    self->_hitTestBounds.origin.x = v15;
    self->_hitTestBounds.origin.y = v16;
    self->_hitTestBounds.size.width = v17;
    self->_hitTestBounds.size.height = v18;
  }
}

- (void)_configureWidgetHostViewController
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationCornerView;
  [(NTKWidgetRichComplicationView *)&v4 _configureWidgetHostViewController];
  [(NTKWidgetRichComplicationCornerView *)self _updatePosition];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setShowsWidgetLabel:1];
}

- (void)_configurePreviewViewController
{
  v3.receiver = self;
  v3.super_class = NTKWidgetRichComplicationCornerView;
  [(NTKWidgetRichComplicationView *)&v3 _configurePreviewViewController];
  [(NTKWidgetRichComplicationCornerView *)self _updatePosition];
}

- (void)_updatePosition
{
  v3 = [(NTKWidgetRichComplicationCornerView *)self _widgetPositionFromComplicationPosition:self->_cornerComplicationPosition];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setCornerPosition:v3];
}

- (void)setCornerComplicationPosition:(int64_t)position
{
  if (self->_cornerComplicationPosition != position)
  {
    self->_cornerComplicationPosition = position;
    [(NTKWidgetRichComplicationCornerView *)self _updatePosition];
  }
}

- (int64_t)_widgetPositionFromComplicationPosition:(int64_t)position
{
  if (position < 4)
  {
    return position + 1;
  }

  else
  {
    return 0;
  }
}

@end