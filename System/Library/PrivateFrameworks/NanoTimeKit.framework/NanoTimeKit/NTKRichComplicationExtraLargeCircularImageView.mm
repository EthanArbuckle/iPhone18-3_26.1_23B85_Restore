@interface NTKRichComplicationExtraLargeCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularImageView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularImageView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationExtraLargeCircularImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularImageView;
  return [(NTKRichComplicationBaseCircularImageView *)&v3 initWithFamily:12];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  imageProvider = [template imageProvider];
  imageView = [(NTKRichComplicationBaseCircularImageView *)self imageView];
  [imageView setImageProvider:imageProvider reason:reason];
}

@end