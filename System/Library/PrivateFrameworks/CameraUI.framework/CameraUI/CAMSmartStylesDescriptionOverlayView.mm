@interface CAMSmartStylesDescriptionOverlayView
- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)a3 isLandscape:(BOOL)a4 usingFontSizeMultiplier:(double)a5;
@end

@implementation CAMSmartStylesDescriptionOverlayView

- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)a3 isLandscape:(BOOL)a4 usingFontSizeMultiplier:(double)a5
{
  v5 = a4;
  v6 = a3;
  [(CAMDescriptionOverlayView *)self additionalSpacing];
  v8 = 370.0;
  if (v6)
  {
    v8 = 340.0;
  }

  if (v5)
  {
    v7 = 0.0;
  }

  result = v8 + v7;
  if (v5)
  {

    UICeilToViewScale();
  }

  return result;
}

@end