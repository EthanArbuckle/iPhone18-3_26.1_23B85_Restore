@interface CNFRegGradientAppearanceController
- (id)webViewBackgroundColor;
@end

@implementation CNFRegGradientAppearanceController

- (id)webViewBackgroundColor
{
  v2 = webViewBackgroundColor_color;
  if (!webViewBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.886274517 green:0.898039222 blue:0.917647064 alpha:1.0];
    v4 = webViewBackgroundColor_color;
    webViewBackgroundColor_color = v3;

    v2 = webViewBackgroundColor_color;
  }

  return v2;
}

@end