@interface NTKRichComplicationCircularOpenGaugeSimpleTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularOpenGaugeSimpleTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularOpenGaugeSimpleTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationCircularOpenGaugeSimpleTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularOpenGaugeSimpleTextView;
  return [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)&v3 initWithFamily:10];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  gaugeProvider = [templateCopy gaugeProvider];
  progressView = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self progressView];
  [progressView setGaugeProvider:gaugeProvider];

  bottomTextProvider = [templateCopy bottomTextProvider];
  smallLabel = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self smallLabel];
  [smallLabel setTextProvider:bottomTextProvider];

  centerTextProvider = [templateCopy centerTextProvider];

  centerLabel = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self centerLabel];
  [centerLabel setTextProvider:centerTextProvider];
}

@end