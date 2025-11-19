@interface MNActiveRouteInfo
+ (BOOL)saveRoutesToDiskInsteadXPC;
- (GEOComposedETARoute)etaRoute;
- (GEOComposedRouteTraffic)traffic;
- (GEOTransitRouteUpdateRequest)transitRouteUpdateRequest;
- (MNActiveRouteInfo)initWithCoder:(id)a3;
- (MNActiveRouteInfo)initWithRoute:(id)a3;
- (MNActiveRouteInfo)initWithRoute:(id)a3 etaResponse:(id)a4 alternateRouteIndex:(unint64_t)a5;
- (NSUUID)routeID;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithETARoute:(id)a3 etaResponse:(id)a4;
@end

@implementation MNActiveRouteInfo

- (NSUUID)routeID
{
  v2 = [(MNActiveRouteInfo *)self route];
  v3 = [v2 uniqueRouteID];

  return v3;
}

- (GEOComposedETARoute)etaRoute
{
  v2 = [(GEOComposedRoute *)self->_route mutableData];
  v3 = [v2 etaRoute];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  route = self->_route;
  v5 = [(GEOComposedRoute *)route name];
  v6 = [v3 stringWithFormat:@"MNActiveRouteInfo: %p (GEOComposedRoute: %p) - %@", self, route, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MNGetMNRouteStorageLog();
  v6 = os_signpost_id_generate(v5);

  v7 = MNGetMNRouteStorageLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ActiveRouteInfoEncoding", "", buf, 2u);
  }

  if (+[MNActiveRouteInfo saveRoutesToDiskInsteadXPC])
  {
    v9 = [(MNActiveRouteInfo *)self routeID];
    [v4 encodeObject:v9 forKey:@"routeID"];
    MNSaveRouteWithSubpath(self->_route, 0, 0, 0);
  }

  else
  {
    [v4 encodeObject:self->_route forKey:@"_route"];
  }

  [v4 encodeObject:self->_etaResponse forKey:@"_etaResponse"];
  [v4 encodeInteger:self->_alternateRouteIndex forKey:@"_alternateRouteIndex"];
  [v4 encodeObject:self->_displayETAInfo forKey:@"_displayETAInfo"];
  [v4 encodeObject:self->_remainingDistanceInfo forKey:@"_remainingDistanceInfo"];
  [v4 encodeObject:self->_batteryChargeInfo forKey:@"_batteryChargeInfo"];
  v10 = [(GEOComposedRoute *)self->_route mutableData];
  [v4 encodeObject:v10 forKey:@"_route.mutableData"];

  v11 = MNGetMNRouteStorageLog();
  v12 = v11;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_END, v6, "ActiveRouteInfoEncoding", "", v13, 2u);
  }
}

- (MNActiveRouteInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MNActiveRouteInfo;
  v5 = [(MNActiveRouteInfo *)&v28 init];
  if (v5)
  {
    v6 = MNGetMNRouteStorageLog();
    v7 = os_signpost_id_generate(v6);

    v8 = MNGetMNRouteStorageLog();
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ActiveRouteInfoDecoding", "", v27, 2u);
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_etaResponse"];
    etaResponse = v5->_etaResponse;
    v5->_etaResponse = v10;

    v5->_alternateRouteIndex = [v4 decodeIntegerForKey:@"_alternateRouteIndex"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayETAInfo"];
    displayETAInfo = v5->_displayETAInfo;
    v5->_displayETAInfo = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_remainingDistanceInfo"];
    remainingDistanceInfo = v5->_remainingDistanceInfo;
    v5->_remainingDistanceInfo = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_batteryChargeInfo"];
    batteryChargeInfo = v5->_batteryChargeInfo;
    v5->_batteryChargeInfo = v16;

    if (+[MNActiveRouteInfo saveRoutesToDiskInsteadXPC])
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeID"];
      v19 = MNGetRouteFromSubpathWithID(v18, 0, 0);
      route = v5->_route;
      v5->_route = v19;
    }

    else
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_route"];
      v18 = v5->_route;
      v5->_route = v21;
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_route.mutableData"];
    [(GEOComposedRoute *)v5->_route setMutableData:v22];
    [(GEOComposedRoute *)v5->_route setMutableData:v22];

    v23 = MNGetMNRouteStorageLog();
    v24 = v23;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v24, OS_SIGNPOST_INTERVAL_END, v7, "ActiveRouteInfoDecoding", "", v27, 2u);
    }

    v25 = v5;
  }

  return v5;
}

- (void)updateWithETARoute:(id)a3 etaResponse:(id)a4
{
  v6 = a4;
  route = self->_route;
  v8 = a3;
  v9 = [(GEOComposedRoute *)route mutableData];
  [v9 updateForRoute:self->_route etaRoute:v8];

  etaResponse = self->_etaResponse;
  self->_etaResponse = v6;
}

- (GEOTransitRouteUpdateRequest)transitRouteUpdateRequest
{
  v2 = [(MNActiveRouteInfo *)self route];
  v3 = [v2 transitRouteUpdateRequest];

  return v3;
}

- (GEOComposedRouteTraffic)traffic
{
  v2 = [(MNActiveRouteInfo *)self route];
  v3 = [v2 traffic];

  return v3;
}

- (MNActiveRouteInfo)initWithRoute:(id)a3 etaResponse:(id)a4 alternateRouteIndex:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = MNActiveRouteInfo;
  v11 = [(MNActiveRouteInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, a3);
    objc_storeStrong(&v12->_etaResponse, a4);
    v12->_alternateRouteIndex = a5;
    v13 = v12;
  }

  return v12;
}

- (MNActiveRouteInfo)initWithRoute:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MNActiveRouteInfo;
  v6 = [(MNActiveRouteInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, a3);
    v7->_alternateRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8 = v7;
  }

  return v7;
}

+ (BOOL)saveRoutesToDiskInsteadXPC
{
  if (saveRoutesToDiskInsteadXPC_onceToken != -1)
  {
    dispatch_once(&saveRoutesToDiskInsteadXPC_onceToken, &__block_literal_global_21050);
  }

  return saveRoutesToDiskInsteadXPC__saveRoutesToDiskInsteadXPC;
}

uint64_t __47__MNActiveRouteInfo_saveRoutesToDiskInsteadXPC__block_invoke()
{
  result = GEOConfigGetBOOL();
  saveRoutesToDiskInsteadXPC__saveRoutesToDiskInsteadXPC = result;
  return result;
}

@end