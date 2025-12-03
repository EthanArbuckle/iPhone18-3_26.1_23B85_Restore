@interface NTKRichComplicationExtraLargeCircularStackImageView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularStackImageView)init;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
@end

@implementation NTKRichComplicationExtraLargeCircularStackImageView

- (NTKRichComplicationExtraLargeCircularStackImageView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularStackImageView;
  return [(NTKRichComplicationCircularStackContentTextView *)&v3 initWithFamily:12];
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
  v9.super_class = NTKRichComplicationExtraLargeCircularStackImageView;
  templateCopy = template;
  [(NTKRichComplicationCircularStackContentTextView *)&v9 _handleTemplate:templateCopy reason:reason];
  v7 = [(NTKRichComplicationBaseCircularStackImageView *)self line1ImageView:v9.receiver];
  line1ImageProvider = [templateCopy line1ImageProvider];

  [v7 setImageProvider:line1ImageProvider reason:reason];
}

@end