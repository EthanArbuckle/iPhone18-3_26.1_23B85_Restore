@interface CALNCalendarCoreLocationManager
- (BOOL)allowsLocationAlerts;
- (CALNCalendarCoreLocationManager)initWithCoreLocationProvider:(id)a3;
- (void)markAsHavingReceivedLocation;
@end

@implementation CALNCalendarCoreLocationManager

- (CALNCalendarCoreLocationManager)initWithCoreLocationProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNCalendarCoreLocationManager;
  v6 = [(CALNCalendarCoreLocationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreLocationProvider, a3);
  }

  return v7;
}

- (BOOL)allowsLocationAlerts
{
  v3 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v4 = *MEMORY[0x277CF78A0];
  v5 = [v3 authorizationStatusForBundleIdentifier:*MEMORY[0x277CF78A0]];

  v6 = [MEMORY[0x277CF77F8] bundle];
  v7 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v8 = [v7 preciseLocationAuthorizedForBundleIdentifier:v4];

  v9 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v10 = [v9 authorizationStatusForBundle:v6];

  v11 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  v12 = [v11 preciseLocationAuthorizedForBundle:v6];

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

  v4 = [MEMORY[0x277CF77F8] bundle];
  v5 = [v4 bundleIdentifier];
  v6 = [(CALNCalendarCoreLocationManager *)self coreLocationProvider];
  [v6 markAsHavingReceivedLocationWithEffectiveBundleIdentifier:v5];
}

@end