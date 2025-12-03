@interface MNSteppingLocationTracker
- (MNSteppingLocationTracker)initWithNavigationSession:(id)session;
- (id)_matchedLocationForLocation:(id)location;
- (id)matchedLocationForLocation:(id)location;
- (int)transportType;
- (void)arrivalUpdater:(id)updater didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)arrivalUpdaterDidArrive:(id)arrive atEndOfLegAtIndex:(unint64_t)index;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)stopTracking;
- (void)updateLocation:(id)location;
@end

@implementation MNSteppingLocationTracker

- (void)arrivalUpdaterDidArrive:(id)arrive atEndOfLegAtIndex:(unint64_t)index
{
  v5 = [(MNLocationTracker *)self delegate:arrive];
  [v5 locationTrackerDidArrive:self];
}

- (void)arrivalUpdater:(id)updater didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  infoCopy = info;
  if ([infoCopy arrivalState] == 4)
  {
    [(MNLocationTracker *)self _updateArrivalInfo:infoCopy previousState:state];
  }
}

- (void)updateLocation:(id)location
{
  locationCopy = location;
  v5.receiver = self;
  v5.super_class = MNSteppingLocationTracker;
  [(MNLocationTracker *)&v5 updateLocation:locationCopy];
  if (-[MNLocationTracker state](self, "state") == 1 && [locationCopy stepIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNLocationTracker *)self _setState:2];
  }
}

- (id)_matchedLocationForLocation:(id)location
{
  v19 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v17 = 138412290;
    v18 = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNSteppingLocationTracker::_matchedLocationForLocation:", &v17, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
  v8 = [(GEORouteMatcher *)self->_routeMatcher matchToRouteWithLocation:v7];
  isGoodMatch = [v8 isGoodMatch];
  v10 = [MNLocation alloc];
  if (isGoodMatch)
  {
    v11 = [(MNLocation *)v10 initWithRouteMatch:v8 rawLocation:locationCopy locationFixType:0];
  }

  else
  {
    v11 = [(MNLocation *)v10 initWithRawLocation:locationCopy];
    [(MNLocation *)v11 setRouteMatch:v8];
  }

  v12 = *MEMORY[0x1E69A19F8];
  v13 = *(MEMORY[0x1E69A19F8] + 8);
  if (GEOConfigGetBOOL())
  {
    uuid2 = [locationCopy uuid];
    [(MNLocation *)v11 setUuid:uuid2];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)stopTracking
{
  [(MNLocationTracker *)self _setState:0];
  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:0];
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = 0;

  v4.receiver = self;
  v4.super_class = MNSteppingLocationTracker;
  [(MNLocationTracker *)&v4 stopTracking];
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  locationCopy = location;
  [(MNLocationTracker *)self _setState:1];
  v7 = objc_alloc_init(MNArrivalUpdater);
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = v7;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:self];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:navigationSessionState];

  [(MNArrivalUpdater *)self->_arrivalUpdater start];
  v10.receiver = self;
  v10.super_class = MNSteppingLocationTracker;
  [(MNLocationTracker *)&v10 startTrackingWithInitialLocation:locationCopy targetLegIndex:index];
}

- (id)matchedLocationForLocation:(id)location
{
  v9.receiver = self;
  v9.super_class = MNSteppingLocationTracker;
  v4 = [(MNLocationTracker *)&v9 matchedLocationForLocation:location];
  routeMatch = [v4 routeMatch];
  step = [routeMatch step];
  isArrivalStep = [step isArrivalStep];

  if (isArrivalStep)
  {
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:v4];
  }

  return v4;
}

- (int)transportType
{
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRoute = [routeManager currentRoute];
  transportType = [currentRoute transportType];

  return transportType;
}

- (MNSteppingLocationTracker)initWithNavigationSession:(id)session
{
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = MNSteppingLocationTracker;
  v5 = [(MNLocationTracker *)&v14 initWithNavigationSession:sessionCopy];
  if (v5)
  {
    routeManager = [sessionCopy routeManager];
    currentRoute = [routeManager currentRoute];

    v8 = objc_alloc(MEMORY[0x1E69A2548]);
    auditToken = [sessionCopy auditToken];
    v10 = [v8 initWithRoute:currentRoute auditToken:auditToken];
    routeMatcher = v5->_routeMatcher;
    v5->_routeMatcher = v10;

    v12 = v5;
  }

  return v5;
}

@end