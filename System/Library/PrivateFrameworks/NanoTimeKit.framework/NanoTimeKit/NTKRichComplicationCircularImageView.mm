@interface NTKRichComplicationCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularImageView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationCircularImageView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationCircularImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularImageView;
  return [(NTKRichComplicationBaseCircularImageView *)&v3 initWithFamily:10];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  imageProvider = [template imageProvider];
  imageView = [(NTKRichComplicationBaseCircularImageView *)self imageView];
  [imageView setImageProvider:imageProvider reason:reason];
}

@end