@interface MNSteppingLocationTracker
- (MNSteppingLocationTracker)initWithNavigationSession:(id)a3;
- (id)_matchedLocationForLocation:(id)a3;
- (id)matchedLocationForLocation:(id)a3;
- (int)transportType;
- (void)arrivalUpdater:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)arrivalUpdaterDidArrive:(id)a3 atEndOfLegAtIndex:(unint64_t)a4;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)stopTracking;
- (void)updateLocation:(id)a3;
@end

@implementation MNSteppingLocationTracker

- (void)arrivalUpdaterDidArrive:(id)a3 atEndOfLegAtIndex:(unint64_t)a4
{
  v5 = [(MNLocationTracker *)self delegate:a3];
  [v5 locationTrackerDidArrive:self];
}

- (void)arrivalUpdater:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v7 = a4;
  if ([v7 arrivalState] == 4)
  {
    [(MNLocationTracker *)self _updateArrivalInfo:v7 previousState:a5];
  }
}

- (void)updateLocation:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MNSteppingLocationTracker;
  [(MNLocationTracker *)&v5 updateLocation:v4];
  if (-[MNLocationTracker state](self, "state") == 1 && [v4 stepIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNLocationTracker *)self _setState:2];
  }
}

- (id)_matchedLocationForLocation:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNSteppingLocationTracker::_matchedLocationForLocation:", &v17, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v4];
  v8 = [(GEORouteMatcher *)self->_routeMatcher matchToRouteWithLocation:v7];
  v9 = [v8 isGoodMatch];
  v10 = [MNLocation alloc];
  if (v9)
  {
    v11 = [(MNLocation *)v10 initWithRouteMatch:v8 rawLocation:v4 locationFixType:0];
  }

  else
  {
    v11 = [(MNLocation *)v10 initWithRawLocation:v4];
    [(MNLocation *)v11 setRouteMatch:v8];
  }

  v12 = *MEMORY[0x1E69A19F8];
  v13 = *(MEMORY[0x1E69A19F8] + 8);
  if (GEOConfigGetBOOL())
  {
    v14 = [v4 uuid];
    [(MNLocation *)v11 setUuid:v14];
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

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v6 = a3;
  [(MNLocationTracker *)self _setState:1];
  v7 = objc_alloc_init(MNArrivalUpdater);
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = v7;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:self];
  v9 = [(MNLocationTracker *)self navigationSessionState];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:v9];

  [(MNArrivalUpdater *)self->_arrivalUpdater start];
  v10.receiver = self;
  v10.super_class = MNSteppingLocationTracker;
  [(MNLocationTracker *)&v10 startTrackingWithInitialLocation:v6 targetLegIndex:a4];
}

- (id)matchedLocationForLocation:(id)a3
{
  v9.receiver = self;
  v9.super_class = MNSteppingLocationTracker;
  v4 = [(MNLocationTracker *)&v9 matchedLocationForLocation:a3];
  v5 = [v4 routeMatch];
  v6 = [v5 step];
  v7 = [v6 isArrivalStep];

  if (v7)
  {
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:v4];
  }

  return v4;
}

- (int)transportType
{
  v2 = [(MNLocationTracker *)self navigationSession];
  v3 = [v2 routeManager];
  v4 = [v3 currentRoute];
  v5 = [v4 transportType];

  return v5;
}

- (MNSteppingLocationTracker)initWithNavigationSession:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MNSteppingLocationTracker;
  v5 = [(MNLocationTracker *)&v14 initWithNavigationSession:v4];
  if (v5)
  {
    v6 = [v4 routeManager];
    v7 = [v6 currentRoute];

    v8 = objc_alloc(MEMORY[0x1E69A2548]);
    v9 = [v4 auditToken];
    v10 = [v8 initWithRoute:v7 auditToken:v9];
    routeMatcher = v5->_routeMatcher;
    v5->_routeMatcher = v10;

    v12 = v5;
  }

  return v5;
}

@end