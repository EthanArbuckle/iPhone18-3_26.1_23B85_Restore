@interface CUIColorSpaceGetExtendedRangeSRGB
@end

@implementation CUIColorSpaceGetExtendedRangeSRGB

CGColorSpaceRef ___CUIColorSpaceGetExtendedRangeSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  _CUIColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace = result;
  return result;
}

@end