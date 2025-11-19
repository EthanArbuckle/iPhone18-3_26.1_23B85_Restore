@interface BRStopwatch
- (BRStopwatch)init;
- (double)stop;
@end

@implementation BRStopwatch

- (BRStopwatch)init
{
  v4.receiver = self;
  v4.super_class = BRStopwatch;
  v2 = [(BRStopwatch *)&v4 init];
  if (v2)
  {
    v2->_start = mach_absolute_time();
  }

  return v2;
}

- (double)stop
{
  v2 = mach_absolute_time() - self->_start;

  return brc_monotonic_time_diff_to_interval(v2);
}

@end