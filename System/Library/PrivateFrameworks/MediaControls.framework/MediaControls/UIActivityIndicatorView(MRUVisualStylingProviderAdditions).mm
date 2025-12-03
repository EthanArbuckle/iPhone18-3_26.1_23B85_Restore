@interface UIActivityIndicatorView(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation UIActivityIndicatorView(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  [self setAlpha:a2];
  [self _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [self setColor:v8];
}

@end