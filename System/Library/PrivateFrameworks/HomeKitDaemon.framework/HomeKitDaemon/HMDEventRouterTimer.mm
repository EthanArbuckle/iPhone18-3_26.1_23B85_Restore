@interface HMDEventRouterTimer
- (HMDEventRouterTimer)initWithQueue:(id)a3 interval:(double)a4 timerFireHandler:(id)a5;
- (double)timeInterval;
- (void)resume;
- (void)suspend;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDEventRouterTimer

- (double)timeInterval
{
  v2 = [(HMDEventRouterTimer *)self timer];
  [v2 timeInterval];
  v4 = v3;

  return v4;
}

- (void)timerDidFire:(id)a3
{
  v3 = [(HMDEventRouterTimer *)self timerFireHandler];
  v3[2]();
}

- (void)suspend
{
  v2 = [(HMDEventRouterTimer *)self timer];
  [v2 suspend];
}

- (void)resume
{
  v2 = [(HMDEventRouterTimer *)self timer];
  [v2 resume];
}

- (HMDEventRouterTimer)initWithQueue:(id)a3 interval:(double)a4 timerFireHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HMDEventRouterTimer;
  v10 = [(HMDEventRouterTimer *)&v16 init];
  if (v10)
  {
    v11 = _Block_copy(v9);
    timerFireHandler = v10->_timerFireHandler;
    v10->_timerFireHandler = v11;

    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:a4];
    timer = v10->_timer;
    v10->_timer = v13;

    [(HMFTimer *)v10->_timer setDelegateQueue:v8];
    [(HMFTimer *)v10->_timer setDelegate:v10];
  }

  return v10;
}

@end