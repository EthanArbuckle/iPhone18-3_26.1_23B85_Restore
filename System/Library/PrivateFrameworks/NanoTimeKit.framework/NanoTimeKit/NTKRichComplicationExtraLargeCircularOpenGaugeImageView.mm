@interface NTKRichComplicationExtraLargeCircularOpenGaugeImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularOpenGaugeImageView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularOpenGaugeImageView

- (NTKRichComplicationExtraLargeCircularOpenGaugeImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularOpenGaugeImageView;
  return [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 initWithFamily:12];
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
  v9.super_class = NTKRichComplicationExtraLargeCircularOpenGaugeImageView;
  templateCopy = template;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v9 _handleTemplate:templateCopy reason:reason];
  bottomImageProvider = [templateCopy bottomImageProvider];

  bottomImageView = [(NTKRichComplicationBaseCircularOpenGaugeImageView *)self bottomImageView];
  [bottomImageView setImageProvider:bottomImageProvider reason:reason];
}

@end