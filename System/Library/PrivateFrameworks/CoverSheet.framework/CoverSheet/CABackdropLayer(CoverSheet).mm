@interface CABackdropLayer(CoverSheet)
+ (id)backdropLayerWithGaussianBlurRadius:()CoverSheet brightnessAmount:saturationAmount:;
@end

@implementation CABackdropLayer(CoverSheet)

+ (id)backdropLayerWithGaussianBlurRadius:()CoverSheet brightnessAmount:saturationAmount:
{
  v13[3] = *MEMORY[0x277D85DE8];
  layer = [MEMORY[0x277CD9E08] layer];
  [layer setOpacity:0.0];
  v7 = [MEMORY[0x277CD9EA0] gaussianFilterWithInputRadius:self];
  v8 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:a2];
  v9 = [MEMORY[0x277CD9EA0] saturationFilterWithAmount:a3];
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [layer setFilters:v10];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  [layer setScale:100.0];
  [layer setAllowsGroupOpacity:1];
  [layer setAllowsEdgeAntialiasing:1];

  return layer;
}

@end