@interface NTKRichComplicationCornerMeteredGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCornerMeteredGaugeImageView)initWithFontFallback:(int64_t)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCornerMeteredGaugeImageView

- (NTKRichComplicationCornerMeteredGaugeImageView)initWithFontFallback:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationCornerMeteredGaugeImageView;
  v3 = [(CDRichComplicationCornerGaugeCustomView *)&v6 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    [(CDRichComplicationCornerBaseGaugeView *)v3 _enumerateLabelsWithBlock:&__block_literal_global_148];
  }

  return v4;
}

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
  v11 = [v6 imageProvider];
  v7 = [(NTKRichComplicationCornerGaugeImageView *)self imageView];
  [v7 setImageProvider:v11 reason:a4];

  v8 = [v6 gaugeProvider];
  v9 = [v6 leadingTextProvider];
  v10 = [v6 trailingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v8 leftTextProvider:v9 rightTextProvider:v10];
}

@end