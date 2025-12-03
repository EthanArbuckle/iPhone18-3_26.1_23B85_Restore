@interface NTKRichComplicationCornerMeteredGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCornerMeteredGaugeImageView)initWithFontFallback:(int64_t)fallback;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCornerMeteredGaugeImageView

- (NTKRichComplicationCornerMeteredGaugeImageView)initWithFontFallback:(int64_t)fallback
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationCornerMeteredGaugeImageView;
  v3 = [(CDRichComplicationCornerGaugeCustomView *)&v6 initWithFontFallback:fallback];
  v4 = v3;
  if (v3)
  {
    [(CDRichComplicationCornerBaseGaugeView *)v3 _enumerateLabelsWithBlock:&__block_literal_global_148];
  }

  return v4;
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
  templateCopy = template;
  imageProvider = [templateCopy imageProvider];
  imageView = [(NTKRichComplicationCornerGaugeImageView *)self imageView];
  [imageView setImageProvider:imageProvider reason:reason];

  gaugeProvider = [templateCopy gaugeProvider];
  leadingTextProvider = [templateCopy leadingTextProvider];
  trailingTextProvider = [templateCopy trailingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:gaugeProvider leftTextProvider:leadingTextProvider rightTextProvider:trailingTextProvider];
}

@end