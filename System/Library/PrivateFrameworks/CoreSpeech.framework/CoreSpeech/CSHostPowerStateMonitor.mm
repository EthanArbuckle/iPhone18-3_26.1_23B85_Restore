@interface CSHostPowerStateMonitor
+ (id)sharedInstance;
@end

@implementation CSHostPowerStateMonitor

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = +[CSHostPowerStateMonitorImplDarwin sharedInstance];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end