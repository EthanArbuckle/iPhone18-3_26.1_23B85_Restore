@interface NTKRichComplicationCircularOpenGaugeRangeTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularOpenGaugeRangeTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularOpenGaugeRangeTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationCircularOpenGaugeRangeTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularOpenGaugeRangeTextView;
  return [(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)&v3 initWithFamily:10];
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