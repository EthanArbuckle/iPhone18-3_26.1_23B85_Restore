@interface CABackdropLayer(CoverSheet)
+ (id)backdropLayerWithGaussianBlurRadius:()CoverSheet brightnessAmount:saturationAmount:;
@end

@implementation CABackdropLayer(CoverSheet)

+ (id)backdropLayerWithGaussianBlurRadius:()CoverSheet brightnessAmount:saturationAmount:
{
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CD9E08] layer];
  [v6 setOpacity:0.0];
  v7 = [MEMORY[0x277CD9EA0] gaussianFilterWithInputRadius:a1];
  v8 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:a2];
  v9 = [MEMORY[0x277CD9EA0] saturationFilterWithAmount:a3];
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [v6 setFilters:v10];

  v11 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  [v6 setScale:100.0];
  [v6 setAllowsGroupOpacity:1];
  [v6 setAllowsEdgeAntialiasing:1];

  return v6;
}

@end