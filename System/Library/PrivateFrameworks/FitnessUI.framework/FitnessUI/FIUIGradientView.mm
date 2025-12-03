@interface FIUIGradientView
- (FIUIGradientView)init;
- (void)layoutSubviews;
- (void)setColors:(id)colors;
- (void)setLocations:(id)locations;
@end

@implementation FIUIGradientView

- (FIUIGradientView)init
{
  v8.receiver = self;
  v8.super_class = FIUIGradientView;
  v2 = [(FIUIGradientView *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(FIUIShapeView);
    maskView = v2->_maskView;
    v2->_maskView = v3;

    gradientLayer = [(FIUIGradientView *)v2 gradientLayer];
    layer = [(FIUIShapeView *)v2->_maskView layer];
    [gradientLayer setMask:layer];
  }

  return v2;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = FIUIGradientView;
  [(FIUIGradientView *)&v4 layoutSubviews];
  maskView = self->_maskView;
  [(FIUIGradientView *)self bounds];
  [(FIUIShapeView *)maskView setFrame:?];
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  gradientLayer = [(FIUIGradientView *)self gradientLayer];
  [gradientLayer setColors:colorsCopy];
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  gradientLayer = [(FIUIGradientView *)self gradientLayer];
  [gradientLayer setLocations:locationsCopy];
}

@end