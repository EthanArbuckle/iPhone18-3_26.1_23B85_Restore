@interface NTKRichComplicationCircularClosedGaugeTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularClosedGaugeTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularClosedGaugeTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationCircularClosedGaugeTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularClosedGaugeTextView;
  return [(NTKRichComplicationBaseCircularClosedGaugeTextView *)&v3 initWithFamily:10];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  centerTextProvider = [templateCopy centerTextProvider];
  centerLabel = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self centerLabel];
  [centerLabel setTextProvider:centerTextProvider];

  gaugeProvider = [templateCopy gaugeProvider];

  progressView = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self progressView];
  [progressView setGaugeProvider:gaugeProvider];

  progressView2 = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self progressView];
  [progressView2 setStyle:1];
}

@end