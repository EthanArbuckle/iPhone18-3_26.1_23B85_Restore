@interface NavdLocationManager
+ (id)sharedInstance;
- (BOOL)_q_isNewLocation:(id)a3 tolerableWithLocation:(id)a4 distance:(double)a5;
- (BOOL)_q_pivotShouldBeUpdatedDistanceToCandidate:(double)a3;
- (NavdLocationManager)init;
- (NavdLocationManager)initWithLocationProvider:(id)a3;
- (void)_q_badCandidateLocation:(id)a3;
- (void)_q_cancelStaleLocationTimer;
- (void)_q_createActivityForLocationUpdate;
- (void)_q_createActivityForStaleLocationUse:(id)a3;
- (void)_q_createActivityToUseStaleLocation:(id)a3 fireAtAbsoluteTime:(double)a4;
- (void)_q_goodCandidateLocation:(id)a3 shouldUpdatePivot:(BOOL)a4;
- (void)_q_locationRefreshActivityFired;
- (void)_q_processCandidateLocation:(id)a3;
- (void)_q_processErrorWhenUpdatingCurrentLocation:(id)a3;
- (void)_q_staleLocationUseActivityFired:(id)a3;
- (void)_q_startLocationUpdate;
- (void)_q_stopLocationUpdate;
- (void)_q_updateDesiredAccuracyBasedOnCadidateDistanceToPivot:(double)a3 candidateDistanceToCurrent:(double)a4;
- (void)dealloc;
- (void)deregisterBackgroundTasks;
- (void)getCurrentLocationWithHandler:(id)a3;
- (void)locationProvider:(id)a3 didReceiveError:(id)a4;
- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4;
- (void)registerBackgroundTasks;
- (void)startLocationUpdate;
- (void)stopLocationUpdate;
@end

@implementation NavdLocationManager

+ (id)sharedInstance
{
  if (qword_1000758D8 != -1)
  {
    sub_10003D950();
  }

  v3 = qword_1000758D0;

  return v3;
}

- (NavdLocationManager)init
{
  v3 = +[MNHybridLocationProvider navdInstance];
  v4 = [(NavdLocationManager *)self initWithLocationProvider:v3];

  return v4;
}

- (NavdLocationManager)initWithLocationProvider:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = NavdLocationManager;
  v6 = [(NavdLocationManager *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(GEOLocationShifter);
    locationShifter = v6->_locationShifter;
    v6->_locationShifter = v7;

    v9 = objc_alloc_init(NSMutableArray);
    locationHandlers = v6->_locationHandlers;
    v6->_locationHandlers = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("NavdLocationManager", v11);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v12;

    v6->_transportTypeToRequestAccuracyFor = 0;
    objc_storeStrong(&v6->_locationProvider, a3);
    [(NavdLocationProvider *)v6->_locationProvider setDelegate:v6];
    v14 = +[GEONavdDefaults sharedInstance];
    [v14 minimumDistanceToGetLocationUpdatesInMeters];
    [(NavdLocationProvider *)v6->_locationProvider setDistanceFilter:?];

    v15 = +[GEONavdDefaults sharedInstance];
    [v15 locationUpdatesDesiredAccuracyWhileStationaryForDriving];
    [(NavdLocationProvider *)v6->_locationProvider setDesiredAccuracy:?];
  }

  return v6;
}

- (void)dealloc
{
  [(NavdLocationManager *)self _q_cancelStaleLocationTimer];
  [(NavdLocationManager *)self deregisterBackgroundTasks];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NavdLocationManager;
  [(NavdLocationManager *)&v4 dealloc];
}

- (void)registerBackgroundTasks
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009E74;
  v5[3] = &unk_100065158;
  v5[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.navd.locationRefreshActivity" usingQueue:serialQueue launchHandler:v5];
}

- (void)deregisterBackgroundTasks
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.navd.locationRefreshActivity"];
}

- (void)_q_startLocationUpdate
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    locationProvider = self->_locationProvider;
    v10 = 138477827;
    v11 = locationProvider;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Asking the NavdLocationManager for a location: %{private}@", &v10, 0xCu);
  }

  self->_updatingLocations = 1;
  [(NavdLocationManager *)self registerBackgroundTasks];
  if (!self->_inUseAssertion)
  {
    v5 = +[CLLocationManager inUseAssertionForNavd];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v5;
  }

  v7 = +[MNHybridLocationProvider navdInstance];
  [v7 setDelegate:self];

  v8 = +[MNHybridLocationProvider navdInstance];
  [v8 setMode:0];

  v9 = +[MNHybridLocationProvider navdInstance];
  [v9 startUpdatingLocation];
}

