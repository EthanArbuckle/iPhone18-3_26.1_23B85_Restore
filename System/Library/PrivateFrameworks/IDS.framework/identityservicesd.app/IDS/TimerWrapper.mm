@interface TimerWrapper
- (TimerWrapper)initWithTimer:(id)timer;
@end

@implementation TimerWrapper

- (TimerWrapper)initWithTimer:(id)timer
{
  timerCopy = timer;
  v9.receiver = self;
  v9.super_class = TimerWrapper;
  v6 = [(TimerWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timer, timer);
  }

  return v7;
}

@end