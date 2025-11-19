@interface CALayer
@end

@implementation CALayer

void __55__CALayer_ITKUtilities__itk_autoFadeOutShapePointLayer__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.5];
  [*(a1 + 32) setOpacity:0.0];
  v2 = MEMORY[0x277CD9FF0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__CALayer_ITKUtilities__itk_autoFadeOutShapePointLayer__block_invoke_2;
  v3[3] = &unk_2797B03D8;
  v4 = *(a1 + 32);
  [v2 setCompletionBlock:v3];
  [MEMORY[0x277CD9FF0] commit];
}

void __55__CALayer_ITKUtilities__itk_autoFadeOutShapePointLayer__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  itk_dispatchMainAfterDelay();
}

@end