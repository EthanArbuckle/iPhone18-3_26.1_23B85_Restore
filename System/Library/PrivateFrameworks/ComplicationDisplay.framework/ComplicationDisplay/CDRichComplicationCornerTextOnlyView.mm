@interface CDRichComplicationCornerTextOnlyView
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationCornerTextOnlyView

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel transitionToMonochromeWithFraction:2 style:fraction];
}

- (void)updateMonochromeColor
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel updateMonochromeColorWithStyle:2];
}

@end