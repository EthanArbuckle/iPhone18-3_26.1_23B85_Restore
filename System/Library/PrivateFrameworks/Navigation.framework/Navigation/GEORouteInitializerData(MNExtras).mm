@interface GEORouteInitializerData(MNExtras)
- (MNActiveRouteInfo)mainRouteInfo;
- (id)allETAUAlternateRouteInfos;
- (id)allRouteInfos;
@end

@implementation GEORouteInitializerData(MNExtras)

- (id)allETAUAlternateRouteInfos
{
  etaTrafficUpdateResponse = [self etaTrafficUpdateResponse];
  waypointRoute = [etaTrafficUpdateResponse waypointRoute];

  newWaypointRoutes = [waypointRoute newWaypointRoutes];
  v5 = [newWaypointRoutes count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF70];
    newWaypointRoutes2 = [waypointRoute newWaypointRoutes];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(newWaypointRoutes2, "count")}];

    newWaypointRoutes3 = [waypointRoute newWaypointRoutes];
    v10 = [newWaypointRoutes3 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        newWaypointRoutes4 = [waypointRoute newWaypointRoutes];
        v13 = [newWaypointRoutes4 objectAtIndexedSubscript:v11];

        v14 = [objc_alloc(MEMORY[0x1E69A1C68]) initWithGeoWaypointRoute:v13 initializerData:self];
        v15 = [MNActiveRouteInfo alloc];
        etaTrafficUpdateResponse2 = [self etaTrafficUpdateResponse];
        v17 = [(MNActiveRouteInfo *)v15 initWithRoute:v14 etaResponse:etaTrafficUpdateResponse2 alternateRouteIndex:v11];

        [v8 addObject:v17];
        ++v11;
        newWaypointRoutes5 = [waypointRoute newWaypointRoutes];
        v19 = [newWaypointRoutes5 count];
      }

      while (v11 < v19);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MNActiveRouteInfo)mainRouteInfo
{
  mainRoute = [self mainRoute];
  if (mainRoute)
  {
    v2 = [[MNActiveRouteInfo alloc] initWithRoute:mainRoute];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)allRouteInfos
{
  allRoutes = [self allRoutes];
  v2 = [allRoutes _geo_map:&__block_literal_global_5093];

  return v2;
}

@end