@interface NTKStopwatchRichComplicationCircularView
- (NTKStopwatchRichComplicationCircularView)init;
@end

@implementation NTKStopwatchRichComplicationCircularView

- (NTKStopwatchRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKStopwatchRichComplicationCircularView;
  return [(NTKStopwatchRichComplicationBaseCircularView *)&v3 initWithFamily:10];
}

@end