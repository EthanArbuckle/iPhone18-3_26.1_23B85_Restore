@interface NTKRichComplicationExtraLargeCircularStackImageView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationExtraLargeCircularStackImageView)init;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationExtraLargeCircularStackImageView

- (NTKRichComplicationExtraLargeCircularStackImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularStackImageView;
  return [(NTKRichComplicationCircularStackContentTextView *)&v3 initWithFamily:12];
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
  v9.super_class = NTKRichComplicationExtraLargeCircularStackImageView;
  v6 = a3;
  [(NTKRichComplicationCircularStackContentTextView *)&v9 _handleTemplate:v6 reason:a4];
  v7 = [(NTKRichComplicationBaseCircularStackImageView *)self line1ImageView:v9.receiver];
  v8 = [v6 line1ImageProvider];

  [v7 setImageProvider:v8 reason:a4];
}

@end