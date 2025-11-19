@interface CUIColorSpaceGetGenericRGB
@end

@implementation CUIColorSpaceGetGenericRGB

CGColorSpaceRef ___CUIColorSpaceGetGenericRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
  _CUIColorSpaceGetGenericRGB_sGenericRGBColorSpace = result;
  return result;
}

@end