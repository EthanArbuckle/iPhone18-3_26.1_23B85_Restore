@interface HUQuickControlColorViewProfile
- (HUQuickControlColorViewProfile)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlColorViewProfile

- (HUQuickControlColorViewProfile)init
{
  v5.receiver = self;
  v5.super_class = HUQuickControlColorViewProfile;
  v2 = [(HUQuickControlColorViewProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUQuickControlColorViewProfile *)v2 setSupportsRGBColor:1];
    [(HUQuickControlColorViewProfile *)v3 setSupportsNaturalLighting:0];
    [(HUQuickControlColorViewProfile *)v3 setNaturalLightingEnabled:0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HUQuickControlColorViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v7 copyWithZone:a3];
  [v4 setSupportsRGBColor:{-[HUQuickControlColorViewProfile supportsRGBColor](self, "supportsRGBColor")}];
  [v4 setSupportsNaturalLighting:{-[HUQuickControlColorViewProfile supportsNaturalLighting](self, "supportsNaturalLighting")}];
  [v4 setNaturalLightingEnabled:{-[HUQuickControlColorViewProfile naturalLightingEnabled](self, "naturalLightingEnabled")}];
  v5 = [(HUQuickControlColorViewProfile *)self colorProfile];
  [v4 setColorProfile:v5];

  [v4 setMode:{-[HUQuickControlColorViewProfile mode](self, "mode")}];
  return v4;
}

@end