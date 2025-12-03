@interface EnvironmentMonitor
- (void)dealloc;
@end

@implementation EnvironmentMonitor

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedMonitor = [v3 sharedMonitor];
  [sharedMonitor unregisterObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for EnvironmentMonitor();
  [(EnvironmentMonitor *)&v6 dealloc];
}

@end