- (void)startLocationUpdate
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A0DC;
  block[3] = &unk_100065180;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_q_stopLocationUpdate
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping location updates", v9, 2u);
  }

  v4 = +[NavdLocationLeecher sharedLeecher];
  v5 = +[MNHybridLocationProvider navdInstance];
  [v5 setDelegate:v4];

  v6 = +[MNHybridLocationProvider navdInstance];
  [v6 setMode:1];

  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v8 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  self->_updatingLocations = 0;
}

- (void)stopLocationUpdate
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A254;
  block[3] = &unk_100065180;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)getCurrentLocationWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A314;
    v7[3] = &unk_100065098;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }
}

- (BOOL)_q_isNewLocation:(id)a3 tolerableWithLocation:(id)a4 distance:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[GEONavdDefaults sharedInstance];
  [v9 minimumDistanceToCompareAgainstLocationAccuracy];
  v11 = v10;

  if (v11 >= a5)
  {
    v15 = 1;
  }

  else
  {
    [v8 horizontalAccuracy];
    v13 = v12;
    [v7 horizontalAccuracy];
    v15 = fmax(v13, v14) <= a5;
  }

  return v15;
}

- (BOOL)_q_pivotShouldBeUpdatedDistanceToCandidate:(double)a3
{
  [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
  if (v5 < a3)
  {
    return 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = [(CLLocation *)self->_pivotLocation timestamp];
  [v7 timeIntervalSinceReferenceDate];
  v9 = Current - v8;
  v10 = +[GEONavdDefaults sharedInstance];
  [v10 locationFreshnessThreshold];
  v12 = v9 > v11;

  return v12;
}

- (void)_q_updateDesiredAccuracyBasedOnCadidateDistanceToPivot:(double)a3 candidateDistanceToCurrent:(double)a4
{
  [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
  v8 = v7;
  v9 = (v7 <= a3) | (v7 <= a4);
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218752;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Current location manager accuracy: %f, distance to last location: %f, distance to pivot location: %f, motionType: %lu", &v14, 0x2Au);
  }

  [(NavdLocationManager *)self _q_desiredAccuracyForTransportType:self->_transportTypeToRequestAccuracyFor motionType:v9];
  if (v8 != v11)
  {
    v12 = v11;
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Changing accuracy to %f", &v14, 0xCu);
    }

    [(NavdLocationProvider *)self->_locationProvider setDesiredAccuracy:v12];
  }
}

- (void)_q_staleLocationUseActivityFired:(id)a3
{
  v4 = a3;
  candidateStaleLocation = self->_candidateStaleLocation;
  v6 = GEOFindOrCreateLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (candidateStaleLocation == v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Stale location use activity fired: Using last received location", buf, 2u);
    }

    v8 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    [v8 cancelTaskRequestWithIdentifier:@"com.apple.navd.staleLocationUseActivity" error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Unable to cancel the stale location use task request.", v12, 2u);
      }
    }

    [(NavdLocationManager *)self _q_goodCandidateLocation:v4 shouldUpdatePivot:1];
  }

  else
  {
    if (v7)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Stale location use activity fired but it appears it is unnecessary to use the stale location.", v11, 2u);
    }
  }
}

- (void)_q_cancelStaleLocationTimer
{
  staleLocationTimer = self->_staleLocationTimer;
  if (staleLocationTimer)
  {
    dispatch_source_cancel(staleLocationTimer);
    staleLocationTimer = self->_staleLocationTimer;
  }

  self->_staleLocationTimer = 0;
}

- (void)_q_createActivityToUseStaleLocation:(id)a3 fireAtAbsoluteTime:(double)a4
{
  v6 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= a4 + -1.0)
  {
    [(NavdLocationManager *)self _q_staleLocationUseActivityFired:v6];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v21 = v6;
      v22 = 2048;
      v23 = a4 - Current;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Too early to use stale location %{private}@.  Scheduling with delay %f.", buf, 0x16u);
    }

    v9 = +[GEONavdDefaults sharedInstance];
    [v9 staleLocationUseTimerInterval];
    v11 = v10;

    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_serialQueue);
    staleLocationTimer = self->_staleLocationTimer;
    self->_staleLocationTimer = v12;

    objc_initWeak(buf, self);
    v14 = self->_staleLocationTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000ADF8;
    handler[3] = &unk_1000651A8;
    objc_copyWeak(v19, buf);
    v18 = v6;
    v19[1] = *&a4;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_staleLocationTimer;
    v16 = dispatch_walltime(0, (v11 * 1000000000.0));
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_staleLocationTimer);

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }
}

