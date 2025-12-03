@interface GEODirectionsRequestConfig
- (GEODirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority;
- (id)additionalHTTPHeaders;
- (id)additionalStatesForNetworkEvent;
- (id)additionalURLQueryItems;
@end

@implementation GEODirectionsRequestConfig

- (id)additionalStatesForNetworkEvent
{
  v3 = objc_alloc_init(GEOLogMsgState);
  v4 = objc_alloc_init(GEOLogMsgStateDirectionsDetail);
  [v3 setDirectionsDetail:v4];

  [v3 setStateType:721];
  routeAttributes = [(GEODirectionsRequest *)self->_request routeAttributes];
  hasMainTransportType = [routeAttributes hasMainTransportType];

  if (hasMainTransportType)
  {
    routeAttributes2 = [(GEODirectionsRequest *)self->_request routeAttributes];
    mainTransportType = [routeAttributes2 mainTransportType];
    directionsDetail = [v3 directionsDetail];
    [directionsDetail setTransportType:mainTransportType];
  }

  routeAttributes3 = [(GEODirectionsRequest *)self->_request routeAttributes];
  automobileOptions = [routeAttributes3 automobileOptions];
  vehicleSpecifications = [automobileOptions vehicleSpecifications];
  hasEvInfo = [vehicleSpecifications hasEvInfo];
  directionsDetail2 = [v3 directionsDetail];
  [directionsDetail2 setIsEv:hasEvInfo];

  v17 = v3;
  v15 = [NSArray arrayWithObjects:&v17 count:1];

  return v15;
}

- (id)additionalHTTPHeaders
{
  requestPriority = self->_requestPriority;
  if (requestPriority)
  {
    v3 = [NSString stringWithFormat:@"%ld", [(NSNumber *)requestPriority integerValue]];
    v6 = @"x-msg-priority";
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)additionalURLQueryItems
{
  v3 = GeoServicesConfig_ExperimentalDirectionsService[1];
  v4 = GEOConfigGetString();
  if ([v4 length])
  {
    if ([v4 hasPrefix:@"?"])
    {
      v5 = @"http://www.apple.com/";
    }

    else
    {
      v5 = @"http://www.apple.com/?";
    }

    v6 = [(__CFString *)v5 stringByAppendingString:v4];
    v7 = [NSURLComponents componentsWithString:v6];
    queryItems = [v7 queryItems];

    if (queryItems)
    {
      queryItems2 = [v7 queryItems];
      queryItems = [NSMutableArray arrayWithArray:queryItems2];
    }
  }

  else
  {
    queryItems = 0;
  }

  v10 = GeoServicesConfig_DirectionsRequestURLQueryItems[1];
  v11 = GEOConfigGetDictionary();
  if ([v11 count])
  {
    if (!queryItems)
    {
      queryItems = +[NSMutableArray array];
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100046540;
    v16[3] = &unk_100083550;
    queryItems = queryItems;
    v17 = queryItems;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
  }

  if (queryItems)
  {
    additionalURLQueryItems = queryItems;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GEODirectionsRequestConfig;
    additionalURLQueryItems = [(GEODirectionsRequestConfig *)&v15 additionalURLQueryItems];
  }

  v13 = additionalURLQueryItems;

  return v13;
}

- (GEODirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority
{
  requestCopy = request;
  priorityCopy = priority;
  v14.receiver = self;
  v14.super_class = GEODirectionsRequestConfig;
  v9 = [(GEODirectionsRequestConfig *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = [priorityCopy copy];
    requestPriority = v10->_requestPriority;
    v10->_requestPriority = v11;
  }

  return v10;
}

@end