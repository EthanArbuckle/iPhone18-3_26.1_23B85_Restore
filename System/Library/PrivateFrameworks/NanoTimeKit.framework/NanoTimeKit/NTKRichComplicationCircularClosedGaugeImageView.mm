@interface NTKRichComplicationCircularClosedGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularClosedGaugeImageView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularClosedGaugeImageView

- (NTKRichComplicationCircularClosedGaugeImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularClosedGaugeImageView;
  return [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 initWithFamily:10];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  v9.receiver = self;
  v9.super_class = NTKRichComplicationCircularClosedGaugeImageView;
  templateCopy = template;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v9 _handleTemplate:templateCopy reason:reason];
  imageProvider = [templateCopy imageProvider];

  imageView = [(NTKRichComplicationBaseCircularClosedGaugeImageView *)self imageView];
  [imageView setImageProvider:imageProvider reason:reason];
}

@end