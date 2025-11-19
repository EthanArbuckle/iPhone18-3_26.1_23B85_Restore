@interface _NTKRelevanceEngineLocationManager
- (_NTKRelevanceEngineLocationManager)initWithLocationManager:(id)a3;
- (void)startLocationUpdatesWithHandler:(id)a3;
- (void)stopLocationUpdates;
@end

@implementation _NTKRelevanceEngineLocationManager

- (_NTKRelevanceEngineLocationManager)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _NTKRelevanceEngineLocationManager;
  v6 = [(_NTKRelevanceEngineLocationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, a3);
  }

  return v7;
}

- (void)startLocationUpdatesWithHandler:(id)a3
{
  v4 = a3;
  if (self->_token)
  {
    [(_NTKRelevanceEngineLocationManager *)self stopLocationUpdates];
  }

  locationManager = self->_locationManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___NTKRelevanceEngineLocationManager_startLocationUpdatesWithHandler___block_invoke;
  v9[3] = &unk_27877DC08;
  v10 = v4;
  v6 = v4;
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