- (void)_q_createActivityForStaleLocationUse:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "creating an activity for stale location use", v11, 2u);
  }

  candidateStaleLocation = self->_candidateStaleLocation;
  self->_candidateStaleLocation = v4;
  v7 = v4;

  v8 = +[GEONavdDefaults sharedInstance];
  [v8 staleLocationUseTimerInterval];
  v10 = v9;

  [(NavdLocationManager *)self _q_createActivityToUseStaleLocation:v7 fireAtAbsoluteTime:CFAbsoluteTimeGetCurrent() + v10];
}

- (void)_q_locationRefreshActivityFired
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Location refresh activity fired", buf, 2u);
  }

  [(NavdLocationManager *)self _q_startLocationUpdate];
  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = 0;
  [v4 cancelTaskRequestWithIdentifier:@"com.apple.navd.staleLocationUseActivity" error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Unable to cancel the location use task request.", v7, 2u);
    }
  }
}

- (void)_q_createActivityForLocationUpdate
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "creating an activity for location update", buf, 2u);
  }

  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v17 = 0;
  [v3 cancelTaskRequestWithIdentifier:@"com.apple.navd.locationRefreshActivity" error:&v17];
  v4 = v17;

  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Unable to cancel the location use task request.", buf, 2u);
    }
  }

  v6 = +[GEONavdDefaults sharedInstance];
  [v6 locationUpdateTimerInterval];
  v8 = v7;

  v9 = sub_1000326B4(@"com.apple.navd.locationRefreshActivity", 0, v8, v8 * 0.25);
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v19 = v8;
    v20 = 2048;
    v21 = v8 * 0.25;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Registering Location Background Task triggered (timer: (%f), graceperiod: (%f), delay: (%f)", buf, 0x20u);
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v16 = v4;
  v12 = [v11 submitTaskRequest:v9 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138412290;
      v19 = *&v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %@", buf, 0xCu);
    }
  }
}

- (void)_q_badCandidateLocation:(id)a3
{
  ++self->_numberOfRetriesForLocation;
  [(NavdLocationManager *)self _q_createActivityForStaleLocationUse:a3];
  if (self->_numberOfRetriesForLocation >= 5)
  {
    [(NavdLocationManager *)self _q_stopLocationUpdate];
    self->_numberOfRetriesForLocation = 0;

    [(NavdLocationManager *)self _q_createActivityForLocationUpdate];
  }
}

- (void)_q_goodCandidateLocation:(id)a3 shouldUpdatePivot:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(NavdLocationManager *)self _q_stopLocationUpdate];
  [(NavdLocationManager *)self _q_cancelStaleLocationTimer];
  self->_numberOfRetriesForLocation = 0;
  v8 = +[BGSystemTaskScheduler sharedScheduler];
  v23 = 0;
  [v8 cancelTaskRequestWithIdentifier:@"com.apple.navd.staleLocationUseActivity" error:&v23];
  v9 = v23;

  if (v9)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Unable to cancel the stale location use task request.", buf, 2u);
    }
  }

  candidateStaleLocation = self->_candidateStaleLocation;
  self->_candidateStaleLocation = 0;

  objc_storeStrong(&self->_currentLocation, a3);
  if (v4)
  {
    objc_storeStrong(&self->_pivotLocation, a3);
  }

  v12 = [(NSMutableArray *)self->_locationHandlers copy];
  [(NSMutableArray *)self->_locationHandlers removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)_q_processCandidateLocation:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [v4 timestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = Current - v7;
  v9 = +[GEONavdDefaults sharedInstance];
  [v9 locationFreshnessThreshold];
  v11 = v10;

  if (v8 >= v11)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *v36 = 138477827;
      *&v36[4] = v4;
      v28 = "Location is not fresh:%{private}@. \nIgnoring..";
      v29 = v27;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v29, v30, v28, v36, v31);
    }

LABEL_17:

