@interface _NTKRelevanceEngineLocationManager
- (_NTKRelevanceEngineLocationManager)initWithLocationManager:(id)manager;
- (void)startLocationUpdatesWithHandler:(id)handler;
- (void)stopLocationUpdates;
@end

@implementation _NTKRelevanceEngineLocationManager

- (_NTKRelevanceEngineLocationManager)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = _NTKRelevanceEngineLocationManager;
  v6 = [(_NTKRelevanceEngineLocationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, manager);
  }

  return v7;
}

- (void)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_token)
  {
    [(_NTKRelevanceEngineLocationManager *)self stopLocationUpdates];
  }

  locationManager = self->_locationManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___NTKRelevanceEngineLocationManager_startLocationUpdatesWithHandler___block_invoke;
  v9[3] = &unk_27877DC08;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NTKLocationManager *)locationManager startLocationUpdatesWithIdentifier:@"NTKRelevanceEngineLocationManagerIdentifier" handler:v9];
  token = self->_token;
  self->_token = v7;
}

- (void)stopLocationUpdates
{
  if (self->_token)
  {
    [(NTKLocationManager *)self->_locationManager stopLocationUpdatesForToken:?];
    token = self->_token;
    self->_token = 0;
  }
}

@end