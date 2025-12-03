@interface HMDEventRouterTimer
- (HMDEventRouterTimer)initWithQueue:(id)queue interval:(double)interval timerFireHandler:(id)handler;
- (double)timeInterval;
- (void)resume;
- (void)suspend;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDEventRouterTimer

- (double)timeInterval
{
  timer = [(HMDEventRouterTimer *)self timer];
  [timer timeInterval];
  v4 = v3;

  return v4;
}

- (void)timerDidFire:(id)fire
{
  timerFireHandler = [(HMDEventRouterTimer *)self timerFireHandler];
  timerFireHandler[2]();
}

- (void)suspend
{
  timer = [(HMDEventRouterTimer *)self timer];
  [timer suspend];
}

- (void)resume
{
  timer = [(HMDEventRouterTimer *)self timer];
  [timer resume];
}

- (HMDEventRouterTimer)initWithQueue:(id)queue interval:(double)interval timerFireHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HMDEventRouterTimer;
  v10 = [(HMDEventRouterTimer *)&v16 init];
  if (v10)
  {
    v11 = _Block_copy(handlerCopy);
    timerFireHandler = v10->_timerFireHandler;
    v10->_timerFireHandler = v11;

    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:interval];
    timer = v10->_timer;
    v10->_timer = v13;

    [(HMFTimer *)v10->_timer setDelegateQueue:queueCopy];
    [(HMFTimer *)v10->_timer setDelegate:v10];
  }

  return v10;
}

@end