@interface UIView(HKOBKAdditions)
- (double)hk_horizontalMarginForList:()HKOBKAdditions;
@end

@implementation UIView(HKOBKAdditions)

- (double)hk_horizontalMarginForList:()HKOBKAdditions
{
  v5 = [a1 window];

  if (v5)
  {
    v6 = [a1 window];
    [v6 bounds];
    v8 = v7;
  }

  else
  {
    [a1 bounds];
    v8 = v9;
  }

  v10 = 24.0;
  if (_UISolariumEnabled())
  {
    v11 = [MEMORY[0x1E696C608] sharedBehavior];
    v12 = [v11 isiPad];

    if (v12 && v8 >= 744.0)
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