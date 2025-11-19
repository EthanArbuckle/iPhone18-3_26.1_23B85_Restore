@interface HMDEventRouterTimerProvider
- (id)timerWithQueue:(id)a3 interval:(double)a4 timerFireHandler:(id)a5;
@end

@implementation HMDEventRouterTimerProvider

- (id)timerWithQueue:(id)a3 interval:(double)a4 timerFireHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[HMDEventRouterTimer alloc] initWithQueue:v8 interval:v7 timerFireHandler:a4];

  return v9;
}

@end