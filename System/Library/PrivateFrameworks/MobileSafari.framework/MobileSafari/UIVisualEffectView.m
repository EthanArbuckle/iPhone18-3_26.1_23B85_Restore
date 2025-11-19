@interface UIVisualEffectView
@end

@implementation UIVisualEffectView

void __89__UIVisualEffectView_MobileSafariFrameworkExtras__safari_statusBarGradientBlurEffectView__block_invoke()
{
  v0 = MEMORY[0x1E69DC730];
  v3 = [MEMORY[0x1E69DCAB8] sf_imageNamed:@"status_bar_blur_mask"];
  v1 = [v0 effectWithVariableBlurRadius:v3 imageMask:3.0];
  v2 = safari_statusBarGradientBlurEffectView_gradientBlur;
  safari_statusBarGradientBlurEffectView_gradientBlur = v1;
}

@end