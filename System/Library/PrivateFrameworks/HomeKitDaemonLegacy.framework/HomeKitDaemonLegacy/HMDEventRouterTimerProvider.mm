@interface HMDEventRouterTimerProvider
- (id)timerWithQueue:(id)queue interval:(double)interval timerFireHandler:(id)handler;
@end

@implementation HMDEventRouterTimerProvider

- (id)timerWithQueue:(id)queue interval:(double)interval timerFireHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v9 = [[HMDEventRouterTimer alloc] initWithQueue:queueCopy interval:handlerCopy timerFireHandler:interval];

  return v9;
}

@end