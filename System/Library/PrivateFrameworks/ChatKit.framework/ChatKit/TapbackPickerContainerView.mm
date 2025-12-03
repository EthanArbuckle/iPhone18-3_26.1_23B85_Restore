@interface TapbackPickerContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIColor)tintColor;
- (void)setTintColor:(id)color;
@end

@implementation TapbackPickerContainerView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerContainerView();
  tintColor = [(TapbackPickerContainerView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_190C773FC(color);
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190C772C0(v4, v6);

  return v8 & 1;
}

@end