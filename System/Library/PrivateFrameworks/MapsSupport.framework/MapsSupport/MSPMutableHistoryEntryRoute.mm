@interface MSPMutableHistoryEntryRoute
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object;
- (BOOL)navigationWasInterrupted;
- (GEOAutomobileOptions)automobileOptions;
- (GEOComposedWaypoint)endWaypoint;
- (GEOComposedWaypoint)startWaypoint;
- (GEOCyclingOptions)cyclingOptions;
- (GEOTransitOptions)transitOptions;
- (GEOURLRouteHandle)routeHandle;
- (GEOWalkingOptions)walkingOptions;
- (MSPMutableHistoryEntryRoute)initWithStorage:(id)storage;
- (NSArray)waypoints;
- (NSString)identifier;
- (id)_routeRequestStorage;
- (id)transferToImmutableIfValidWithError:(id *)error;
- (int64_t)transportType;
- (void)setRouteInformationSource:(id)source;
@end

@implementation MSPMutableHistoryEntryRoute

- (MSPMutableHistoryEntryRoute)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    storageCopy = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)storageCopy setSearchType:2];
    v5 = objc_alloc_init(MSPDirectionsSearch);
    [(MSPHistoryEntryStorage *)storageCopy setDirectionsSearch:v5];
  }

  v27.receiver = self;
  v27.super_class = MSPMutableHistoryEntryRoute;
  v6 = [(MSPMutableHistoryEntry *)&v27 initWithStorage:storageCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  storage = [(MSPMutableHistoryEntry *)v6 storage];
  if ([storage searchType] == 2)
  {
    storage2 = [(MSPMutableHistoryEntry *)v7 storage];
    directionsSearch = [storage2 directionsSearch];
    v11 = directionsSearch != 0;
  }

  else
  {
    v11 = 0;
  }

  storage3 = [(MSPMutableHistoryEntry *)v7 storage];
  if ([storage3 searchType] != 5)
  {

    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_12:
    storage4 = [(MSPMutableHistoryEntry *)v7 storage];
    directionsSearch2 = [storage4 directionsSearch];
    routeRequestStorage = [directionsSearch2 routeRequestStorage];
    routeInformationSource = v7->_routeInformationSource;
    v7->_routeInformationSource = routeRequestStorage;
    goto LABEL_13;
  }

  storage5 = [(MSPMutableHistoryEntry *)v7 storage];
  ridesharingTrip = [storage5 ridesharingTrip];

  if (v11)
  {
    goto LABEL_12;
  }

  if (!ridesharingTrip)
  {
LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v15 = [MSPRidesharingInformationSource alloc];
  storage4 = [(MSPMutableHistoryEntry *)v7 storage];
  directionsSearch2 = [storage4 ridesharingTrip];
  routeInformationSource = [directionsSearch2 startWaypoint];
  storage6 = [(MSPMutableHistoryEntry *)v7 storage];
  ridesharingTrip2 = [storage6 ridesharingTrip];
  endWaypoint = [ridesharingTrip2 endWaypoint];
  v22 = [(MSPRidesharingInformationSource *)v15 initWithStartWaypoint:routeInformationSource endWaypoint:endWaypoint];
  v23 = v7->_routeInformationSource;
  v7->_routeInformationSource = v22;

LABEL_13:
LABEL_14:
  v25 = v7;
LABEL_16:

  return v25;
}

- (NSString)identifier
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  identifier = [storage identifier];

  return identifier;
}

- (id)_routeRequestStorage
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  directionsSearch = [storage directionsSearch];
  routeRequestStorage = [directionsSearch routeRequestStorage];

  return routeRequestStorage;
}

