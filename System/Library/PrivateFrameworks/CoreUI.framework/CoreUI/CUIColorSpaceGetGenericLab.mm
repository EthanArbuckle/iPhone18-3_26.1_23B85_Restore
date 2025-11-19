@interface CUIColorSpaceGetGenericLab
@end

@implementation CUIColorSpaceGetGenericLab

CGColorSpaceRef ___CUIColorSpaceGetGenericLab_block_invoke()
{
  result = CGColorSpaceCreateWithName(kCGColorSpaceGenericLab);
  _CUIColorSpaceGetGenericLab_sGenericLabColorSpace = result;
  return result;
}

@end