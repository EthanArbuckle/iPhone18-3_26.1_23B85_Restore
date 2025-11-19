@interface CUIColorSpaceGetDisplayP3
@end

@implementation CUIColorSpaceGetDisplayP3

CGColorSpaceRef ___CUIColorSpaceGetDisplayP3_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  _CUIColorSpaceGetDisplayP3_sDisplayP3ColorSpace = result;
  return result;
}

@end