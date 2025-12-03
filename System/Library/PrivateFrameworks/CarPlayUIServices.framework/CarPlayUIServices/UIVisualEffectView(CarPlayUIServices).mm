@interface UIVisualEffectView(CarPlayUIServices)
+ (id)crsui_clusterTurnCardETATrayBackgroundMaterial;
+ (id)crsui_consoleTurnCardETATrayBackgroundMaterial;
@end

@implementation UIVisualEffectView(CarPlayUIServices)

+ (id)crsui_consoleTurnCardETATrayBackgroundMaterial
{
  v0 = [MEMORY[0x277D75210] effectWithBlurRadius:50.0];
  v1 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v0];
  layer = [v1 layer];
  [layer setMaskedCorners:15];

  v3 = *MEMORY[0x277CDA138];
  layer2 = [v1 layer];
  [layer2 setCornerCurve:v3];

  layer3 = [v1 layer];
  [layer3 setMasksToBounds:1];

  return v1;
}

+ (id)crsui_clusterTurnCardETATrayBackgroundMaterial
{
  v0 = [MEMORY[0x277D75210] effectWithStyle:8];
  v1 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v0];
  layer = [v1 layer];
  [layer setMaskedCorners:15];

  v3 = *MEMORY[0x277CDA138];
  layer2 = [v1 layer];
  [layer2 setCornerCurve:v3];

  layer3 = [v1 layer];
  [layer3 setMasksToBounds:1];

  return v1;
}

@end