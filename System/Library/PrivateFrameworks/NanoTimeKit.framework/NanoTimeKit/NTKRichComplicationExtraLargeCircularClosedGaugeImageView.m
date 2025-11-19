@interface NTKRichComplicationExtraLargeCircularClosedGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationExtraLargeCircularClosedGaugeImageView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationExtraLargeCircularClosedGaugeImageView

- (NTKRichComplicationExtraLargeCircularClosedGaugeImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularClosedGaugeImageView;
  return [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 initWithFamily:12];
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
  v9.receiver = self;
  v9.super_class = NTKRichComplicationExtraLargeCircularClosedGaugeImageView;
  v6 = a3;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v9 _handleTemplate:v6 reason:a4];
  v7 = [v6 imageProvider];

  v8 = [(NTKRichComplicationBaseCircularClosedGaugeImageView *)self imageView];
  [v8 setImageProvider:v7 reason:a4];
}

@end