@interface _DKLocationMonitor
- (_DKLocationMonitor)init;
- (id)_locationFromVisit:(id)visit;
- (unint64_t)placeTypeFromType:(unint64_t)type;
- (unint64_t)userSpecificPlaceTypeFromType:(unint64_t)type;
- (void)_handleVisit:(id)visit;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
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
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_INFO, "Enabling location monitor", buf, 2u);
    }

    defaultManager = [MEMORY[0x277D01280] defaultManager];
    routineManager = v2->_routineManager;
    v2->_routineManager = defaultManager;

    queue = [(_DKMonitor *)v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26___DKLocationMonitor_init__block_invoke;
    block[3] = &unk_27856F060;
    v9 = v2;
    dispatch_sync(queue, block);
  }

  return v2;
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = _DKLocationMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsActivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27___DKLocationMonitor_start__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKLocationMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    queue = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26___DKLocationMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (id)_locationFromVisit:(id)visit
{
  v3 = MEMORY[0x277CE41F8];
  visitCopy = visit;
  v5 = [v3 alloc];
  [visitCopy coordinate];
  v7 = v6;
  v9 = v8;
  [visitCopy horizontalAccuracy];
  v11 = v10;

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [v5 initWithCoordinate:distantPast altitude:v7 horizontalAccuracy:v9 verticalAccuracy:0.0 course:v11 speed:0.0 timestamp:{0.0, 0.0}];

  return v13;
}

- (void)_handleVisit:(id)visit
{
  v49[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  v5 = objc_opt_new();
  departureDate = [visitCopy departureDate];
  [departureDate timeIntervalSinceNow];
  v8 = v7;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v43 = v5;
  if (v8 <= 0.0)
  {
    v48 = @"CLVisit";
    v49[0] = visitCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    [defaultCenter postNotificationName:@"DKLocationMonitorDidExitLOI" object:0 userInfo:v12];

    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForNearbyLOIIdentifiers = [MEMORY[0x277CFE338] keyPathForNearbyLOIIdentifiers];
    [userContext setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:keyPathForNearbyLOIIdentifiers];

    v15 = objc_alloc(MEMORY[0x277CF1AD0]);
    _placeInference = [visitCopy _placeInference];
    userType = [_placeInference userType];
    if (userType)
    {
      _placeInference2 = [visitCopy _placeInference];
      v16 = -[_DKLocationMonitor userSpecificPlaceTypeFromType:](self, "userSpecificPlaceTypeFromType:", [_placeInference2 userType]);
    }

    else
    {
      v16 = 0;
    }

    _placeInference3 = [visitCopy _placeInference];
    placeType = [_placeInference3 placeType];
    if (placeType)
    {
      userContext = [visitCopy _placeInference];
      v23 = -[_DKLocationMonitor placeTypeFromType:](self, "placeTypeFromType:", [userContext placeType]);
    }

    else
    {
      v23 = 0;
    }

    _placeInference4 = [visitCopy _placeInference];
    _loiIdentifier = [_placeInference4 _loiIdentifier];
    uUIDString = [_loiIdentifier UUIDString];
    v27 = [v15 initWithUserSpecificPlaceType:v16 placeType:v23 loiIdentifier:uUIDString starting:0];

    if (placeType)
    {
    }

    v28 = v43;
    if (userType)
    {
    }

    source = [v43 source];
    [source sendEvent:v27];
  }

  else
  {
    v46 = @"CLVisit";
    v47 = visitCopy;
    _placeInference8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [defaultCenter postNotificationName:@"DKLocationMonitorDidEnterLOI" object:0 userInfo:_placeInference8];

    v38 = objc_alloc(MEMORY[0x277CF1AD0]);
    _placeInference5 = [visitCopy _placeInference];
    userType2 = [_placeInference5 userType];
    if (userType2)
    {
      _placeInference6 = [visitCopy _placeInference];
      v11 = -[_DKLocationMonitor userSpecificPlaceTypeFromType:](self, "userSpecificPlaceTypeFromType:", [_placeInference6 userType]);
    }

    else
    {
      v11 = 0;
    }

    _placeInference7 = [visitCopy _placeInference];
    placeType2 = [_placeInference7 placeType];
    if (placeType2)
    {
      _placeInference8 = [visitCopy _placeInference];
      selfCopy2 = self;
      v20 = -[_DKLocationMonitor placeTypeFromType:](self, "placeTypeFromType:", [_placeInference8 placeType]);
    }

    else
    {
      selfCopy2 = self;
      v20 = 0;
    }

    _placeInference9 = [visitCopy _placeInference];
    _loiIdentifier2 = [_placeInference9 _loiIdentifier];
    uUIDString2 = [_loiIdentifier2 UUIDString];
    v27 = [v38 initWithUserSpecificPlaceType:v11 placeType:v20 loiIdentifier:uUIDString2 starting:1];

    if (placeType2)
    {
    }

    v28 = v43;
    if (userType2)
    {
    }

    source2 = [v43 source];
    [source2 sendEvent:v27];

    source = [(_DKLocationMonitor *)selfCopy2 _locationFromVisit:visitCopy];
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = source;
      _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_INFO, "_DKLocationMonitor visit location %@", buf, 0xCu);
    }

    if (source)
    {
      [(RTRoutineManager *)selfCopy2->_routineManager fetchLocationsOfInterestWithinDistance:source ofLocation:&__block_literal_global_14 withHandler:200.0];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v9 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(authorizationCopy, "authorizationStatus")}];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_INFO, "_DKLocationMonitor Authorization status changed %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_INFO, "_DKLocationMonitor visit occured", v7, 2u);
  }

  if (visitCopy)
  {
    [(_DKLocationMonitor *)self _handleVisit:visitCopy];
  }
}

- (unint64_t)userSpecificPlaceTypeFromType:(unint64_t)type
{
  result = type;
  if (type >= 5)
  {
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_FAULT))
    {
      [_DKLocationMonitor userSpecificPlaceTypeFromType:knowledgeChannel];
    }

    return 0;
  }

  return result;
}

- (unint64_t)placeTypeFromType:(unint64_t)type
{
  if (type < 3)
  {
    return type + 1;
  }

  knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_FAULT))
  {
    [_DKLocationMonitor placeTypeFromType:knowledgeChannel];
  }

  return 3;
}

@end