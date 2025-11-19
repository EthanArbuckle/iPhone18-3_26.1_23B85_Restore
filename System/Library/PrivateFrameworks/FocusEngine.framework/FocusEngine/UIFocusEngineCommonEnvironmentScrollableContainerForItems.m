@interface UIFocusEngineCommonEnvironmentScrollableContainerForItems
@end

@implementation UIFocusEngineCommonEnvironmentScrollableContainerForItems

uint64_t ___UIFocusEngineCommonEnvironmentScrollableContainerForItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___UIFocusEngineCommonEnvironmentScrollableContainerForItems_block_invoke_2;
  v9[3] = &unk_279014E40;
  v5 = v3;
  v10 = v5;
  if ([v4 indexOfObjectPassingTest:v9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    CanScroll = 0;
  }

  else
  {
    v7 = [v5 scrollableContainer];
    CanScroll = _UIFocusEngineScrollableContainerCanScroll(v7);
  }

  return CanScroll;
}

BOOL ___UIFocusEngineCommonEnvironmentScrollableContainerForItems_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 scrollableContainer];
  v4 = [*(a1 + 32) scrollableContainer];
  v5 = v3 == v4;

  return v5;
}

@end