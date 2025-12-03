@interface CABackdropLayer(CoreMaterial_Internal)
+ (BOOL)mt_colorMatrixForOpacity:()CoreMaterial_Internal;
+ (id)mt_keyPathForColorMatrixDrivenInoperativeOpacity;
+ (id)mt_keyPathForColorMatrixDrivenOpacity;
@end

@implementation CABackdropLayer(CoreMaterial_Internal)

+ (id)mt_keyPathForColorMatrixDrivenOpacity
{
  v0 = MTFilterKeyPathForFilter(@"opacityColorMatrix");
  v1 = [v0 stringByAppendingFormat:@".%@", @"inputColorMatrix"];

  return v1;
}

+ (id)mt_keyPathForColorMatrixDrivenInoperativeOpacity
{
  v0 = MTFilterKeyPathForFilter(@"inoperativeColorMatrix");
  v1 = [v0 stringByAppendingFormat:@".%@", @"inputColorMatrix"];

  return v1;
}

+ (BOOL)mt_colorMatrixForOpacity:()CoreMaterial_Internal
{
  v4 = MEMORY[0x1E6979280];
  v5 = *(MEMORY[0x1E6979280] + 48);
  *(self + 32) = *(MEMORY[0x1E6979280] + 32);
  *(self + 48) = v5;
  *(self + 64) = v4[4];
  v6 = v4[1];
  *self = *v4;
  *(self + 16) = v6;
  result = MTFloatIsOne(a2);
  if (!result)
  {
    v8 = a2;
    *(self + 72) = v8;
  }

  return result;
}

@end