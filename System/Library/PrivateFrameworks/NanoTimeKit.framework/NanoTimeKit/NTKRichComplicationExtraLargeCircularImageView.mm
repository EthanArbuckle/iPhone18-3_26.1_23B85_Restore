@interface NTKRichComplicationExtraLargeCircularImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationExtraLargeCircularImageView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationExtraLargeCircularImageView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
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

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v7 = [a3 imageProvider];
  v6 = [(NTKRichComplicationBaseCircularImageView *)self imageView];
  [v6 setImageProvider:v7 reason:a4];
}

@end