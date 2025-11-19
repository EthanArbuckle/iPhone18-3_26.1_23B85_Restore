@interface FMDAVRouteController
- (BOOL)getVolume:(float *)a3 forCategory:(id)a4 route:(id)a5;
- (BOOL)setPickedRoute:(id)a3;
- (BOOL)setVolume:(float)a3 forCategory:(id)a4 route:(id)a5;
- (id)pickableRoutesForCategory:(id)a3;
@end

@implementation FMDAVRouteController

- (id)pickableRoutesForCategory:(id)a3
{
  v3 = a3;
  v17 = +[AVSystemController sharedAVSystemController];
  v18 = v3;
  v4 = [v17 pickableRoutesForCategory:v3];
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

- (BOOL)setPickedRoute:(id)a3
{
  v3 = a3;
  v4 = +[AVSystemController sharedAVSystemController];
  v5 = [v3 rawRouteInfo];

  LOBYTE(v3) = [v4 setPickedRouteWithPassword:v5 withPassword:&stru_100017B40];
  return v3;
}

- (BOOL)setVolume:(float)a3 forCategory:(id)a4 route:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[AVSystemController sharedAVSystemController];
  v10 = [v7 routeType];
  v11 = [v7 routeID];
  v12 = [v7 routeSubType];

  *&v13 = a3;
  LOBYTE(v7) = [v9 setVolumeForRouteTo:v8 forCategory:0 mode:v10 route:v11 deviceIdentifier:v12 andRouteSubtype:v13];

  return v7;
}

- (BOOL)getVolume:(float *)a3 forCategory:(id)a4 route:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[AVSystemController sharedAVSystemController];
  v10 = [v7 routeType];
  v11 = [v7 routeID];
  v12 = [v7 routeSubType];

  LOBYTE(a3) = [v9 getVolumeForRoute:a3 forCategory:v8 mode:0 route:v10 deviceIdentifier:v11 andRouteSubtype:v12];
  return a3;
}

@end