@interface NTKRichComplicationExtraLargeCircularOpenGaugeSimpleTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularOpenGaugeSimpleTextView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularOpenGaugeSimpleTextView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationExtraLargeCircularOpenGaugeSimpleTextView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularOpenGaugeSimpleTextView;
  return [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)&v3 initWithFamily:12];
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