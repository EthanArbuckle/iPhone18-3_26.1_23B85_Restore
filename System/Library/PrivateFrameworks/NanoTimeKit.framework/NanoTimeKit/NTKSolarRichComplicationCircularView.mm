@interface NTKSolarRichComplicationCircularView
- (NTKSolarRichComplicationCircularView)init;
@end

@implementation NTKSolarRichComplicationCircularView

- (NTKSolarRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKSolarRichComplicationCircularView;
  return [(NTKSolarRichComplicationBaseCircularView *)&v3 initWithFamily:10];
}

@end