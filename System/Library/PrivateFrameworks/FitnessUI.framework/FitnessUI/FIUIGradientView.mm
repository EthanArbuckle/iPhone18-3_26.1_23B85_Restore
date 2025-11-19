@interface FIUIGradientView
- (FIUIGradientView)init;
- (void)layoutSubviews;
- (void)setColors:(id)a3;
- (void)setLocations:(id)a3;
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

    v5 = [(FIUIGradientView *)v2 gradientLayer];
    v6 = [(FIUIShapeView *)v2->_maskView layer];
    [v5 setMask:v6];
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

- (void)setColors:(id)a3
{
  v4 = a3;
  v5 = [(FIUIGradientView *)self gradientLayer];
  [v5 setColors:v4];
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(FIUIGradientView *)self gradientLayer];
  [v5 setLocations:v4];
}

@end