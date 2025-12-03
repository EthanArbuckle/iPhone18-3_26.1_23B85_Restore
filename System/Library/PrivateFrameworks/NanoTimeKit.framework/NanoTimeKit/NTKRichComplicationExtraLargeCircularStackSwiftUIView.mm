@interface NTKRichComplicationExtraLargeCircularStackSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationExtraLargeCircularStackSwiftUIView)init;
@end

@implementation NTKRichComplicationExtraLargeCircularStackSwiftUIView

- (NTKRichComplicationExtraLargeCircularStackSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularStackSwiftUIView;
  return [(NTKRichComplicationCircularStackContentTextView *)&v3 initWithFamily:12];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end