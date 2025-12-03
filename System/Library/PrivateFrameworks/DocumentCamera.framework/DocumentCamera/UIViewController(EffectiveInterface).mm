@interface UIViewController(EffectiveInterface)
- (uint64_t)dc_effectiveInterfaceOrientation;
- (void)dc_getEffectiveInterfaceOrientation:()EffectiveInterface andEffectiveInterfaceIdiom:;
@end

@implementation UIViewController(EffectiveInterface)

- (uint64_t)dc_effectiveInterfaceOrientation
{
  view = [self view];
  [view bounds];
  v4 = v3;
  view2 = [self view];
  [view2 bounds];
  v7 = v6;

  if (v4 <= v7)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (void)dc_getEffectiveInterfaceOrientation:()EffectiveInterface andEffectiveInterfaceIdiom:
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    traitCollection = [self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    verticalSizeClass = [traitCollection verticalSizeClass];
    v11 = verticalSizeClass;
    if (horizontalSizeClass == 1 && verticalSizeClass == 2 || ([self view], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bounds"), v16 = v15, objc_msgSend(self, "view"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "bounds"), v19 = v18, v17, v14, horizontalSizeClass == 2) && v11 == 2 && v16 / v19 + 0.01 < 0.75)
    {
      v12 = 0;
      dc_effectiveInterfaceOrientation = 1;
    }

    else
    {
      dc_effectiveInterfaceOrientation = [self dc_effectiveInterfaceOrientation];
      v12 = 1;
    }

    *a3 = dc_effectiveInterfaceOrientation;
    *a4 = v12;
  }

  else
  {
    *a3 = [self dc_effectiveInterfaceOrientation];
    *a4 = 0;
  }
}

@end