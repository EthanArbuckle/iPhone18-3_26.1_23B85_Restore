@interface NSUserDefaults(HypertensionNotifications)
+ (id)hkhr_hypertensionNotificationsDefaults;
@end

@implementation NSUserDefaults(HypertensionNotifications)

+ (id)hkhr_hypertensionNotificationsDefaults
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:HKHRHypertensionNotificationsDefaultsDomain];

  return v1;
}

@end