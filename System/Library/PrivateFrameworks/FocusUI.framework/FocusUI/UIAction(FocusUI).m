@interface UIAction(FocusUI)
- (uint64_t)fcui_isEqualToAction:()FocusUI;
@end

@implementation UIAction(FocusUI)

- (uint64_t)fcui_isEqualToAction:()FocusUI
{
  v4 = a3;
  v5 = v4;
  if (a1 == v4)
  {
    v10 = 1;
  }

  else if (v4 && [a1 isEqual:v4])
  {
    v6 = [a1 title];
    v7 = [v5 title];
    if (BSEqualStrings())
    {
      v8 = [a1 discoverabilityTitle];
      v9 = [v5 discoverabilityTitle];
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