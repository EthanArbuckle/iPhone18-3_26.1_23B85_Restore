@interface CUIColorSpaceGetSRGB
@end

@implementation CUIColorSpaceGetSRGB

CGColorSpaceRef ___CUIColorSpaceGetSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  _CUIColorSpaceGetSRGB_sSRGBColorSpace = result;
  return result;
}

@end