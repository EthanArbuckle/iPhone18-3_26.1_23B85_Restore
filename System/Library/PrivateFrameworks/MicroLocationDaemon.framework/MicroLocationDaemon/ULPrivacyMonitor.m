@interface ULPrivacyMonitor
- (ULPrivacyMonitor)initWithNotificationHelper:(id)a3;
- (id)_locationAuthorizationStatusToString:(int)a3;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULPrivacyMonitor

- (ULPrivacyMonitor)initWithNotificationHelper:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULPrivacyMonitor;
  v5 = [(ULEventMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULPrivacyMonitor *)v5 setNotificationHelper:v4];
  }

  return v6;
}

- (void)startMonitoring:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc(MEMORY[0x277CBFC10]);
  v7 = [(ULEventMonitor *)self queue];
  v8 = [v6 initWithEffectiveBundlePath:@"/System/Library/LocationBundles/Routine.bundle" delegate:self onQueue:v7];
  [(ULPrivacyMonitor *)self setLocationManager:v8];

  [(ULPrivacyMonitor *)self setLocationServicesEnabled:1];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(ULPrivacyMonitor *)self locationServicesEnabled];
    v12 = @"NO";
    if (v11)
    {
      v12 = @"YES";
    }

    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, locationServicesEnabled: %@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v8, 0xCu);
  }

  [(ULPrivacyMonitor *)self setLocationManager:0];
  [(ULPrivacyMonitor *)self setLocationServicesEnabled:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULPrivacyMonitorEventLocationServices];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULPrivacyMonitorEventLocationServices);
    [(ULPrivacyMonitorEventLocationServices *)v8 setLocationServicesEnabled:[(ULPrivacyMonitor *)self locationServicesEnabled]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(ULPrivacyMonitor *)self locationManager];
  v6 = [v5 authorizationStatus];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(ULPrivacyMonitor *)self _locationAuthorizationStatusToString:v6];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "location manager did change auth status: %@", &v13, 0xCu);
  }

  v10 = [(ULPrivacyMonitor *)self _checkLocationServicesEnabledForAuthorizationStatus:v6];
  if (v10 != [(ULPrivacyMonitor *)self locationServicesEnabled])
  {
    [(ULPrivacyMonitor *)self setLocationServicesEnabled:v10];
    v11 = objc_alloc_init(ULPrivacyMonitorEventLocationServices);
    [(ULPrivacyMonitorEventLocationServices *)v11 setLocationServicesEnabled:v10];
    [(ULEventMonitor *)self postEvent:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v6);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPrivacyMonitor startMonitoring:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Location manager failed with error: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_locationAuthorizationStatusToString:(int)a3
{
  if (a3 > 4)
  {
    return @"Unkown";
  }

  else
  {
    return off_2798D4318[a3];
  }
}

@end