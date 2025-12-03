@interface UIView(HKOBKAdditions)
- (double)hk_horizontalMarginForList:()HKOBKAdditions;
@end

@implementation UIView(HKOBKAdditions)

- (double)hk_horizontalMarginForList:()HKOBKAdditions
{
  window = [self window];

  if (window)
  {
    window2 = [self window];
    [window2 bounds];
    v8 = v7;
  }

  else
  {
    [self bounds];
    v8 = v9;
  }

  v10 = 24.0;
  if (_UISolariumEnabled())
  {
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    isiPad = [mEMORY[0x1E696C608] isiPad];

    if (isiPad && v8 >= 744.0)
    {
      v13 = a3 == 0;
      v14 = 88.0;
      v15 = 72.0;
    }

    else
    {
      v13 = a3 == 0;
      v14 = 38.0;
      v15 = 22.0;
    }

    if (v13)
    {
      return v14;
    }

    else
    {
      return v15;
    }
  }

  return v10;
}

@end