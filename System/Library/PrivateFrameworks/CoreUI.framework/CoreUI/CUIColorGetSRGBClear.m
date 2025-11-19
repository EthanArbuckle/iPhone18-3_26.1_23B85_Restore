@interface CUIColorGetSRGBClear
@end

@implementation CUIColorGetSRGBClear

CGColorRef ___CUIColorGetSRGBClear_block_invoke()
{
  result = CGColorCreateSRGB(0.0, 0.0, 0.0, 0.0);
  _CUIColorGetSRGBClear_sClearColor = result;
  return result;
}

@end