- (void)setRouteInformationSource:(id)source
{
  sourceCopy = source;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  if (self->_routeInformationSource != sourceCopy)
  {
    objc_storeStrong(&self->_routeInformationSource, source);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storage = [(MSPMutableHistoryEntry *)self storage];
      [storage setSearchType:2];

      storage2 = [(MSPMutableHistoryEntry *)self storage];
      [storage2 setRidesharingTrip:0];

      v7 = objc_alloc_init(MSPDirectionsSearch);
      storage3 = [(MSPMutableHistoryEntry *)self storage];
      [storage3 setDirectionsSearch:v7];

      _endWaypoint = [(MSPRouteInformationSource *)sourceCopy copy];
      storage4 = [(MSPMutableHistoryEntry *)self storage];
      directionsSearch = [storage4 directionsSearch];
      [directionsSearch setRouteRequestStorage:_endWaypoint];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v12 = sourceCopy;
      storage5 = [(MSPMutableHistoryEntry *)self storage];
      [storage5 setSearchType:5];

      storage6 = [(MSPMutableHistoryEntry *)self storage];
      [storage6 setDirectionsSearch:0];

      v15 = objc_alloc_init(MSPRidesharingTrip);
      storage7 = [(MSPMutableHistoryEntry *)self storage];
      [storage7 setRidesharingTrip:v15];

      _startWaypoint = [(MSPRouteInformationSource *)v12 _startWaypoint];
      storage8 = [(MSPMutableHistoryEntry *)self storage];
      ridesharingTrip = [storage8 ridesharingTrip];
      [ridesharingTrip setStartWaypoint:_startWaypoint];

      _endWaypoint = [(MSPRouteInformationSource *)v12 _endWaypoint];

      storage4 = [(MSPMutableHistoryEntry *)self storage];
      directionsSearch = [storage4 ridesharingTrip];
      [directionsSearch setEndWaypoint:_endWaypoint];
    }
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (GEOComposedWaypoint)startWaypoint
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  ridesharingTrip = [storage ridesharingTrip];
  startWaypoint = [ridesharingTrip startWaypoint];

  if (!startWaypoint)
  {
    _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
    waypoints = [_routeRequestStorage waypoints];
    if ([waypoints count] < 2)
    {
      startWaypoint = 0;
    }

    else
    {
      _routeRequestStorage2 = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
      waypoints2 = [_routeRequestStorage2 waypoints];
      startWaypoint = [waypoints2 firstObject];
    }
  }

  return startWaypoint;
}

- (GEOComposedWaypoint)endWaypoint
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  ridesharingTrip = [storage ridesharingTrip];
  endWaypoint = [ridesharingTrip endWaypoint];

  if (!endWaypoint)
  {
    _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
    waypoints = [_routeRequestStorage waypoints];
    endWaypoint = [waypoints lastObject];
  }

  return endWaypoint;
}

- (NSArray)waypoints
{
  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  waypoints = [_routeRequestStorage waypoints];

  return waypoints;
}

- (int64_t)transportType
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  ridesharingTrip = [storage ridesharingTrip];

  if (ridesharingTrip)
  {
    return 4;
  }

  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  hasTransportType = [_routeRequestStorage hasTransportType];

  if (!hasTransportType)
  {
    return 0;
  }

  _routeRequestStorage2 = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  v9 = [_routeRequestStorage2 transportType] - 1;
  if (v9 > 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_2581C4800[v9];
  }

  return v5;
}

- (GEOURLRouteHandle)routeHandle
{
  routeInformationSource = [(MSPMutableHistoryEntryRoute *)self routeInformationSource];
  ifGEOStorageRouteRequestStorage = [routeInformationSource ifGEOStorageRouteRequestStorage];
  routeHandle = [ifGEOStorageRouteRequestStorage routeHandle];

  return routeHandle;
}

- (GEOAutomobileOptions)automobileOptions
{
  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  automobileOptions = [_routeRequestStorage automobileOptions];

  return automobileOptions;
}

- (GEOTransitOptions)transitOptions
{
  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  transitOptions = [_routeRequestStorage transitOptions];

  return transitOptions;
}

- (GEOWalkingOptions)walkingOptions
{
  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  walkingOptions = [_routeRequestStorage walkingOptions];

  return walkingOptions;
}

