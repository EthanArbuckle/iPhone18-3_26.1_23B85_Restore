@interface CSMagSafeAccessoryView
- (CSMagSafeAccessoryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation CSMagSafeAccessoryView

- (CSMagSafeAccessoryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryView;
  v3 = [(CSMagSafeAccessoryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  superview = [(CSMagSafeAccessoryView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSMagSafeAccessoryView *)self setFrame:v5, v7, v9, v11];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
  }
}

@end