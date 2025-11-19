@interface NTKWorldClockRichComplicationCircularView
- (NTKWorldClockRichComplicationCircularView)init;
@end

@implementation NTKWorldClockRichComplicationCircularView

- (NTKWorldClockRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKWorldClockRichComplicationCircularView;
  return [(NTKWorldClockRichComplicationBaseCircularView *)&v3 initWithFamily:10];
}

@end