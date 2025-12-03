@interface UIImage(MaterialKitPrivateAdditions)
+ (id)mt_resizableShadowTemplateImageWithAttributes:()MaterialKitPrivateAdditions scale:maskCornerRadius:continuousCorners:maskSize:;
- (id)_mt_imageWithShadowWithAttributes:()MaterialKitPrivateAdditions userInterfaceStyle:;
- (id)mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:()MaterialKitPrivateAdditions;
@end

@implementation UIImage(MaterialKitPrivateAdditions)

+ (id)mt_resizableShadowTemplateImageWithAttributes:()MaterialKitPrivateAdditions scale:maskCornerRadius:continuousCorners:maskSize:
{
  MTDimensionsForContinuousCornerRadiusInBounds();
  v15 = v14;
  v17 = v16;
  MTResizableAreaForCornerDimensionsInBounds();
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f.%f.%f.%f.%f.%f.%i.%f.%f.%f.%f", *a7, *(a7 + 1), *(a7 + 2), *(a7 + 3), *&self, *&a2, a8, v15, v17, v18, v19];
  v21 = +[MTMappedImageCache sharedCache];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v22 = a7[1];
  v31 = *a7;
  v29[2] = __136__UIImage_MaterialKitPrivateAdditions__mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize___block_invoke;
  v29[3] = &unk_27835D2B0;
  v32 = v22;
  selfCopy = self;
  v34 = a2;
  v37 = a8;
  v35 = a3;
  v36 = a4;
  v30 = v20;
  v23 = v20;
  v24 = [v21 imageForKey:v23 generatingIfNecessaryWithBlock:v29];

  v25 = [mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets objectForKeyedSubscript:v23];
  [v25 UIEdgeInsetsValue];
  v26 = [v24 resizableImageWithCapInsets:?];
  v27 = [v26 imageWithRenderingMode:2];

  return v27;
}

- (id)_mt_imageWithShadowWithAttributes:()MaterialKitPrivateAdditions userInterfaceStyle:
{
  selfCopy = self;
  v8 = selfCopy;
  if (*a3 > 0.0)
  {
    LODWORD(v7) = *a3;
    [selfCopy size];
    v10 = v9;
    v12 = v11;
    v13 = a3[2];
    if (v13 < a3[1])
    {
      v13 = a3[1];
    }

    if (v13 < 1.0)
    {
      v13 = 1.0;
    }

    v14 = v13 + a3[3] * 2.8;
    v15 = objc_alloc(MEMORY[0x277D75560]);
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    v17 = [v15 initWithSize:preferredFormat format:{v14 + v10 + v14, v14 + v12 + v14}];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__UIImage_MaterialKitPrivateAdditions___mt_imageWithShadowWithAttributes_userInterfaceStyle___block_invoke;
    v21[3] = &unk_27835D2D8;
    *&v21[5] = v14 + v10 + v14;
    *&v21[6] = v14 + v12 + v14;
    v21[4] = v8;
    *&v21[7] = v10;
    *&v21[8] = v12;
    *&v21[9] = v14;
    *&v21[10] = v14;
    *&v21[11] = v14;
    *&v21[12] = v14;
    v21[13] = a4;
    v18 = *(a3 + 1);
    v22 = *a3;
    v23 = v18;
    v19 = [v17 imageWithActions:v21];

    v8 = v19;
  }

  return v8;
}

- (id)mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:()MaterialKitPrivateAdditions
{
  v5 = 1050253722;
  v6 = xmmword_21E612000;
  v7 = 0x3FE3333333333333;
  v3 = [self _mt_imageWithShadowWithAttributes:&v5 userInterfaceStyle:a3];

  return v3;
}

@end