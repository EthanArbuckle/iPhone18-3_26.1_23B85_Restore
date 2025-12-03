@interface CustomBlurEffect
+ (id)effectWithStyle:(int64_t)style;
- (id)effectSettings;
@end

@implementation CustomBlurEffect

+ (id)effectWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CustomBlurEffect;
  v3 = objc_msgSendSuper2(&v5, sel_effectWithStyle_, style);

  return v3;
}

- (id)effectSettings
{
  v5.receiver = self;
  v5.super_class = CustomBlurEffect;
  effectSettings = [(UIBlurEffect *)&v5 effectSettings];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.42 green:0.42 blue:0.42 alpha:1.0];
  [effectSettings setColorTint:v3];

  [effectSettings setColorTintAlpha:0.35];
  [effectSettings setSaturationDeltaFactor:1.0];
  [effectSettings setBlurRadius:50.0];

  return effectSettings;
}

@end