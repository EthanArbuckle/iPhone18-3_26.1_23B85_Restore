@interface UIView(OverrideUserInterfaceStyle)
- (void)overrideUserInterfaceStyleBasedOnBackgroundColor:()OverrideUserInterfaceStyle;
@end

@implementation UIView(OverrideUserInterfaceStyle)

- (void)overrideUserInterfaceStyleBasedOnBackgroundColor:()OverrideUserInterfaceStyle
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  CPLuminanceForColor();
  if (v3 >= 0.5)
  {
    [v5 setOverrideUserInterfaceStyle:1];
  }

  else
  {
    [v5 setOverrideUserInterfaceStyle:2];
  }

  objc_storeStrong(location, 0);
}

@end