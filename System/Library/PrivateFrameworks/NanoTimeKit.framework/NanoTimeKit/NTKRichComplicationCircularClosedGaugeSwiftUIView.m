@interface NTKRichComplicationCircularClosedGaugeSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationCircularClosedGaugeSwiftUIView)init;
@end

@implementation NTKRichComplicationCircularClosedGaugeSwiftUIView

- (NTKRichComplicationCircularClosedGaugeSwiftUIView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularClosedGaugeSwiftUIView;
  return [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 initWithFamily:10];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end