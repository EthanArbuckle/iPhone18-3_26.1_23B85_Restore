@interface UIView
@end

@implementation UIView

uint64_t __47__UIView_ITKUtilities__itk_setHidden_animated___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setItk_alpha:v1];
}

void __66__UIView_ITKUtilities__itk_autoFadeOutLayerWithPath_fadeOutDelay___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.5];
  [*(a1 + 32) setOpacity:0.0];
  v2 = MEMORY[0x277CD9FF0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__UIView_ITKUtilities__itk_autoFadeOutLayerWithPath_fadeOutDelay___block_invoke_2;
  v3[3] = &unk_2797B03D8;
  v4 = *(a1 + 32);
  [v2 setCompletionBlock:v3];
  [MEMORY[0x277CD9FF0] commit];
}

void __66__UIView_ITKUtilities__itk_autoFadeOutLayerWithPath_fadeOutDelay___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  itk_dispatchMainAfterDelay();
}

uint64_t __71__UIView_ITKUtilities__itk_renderImageFromViewBackingStoreWithSubrect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  ITKMultiplyPointScalar();
  v2 = *(a1 + 32);

  return [v2 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

@end