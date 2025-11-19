@interface NTKRichComplicationCircularClosedGaugeTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCircularClosedGaugeTextView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCircularClosedGaugeTextView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
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

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 centerTextProvider];
  v7 = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self centerLabel];
  [v7 setTextProvider:v6];

  v8 = [v5 gaugeProvider];

  v9 = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self progressView];
  [v9 setGaugeProvider:v8];

  v10 = [(NTKRichComplicationBaseCircularClosedGaugeTextView *)self progressView];
  [v10 setStyle:1];
}

@end