@interface GEODirectionsRequestConfig
- (GEODirectionsRequestConfig)initWithRequest:(id)a3 requestPriority:(id)a4;
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
  v5 = [(GEODirectionsRequest *)self->_request routeAttributes];
  v6 = [v5 hasMainTransportType];

  if (v6)
  {
    v7 = [(GEODirectionsRequest *)self->_request routeAttributes];
    v8 = [v7 mainTransportType];
    v9 = [v3 directionsDetail];
    [v9 setTransportType:v8];
  }

  v10 = [(GEODirectionsRequest *)self->_request routeAttributes];
  v11 = [v10 automobileOptions];
  v12 = [v11 vehicleSpecifications];
  v13 = [v12 hasEvInfo];
  v14 = [v3 directionsDetail];
  [v14 setIsEv:v13];

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
    v8 = [v7 queryItems];

    if (v8)
    {
      v9 = [v7 queryItems];
      v8 = [NSMutableArray arrayWithArray:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = GeoServicesConfig_DirectionsRequestURLQueryItems[1];
  v11 = GEOConfigGetDictionary();
  if ([v11 count])
  {
    if (!v8)
    {
      v8 = +[NSMutableArray array];
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100046540;
    v16[3] = &unk_100083550;
    v8 = v8;
    v17 = v8;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GEODirectionsRequestConfig;
    v12 = [(GEODirectionsRequestConfig *)&v15 additionalURLQueryItems];
  }

  v13 = v12;

  return v13;
}

- (GEODirectionsRequestConfig)initWithRequest:(id)a3 requestPriority:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = GEODirectionsRequestConfig;
  v9 = [(GEODirectionsRequestConfig *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v11 = [v8 copy];
    requestPriority = v10->_requestPriority;
    v10->_requestPriority = v11;
  }

  return v10;
}

@end