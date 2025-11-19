@interface UIFocusEnvironmentResolvedRotaryFocusMovementAxis
@end

@implementation UIFocusEnvironmentResolvedRotaryFocusMovementAxis

void ___UIFocusEnvironmentResolvedRotaryFocusMovementAxis_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = _UIFocusEnvironmentRotaryFocusMovementAxis(v7);
  if (v6 != -1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

@end