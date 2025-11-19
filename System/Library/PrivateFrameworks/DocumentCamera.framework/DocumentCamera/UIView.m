@interface UIView
@end

@implementation UIView

void __39__UIView_DC__dc_imageRenderedFromLayer__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

uint64_t __47__UIView_DC__dc_imageRenderedFromViewHierarchy__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

void __28__UIView_DC__dc_renderImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

uint64_t __74__UIView_DC__dc_animateWithDuration_timingFunction_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end