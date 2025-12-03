@interface UILabel(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation UILabel(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  [self setAlpha:a2];
  [self _setDrawsAsBackdropOverlayWithBlendMode:a5];
  [self setTextColor:v8];
}

@end