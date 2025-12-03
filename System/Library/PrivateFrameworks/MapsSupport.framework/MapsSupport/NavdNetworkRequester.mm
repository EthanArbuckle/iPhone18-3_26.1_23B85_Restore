@interface NavdNetworkRequester
- (BOOL)requestEtaForWaypoint:(id)waypoint at:(id)at transportType:(int)type attributes:(id)attributes completion:(id)completion;
- (BOOL)requestRouteForWaypoints:(id)waypoints at:(id)at attributes:(id)attributes completion:(id)completion;
- (BOOL)requestWaypointForCurrentLocation:(id)location completion:(id)completion;
- (BOOL)requestWaypointForEntry:(id)entry completion:(id)completion;
- (BOOL)requestWaypointForLocation:(id)location completion:(id)completion;
- (BOOL)requestWaypointForLocation:(id)location mapItem:(id)item completion:(id)completion;
- (NavdNetworkRequester)initWithNetworkRequester:(id)requester purpose:(int)purpose source:(int)source;
@end

@implementation NavdNetworkRequester

- (NavdNetworkRequester)initWithNetworkRequester:(id)requester purpose:(int)purpose source:(int)source
{
  requesterCopy = requester;
  v13.receiver = self;
  v13.super_class = NavdNetworkRequester;
  v10 = [(NavdNetworkRequester *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_networkRequester, requester);
    v11->_purpose = purpose;
    v11->_source = source;
  }

  return v11;
}

- (BOOL)requestWaypointForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  if (entryCopy)
  {
    v8 = MapsSuggestionsLocationForEntry();
    if (v8)
    {
      geoMapItem = [entryCopy geoMapItem];

      v10 = GEOFindOrCreateLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (geoMapItem)
      {
        if (v11)
        {
          [v8 coordinate];
          v13 = v12;
          [v8 coordinate];
          v15 = v14;
          geoMapItem2 = [entryCopy geoMapItem];
          v17 = [geoMapItem2 description];
          v24 = 134218498;
          v25 = v13;
          v26 = 2048;
          v27 = v15;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Requesting Waypoint for location <%.6f,%.6f> with mapitem:%@", &v24, 0x20u);
        }

        geoMapItem3 = [entryCopy geoMapItem];
        v19 = [(NavdNetworkRequester *)self requestWaypointForMapItem:geoMapItem3 completion:completionCopy];
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

        v19 = [(NavdNetworkRequester *)self requestWaypointForLocation:v8 completion:completionCopy];
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

- (BOOL)requestWaypointForCurrentLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  v8 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  if (v8)
  {
    v9 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForCurrentLocation:v8 completion:completionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requestWaypointForLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  v8 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  if (v8)
  {
    v9 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForLocation:v8 completion:completionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requestWaypointForLocation:(id)location mapItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  locationCopy = location;
  v11 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  if (v11)
  {
    v12 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester composedWaypointForLocation:v11 mapItem:itemCopy completion:completionCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)requestRouteForWaypoints:(id)waypoints at:(id)at attributes:(id)attributes completion:(id)completion
{
  waypointsCopy = waypoints;
  atCopy = at;
  attributesCopy = attributes;
  completionCopy = completion;
  v14 = objc_alloc_init(GEODirectionsRequestFeedback);
  [v14 setPurpose:self->_purpose];
  [v14 setSource:self->_source];
  if (atCopy)
  {
    v15 = [(MapsSuggestionsNetworkRequester *)self->_networkRequester routeForWaypoints:waypointsCopy currentLocation:atCopy routeAttributes:attributesCopy feedback:v14 completion:completionCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)requestEtaForWaypoint:(id)waypoint at:(id)at transportType:(int)type attributes:(id)attributes completion:(id)completion
{
  waypointCopy = waypoint;
  atCopy = at;
  attributesCopy = attributes;
  completionCopy = completion;
  if (waypointCopy)
  {
    objc_initWeak(location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100033628;
    v22[3] = &unk_100067910;
    v23 = atCopy;
    v26 = completionCopy;
    objc_copyWeak(&v27, location);
    v24 = waypointCopy;
    typeCopy = type;
    v25 = attributesCopy;
    v16 = [(NavdNetworkRequester *)self requestWaypointForLocation:v23 completion:v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [atCopy coordinate];
      v19 = v18;
      [atCopy coordinate];
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