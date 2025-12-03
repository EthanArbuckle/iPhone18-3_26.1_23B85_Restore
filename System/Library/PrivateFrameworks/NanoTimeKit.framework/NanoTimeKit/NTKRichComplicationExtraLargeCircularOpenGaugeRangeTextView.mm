@interface NTKRichComplicationExtraLargeCircularOpenGaugeRangeTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularOpenGaugeRangeTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularOpenGaugeRangeTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationExtraLargeCircularOpenGaugeRangeTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularOpenGaugeRangeTextView;
  return [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)&v3 initWithFamily:12];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  gaugeProvider = [templateCopy gaugeProvider];
  progressView = [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self progressView];
  [progressView setGaugeProvider:gaugeProvider];

  leadingTextProvider = [templateCopy leadingTextProvider];
  leadingSmallLabel = [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self leadingSmallLabel];
  [leadingSmallLabel setTextProvider:leadingTextProvider];

  trailingTextProvider = [templateCopy trailingTextProvider];
  trailingSmallLabel = [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self trailingSmallLabel];
  [trailingSmallLabel setTextProvider:trailingTextProvider];

  centerTextProvider = [templateCopy centerTextProvider];

  centerLabel = [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self centerLabel];
  [centerLabel setTextProvider:centerTextProvider];
}

@end