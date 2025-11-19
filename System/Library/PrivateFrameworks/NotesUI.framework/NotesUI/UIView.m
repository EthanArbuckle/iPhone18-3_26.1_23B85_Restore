@interface UIView
@end

@implementation UIView

uint64_t __38__UIView_IC__ic_viewControllerManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_window];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void __39__UIView_IC__ic_imageRenderedFromLayer__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

void __75__UIView_IC__ic_imageRenderedFromViewHierarchyAfterScreenUpdates_fallback___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  [v3 bounds];
  if (([v3 drawViewHierarchyInRect:*(a1 + 48) afterScreenUpdates:?] & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }
  }
}

void __28__UIView_IC__ic_renderImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

uint64_t __74__UIView_IC__ic_animateWithDuration_timingFunction_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __66__UIView_Utilities__ic_animateWithDuration_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end