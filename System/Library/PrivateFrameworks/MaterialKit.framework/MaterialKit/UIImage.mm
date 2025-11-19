@interface UIImage
@end

@implementation UIImage

id __136__UIImage_MaterialKitPrivateAdditions__mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize___block_invoke(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 104);
  v5 = *(a1 + 56);
  v12[0] = *(a1 + 40);
  v12[1] = v5;
  v6 = [MEMORY[0x277D755B8] mt_shadowTemplateImageWithAttributes:v12 scale:v4 maskCornerRadius:&v13 continuousCorners:v2 maskSize:v3 resizableCapInsets:{*(a1 + 88), *(a1 + 96)}];
  if (!mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets;
    mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets = v7;
  }

  v11[0] = v13;
  v11[1] = v14;
  v9 = [MEMORY[0x277CCAE60] valueWithBytes:v11 objCType:"{UIEdgeInsets=dddd}"];
  [mt_resizableShadowTemplateImageWithAttributes_scale_maskCornerRadius_continuousCorners_maskSize____keysToCapInsets setObject:v9 forKeyedSubscript:*(a1 + 32)];

  return v6;
}

void __93__UIImage_MaterialKitPrivateAdditions___mt_imageWithShadowWithAttributes_userInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75D18];
  v4 = a2;
  v5 = [v3 alloc];
  BSRectWithSize();
  v14 = [v5 initWithFrame:?];
  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:*(a1 + 32)];
  [v14 addSubview:v6];
  BSRectWithSize();
  [v6 setFrame:{*(a1 + 80), *(a1 + 88)}];
  v7 = [v6 layer];
  v8 = [MEMORY[0x277D75348] labelColor];
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:*(a1 + 104)];
  v10 = [v8 resolvedColorWithTraitCollection:v9];

  [v7 setShadowColor:{objc_msgSend(v10, "CGColor")}];
  [v7 setShadowOffset:{*(a1 + 120), *(a1 + 128)}];
  [v7 setShadowRadius:*(a1 + 136)];
  LODWORD(v11) = *(a1 + 112);
  [v7 setShadowOpacity:v11];
  v12 = [v4 CGContext];

  v13 = [v14 layer];
  [v13 renderInContext:v12];
}

@end