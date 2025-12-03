@interface HUQuickControlVisualEffect
+ (id)effectWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectConfig;
@end

@implementation HUQuickControlVisualEffect

+ (id)effectWithType:(unint64_t)type
{
  v4 = objc_alloc_init(HUQuickControlVisualEffect);
  v4->_effectType = type;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = [(HUQuickControlVisualEffect *)self effectType];
  return v4;
}

- (id)effectConfig
{
  effectType = [(HUQuickControlVisualEffect *)self effectType];
  if (effectType == 2)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.35];
    v7 = [MEMORY[0x277D763E0] layerWithVibrantColor:v8 tintColor:v9 filterType:*MEMORY[0x277CDA650] filterAttributes:&unk_282492F40];
    v10 = [MEMORY[0x277D763D0] configWithContentConfig:v7];

    goto LABEL_10;
  }

  if (effectType == 1)
  {
    v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
    v4 = MEMORY[0x277D763D8];
    v6 = *MEMORY[0x277CDA548];
    v5 = v3;
  }

  else
  {
    if (effectType)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.9];
    v4 = MEMORY[0x277D763D8];
    v5 = v3;
    v6 = 0;
  }

  v7 = [v4 layerWithTintColor:v5 filterType:v6];

LABEL_9:
  v10 = [MEMORY[0x277D763D0] configWithContentConfig:v7];
LABEL_10:

  return v10;
}

@end