@interface UIViewController(EffectiveInterface)
- (uint64_t)dc_effectiveInterfaceOrientation;
- (void)dc_getEffectiveInterfaceOrientation:()EffectiveInterface andEffectiveInterfaceIdiom:;
@end

@implementation UIViewController(EffectiveInterface)

- (uint64_t)dc_effectiveInterfaceOrientation
{
  v2 = [a1 view];
  [v2 bounds];
  v4 = v3;
  v5 = [a1 view];
  [v5 bounds];
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
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    v20 = [a1 traitCollection];
    v9 = [v20 horizontalSizeClass];
    v10 = [v20 verticalSizeClass];
    v11 = v10;
    if (v9 == 1 && v10 == 2 || ([a1 view], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "bounds"), v16 = v15, objc_msgSend(a1, "view"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "bounds"), v19 = v18, v17, v14, v9 == 2) && v11 == 2 && v16 / v19 + 0.01 < 0.75)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v13 = [a1 dc_effectiveInterfaceOrientation];
      v12 = 1;
    }

    *a3 = v13;
    *a4 = v12;
  }

  else
  {
    *a3 = [a1 dc_effectiveInterfaceOrientation];
    *a4 = 0;
  }
}

@end