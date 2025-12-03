@interface CALNCalendarCoreLocationManager
- (BOOL)allowsLocationAlerts;
- (CALNCalendarCoreLocationManager)initWithCoreLocationProvider:(id)provider;
- (void)markAsHavingReceivedLocation;
@end

@implementation CALNCalendarCoreLocationManager

- (CALNCalendarCoreLocationManager)initWithCoreLocationProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CALNCalendarCoreLocationManager;
  v6 = [(CALNCalendarCoreLocationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreLocationProvider, provider);
  }

  return v7;
}

- (BOOL)allowsLocationAlerts
{
  coreLocationProvider = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v4 = *MEMORY[0x277CF78A0];
  v5 = [coreLocationProvider authorizationStatusForBundleIdentifier:*MEMORY[0x277CF78A0]];

  bundle = [MEMORY[0x277CF77F8] bundle];
  coreLocationProvider2 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v8 = [coreLocationProvider2 preciseLocationAuthorizedForBundleIdentifier:v4];

  coreLocationProvider3 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v10 = [coreLocationProvider3 authorizationStatusForBundle:bundle];

  coreLocationProvider4 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v12 = [coreLocationProvider4 preciseLocationAuthorizedForBundle:bundle];

  v14 = v10 == 3 && v5 > 2;
  return v14 & v8 & v12;
}

- (void)markAsHavingReceivedLocation
{
  v3 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CALNCalendarCoreLocationManager *)v3 markAsHavingReceivedLocation];
  }

  bundle = [MEMORY[0x277CF77F8] bundle];
  bundleIdentifier = [bundle bundleIdentifier];
  coreLocationProvider = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  [coreLocationProvider markAsHavingReceivedLocationWithEffectiveBundleIdentifier:bundleIdentifier];
}

@end