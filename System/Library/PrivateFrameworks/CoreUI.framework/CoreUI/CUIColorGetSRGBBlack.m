@interface CUIColorGetSRGBBlack
@end

@implementation CUIColorGetSRGBBlack

CGColorRef ___CUIColorGetSRGBBlack_block_invoke()
{
  result = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  _CUIColorGetSRGBBlack_sBlackColor = result;
  return result;
}

@end