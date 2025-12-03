@interface UIVisualEffect(GKDashboardUtils)
+ (id)_gkGameLayerBackgroundVisualEffect;
+ (id)_gkGameLayerButtonVisualEffect;
+ (id)_gkGameLayerContentVibrancyEffect;
+ (id)_gkGameLayerDisabledButtonVisualEffect;
+ (id)_gkGameLayerModuleVisualEffect;
+ (id)_gkGameLayerPanelVisualEffect;
+ (id)_gkGameLayerPopOverVisualEffect;
+ (id)colorEffectBlendNormal:()GKDashboardUtils;
@end

@implementation UIVisualEffect(GKDashboardUtils)

+ (id)_gkGameLayerBackgroundVisualEffect
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75210] effectWithBlurRadius:100.0];
  v11[0] = v2;
  v3 = [MEMORY[0x277D75358] colorEffectSaturate:2.0];
  v11[1] = v3;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = [whiteColor colorWithAlphaComponent:0.05];
  v6 = [self colorEffectBlendNormal:v5];
  v11[2] = v6;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.062745098 green:0.062745098 blue:0.062745098 alpha:0.5];
  v8 = [self colorEffectBlendNormal:v7];
  v11[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  return v9;
}

+ (id)_gkGameLayerModuleVisualEffect
{
  _gkGameLayerBackgroundVisualEffect = [self _gkGameLayerBackgroundVisualEffect];
  v3 = [_gkGameLayerBackgroundVisualEffect mutableCopy];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = [whiteColor colorWithAlphaComponent:0.08];
  v6 = [self colorEffectBlendNormal:v5];
  [v3 addObject:v6];

  return v3;
}

+ (id)_gkGameLayerButtonVisualEffect
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75358] colorEffectSaturate:4.0];
  v8[0] = v2;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v4 = [whiteColor colorWithAlphaComponent:0.7];
  v5 = [self colorEffectBlendNormal:v4];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

+ (id)_gkGameLayerDisabledButtonVisualEffect
{
  v7[1] = *MEMORY[0x277D85DE8];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v3 = [whiteColor colorWithAlphaComponent:0.1];
  v4 = [self colorEffectBlendNormal:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

+ (id)_gkGameLayerPanelVisualEffect
{
  _gkGameLayerBackgroundVisualEffect = [self _gkGameLayerBackgroundVisualEffect];
  v3 = [_gkGameLayerBackgroundVisualEffect mutableCopy];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = [whiteColor colorWithAlphaComponent:0.1];
  v6 = [self colorEffectBlendNormal:v5];
  [v3 addObject:v6];

  return v3;
}

+ (id)_gkGameLayerPopOverVisualEffect
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75210] effectWithBlurRadius:30.0];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];

  return v1;
}

+ (id)_gkGameLayerContentVibrancyEffect
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  v2[5] = 0u;
  CAColorMatrixMakeSaturation();
  LODWORD(v3) = 1060320051;
  DWORD1(v4) = 1060320051;
  DWORD2(v5) = 1060320051;
  HIDWORD(v6) = 1065353216;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[0] = 0u;
  v2[1] = v3;
  v0 = [MEMORY[0x277D75D00] _vibrantEffectWithCAColorMatrix:v2 alpha:1.0];

  return v0;
}

+ (id)colorEffectBlendNormal:()GKDashboardUtils
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  *v18 = 0u;
  [a3 getRed:&v17 green:&v17 + 8 blue:v18 alpha:&v18[1]];
  *&v17 = v18[1] * *&v17;
  *(&v17 + 1) = v18[1] * *(&v17 + 1);
  v18[0] = v18[1] * v18[0];
  v5 = 1.0 - v18[1];
  v6 = 0u;
  v7 = 0u;
  v8 = 1.0 - v18[1];
  v9 = 0u;
  v10 = 0u;
  v11 = 1.0 - v18[1];
  v12 = 0u;
  v13 = 0u;
  v14 = 1.0 - v18[1];
  v15 = v17;
  v16 = *v18;
  v3 = [MEMORY[0x277D75358] colorEffectMatrix:&v5];

  return v3;
}

@end