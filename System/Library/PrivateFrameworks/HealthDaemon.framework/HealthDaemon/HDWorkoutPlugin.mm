@interface HDWorkoutPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)daemon;
- (id)extensionForHealthDaemon:(id)daemon;
@end

@implementation HDWorkoutPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)daemon
{
  behavior = [daemon behavior];
  supportsWorkouts = [behavior supportsWorkouts];

  return supportsWorkouts;
}

- (id)extensionForHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = [[HDWorkoutPluginDaemonExtension alloc] initWithDaemon:daemonCopy];

  return v4;
}

@end