- (GEOCyclingOptions)cyclingOptions
{
  _routeRequestStorage = [(MSPMutableHistoryEntryRoute *)self _routeRequestStorage];
  cyclingOptions = [_routeRequestStorage cyclingOptions];

  return cyclingOptions;
}

- (BOOL)navigationWasInterrupted
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  directionsSearch = [storage directionsSearch];
  navigationInterrupted = [directionsSearch navigationInterrupted];

  return navigationInterrupted;
}

- (id)transferToImmutableIfValidWithError:(id *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  routeInformationSource = [(MSPMutableHistoryEntryRoute *)self routeInformationSource];

  if (!routeInformationSource)
  {
    v8 = @"routeInformationSource";
    goto LABEL_7;
  }

  endWaypoint = [(MSPMutableHistoryEntryRoute *)self endWaypoint];

  if (!endWaypoint)
  {
    [v5 addObject:@"endWaypoint"];
  }

  if (![(MSPMutableHistoryEntryRoute *)self transportType])
  {
    v8 = @"transportType";
LABEL_7:
    [v5 addObject:v8];
  }

  if ([v5 count])
  {
    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v13[0] = @"MSPContainerUntransferableObject";
      v13[1] = @"MSPContainerUnavailableKeys";
      v14[0] = self;
      v14[1] = v5;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      *error = [v9 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v10];

      error = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    error = self;
  }

  v11 = *MEMORY[0x277D85DE8];

  return error;
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object
{
  objectCopy = object;
  startWaypoint = [(MSPMutableHistoryEntryRoute *)self startWaypoint];
  if (startWaypoint)
  {
    startWaypoint2 = [(MSPMutableHistoryEntryRoute *)self startWaypoint];
    isCurrentLocation = [startWaypoint2 isCurrentLocation];

    v8 = isCurrentLocation ^ 1;
  }

  else
  {
    v8 = 0;
  }

  startWaypoint3 = [objectCopy startWaypoint];
  if (startWaypoint3)
  {
    startWaypoint4 = [objectCopy startWaypoint];
    isCurrentLocation = [startWaypoint4 isCurrentLocation];

    v11 = isCurrentLocation ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if ((v8 | v11))
  {
    startWaypoint5 = [(MSPMutableHistoryEntryRoute *)self startWaypoint];
    if (startWaypoint5)
    {
      isCurrentLocation = [objectCopy startWaypoint];
      if (isCurrentLocation)
      {
        startWaypoint6 = [(MSPMutableHistoryEntryRoute *)self startWaypoint];
        geoMapItem = [startWaypoint6 geoMapItem];
        startWaypoint7 = [objectCopy startWaypoint];
        geoMapItem2 = [startWaypoint7 geoMapItem];
        IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
      }

      else
      {
        IsEqualToMapItemForPurpose = 0;
      }
    }

    else
    {
      IsEqualToMapItemForPurpose = 0;
    }
  }

  else
  {
    IsEqualToMapItemForPurpose = 1;
  }

  endWaypoint = [(MSPMutableHistoryEntryRoute *)self endWaypoint];
  isCurrentLocation2 = [endWaypoint isCurrentLocation];
  if (isCurrentLocation2)
  {
    isCurrentLocation = [objectCopy endWaypoint];
    if ([isCurrentLocation isCurrentLocation])
    {
      v20 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  endWaypoint2 = [(MSPMutableHistoryEntryRoute *)self endWaypoint];
  geoMapItem3 = [endWaypoint2 geoMapItem];
  endWaypoint3 = [objectCopy endWaypoint];
  geoMapItem4 = [endWaypoint3 geoMapItem];
  v20 = GEOMapItemIsEqualToMapItemForPurpose();

  if (isCurrentLocation2)
  {
    goto LABEL_20;
  }

LABEL_21:

  return IsEqualToMapItemForPurpose & v20;
}

@end