@interface BKUIStyle
+ (UIEdgeInsets)_layoutMarginsForPearEnrollView;
+ (UIEdgeInsets)_obkStyleButtonMarginsForParentBounds:(CGRect)bounds;
+ (UIEdgeInsets)buttonMarginsForPhones;
+ (double)_buttonSizeForPads;
+ (id)sharedStyle;
@end

@implementation BKUIStyle

+ (id)sharedStyle
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___BKUIStyle;
  v2 = objc_msgSendSuper2(&v4, sel_sharedStyle);

  return v2;
}

+ (UIEdgeInsets)_layoutMarginsForPearEnrollView
{
  v2 = +[BKUIDevice sharedInstance];
  isIdiomPad = [v2 isIdiomPad];

  if (isIdiomPad)
  {
    v4 = 88.0;
  }

  else
  {
    v5 = +[BKUIDevice sharedInstance];
    if ([v5 isD32Sized])
    {

      v4 = 24.0;
    }

    else
    {
      v6 = +[BKUIDevice sharedInstance];
      isN84 = [v6 isN84];

      v4 = 24.0;
      if (!isN84)
      {
        v4 = 44.0;
      }
    }
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = v4;
  result.right = v10;
  result.bottom = v9;
  result.left = v4;
  result.top = v8;
  return result;
}

+ (UIEdgeInsets)_obkStyleButtonMarginsForParentBounds:(CGRect)bounds
{
  v4 = [BKUIDevice sharedInstance:bounds.origin.x];
  isIdiomPad = [v4 isIdiomPad];

  if (isIdiomPad)
  {
    v6 = 0.0;
    v7 = 132.0;
    v8 = 132.0;
    v9 = 0.0;
  }

  else
  {
    [self _layoutMarginsForPearEnrollView];
  }

  result.right = v8;
  result.bottom = v9;
  result.left = v7;
  result.top = v6;
  return result;
}

+ (UIEdgeInsets)buttonMarginsForPhones
{
  v2 = 44.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 44.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

+ (double)_buttonSizeForPads
{
  if (!_os_feature_enabled_impl())
  {
    return 360.0;
  }

  v2 = _os_feature_enabled_impl();
  result = 360.0;
  if (v2)
  {
    return 326.0;
  }

  return result;
}

@end