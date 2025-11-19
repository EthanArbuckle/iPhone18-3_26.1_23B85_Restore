@interface CALayer
@end

@implementation CALayer

uint64_t __70__CALayer_MTCoreMaterialVisualStylingAdditions__mt_applyVisualStying___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) contents];

  v5 = *(a1 + 32);
  if (v4)
  {

    return [v5 setContentsMultiplyColor:a2];
  }

  else
  {

    return [v5 setBackgroundColor:a2];
  }
}

@end