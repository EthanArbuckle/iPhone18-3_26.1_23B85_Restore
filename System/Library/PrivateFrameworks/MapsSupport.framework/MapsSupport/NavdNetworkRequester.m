@interface NavdNetworkRequester
- (BOOL)requestEtaForWaypoint:(id)a3 at:(id)a4 transportType:(int)a5 attributes:(id)a6 completion:(id)a7;
- (BOOL)requestRouteForWaypoints:(id)a3 at:(id)a4 attributes:(id)a5 completion:(id)a6;
- (BOOL)requestWaypointForCurrentLocation:(id)a3 completion:(id)a4;
- (BOOL)requestWaypointForEntry:(id)a3 completion:(id)a4;
- (BOOL)requestWaypointForLocation:(id)a3 completion:(id)a4;
- (BOOL)requestWaypointForLocation:(id)a3 mapItem:(id)a4 completion:(id)a5;
- (NavdNetworkRequester)initWithNetworkRequester:(id)a3 purpose:(int)a4 source:(int)a5;
@end

@implementation NavdNetworkRequester

- (NavdNetworkRequester)initWithNetworkRequester:(id)a3 purpose:(int)a4 source:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = NavdNetworkRequester;
  v10 = [(NavdNetworkRequester *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_networkRequester, a3);
    v11->_purpose = a4;
    v11->_source = a5;
  }

  return v11;
}

- (BOOL)requestWaypointForEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = MapsSuggestionsLocationForEntry();
    if (v8)
    {
      v9 = [v6 geoMapItem];

      v10 = GEOFindOrCreateLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          [v8 coordinate];
          v13 = v12;
          [v8 coordinate];
          v15 = v14;
          v16 = [v6 geoMapItem];
          v17 = [v16 description];
          v24 = 134218498;
          v25 = v13;
          v26 = 2048;
          v27 = v15;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Requesting Waypoint for location <%.6f,%.6f> with mapitem:%@", &v24, 0x20u);
        }

        v18 = [v6 geoMapItem];
        v19 = [(NavdNetworkRequester *)self requestWaypointForMapItem:v18 completion:v7];
      }

      else
      {
        if (v11)
        {
          [v8 coordinate];
          v21 = v20;
          [v8 coordinate];
          v24 = 134218240;
          v25 = v21;
          v26 = 2048;
          v27 = v22;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Requesting Waypoint for location <%.6f,%.6f> without mapitem", &v24, 0x16u);
        }

        v19 = [(NavdNetworkRequester *)self requestWaypointForLocation:v8 completion:v7];
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)requestWaypointForCurrentLocation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GEOLocation alloc] initWithCLLocation:v7];

  if (v8)
  {
    v9 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForCurrentLocation:v8 completion:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requestWaypointForLocation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GEOLocation alloc] initWithCLLocation:v7];

  if (v8)
  {
    v9 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForLocation:v8 completion:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requestWaypointForLocation:(id)a3 mapItem:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[GEOLocation alloc] initWithCLLocation:v10];

  if (v11)
  {
    v12 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForLocation:v11 mapItem:v8 completion:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)requestRouteForWaypoints:(id)a3 at:(id)a4 attributes:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(GEODirectionsRequestFeedback);
  [v14 setPurpose:self->_purpose];
  [v14 setSource:self->_source];
  if (v11)
  {
    v15 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester routeForWaypoints:v10 currentLocation:v11 routeAttributes:v12 feedback:v14 completion:v13];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)requestEtaForWaypoint:(id)a3 at:(id)a4 transportType:(int)a5 attributes:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    objc_initWeak(location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100033628;
    v22[3] = &unk_100067910;
    v23 = v13;
    v26 = v15;
    objc_copyWeak(&v27, location);
    v24 = v12;
    v28 = a5;
    v25 = v14;
    v16 = [(NavdNetworkRequester *)self requestWaypointForLocation:v23 completion:v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [v13 coordinate];
      v19 = v18;
      [v13 coordinate];
      *location = 134218240;
      *&location[4] = v19;
      v30 = 2048;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to Request ETA for location <%.6f,%.6f> : missing destination waypoint", location, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

@end