@interface DMWrapperProcessWatchdogCoordinatorPluginState
- (DMWrapperProcessWatchdogCoordinatorPluginState)initWithPlugin:(id)plugin;
@end

@implementation DMWrapperProcessWatchdogCoordinatorPluginState

- (DMWrapperProcessWatchdogCoordinatorPluginState)initWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  v11.receiver = self;
  v11.super_class = DMWrapperProcessWatchdogCoordinatorPluginState;
  v5 = [(DMWrapperProcessWatchdogCoordinatorPluginState *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(DMWrapperProcessWatchdogCoordinatorPluginState *)v5 setPlugin:pluginCopy];
    identifier = [pluginCopy identifier];
    v8 = [NSString stringWithFormat:@"com.apple.datamigrator.watchdogCoordinator.plugin.%@", identifier];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    [(DMWrapperProcessWatchdogCoordinatorPluginState *)v6 setQueue:v9];

    [(DMWrapperProcessWatchdogCoordinatorPluginState *)v6 setRunning:0];
    [(DMWrapperProcessWatchdogCoordinatorPluginState *)v6 setWatchdogged:0];
    [(DMWrapperProcessWatchdogCoordinatorPluginState *)v6 setPid:0];
  }

  return v6;
}

@end