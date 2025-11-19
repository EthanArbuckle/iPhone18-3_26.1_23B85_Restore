@interface NTKRichComplicationCircularOpenMeteredGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCircularOpenMeteredGaugeImageView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  v8 = [v6 gaugeProvider];
  [v7 setGaugeProvider:v8];

  v9 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  v10 = [v6 imageProvider];
  [v9 setImageProvider:v10 reason:a4];

  v12 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  v11 = [v6 textProvider];

  [v12 setTextProvider:v11];
}

@end