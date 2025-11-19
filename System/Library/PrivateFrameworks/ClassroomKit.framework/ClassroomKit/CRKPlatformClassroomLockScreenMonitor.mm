@interface CRKPlatformClassroomLockScreenMonitor
+ (CRKClassroomLockScreenMonitoring)sharedMonitor;
@end

@implementation CRKPlatformClassroomLockScreenMonitor

+ (CRKClassroomLockScreenMonitoring)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[CRKPlatformClassroomLockScreenMonitor sharedMonitor];
  }

  v3 = sharedMonitor_monitor;

  return v3;
}

void __54__CRKPlatformClassroomLockScreenMonitor_sharedMonitor__block_invoke()
{
  v2 = objc_opt_new();
  v0 = [v2 makeMonitor];
  v1 = sharedMonitor_monitor;
  sharedMonitor_monitor = v0;
}

@end