@interface UIView(OverrideUserInterfaceStyle)
- (void)overrideUserInterfaceStyleBasedOnBackgroundColor:()OverrideUserInterfaceStyle;
@end

@implementation UIView(OverrideUserInterfaceStyle)

- (void)overrideUserInterfaceStyleBasedOnBackgroundColor:()OverrideUserInterfaceStyle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  CPLuminanceForColor();
  if (v3 >= 0.5)
  {
    [selfCopy setOverrideUserInterfaceStyle:1];
  }

  else
  {
    [selfCopy setOverrideUserInterfaceStyle:2];
  }

  objc_storeStrong(location, 0);
}

@end