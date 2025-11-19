@interface CIColor(CoreUIAdditions)
+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:;
+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:alpha:;
@end

@implementation CIColor(CoreUIAdditions)

+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:alpha:
{
  SRGB = _CUIColorSpaceGetSRGB();
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v9 = CGColorCreate(SRGB, components);
  v10 = [CIColor colorWithCGColor:v9];
  CGColorRelease(v9);
  return v10;
}

+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:
{
  SRGB = _CUIColorSpaceGetSRGB();
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = 1.0;
  v7 = CGColorCreate(SRGB, components);
  v8 = [CIColor colorWithCGColor:v7];
  CGColorRelease(v7);
  return v8;
}

@end