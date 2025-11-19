@interface EnvironmentMonitor
- (void)dealloc;
@end

@implementation EnvironmentMonitor

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedMonitor];
  [v5 unregisterObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for EnvironmentMonitor();
  [(EnvironmentMonitor *)&v6 dealloc];
}

@end