@interface MNActiveRouteInfo
+ (BOOL)saveRoutesToDiskInsteadXPC;
- (GEOComposedETARoute)etaRoute;
- (GEOComposedRouteTraffic)traffic;
- (GEOTransitRouteUpdateRequest)transitRouteUpdateRequest;
- (MNActiveRouteInfo)initWithCoder:(id)coder;
- (MNActiveRouteInfo)initWithRoute:(id)route;
- (MNActiveRouteInfo)initWithRoute:(id)route etaResponse:(id)response alternateRouteIndex:(unint64_t)index;
- (NSUUID)routeID;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithETARoute:(id)route etaResponse:(id)response;
@end

@implementation MNActiveRouteInfo

- (NSUUID)routeID
{
  route = [(MNActiveRouteInfo *)self route];
  uniqueRouteID = [route uniqueRouteID];

  return uniqueRouteID;
}

- (GEOComposedETARoute)etaRoute
{
  mutableData = [(GEOComposedRoute *)self->_route mutableData];
  etaRoute = [mutableData etaRoute];

  return etaRoute;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  route = self->_route;
  name = [(GEOComposedRoute *)route name];
  v6 = [v3 stringWithFormat:@"MNActiveRouteInfo: %p (GEOComposedRoute: %p) - %@", self, route, name];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
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
    routeID = [(MNActiveRouteInfo *)self routeID];
    [coderCopy encodeObject:routeID forKey:@"routeID"];
    MNSaveRouteWithSubpath(self->_route, 0, 0, 0);
  }

  else
  {
    [coderCopy encodeObject:self->_route forKey:@"_route"];
  }

  [coderCopy encodeObject:self->_etaResponse forKey:@"_etaResponse"];
  [coderCopy encodeInteger:self->_alternateRouteIndex forKey:@"_alternateRouteIndex"];
  [coderCopy encodeObject:self->_displayETAInfo forKey:@"_displayETAInfo"];
  [coderCopy encodeObject:self->_remainingDistanceInfo forKey:@"_remainingDistanceInfo"];
  [coderCopy encodeObject:self->_batteryChargeInfo forKey:@"_batteryChargeInfo"];
  mutableData = [(GEOComposedRoute *)self->_route mutableData];
  [coderCopy encodeObject:mutableData forKey:@"_route.mutableData"];

  v11 = MNGetMNRouteStorageLog();
  v12 = v11;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_END, v6, "ActiveRouteInfoEncoding", "", v13, 2u);
  }
}

- (MNActiveRouteInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_etaResponse"];
    etaResponse = v5->_etaResponse;
    v5->_etaResponse = v10;

    v5->_alternateRouteIndex = [coderCopy decodeIntegerForKey:@"_alternateRouteIndex"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayETAInfo"];
    displayETAInfo = v5->_displayETAInfo;
    v5->_displayETAInfo = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_remainingDistanceInfo"];
    remainingDistanceInfo = v5->_remainingDistanceInfo;
    v5->_remainingDistanceInfo = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_batteryChargeInfo"];
    batteryChargeInfo = v5->_batteryChargeInfo;
    v5->_batteryChargeInfo = v16;

    if (+[MNActiveRouteInfo saveRoutesToDiskInsteadXPC])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeID"];
      v19 = MNGetRouteFromSubpathWithID(v18, 0, 0);
      route = v5->_route;
      v5->_route = v19;
    }

    else
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_route"];
      v18 = v5->_route;
      v5->_route = v21;
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_route.mutableData"];
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

- (void)updateWithETARoute:(id)route etaResponse:(id)response
{
  responseCopy = response;
  route = self->_route;
  routeCopy = route;
  mutableData = [(GEOComposedRoute *)route mutableData];
  [mutableData updateForRoute:self->_route etaRoute:routeCopy];

  etaResponse = self->_etaResponse;
  self->_etaResponse = responseCopy;
}

- (GEOTransitRouteUpdateRequest)transitRouteUpdateRequest
{
  route = [(MNActiveRouteInfo *)self route];
  transitRouteUpdateRequest = [route transitRouteUpdateRequest];

  return transitRouteUpdateRequest;
}

- (GEOComposedRouteTraffic)traffic
{
  route = [(MNActiveRouteInfo *)self route];
  traffic = [route traffic];

  return traffic;
}

- (MNActiveRouteInfo)initWithRoute:(id)route etaResponse:(id)response alternateRouteIndex:(unint64_t)index
{
  routeCopy = route;
  responseCopy = response;
  v15.receiver = self;
  v15.super_class = MNActiveRouteInfo;
  v11 = [(MNActiveRouteInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, route);
    objc_storeStrong(&v12->_etaResponse, response);
    v12->_alternateRouteIndex = index;
    v13 = v12;
  }

  return v12;
}

- (MNActiveRouteInfo)initWithRoute:(id)route
{
  routeCopy = route;
  v10.receiver = self;
  v10.super_class = MNActiveRouteInfo;
  v6 = [(MNActiveRouteInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, route);
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