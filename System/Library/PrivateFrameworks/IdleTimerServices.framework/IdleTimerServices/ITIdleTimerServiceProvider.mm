@interface ITIdleTimerServiceProvider
+ (id)makeRequestHandlerWithDelegate:(id)delegate;
@end

@implementation ITIdleTimerServiceProvider

+ (id)makeRequestHandlerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[ITIdleTimerStateClient alloc] initWithDelegate:delegateCopy];

  return v4;
}

@end