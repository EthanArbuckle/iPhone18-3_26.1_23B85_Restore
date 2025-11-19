@interface UIImage(MaterialKitAdditions)
+ (id)mt_shadowTemplateImageWithAttributes:()MaterialKitAdditions scale:maskCornerRadius:continuousCorners:maskSize:resizableCapInsets:;
@end

@implementation UIImage(MaterialKitAdditions)

+ (id)mt_shadowTemplateImageWithAttributes:()MaterialKitAdditions scale:maskCornerRadius:continuousCorners:maskSize:resizableCapInsets:
{
  LODWORD(v8) = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 24);
  v5 = MTShadowImageCreateWithCoreMaterialShadowProperties();
  v6 = [MEMORY[0x277D755B8] imageWithCGImage:v5 scale:0 orientation:{a1, v8, v9, v10}];
  CGImageRelease(v5);

  return v6;
}

@end