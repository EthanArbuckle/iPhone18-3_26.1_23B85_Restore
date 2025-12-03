@interface UIAction(FocusUI)
- (uint64_t)fcui_isEqualToAction:()FocusUI;
@end

@implementation UIAction(FocusUI)

- (uint64_t)fcui_isEqualToAction:()FocusUI
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && [self isEqual:v4])
  {
    title = [self title];
    title2 = [v5 title];
    if (BSEqualStrings())
    {
      discoverabilityTitle = [self discoverabilityTitle];
      discoverabilityTitle2 = [v5 discoverabilityTitle];
      v10 = BSEqualStrings();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end