@interface FBWatchdogTransitionContext
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation FBWatchdogTransitionContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FBWatchdogTransitionContext);
  [(FBWatchdogTransitionContext *)v4 setWatchdogBehavior:self->_watchdogBehavior];
  [(FBWatchdogTransitionContext *)v4 setWatchdogProvider:self->_watchdogProvider];
  [(FBWatchdogTransitionContext *)v4 setRunIndependently:self->_runIndependently];
  return v4;
}

@end