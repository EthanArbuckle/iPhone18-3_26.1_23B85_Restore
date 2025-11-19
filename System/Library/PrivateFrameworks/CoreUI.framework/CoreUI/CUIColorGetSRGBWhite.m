@interface CUIColorGetSRGBWhite
@end

@implementation CUIColorGetSRGBWhite

CGColorRef ___CUIColorGetSRGBWhite_block_invoke()
{
  result = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  _CUIColorGetSRGBWhite_sWhiteColor = result;
  return result;
}

@end