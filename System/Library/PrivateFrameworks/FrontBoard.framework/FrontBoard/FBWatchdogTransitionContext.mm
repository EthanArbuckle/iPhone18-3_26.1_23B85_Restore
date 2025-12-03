@interface FBWatchdogTransitionContext
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation FBWatchdogTransitionContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FBWatchdogTransitionContext);
  [(FBWatchdogTransitionContext *)v4 setWatchdogBehavior:self->_watchdogBehavior];
  [(FBWatchdogTransitionContext *)v4 setWatchdogProvider:self->_watchdogProvider];
  [(FBWatchdogTransitionContext *)v4 setRunIndependently:self->_runIndependently];
  return v4;
}

@end