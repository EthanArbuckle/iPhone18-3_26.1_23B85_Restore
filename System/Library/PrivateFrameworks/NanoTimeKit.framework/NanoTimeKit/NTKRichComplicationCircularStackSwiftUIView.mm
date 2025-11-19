@interface NTKRichComplicationCircularStackSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCircularStackSwiftUIView)init;
@end

@implementation NTKRichComplicationCircularStackSwiftUIView

- (NTKRichComplicationCircularStackSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularStackSwiftUIView;
  return [(NTKRichComplicationCircularStackContentTextView *)&v3 initWithFamily:10];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end