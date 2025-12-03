@interface FMDAVRouteController
- (BOOL)getVolume:(float *)volume forCategory:(id)category route:(id)route;
- (BOOL)setPickedRoute:(id)route;
- (BOOL)setVolume:(float)volume forCategory:(id)category route:(id)route;
- (id)pickableRoutesForCategory:(id)category;
@end

@implementation FMDAVRouteController

- (id)pickableRoutesForCategory:(id)category
{
  categoryCopy = category;
  v17 = +[AVSystemController sharedAVSystemController];
  v18 = categoryCopy;
  v4 = [v17 pickableRoutesForCategory:categoryCopy];
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = objc_alloc_init(FMDAVRoute);
        v12 = [v10 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteUID];
        [(FMDAVRoute *)v11 setRouteID:v12];

        v13 = [v10 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteType];
        [(FMDAVRoute *)v11 setRouteType:v13];

        v14 = [v10 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteSubtype];
        [(FMDAVRoute *)v11 setRouteSubType:v14];

        v15 = [v10 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked];
        -[FMDAVRoute setCurrentlyPicked:](v11, "setCurrentlyPicked:", [v15 BOOLValue]);

        [(FMDAVRoute *)v11 setRawRouteInfo:v10];
        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)setPickedRoute:(id)route
{
  routeCopy = route;
  v4 = +[AVSystemController sharedAVSystemController];
  rawRouteInfo = [routeCopy rawRouteInfo];

  LOBYTE(routeCopy) = [v4 setPickedRouteWithPassword:rawRouteInfo withPassword:&stru_100017B40];
  return routeCopy;
}

- (BOOL)setVolume:(float)volume forCategory:(id)category route:(id)route
{
  routeCopy = route;
  categoryCopy = category;
  v9 = +[AVSystemController sharedAVSystemController];
  routeType = [routeCopy routeType];
  routeID = [routeCopy routeID];
  routeSubType = [routeCopy routeSubType];

  *&v13 = volume;
  LOBYTE(routeCopy) = [v9 setVolumeForRouteTo:categoryCopy forCategory:0 mode:routeType route:routeID deviceIdentifier:routeSubType andRouteSubtype:v13];

  return routeCopy;
}

- (BOOL)getVolume:(float *)volume forCategory:(id)category route:(id)route
{
  routeCopy = route;
  categoryCopy = category;
  v9 = +[AVSystemController sharedAVSystemController];
  routeType = [routeCopy routeType];
  routeID = [routeCopy routeID];
  routeSubType = [routeCopy routeSubType];

  LOBYTE(volume) = [v9 getVolumeForRoute:volume forCategory:categoryCopy mode:0 route:routeType deviceIdentifier:routeID andRouteSubtype:routeSubType];
  return volume;
}

@end