@interface NTKRichComplicationCircularOpenGaugeSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationCircularOpenGaugeSwiftUIView)init;
@end

@implementation NTKRichComplicationCircularOpenGaugeSwiftUIView

- (NTKRichComplicationCircularOpenGaugeSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularOpenGaugeSwiftUIView;
  return [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 initWithFamily:10];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end