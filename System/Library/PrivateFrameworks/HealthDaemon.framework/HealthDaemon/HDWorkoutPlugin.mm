@interface HDWorkoutPlugin
+ (BOOL)shouldLoadPluginForDaemon:(id)a3;
- (id)extensionForHealthDaemon:(id)a3;
@end

@implementation HDWorkoutPlugin

+ (BOOL)shouldLoadPluginForDaemon:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 supportsWorkouts];

  return v4;
}

- (id)extensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDWorkoutPluginDaemonExtension alloc] initWithDaemon:v3];

  return v4;
}

@end