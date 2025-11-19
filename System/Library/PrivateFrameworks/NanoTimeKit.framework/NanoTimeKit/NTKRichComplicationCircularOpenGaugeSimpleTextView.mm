@interface NTKRichComplicationCircularOpenGaugeSimpleTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCircularOpenGaugeSimpleTextView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCircularOpenGaugeSimpleTextView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
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

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 gaugeProvider];
  v7 = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self progressView];
  [v7 setGaugeProvider:v6];

  v8 = [v5 bottomTextProvider];
  v9 = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self smallLabel];
  [v9 setTextProvider:v8];

  v11 = [v5 centerTextProvider];

  v10 = [(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self centerLabel];
  [v10 setTextProvider:v11];
}

@end