@interface TapbackPickerContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIColor)tintColor;
- (void)setTintColor:(id)a3;
@end

@implementation TapbackPickerContainerView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerContainerView();
  v2 = [(TapbackPickerContainerView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_190C773FC(a3);
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190C772C0(v4, v6);

  return v8 & 1;
}

@end