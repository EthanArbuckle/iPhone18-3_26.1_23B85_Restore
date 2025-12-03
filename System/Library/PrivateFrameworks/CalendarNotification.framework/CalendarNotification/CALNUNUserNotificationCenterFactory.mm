@interface CALNUNUserNotificationCenterFactory
+ (CALNUNUserNotificationCenterFactory)sharedInstance;
- (id)userNotificationCenterWithBundleIdentifier:(id)identifier;
@end

@implementation CALNUNUserNotificationCenterFactory

+ (CALNUNUserNotificationCenterFactory)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[CALNUNUserNotificationCenterFactory sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_15;

  return v3;
}

uint64_t __53__CALNUNUserNotificationCenterFactory_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_15 = objc_alloc_init(CALNUNUserNotificationCenterFactory);

  return MEMORY[0x2821F96F8]();
}

- (id)userNotificationCenterWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CALNUNDefaultUserNotificationCenter alloc] initWithBundleIdentifier:identifierCopy];

  return v4;
}

@end