@interface UIActivityIndicatorView(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation UIActivityIndicatorView(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  [a1 setAlpha:a2];
  [a1 _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [a1 setColor:v8];
}

@end