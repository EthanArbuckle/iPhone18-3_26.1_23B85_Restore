@interface CSPhoneCallStateMonitorFactory
+ (id)phoneCallStateMonitor;
@end

@implementation CSPhoneCallStateMonitorFactory

+ (id)phoneCallStateMonitor
{
  v2 = +[CSUtils supportRelayCall];
  v3 = off_1E8659AD0;
  if (!v2)
  {
    v3 = off_1E86597A8;
  }

  sharedInstance = [(__objc2_class *)*v3 sharedInstance];

  return sharedInstance;
}

@end