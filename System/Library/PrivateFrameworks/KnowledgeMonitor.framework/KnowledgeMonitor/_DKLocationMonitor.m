@interface _DKLocationMonitor
- (_DKLocationMonitor)init;
- (id)_locationFromVisit:(id)a3;
- (unint64_t)placeTypeFromType:(unint64_t)a3;
- (unint64_t)userSpecificPlaceTypeFromType:(unint64_t)a3;
- (void)_handleVisit:(id)a3;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation _DKLocationMonitor

- (_DKLocationMonitor)init
{
  v11.receiver = self;
  v11.super_class = _DKLocationMonitor;
  v2 = [(_DKMonitor *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "Enabling location monitor", buf, 2u);
    }

    v4 = [MEMORY[0x277D01280] defaultManager];
    routineManager = v2->_routineManager;
    v2->_routineManager = v4;

    v6 = [(_DKMonitor *)v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26___DKLocationMonitor_init__block_invoke;
    block[3] = &unk_27856F060;
    v9 = v2;
    dispatch_sync(v6, block);
  }

  return v2;
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKLocationMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27___DKLocationMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKLocationMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26___DKLocationMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

- (id)_locationFromVisit:(id)a3
{
  v3 = MEMORY[0x277CE41F8];
  v4 = a3;
  v5 = [v3 alloc];
  [v4 coordinate];
  v7 = v6;
  v9 = v8;
  [v4 horizontalAccuracy];
  v11 = v10;

  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [v5 initWithCoordinate:v12 altitude:v7 horizontalAccuracy:v9 verticalAccuracy:0.0 course:v11 speed:0.0 timestamp:{0.0, 0.0}];

  return v13;
}

- (void)_handleVisit:(id)a3
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 departureDate];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v43 = v5;
  if (v8 <= 0.0)
  {
    v48 = @"CLVisit";
    v49[0] = v4;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    [v9 postNotificationName:@"DKLocationMonitorDidExitLOI" object:0 userInfo:v12];

    v13 = [MEMORY[0x277CFE318] userContext];
    v14 = [MEMORY[0x277CFE338] keyPathForNearbyLOIIdentifiers];
    [v13 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:v14];

    v15 = objc_alloc(MEMORY[0x277CF1AD0]);
    v42 = [v4 _placeInference];
    v40 = [v42 userType];
    if (v40)
    {
      v37 = [v4 _placeInference];
      v16 = -[_DKLocationMonitor userSpecificPlaceTypeFromType:](self, "userSpecificPlaceTypeFromType:", [v37 userType]);
    }

    else
    {
      v16 = 0;
    }

    v21 = [v4 _placeInference];
    v22 = [v21 placeType];
    if (v22)
    {
      v13 = [v4 _placeInference];
      v23 = -[_DKLocationMonitor placeTypeFromType:](self, "placeTypeFromType:", [v13 placeType]);
    }

    else
    {
      v23 = 0;
    }

    v32 = [v4 _placeInference];
    v33 = [v32 _loiIdentifier];
    v34 = [v33 UUIDString];
    v27 = [v15 initWithUserSpecificPlaceType:v16 placeType:v23 loiIdentifier:v34 starting:0];

    if (v22)
    {
    }

    v28 = v43;
    if (v40)
    {
    }

    v30 = [v43 source];
    [v30 sendEvent:v27];
  }

  else
  {
    v46 = @"CLVisit";
    v47 = v4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v9 postNotificationName:@"DKLocationMonitorDidEnterLOI" object:0 userInfo:v10];

    v38 = objc_alloc(MEMORY[0x277CF1AD0]);
    v41 = [v4 _placeInference];
    v39 = [v41 userType];
    if (v39)
    {
      v36 = [v4 _placeInference];
      v11 = -[_DKLocationMonitor userSpecificPlaceTypeFromType:](self, "userSpecificPlaceTypeFromType:", [v36 userType]);
    }

    else
    {
      v11 = 0;
    }

    v17 = [v4 _placeInference];
    v18 = [v17 placeType];
    if (v18)
    {
      v10 = [v4 _placeInference];
      v19 = self;
      v20 = -[_DKLocationMonitor placeTypeFromType:](self, "placeTypeFromType:", [v10 placeType]);
    }

    else
    {
      v19 = self;
      v20 = 0;
    }

    v24 = [v4 _placeInference];
    v25 = [v24 _loiIdentifier];
    v26 = [v25 UUIDString];
    v27 = [v38 initWithUserSpecificPlaceType:v11 placeType:v20 loiIdentifier:v26 starting:1];

    if (v18)
    {
    }

    v28 = v43;
    if (v39)
    {
    }

    v29 = [v43 source];
    [v29 sendEvent:v27];

    v30 = [(_DKLocationMonitor *)v19 _locationFromVisit:v4];
    v31 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v30;
      _os_log_impl(&dword_22595A000, v31, OS_LOG_TYPE_INFO, "_DKLocationMonitor visit location %@", buf, 0xCu);
    }

    if (v30)
    {
      [(RTRoutineManager *)v19->_routineManager fetchLocationsOfInterestWithinDistance:v30 ofLocation:&__block_literal_global_14 withHandler:200.0];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "authorizationStatus")}];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_INFO, "_DKLocationMonitor Authorization status changed %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_INFO, "_DKLocationMonitor visit occured", v7, 2u);
  }

  if (v5)
  {
    [(_DKLocationMonitor *)self _handleVisit:v5];
  }
}

- (unint64_t)userSpecificPlaceTypeFromType:(unint64_t)a3
{
  result = a3;
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_DKLocationMonitor userSpecificPlaceTypeFromType:v4];
    }

    return 0;
  }

  return result;
}

- (unint64_t)placeTypeFromType:(unint64_t)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  v4 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [_DKLocationMonitor placeTypeFromType:v4];
  }

  return 3;
}

@end