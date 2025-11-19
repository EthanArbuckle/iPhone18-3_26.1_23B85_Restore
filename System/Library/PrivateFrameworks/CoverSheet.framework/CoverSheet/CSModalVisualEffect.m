@interface CSModalVisualEffect
- (id)effectConfig;
@end

@implementation CSModalVisualEffect

- (id)effectConfig
{
  v2 = [MEMORY[0x277D75348] _vibrantDarkFillDodgeColor];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  v4 = [MEMORY[0x277D763E0] layerWithVibrantColor:v2 tintColor:v3 filterType:*MEMORY[0x277CDA648] filterAttributes:0];
  v5 = [MEMORY[0x277D763D0] configWithContentConfig:v4];

  return v5;
}

@end