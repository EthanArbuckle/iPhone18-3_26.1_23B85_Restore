@interface CSMagSafeAccessoryView
- (CSMagSafeAccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation CSMagSafeAccessoryView

- (CSMagSafeAccessoryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryView;
  v3 = [(CSMagSafeAccessoryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CSMagSafeAccessoryConfiguration defaultConfiguration];
    [(CSMagSafeAccessoryView *)v3 setConfiguration:v4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CSMagSafeAccessoryView;
  [(CSMagSafeAccessoryView *)&v12 layoutSubviews];
  v3 = [(CSMagSafeAccessoryView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSMagSafeAccessoryView *)self setFrame:v5, v7, v9, v11];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
  }
}

@end