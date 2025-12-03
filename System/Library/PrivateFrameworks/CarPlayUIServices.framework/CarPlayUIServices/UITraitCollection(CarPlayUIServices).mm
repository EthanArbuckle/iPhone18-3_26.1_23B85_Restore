@interface UITraitCollection(CarPlayUIServices)
- (uint64_t)iconStyledUserInterfaceStyle;
@end

@implementation UITraitCollection(CarPlayUIServices)

- (uint64_t)iconStyledUserInterfaceStyle
{
  userInterfaceStyle = [self userInterfaceStyle];
  sbh_iconImageAppearance = [self sbh_iconImageAppearance];
  appearanceType = [sbh_iconImageAppearance appearanceType];

  if (appearanceType <= 5)
  {
    return qword_243237C40[appearanceType];
  }

  return userInterfaceStyle;
}

@end