@interface UIKeyboard(CKUtilities)
+ (void)__ck_appStripVerticalPadding;
@end

@implementation UIKeyboard(CKUtilities)

+ (void)__ck_appStripVerticalPadding
{
  if (([MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar] & 1) == 0)
  {
    [MEMORY[0x1E69DCBB8] keyplanePadding];
    if (CKMainScreenScale_once_17 != -1)
    {
      +[UIKeyboard(CKUtilities) __ck_appStripVerticalPadding];
    }
  }
}

@end