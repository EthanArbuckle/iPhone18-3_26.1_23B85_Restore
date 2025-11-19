@interface MTLiveActivityProvider
- (MTLiveActivityProvider)init;
@end

@implementation MTLiveActivityProvider

- (MTLiveActivityProvider)init
{
  v6.receiver = self;
  v6.super_class = MTLiveActivityProvider;
  v2 = [(MTLiveActivityProvider *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC18MobileTimerSupport22MTWatchActivityManager shared];
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

@end