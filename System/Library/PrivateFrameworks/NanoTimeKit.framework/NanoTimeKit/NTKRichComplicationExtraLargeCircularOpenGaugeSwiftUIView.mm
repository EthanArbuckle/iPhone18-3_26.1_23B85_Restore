@interface NTKRichComplicationExtraLargeCircularOpenGaugeSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularOpenGaugeSwiftUIView)init;
@end

@implementation NTKRichComplicationExtraLargeCircularOpenGaugeSwiftUIView

- (NTKRichComplicationExtraLargeCircularOpenGaugeSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularOpenGaugeSwiftUIView;
  return [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 initWithFamily:12];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end