@interface CAGradientLayer(ClipServicesUIExtras)
+ (id)cps_grayscaleConicGradientLayer;
@end

@implementation CAGradientLayer(ClipServicesUIExtras)

+ (id)cps_grayscaleConicGradientLayer
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [v0 setStartPoint:{0.5, 0.5}];
  [v0 setEndPoint:{0.0, 0.5}];
  [v0 setType:*MEMORY[0x277CDA698]];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5[0] = [whiteColor CGColor];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v5[1] = [blackColor CGColor];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  [v0 setColors:v3];

  return v0;
}

@end