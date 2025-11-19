@interface UITraitCollection(CarPlayUIServices)
- (uint64_t)iconStyledUserInterfaceStyle;
@end

@implementation UITraitCollection(CarPlayUIServices)

- (uint64_t)iconStyledUserInterfaceStyle
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 sbh_iconImageAppearance];
  v4 = [v3 appearanceType];

  if (v4 <= 5)
  {
    return qword_243237C40[v4];
  }

  return v2;
}

@end