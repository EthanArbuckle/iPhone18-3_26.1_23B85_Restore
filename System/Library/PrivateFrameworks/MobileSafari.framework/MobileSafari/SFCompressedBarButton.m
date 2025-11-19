@interface SFCompressedBarButton
@end

@implementation SFCompressedBarButton

uint64_t __41___SFCompressedBarButton_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = 0.05;
  if (!*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 744) setAlpha:v1];
}

@end