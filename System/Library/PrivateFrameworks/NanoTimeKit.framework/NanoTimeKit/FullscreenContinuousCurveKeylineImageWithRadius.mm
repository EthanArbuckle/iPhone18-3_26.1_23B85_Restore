@interface FullscreenContinuousCurveKeylineImageWithRadius
@end

@implementation FullscreenContinuousCurveKeylineImageWithRadius

id ___FullscreenContinuousCurveKeylineImageWithRadius_block_invoke(uint64_t a1)
{
  NTKFaceFullscreenKeylineFrame();
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = v6 * NTKFaceLibraryPageWidthForZoomLevel(1) / v2;
  v8 = [MEMORY[0x277D75568] defaultFormat];
  v9 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v8 format:{v3, v5}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___FullscreenContinuousCurveKeylineImageWithRadius_block_invoke_2;
  v12[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v12[4] = v7;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

void ___FullscreenContinuousCurveKeylineImageWithRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v16 = CGRectInset(v15, 0.75, 0.75);
  v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v16.origin.x cornerRadius:{v16.origin.y, v16.size.width, v16.size.height, *(a1 + 32)}];
  v12 = [MEMORY[0x277D75348] whiteColor];
  [v12 set];

  [v13 setLineWidth:1.5];
  [v13 stroke];
}

@end