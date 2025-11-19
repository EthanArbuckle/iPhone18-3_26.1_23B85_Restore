@interface CUIColorSpaceGetExtendedGray
@end

@implementation CUIColorSpaceGetExtendedGray

CGColorSpaceRef ___CUIColorSpaceGetExtendedGray_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceExtendedGray);
  _CUIColorSpaceGetExtendedGray_sExtendedGrayColorSpace = result;
  return result;
}

@end