@interface NTKWidgetRichComplicationCornerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NTKWidgetRichComplicationCornerView)initWithFamily:(int64_t)a3;
- (int64_t)_widgetPositionFromComplicationPosition:(int64_t)a3;
- (void)_configurePreviewViewController;
- (void)_configureWidgetHostViewController;
- (void)_createHitTestPathIfNecessary;
- (void)_updatePosition;
- (void)setCornerComplicationPosition:(int64_t)a3;
@end

@implementation NTKWidgetRichComplicationCornerView

- (NTKWidgetRichComplicationCornerView)initWithFamily:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationCornerView;
  return [(NTKWidgetRichComplicationView *)&v4 initWithFamily:a3];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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
    v12 = [(CDRichComplicationView *)self device];
    v13 = [(CDRichComplicationCornerUtilities *)NTKRichComplicationCornerUtilities hitTestPathWithViewBounds:cornerComplicationPosition position:v12 forDevice:v4, v6, v8, v10];
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
  v3 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v3 setShowsWidgetLabel:1];
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
  v4 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v4 setCornerPosition:v3];
}

- (void)setCornerComplicationPosition:(int64_t)a3
{
  if (self->_cornerComplicationPosition != a3)
  {
    self->_cornerComplicationPosition = a3;
    [(NTKWidgetRichComplicationCornerView *)self _updatePosition];
  }
}

- (int64_t)_widgetPositionFromComplicationPosition:(int64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

@end