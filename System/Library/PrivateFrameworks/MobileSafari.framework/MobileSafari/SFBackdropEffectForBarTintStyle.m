@interface SFBackdropEffectForBarTintStyle
@end

@implementation SFBackdropEffectForBarTintStyle

void ___SFBackdropEffectForBarTintStyle_block_invoke()
{
  v0 = [MEMORY[0x1E69DC730] effectWithStyle:15];
  v1 = _SFBackdropEffectForBarTintStyle_lightEffect;
  _SFBackdropEffectForBarTintStyle_lightEffect = v0;

  v2 = [MEMORY[0x1E69DC730] effectWithStyle:20];
  v3 = _SFBackdropEffectForBarTintStyle_darkEffect;
  _SFBackdropEffectForBarTintStyle_darkEffect = v2;
}

@end