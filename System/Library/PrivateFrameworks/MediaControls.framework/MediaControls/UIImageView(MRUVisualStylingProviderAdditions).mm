@interface UIImageView(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation UIImageView(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  [self setAlpha:a2];
  [self _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [self setTintColor:v8];
}

@end