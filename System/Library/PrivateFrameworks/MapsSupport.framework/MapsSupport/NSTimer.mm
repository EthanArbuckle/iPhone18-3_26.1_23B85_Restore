@interface NSTimer
+ (id)_maps_scheduledTimerWithFireDate:(id)date block:(id)block;
@end

@implementation NSTimer

+ (id)_maps_scheduledTimerWithFireDate:(id)date block:(id)block
{
  dateCopy = date;
  v7 = [self scheduledTimerWithTimeInterval:0 repeats:block block:1.79769313e308];
  [v7 setFireDate:dateCopy];

  return v7;
}

@end