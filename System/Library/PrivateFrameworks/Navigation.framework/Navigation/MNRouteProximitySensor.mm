@interface MNRouteProximitySensor
- (GEOLocation)closestPointOnRoute;
- (MNRouteProximitySensor)init;
- (MNRouteProximitySensor)initWithRoute:(id)a3;
- (double)courseOnRoute;
- (double)distanceFromDestination;
- (double)distanceFromOrigin;
- (double)distanceFromRoute;
- (void)_updateProximity;
- (void)_updateRouteMatch;
- (void)updateForLocation:(id)a3;
@end

@implementation MNRouteProximitySensor

- (void)_updateRouteMatch
{
  v5 = [(GEOLocation *)self->_location copy];
  [v5 setCourse:-1.0];
  v3 = [(GEORouteMatcher *)self->_routeMatcher matchToRouteWithLocation:v5];
  routeMatch = self->_routeMatch;
  self->_routeMatch = v3;
}

- (void)_updateProximity
{
  location = self->_location;
  if (location)
  {
    location = self->_routeMatch;
    if (location)
    {
      [(MNRouteProximitySensor *)self distanceFromOrigin];
      if (v4 >= 0.0 && ([(MNRouteProximitySensor *)self distanceFromOrigin], v5 <= self->_proximityThreshold))
      {
        location = 2;
      }

      else
      {
        [(MNRouteProximitySensor *)self distanceFromDestination];
        if (v6 >= 0.0 && ([(MNRouteProximitySensor *)self distanceFromDestination], v7 <= self->_proximityThreshold))
        {
          location = 4;
        }

        else
        {
          [(MNRouteProximitySensor *)self distanceFromRoute];
          if (v8 >= 0.0 && ([(MNRouteProximitySensor *)self distanceFromRoute], v9 <= self->_proximityThreshold))
          {
            location = 3;
          }

          else
          {
            location = 1;
          }
        }
      }
    }
  }

  self->_proximity = location;
}

- (double)distanceFromDestination
{
  if (!self->_routeMatch)
  {
    return -1.79769313e308;
  }

  location = self->_location;
  v3 = [(MNRouteProximitySensor *)self route];
  v4 = [v3 destination];
  v5 = location;
  v6 = [v4 bestLatLng];
  v7 = v6;
  if (v6)
  {
    [v6 coordinate];
    [(GEOLocation *)v5 coordinate];
    GEOCalculateDistance();
    v9 = v8;
  }

  else
  {
    v9 = -1.79769313e308;
  }

  return v9;
}

- (double)distanceFromRoute
{
  routeMatch = self->_routeMatch;
  if (!routeMatch)
  {
    return -1.79769313e308;
  }

  [(GEORouteMatch *)routeMatch distanceFromRoute];
  return result;
}

- (double)distanceFromOrigin
{
  if (!self->_routeMatch)
  {
    return -1.79769313e308;
  }

  location = self->_location;
  v3 = [(MNRouteProximitySensor *)self route];
  v4 = [v3 origin];
  v5 = location;
  v6 = [v4 bestLatLng];
  v7 = v6;
  if (v6)
  {
    [v6 coordinate];
    [(GEOLocation *)v5 coordinate];
    GEOCalculateDistance();
    v9 = v8;
  }

  else
  {
    v9 = -1.79769313e308;
  }

  return v9;
}

- (double)courseOnRoute
{
  if (!self->_routeMatch)
  {
    return -1.79769313e308;
  }

  v3 = [(MNRouteProximitySensor *)self route];
  [(GEOLocation *)self->_location coordinate];
  v4 = [v3 closestPointOnRoute:?];

  v5 = [(MNRouteProximitySensor *)self route];
  [v5 courseAtRouteCoordinateIndex:v4];
  v7 = v6;

  return v7;
}

- (GEOLocation)closestPointOnRoute
{
  if (self->_location)
  {
    if (self->_routeMatch)
    {
      v4 = [(MNRouteProximitySensor *)self route];
      [(GEOLocation *)self->_location coordinate];
      v5 = [v4 closestPointOnRoute:?];

      v6 = [(MNRouteProximitySensor *)self route];
      [v6 pointAtRouteCoordinate:v5];
      v8 = v7;
      v10 = v9;

      v11 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithLatitude:v8 longitude:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateForLocation:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_location, a3);
    [(MNRouteProximitySensor *)self _updateRouteMatch];
    [(MNRouteProximitySensor *)self _updateProximity];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Location is nil"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNRouteProximitySensor updateForLocation:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNRouteProximitySensor.m";
      v13 = 1024;
      v14 = 62;
      v15 = 2080;
      v16 = "location";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (MNRouteProximitySensor)initWithRoute:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNRouteProximitySensor;
  v5 = [(MNRouteProximitySensor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_proximity = 0;
    v5->_proximityThreshold = 20.0;
    v7 = [objc_alloc(MEMORY[0x1E69A2548]) initWithRoute:v4 auditToken:0];
    routeMatcher = v6->_routeMatcher;
    v6->_routeMatcher = v7;
  }

  return v6;
}

- (MNRouteProximitySensor)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end