LABEL_18:
    [(NavdLocationManager *)self _q_badCandidateLocation:v4, *v36, *&v36[16], *&v37, *v38, *&v38[16]];
    goto LABEL_19;
  }

  pivotLocation = self->_pivotLocation;
  if (!pivotLocation)
  {
    objc_storeStrong(&self->_pivotLocation, self->_currentLocation);
    pivotLocation = self->_pivotLocation;
  }

  [(CLLocation *)pivotLocation distanceFromLocation:v4];
  v14 = v13;
  [(CLLocation *)self->_currentLocation distanceFromLocation:v4];
  v16 = v15;
  if (![(NavdLocationManager *)self _q_isNewLocation:v4 tolerableWithLocation:self->_pivotLocation distance:v14]|| ![(NavdLocationManager *)self _q_isNewLocation:v4 tolerableWithLocation:self->_currentLocation distance:v16])
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v32 = self->_pivotLocation;
      currentLocation = self->_currentLocation;
      *v36 = 138478851;
      *&v36[4] = v32;
      *&v36[12] = 2113;
      *&v36[14] = currentLocation;
      *&v36[22] = 2113;
      v37 = *&v4;
      *v38 = 2048;
      *&v38[2] = v14;
      *&v38[10] = 2048;
      *&v38[12] = v16;
      v28 = "Location accuracy is very bad for calculating distances. _pivotLocation %{private}@, currentLocation %{private}@, candidateLocation %{private}@, distanceToPivot %f, distanceToCurrent %f.  Ignoring this candidate.";
      v29 = v27;
      v30 = OS_LOG_TYPE_DEBUG;
      v31 = 52;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v17 = [(NavdLocationManager *)self _q_pivotShouldBeUpdatedDistanceToCandidate:v14];
  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
    *v36 = 134218496;
    *&v36[4] = v19;
    *&v36[12] = 2048;
    *&v36[14] = v16;
    *&v36[22] = 2048;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Current location manager accuracy: %f, distance to current location: %f, distance to pivot location: %f", v36, 0x20u);
  }

  [(NavdLocationManager *)self _q_updateDesiredAccuracyBasedOnCadidateDistanceToPivot:v14 candidateDistanceToCurrent:v16];
  [v4 horizontalAccuracy];
  v21 = v20;
  [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
  v23 = v22;
  v24 = GEOFindOrCreateLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (v21 > v23)
  {
    if (v25)
    {
      [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
      *v36 = 134218243;
      *&v36[4] = v26;
      *&v36[12] = 2113;
      *&v36[14] = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Desired accuracy of %f not achieved in location %{private}@.  Not updating current or pivot location.", v36, 0x16u);
    }

    goto LABEL_18;
  }

  if (v25)
  {
    [(NavdLocationProvider *)self->_locationProvider desiredAccuracy];
    v34 = @"Not updating";
    *v36 = 134218499;
    *&v36[4] = v35;
    *&v36[12] = 2113;
    if (v17)
    {
      v34 = @"Updating";
    }

    *&v36[14] = v4;
    *&v36[22] = 2113;
    v37 = *&v34;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Desired accuracy of %f achieved in location %{private}@.  Updating current location.  %{private}@ pivot location.", v36, 0x20u);
  }

  [(NavdLocationManager *)self _q_goodCandidateLocation:v4 shouldUpdatePivot:v17];
LABEL_19:
}

- (void)_q_processErrorWhenUpdatingCurrentLocation:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error while updating current location:%{public}@", &v6, 0xCu);
  }

  [(NavdLocationManager *)self _q_stopLocationUpdate];
  self->_numberOfRetriesForLocation = 0;
  [(NavdLocationManager *)self _q_createActivityForLocationUpdate];
}

- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138478083;
    v17 = v10;
    v18 = 2113;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{private}@ received new location: %{private}@", buf, 0x16u);
  }

  locationShifter = self->_locationShifter;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BBCC;
  v13[3] = &unk_1000651D0;
  v14 = v7;
  v15 = self;
  v12 = v7;
  [(GEOLocationShifter *)locationShifter navdShiftLocation:v12 withCompletionHandler:v13];
}

- (void)locationProvider:(id)a3 didReceiveError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138478083;
    v16 = v10;
    v17 = 2113;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{private}@ failed with error: %{private}@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BF2C;
  v13[3] = &unk_1000650C0;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(serialQueue, v13);
}

@end