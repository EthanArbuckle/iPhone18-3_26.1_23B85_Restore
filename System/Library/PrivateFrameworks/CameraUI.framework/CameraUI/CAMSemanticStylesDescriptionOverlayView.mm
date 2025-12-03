@interface CAMSemanticStylesDescriptionOverlayView
- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)width isLandscape:(BOOL)landscape usingFontSizeMultiplier:(double)multiplier;
@end

@implementation CAMSemanticStylesDescriptionOverlayView

- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)width isLandscape:(BOOL)landscape usingFontSizeMultiplier:(double)multiplier
{
  landscapeCopy = landscape;
  widthCopy = width;
  [(CAMDescriptionOverlayView *)self additionalSpacing];
  v8 = 370.0;
  if (widthCopy)
  {
    v8 = 340.0;
  }

  if (landscapeCopy)
  {
    v7 = 0.0;
  }

  result = v8 + v7;
  if (landscapeCopy)
  {

    UICeilToViewScale();
  }

  return result;
}

@end