@interface UIColor
@end

@implementation UIColor

id __56__UIColor_MobileSafariExtras__sf_barHairlineShadowColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _barHairlineShadowColor];
  }
  v2 = ;

  return v2;
}

id __55__UIColor_MobileSafariExtras__safari_webpageThemeColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForTrait:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v5 = v4;

  return v5;
}

@end