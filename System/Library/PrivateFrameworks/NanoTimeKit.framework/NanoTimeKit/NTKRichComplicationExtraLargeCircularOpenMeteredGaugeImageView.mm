@interface NTKRichComplicationExtraLargeCircularOpenMeteredGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularOpenMeteredGaugeImageView

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
  progressView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  gaugeProvider = [templateCopy gaugeProvider];
  [progressView setGaugeProvider:gaugeProvider];

  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  imageProvider = [templateCopy imageProvider];
  [centerImageView setImageProvider:imageProvider reason:reason];

  smallLabel = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  textProvider = [templateCopy textProvider];

  [smallLabel setTextProvider:textProvider];
}

@end