@interface CUIColorSpaceGetExtendedLinearSRGB
@end

@implementation CUIColorSpaceGetExtendedLinearSRGB

CGColorSpaceRef ___CUIColorSpaceGetExtendedLinearSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearSRGB);
  _CUIColorSpaceGetExtendedLinearSRGB_sExtendedLinearSRGBColorSpace = result;
  return result;
}

@end