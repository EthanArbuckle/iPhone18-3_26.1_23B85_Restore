@interface GEORouteInitializerData(MNExtras)
- (MNActiveRouteInfo)mainRouteInfo;
- (id)allETAUAlternateRouteInfos;
- (id)allRouteInfos;
@end

@implementation GEORouteInitializerData(MNExtras)

- (id)allETAUAlternateRouteInfos
{
  v2 = [a1 etaTrafficUpdateResponse];
  v3 = [v2 waypointRoute];

  v4 = [v3 newWaypointRoutes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = [v3 newWaypointRoutes];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = [v3 newWaypointRoutes];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [v3 newWaypointRoutes];
        v13 = [v12 objectAtIndexedSubscript:v11];

        v14 = [objc_alloc(MEMORY[0x1E69A1C68]) initWithGeoWaypointRoute:v13 initializerData:a1];
        v15 = [MNActiveRouteInfo alloc];
        v16 = [a1 etaTrafficUpdateResponse];
        v17 = [(MNActiveRouteInfo *)v15 initWithRoute:v14 etaResponse:v16 alternateRouteIndex:v11];

        [v8 addObject:v17];
        ++v11;
        v18 = [v3 newWaypointRoutes];
        v19 = [v18 count];
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
  v1 = [a1 mainRoute];
  if (v1)
  {
    v2 = [[MNActiveRouteInfo alloc] initWithRoute:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)allRouteInfos
{
  v1 = [a1 allRoutes];
  v2 = [v1 _geo_map:&__block_literal_global_5093];

  return v2;
}

@end