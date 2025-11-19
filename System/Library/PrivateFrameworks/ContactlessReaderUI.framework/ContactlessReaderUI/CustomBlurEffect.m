@interface CustomBlurEffect
+ (id)effectWithStyle:(int64_t)a3;
- (id)effectSettings;
@end

@implementation CustomBlurEffect

+ (id)effectWithStyle:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CustomBlurEffect;
  v3 = objc_msgSendSuper2(&v5, sel_effectWithStyle_, a3);

  return v3;
}

- (id)effectSettings
{
  v5.receiver = self;
  v5.super_class = CustomBlurEffect;
  v2 = [(UIBlurEffect *)&v5 effectSettings];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.42 green:0.42 blue:0.42 alpha:1.0];
  [v2 setColorTint:v3];

  [v2 setColorTintAlpha:0.35];
  [v2 setSaturationDeltaFactor:1.0];
  [v2 setBlurRadius:50.0];

  return v2;
}

@end