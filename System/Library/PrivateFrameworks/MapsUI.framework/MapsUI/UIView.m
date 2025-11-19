@interface UIView
@end

@implementation UIView

uint64_t __101__UIView_MUXCrossPlatformOperations___mapsui_performImageLoadingTransitionWithAnimations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __88__UIView_MUXCrossPlatformOperations___mapsui_animateWithDuration_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v2 setAnimationTimingFunction:v3];

  (*(*(a1 + 32) + 16))();
  v4 = MEMORY[0x1E6979518];

  return [v4 commit];
}

@end