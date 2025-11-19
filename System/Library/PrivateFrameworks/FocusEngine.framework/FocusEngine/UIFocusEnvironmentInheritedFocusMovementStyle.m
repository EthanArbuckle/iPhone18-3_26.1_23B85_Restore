@interface UIFocusEnvironmentInheritedFocusMovementStyle
@end

@implementation UIFocusEnvironmentInheritedFocusMovementStyle

void ___UIFocusEnvironmentInheritedFocusMovementStyle_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 _preferredFocusMovementStyle];
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }
}

@end