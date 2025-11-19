@interface BCSExecutionTimer
+ (unint64_t)timeExecutionOfBlock:(id)a3;
- (BCSExecutionTimer)init;
- (unint64_t)nanoseconds;
@end

@implementation BCSExecutionTimer

- (BCSExecutionTimer)init
{
  v4.receiver = self;
  v4.super_class = BCSExecutionTimer;
  v2 = [(BCSExecutionTimer *)&v4 init];
  if (v2)
  {
    v2->_startTime = mach_absolute_time();
  }

  return v2;
}

+ (unint64_t)timeExecutionOfBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BCSExecutionTimer);
  v3[2](v3);

  v5 = [(BCSExecutionTimer *)v4 nanoseconds];
  return v5;
}

- (unint64_t)nanoseconds
{
  v3 = mach_absolute_time();
  v4 = v3 - [(BCSExecutionTimer *)self startTime];
  info = 0;
  mach_timebase_info(&info);
  return v4 * info.numer / info.denom;
}

@end