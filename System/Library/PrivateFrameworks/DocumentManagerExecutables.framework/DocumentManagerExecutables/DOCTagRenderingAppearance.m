@interface DOCTagRenderingAppearance
- (double)defaultBorderWidth;
- (id)_init;
@end

@implementation DOCTagRenderingAppearance

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DOCTagRenderingAppearance;
  return [(DOCTagRenderingAppearance *)&v3 init];
}

- (double)defaultBorderWidth
{
  [(DOCTagRenderingAppearance *)self _defaultBorderWidth];
  v3 = v2;
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = 1.0;
  if (IsBoldTextEnabled)
  {
    v5 = 2.0;
  }

  return v3 * v5;
}

@end