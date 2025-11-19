@interface UIVisualEffectView(CarPlayUIServices)
+ (id)crsui_clusterTurnCardETATrayBackgroundMaterial;
+ (id)crsui_consoleTurnCardETATrayBackgroundMaterial;
@end

@implementation UIVisualEffectView(CarPlayUIServices)

+ (id)crsui_consoleTurnCardETATrayBackgroundMaterial
{
  v0 = [MEMORY[0x277D75210] effectWithBlurRadius:50.0];
  v1 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v0];
  v2 = [v1 layer];
  [v2 setMaskedCorners:15];

  v3 = *MEMORY[0x277CDA138];
  v4 = [v1 layer];
  [v4 setCornerCurve:v3];

  v5 = [v1 layer];
  [v5 setMasksToBounds:1];

  return v1;
}

+ (id)crsui_clusterTurnCardETATrayBackgroundMaterial
{
  v0 = [MEMORY[0x277D75210] effectWithStyle:8];
  v1 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v0];
  v2 = [v1 layer];
  [v2 setMaskedCorners:15];

  v3 = *MEMORY[0x277CDA138];
  v4 = [v1 layer];
  [v4 setCornerCurve:v3];

  v5 = [v1 layer];
  [v5 setMasksToBounds:1];

  return v1;
}

@end