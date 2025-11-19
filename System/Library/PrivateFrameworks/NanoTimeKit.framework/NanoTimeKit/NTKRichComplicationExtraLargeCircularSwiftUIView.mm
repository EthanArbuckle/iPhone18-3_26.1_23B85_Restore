@interface NTKRichComplicationExtraLargeCircularSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationExtraLargeCircularSwiftUIView)init;
@end

@implementation NTKRichComplicationExtraLargeCircularSwiftUIView

- (NTKRichComplicationExtraLargeCircularSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationExtraLargeCircularSwiftUIView;
  return [(NTKRichComplicationBaseCircularSwiftUIView *)&v3 initWithFamily:12];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end