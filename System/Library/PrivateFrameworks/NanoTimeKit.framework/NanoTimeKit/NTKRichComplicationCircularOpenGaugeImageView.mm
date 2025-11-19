@interface NTKRichComplicationCircularOpenGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCircularOpenGaugeImageView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationCircularOpenGaugeImageView

- (NTKRichComplicationCircularOpenGaugeImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularOpenGaugeImageView;
  return [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 initWithFamily:10];
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
  v9.super_class = NTKRichComplicationCircularOpenGaugeImageView;
  v6 = a3;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v9 _handleTemplate:v6 reason:a4];
  v7 = [v6 bottomImageProvider];

  v8 = [(NTKRichComplicationBaseCircularOpenGaugeImageView *)self bottomImageView];
  [v8 setImageProvider:v7 reason:a4];
}

@end