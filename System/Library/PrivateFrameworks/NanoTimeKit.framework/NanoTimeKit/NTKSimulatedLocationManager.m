@interface NTKSimulatedLocationManager
- (NTKSimulatedLocationManager)init;
- (id)companionLocation;
- (id)startLocationUpdatesWithIdentifier:(id)a3 handler:(id)a4;
@end

@implementation NTKSimulatedLocationManager

- (NTKSimulatedLocationManager)init
{
  v6.receiver = self;
  v6.super_class = NTKSimulatedLocationManager;
  v2 = [(NTKSimulatedLocationManager *)&v6 init];
  if (v2)
  {
    v3 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKSimulatedLocationManager initialized.", v5, 2u);
    }
  }

  return v2;
}

- (id)startLocationUpdatesWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__NTKSimulatedLocationManager_startLocationUpdatesWithIdentifier_handler___block_invoke;
  v8[3] = &unk_27877E570;
  v8[4] = self;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  return &stru_284110E98;
}

void __74__NTKSimulatedLocationManager_startLocationUpdatesWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) currentLocation];
  v3 = [*(a1 + 32) anyLocation];
  (*(v2 + 16))(v2, v4, v3, 0);
}

- (id)companionLocation
{
  v2 = +[NTKLocationManager fallbackLocation];
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  [v2 coordinate];
  v5 = v4;
  v7 = v6;
  [v2 altitude];
  v9 = v8;
  [v2 horizontalAccuracy];
  v11 = v10;
  [v2 verticalAccuracy];
  v13 = v12;
  v14 = +[(CLKDate *)NTKDate];
  v15 = [v3 initWithCoordinate:v14 altitude:v5 horizontalAccuracy:v7 verticalAccuracy:v9 timestamp:{v11, v13}];

  return v15;
}

@end