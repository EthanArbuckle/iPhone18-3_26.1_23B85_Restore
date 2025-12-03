@interface PDRelevantPassProvider
- (BOOL)_findMatchingLocation:(id *)location beacon:(id *)beacon forCandidatePass:(id)pass passStyleRadius:(double)radius usingNearbyLocations:(id)locations;
- (BOOL)_handleNewLocation:(id)location forceAcceptance:(BOOL)acceptance from:(id)from;
- (BOOL)_locationIsNewEnoughAndHasGoodAccuracy:(id)accuracy;
- (BOOL)_proxPendingPassExistsWithBeacon;
- (BOOL)_proxPendingPassExistsWithLocation;
- (NSArray)currentRelevantPassCollectionInfo;
- (NSArray)currentRelevantPassInfo;
- (PDRelevantPassProvider)initWithDatabaseManager:(id)manager cardFileManager:(id)fileManager dynamicStateManager:(id)stateManager notificationManager:(id)notificationManager;
- (PDRelevantPassProviderDelegate)delegate;
- (id)_findDateRelevantPassesFromCandidates:(id)candidates betweenWindowStart:(id)start windowEnd:(id)end aroundDate:(id)date;
- (id)createCurrentNotificationRegistrationState;
- (void)_addDateRelevantAndLocationPendingCardsForStyle:(int64_t)style locationAvailable:(BOOL)available;
- (void)_beginBeaconSearchTimer;
- (void)_beginLocationSearchTimeout;
- (void)_clearBeaconSearchTimer;
- (void)_clearLocationSearchTimer;
- (void)_clearPersistedProximityInfo;
- (void)_handleNewBeacons:(id)beacons;
- (void)_loadPersistedLocationInfoIfNecessary;
- (void)_processStateChangesFromCatalog:(id)catalog;
- (void)_reallyStartCardSearchUpdatingWithCachedProximity:(BOOL)proximity refreshingProximity:(BOOL)refreshingProximity searchMode:(int64_t)mode;
- (void)_relevantCardExpirationTimerFired;
- (void)_scheduleEagerRecalculationWithCatalog:(id)catalog fenceLocation:(BOOL)location minRadius:(double)radius beaconUUIDs:(id)ds;
- (void)_sendCatalog:(id)catalog;
- (void)_startBeaconSearchIfNecessary;
- (void)_startCardSearchUpdatingWithCachedProximity:(BOOL)proximity refreshingProximity:(BOOL)refreshingProximity searchMode:(int64_t)mode;
- (void)_startLocationSearchIfNecessaryWithSearchMode:(int64_t)mode;
- (void)_stopBeaconSearch;
- (void)_stopLocationSearch;
- (void)_tearDownExitFenceTimerFired;
- (void)_unscheduleEagerRecalculation;
- (void)_updateAndSendRelevantCatalog;
- (void)dealloc;
- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream;
- (void)handleSignificantTimeChangedEvent;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailRangingBeaconsForConstraint:(id)constraint error:(id)error;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didRangeBeacons:(id)beacons satisfyingConstraint:(id)constraint;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode;
- (void)requestWhenInUseAuthorizationIfNeeded;
- (void)resetRelevantPasses;
- (void)startObservingEvents;
@end

@implementation PDRelevantPassProvider

- (PDRelevantPassProvider)initWithDatabaseManager:(id)manager cardFileManager:(id)fileManager dynamicStateManager:(id)stateManager notificationManager:(id)notificationManager
{
  managerCopy = manager;
  fileManagerCopy = fileManager;
  stateManagerCopy = stateManager;
  notificationManagerCopy = notificationManager;
  v26.receiver = self;
  v26.super_class = PDRelevantPassProvider;
  v14 = [(PDRelevantPassProvider *)&v26 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.passd.relevancy", v15);
    relevancySerialQueue = v14->_relevancySerialQueue;
    v14->_relevancySerialQueue = v16;

    v18 = v14->_relevancySerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100109260;
    block[3] = &unk_10083DE38;
    v21 = v14;
    v22 = managerCopy;
    v23 = fileManagerCopy;
    v24 = stateManagerCopy;
    v25 = notificationManagerCopy;
    dispatch_sync(v18, block);
  }

  return v14;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_proximityManager setDelegate:0];
  [(CLLocationManager *)self->_backingManager setDelegate:0];
  [(PDRelevantPassProvider *)self _clearLocationSearchTimer];
  [(PDRelevantPassProvider *)self _clearBeaconSearchTimer];
  v3.receiver = self;
  v3.super_class = PDRelevantPassProvider;
  [(PDRelevantPassProvider *)&v3 dealloc];
}

- (void)startObservingEvents
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010943C;
  block[3] = &unk_10083C470;
  block[4] = self;
  if (qword_100924270 != -1)
  {
    dispatch_once(&qword_100924270, block);
  }
}

- (void)recomputeRelevantPassesWithSearchMode:(int64_t)mode
{
  relevancySerialQueue = self->_relevancySerialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001096BC;
  v4[3] = &unk_10083D700;
  v4[4] = self;
  v4[5] = mode;
  dispatch_async(relevancySerialQueue, v4);
}

- (void)handleSignificantTimeChangedEvent
{
  +[NSTimeZone resetSystemTimeZone];
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001097C8;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(relevancySerialQueue, block);
}

- (NSArray)currentRelevantPassInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100005AD0;
  v10 = sub_10000B174;
  v11 = 0;
  relevancySerialQueue = self->_relevancySerialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001098C8;
  v5[3] = &unk_10083D988;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(relevancySerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)currentRelevantPassCollectionInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100005AD0;
  v10 = sub_10000B174;
  v11 = 0;
  relevancySerialQueue = self->_relevancySerialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100109A04;
  v5[3] = &unk_10083D988;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(relevancySerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)requestWhenInUseAuthorizationIfNeeded
{
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100109AC4;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_sync(relevancySerialQueue, block);
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"RelevanceExpiration"])
  {
    [(PDRelevantPassProvider *)self _relevantCardExpirationTimerFired];
  }

  else if ([identifierCopy isEqualToString:@"RelevantTearDownFence"])
  {
    [(PDRelevantPassProvider *)self _tearDownExitFenceTimerFired];
  }
}

- (void)_relevantCardExpirationTimerFired
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Relevant cards expiration timer fired.", v4, 2u);
  }

  [(PDRelevantPassProvider *)self _startCardSearchUpdatingWithCachedProximity:1 refreshingProximity:0];
}

- (void)_tearDownExitFenceTimerFired
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tear down exit fence timer fired. Clearing persisted location and recomputing relevant cards.", v4, 2u);
  }

  [(PDRelevantPassProvider *)self _clearPersistedProximityInfo];
  [(PDRelevantPassProvider *)self _startCardSearchUpdatingWithCachedProximity:1 refreshingProximity:0];
}

- (void)_startCardSearchUpdatingWithCachedProximity:(BOOL)proximity refreshingProximity:(BOOL)refreshingProximity searchMode:(int64_t)mode
{
  refreshingProximityCopy = refreshingProximity;
  proximityCopy = proximity;
  v9 = [PDRelevantPassProvider updateTypeFromCachedProximity:"updateTypeFromCachedProximity:refreshingProximity:searchMode:" refreshingProximity:? searchMode:?];
  pendingUpdates = self->_pendingUpdates;
  v11 = [NSNumber numberWithInteger:v9];
  v12 = [(NSMutableDictionary *)pendingUpdates objectForKey:v11];

  if (v12)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v22 = proximityCopy;
      v23 = 2048;
      v24 = refreshingProximityCopy;
      v25 = 2048;
      modeCopy = mode;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relevance update already pending for %ld, %ld, %ld", buf, 0x20u);
    }
  }

  else
  {
    v14 = self->_pendingUpdates;
    v15 = [NSNumber numberWithInteger:v9];
    [(NSMutableDictionary *)v14 setObject:&__kCFBooleanTrue forKey:v15];

    v16 = dispatch_time(0, 5000000000);
    relevancySerialQueue = self->_relevancySerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100109E38;
    block[3] = &unk_100846A90;
    v19 = proximityCopy;
    v20 = refreshingProximityCopy;
    block[4] = self;
    block[5] = mode;
    dispatch_after(v16, relevancySerialQueue, block);
  }
}

- (void)_reallyStartCardSearchUpdatingWithCachedProximity:(BOOL)proximity refreshingProximity:(BOOL)refreshingProximity searchMode:(int64_t)mode
{
  refreshingProximityCopy = refreshingProximity;
  proximityCopy = proximity;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained relevantPassProviderShouldDelayRecompute:self];

  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Delaying relevance update because an interface is active.", buf, 2u);
    }

    v12 = dispatch_time(0, 5000000000);
    relevancySerialQueue = self->_relevancySerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010A19C;
    block[3] = &unk_100846A90;
    v23 = proximityCopy;
    v24 = refreshingProximityCopy;
    block[4] = self;
    block[5] = mode;
    dispatch_after(v12, relevancySerialQueue, block);
  }

  else
  {
    v14 = [(PDRelevantPassProvider *)self updateTypeFromCachedProximity:proximityCopy refreshingProximity:refreshingProximityCopy searchMode:mode];
    pendingUpdates = self->_pendingUpdates;
    v16 = [NSNumber numberWithInteger:v14];
    [(NSMutableDictionary *)pendingUpdates removeObjectForKey:v16];

    if (self->_startedObservingEvents && +[PKWalletVisibility isWalletVisible])
    {
      v17 = PDOSTransactionCreate("PDRelevantPassProvider");
      v18 = objc_autoreleasePoolPush();
      v19 = PKRelevancyLocationServicesEnabled();
      if ((v19 & 1) == 0)
      {
        [(PDRelevantPassProvider *)self _clearPersistedProximityInfo];
      }

      v20 = PKLogFacilityTypeGetObject();
      PKLogTimeToPerformBlockWithIdentifier();

      if (!v19 || proximityCopy)
      {
        [(PDRelevantPassProvider *)self _loadPersistedLocationInfoIfNecessary];
        [(PDRelevantPassProvider *)self _updateAndSendRelevantCatalog];
      }

      if (refreshingProximityCopy)
      {
        v21 = [(NSMutableSet *)self->_proxPendingCards count];
        if (v19)
        {
          if (v21)
          {
            [(PDRelevantPassProvider *)self _startLocationSearchIfNecessaryWithSearchMode:mode];
            [(PDRelevantPassProvider *)self _startBeaconSearchIfNecessary];
          }
        }
      }

      objc_autoreleasePoolPop(v18);
    }
  }
}

- (void)_loadPersistedLocationInfoIfNecessary
{
  if (!self->_lastLocation)
  {
    v3 = [NSData alloc];
    v4 = sub_10010EC10();
    v5 = [v3 initWithContentsOfFile:v4 options:1 error:0];

    if (v5)
    {
      v38 = 0;
      v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:&v38];
      v7 = v38;
      if (v6)
      {
        v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v6 finishDecoding];
      }

      else
      {
        v9 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = sub_10010EC10();
          *buf = 138412546;
          v40 = v10;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "exception trying to read %@. The data should be discarded. %@", buf, 0x16u);
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (+[NSDate date](NSDate, "date"), v11 = objc_claimAutoreleasedReturnValue(), -[CLLocation timestamp](v8, "timestamp"), v12 = objc_claimAutoreleasedReturnValue(), [v11 timeIntervalSinceDate:v12], v14 = v13, v12, v11, v14 >= 3600.0))
    {
      sub_10010A730(0);

      v8 = 0;
    }

    lastLocation = self->_lastLocation;
    self->_lastLocation = v8;
  }

  if (!self->_lastBeacons)
  {
    v16 = [NSData alloc];
    v17 = sub_10010EC64();
    v18 = [v16 initWithContentsOfFile:v17 options:1 error:0];

    if (!v18)
    {
      goto LABEL_33;
    }

    v19 = [NSKeyedUnarchiver alloc];
    v38 = 0;
    v20 = [v19 initForReadingFromData:v18 error:&v38];
    v21 = v38;
    if (v20)
    {
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      if (v21)
      {
        v25 = 0;
      }

      else
      {
        v27 = [NSSet alloc];
        v28 = objc_opt_class();
        v29 = [v27 initWithObjects:{v22, v28, v23, v24, objc_opt_class(), 0}];
        v37 = 0;
        v25 = [v20 decodeTopLevelObjectOfClasses:v29 forKey:NSKeyedArchiveRootObjectKey error:&v37];
        v21 = v37;
      }

      [v20 finishDecoding];
      if (objc_opt_isKindOfClass())
      {
        v30 = [v25 PKDateForKey:@"timestamp"];
        if (v30 && (+[NSDate date](NSDate, "date"), v31 = objc_claimAutoreleasedReturnValue(), [v31 timeIntervalSinceDate:v30], v33 = v32, v31, v33 < 3600.0))
        {
          v26 = [v25 PKArrayContaining:v24 forKey:@"beacons"];
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      if (!v21)
      {
LABEL_32:

        if (v26)
        {
LABEL_34:

          lastBeacons = self->_lastBeacons;
          self->_lastBeacons = v26;

          return;
        }

LABEL_33:
        sub_10010A80C(0);
        v26 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v26 = 0;
    }

    v34 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = sub_10010EC64();
      *buf = 138412546;
      v40 = v35;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PDRelevantPassProvider: error trying to read %@. The data should be discarded. %@.", buf, 0x16u);
    }

    goto LABEL_32;
  }
}

- (void)_clearPersistedProximityInfo
{
  lastLocation = self->_lastLocation;
  self->_lastLocation = 0;

  sub_10010A730(0);
  lastBeacons = self->_lastBeacons;
  self->_lastBeacons = 0;

  sub_10010A80C(0);
}

- (void)_scheduleEagerRecalculationWithCatalog:(id)catalog fenceLocation:(BOOL)location minRadius:(double)radius beaconUUIDs:(id)ds
{
  locationCopy = location;
  dsCopy = ds;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  allPasses = [catalog allPasses];
  v10 = [allPasses countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_52;
  }

  v11 = v10;
  v66 = locationCopy;
  v67 = dsCopy;
  v12 = 0;
  v13 = *v74;
  do
  {
    v14 = 0;
    v15 = v12;
    do
    {
      if (*v74 != v13)
      {
        objc_enumerationMutation(allPasses);
      }

      v16 = *(*(&v73 + 1) + 8 * v14);
      embeddedBeacons = [v16 embeddedBeacons];
      if ([embeddedBeacons count])
      {
        hasLocations = 1;
      }

      else
      {
        hasLocations = [v16 hasLocations];
      }

      v19 = v16;
      matchedRelevantDate = [v19 matchedRelevantDate];
      if (!matchedRelevantDate)
      {
        v36 = 0;
        goto LABEL_45;
      }

      v21 = (&__PassStyleMatchConditions + 64 * [v19 style]);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[6];
      v28 = v21[7];
      v29 = +[NSDate date];
      date = [matchedRelevantDate date];
      v31 = date;
      if (v24 == 0.0)
      {
        v32 = 0;
      }

      else
      {
        v32 = hasLocations;
      }

      if (v32 != 1 || date == 0)
      {
        if (!date)
        {
          effectiveEndDate = [matchedRelevantDate effectiveEndDate];
          goto LABEL_40;
        }

        if (!PDDateIsWithinWindowAroundReferenceDate(v29, matchedRelevantDate, v22, v23))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v34 = v22;
        v35 = v23;
      }

      else
      {
        IsWithinWindowAroundReferenceDate = PDDateIsWithinWindowAroundReferenceDate(v29, matchedRelevantDate, v25, v26);
        v38 = PDDateIsWithinWindowAroundReferenceDate(v29, matchedRelevantDate, v27, v28);
        if (!IsWithinWindowAroundReferenceDate || !v38)
        {
          if (IsWithinWindowAroundReferenceDate)
          {
            *buf = 0;
            v34 = v25;
            v35 = v26;
          }

          else
          {
            if (!v38)
            {
LABEL_43:
              v36 = 0;
              goto LABEL_44;
            }

            *buf = 0;
            v34 = v27;
            v35 = v28;
          }
        }

        else
        {
          if (v25 <= v27)
          {
            v34 = v27;
          }

          else
          {
            v34 = v25;
          }

          if (v26 >= v28)
          {
            v35 = v28;
          }

          else
          {
            v35 = v26;
          }

          if (v34 >= v35)
          {
            v34 = 0.0;
            v35 = 0.0;
          }

          *buf = 0;
        }
      }

      PDGetStartAndEndDatesForWindowAroundDate(0, buf, matchedRelevantDate, v34, v35);
      effectiveEndDate = *buf;
LABEL_40:
      v36 = effectiveEndDate;
LABEL_44:

LABEL_45:
      v12 = PKEarlierDate();

      v14 = v14 + 1;
      v15 = v12;
    }

    while (v11 != v14);
    v11 = [allPasses countByEnumeratingWithState:&v73 objects:v79 count:16];
  }

  while (v11);

  if (v12)
  {
    allPasses = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v12];
    v41 = [v12 dateByAddingTimeInterval:1800.0];
    [allPasses setEndDate:v41];

    v42 = PKLogFacilityTypeGetObject();
    dsCopy = v67;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Scheduling Activity to to expire relevant passes at around %@", buf, 0xCu);
    }

    PDScheduledActivityRegister();
    locationCopy = v66;
LABEL_52:
  }

  else
  {
    dsCopy = v67;
    locationCopy = v66;
  }

  if ([dsCopy count] >= 4 && self->_lastLocation)
  {

    v43 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Too many beacons to fence each one separately; using region fence instead.", buf, 2u);
    }

    dsCopy = 0;
LABEL_60:
    lastLocation = self->_lastLocation;
    if (lastLocation)
    {
      [(CLLocation *)lastLocation horizontalAccuracy];
      if (v45 < 100.0)
      {
        [(CLLocation *)self->_lastLocation horizontalAccuracy];
      }

      v46 = [CLCircularRegion alloc];
      [(CLLocation *)self->_lastLocation coordinate];
      v47 = [v46 initWithCenter:@"passd-circular" radius:? identifier:?];
      v48 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Monitoring circular region %@", buf, 0xCu);
      }

      [(CLLocationManager *)self->_proximityManager startMonitoringForRegion:v47];
      LOBYTE(locationCopy) = 1;
    }

    else
    {
      LOBYTE(locationCopy) = 0;
    }
  }

  else if (locationCopy)
  {
    goto LABEL_60;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = dsCopy;
  v50 = [v49 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = *v70;
LABEL_69:
    v54 = 0;
    if (v52 <= 2)
    {
      v55 = 2 - v52;
    }

    else
    {
      v55 = 0;
    }

    while (1)
    {
      if (*v70 != v53)
      {
        objc_enumerationMutation(v49);
      }

      v56 = *(*(&v69 + 1) + 8 * v54);
      v57 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Monitoring region with beacon UUID %@", buf, 0xCu);
      }

      uUIDString = [v56 UUIDString];
      v59 = [NSString stringWithFormat:@"passd-%@", uUIDString];

      v60 = [[CLBeaconRegion alloc] initWithUUID:v56 identifier:v59];
      [(CLLocationManager *)self->_proximityManager startMonitoringForRegion:v60];

      if (v55 == v54)
      {
        break;
      }

      ++v52;
      if (v51 == ++v54)
      {
        v51 = [v49 countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v51)
        {
          goto LABEL_69;
        }

        break;
      }
    }

LABEL_81:
    v61 = +[NSDate date];
    v62 = [v61 dateByAddingTimeInterval:3600.0];

    v63 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v62];
    [v63 setStartDate:v62];
    v64 = [v62 dateByAddingTimeInterval:1800.0];
    [v63 setEndDate:v64];

    v65 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v62;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Scheduling Activity to tear down exit fences at around %@", buf, 0xCu);
    }

    PDScheduledActivityRegister();
  }

  else
  {

    if (locationCopy)
    {
      goto LABEL_81;
    }
  }
}

- (void)_unscheduleEagerRecalculation
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unscheduling exit fences and background timers.", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  monitoredRegions = [(CLLocationManager *)self->_proximityManager monitoredRegions];
  v5 = [monitoredRegions countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v13;
    *&v6 = 138412290;
    v11 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(monitoredRegions);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(CLLocationManager *)self->_proximityManager stopMonitoringForRegion:v10, v11];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring region %@.", buf, 0xCu);
        }
      }

      v7 = [monitoredRegions countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  PDScheduledActivityRemove();
  PDScheduledActivityRemove();
}

- (void)_startLocationSearchIfNecessaryWithSearchMode:(int64_t)mode
{
  if ([(PDRelevantPassProvider *)self _proxPendingPassExistsWithLocation])
  {
    v5 = mode ? &kCLLocationAccuracyHundredMeters : &kCLLocationAccuracyLeech;
    if (![(PDRelevantPassProvider *)self _isDoingLocationSearch]|| self->_locationSearchMode < mode)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "eager";
        if (!mode)
        {
          v7 = "opportunistic";
        }

        v15 = 136315138;
        v16 = *&v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting location search (%s)", &v15, 0xCu);
      }

      v8 = *v5;

      self->_locationSearchState = 1;
      if (!self->_locationSearchTransaction)
      {
        v9 = PDOSTransactionCreate("PDRelevantPassProvider.location_search");
        locationSearchTransaction = self->_locationSearchTransaction;
        self->_locationSearchTransaction = v9;
      }

      v11 = +[NSDate date];
      locationSearchStartDate = self->_locationSearchStartDate;
      self->_locationSearchStartDate = v11;

      [(CLLocationManager *)self->_proximityManager setDesiredAccuracy:v8];
      self->_locationSearchMode = mode;
      location = [(CLLocationManager *)self->_proximityManager location];
      v14 = [(PDRelevantPassProvider *)self _handleNewLocation:location forceAcceptance:0 from:@"CLLocationManager cache"];

      if ((v14 & 1) == 0)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "   Cached location wasn't good enough, START SEARCHING with accuracy %f", &v15, 0xCu);
        }

        [(CLLocationManager *)self->_proximityManager startUpdatingLocation];
        self->_locationSearchState = 2;
        [(PDRelevantPassProvider *)self _beginLocationSearchTimeout];
      }
    }
  }
}

- (BOOL)_handleNewLocation:(id)location forceAcceptance:(BOOL)acceptance from:(id)from
{
  locationCopy = location;
  fromCopy = from;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = fromCopy;
    v19 = 2112;
    v20 = locationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling new location from '%@': %@", &v17, 0x16u);
  }

  v12 = [(PDRelevantPassProvider *)self _locationIsNewEnoughAndHasGoodAccuracy:locationCopy];
  v13 = v12 | acceptance;
  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      v15 = @"This will have to do";
      if (v12)
      {
        v15 = @"Good enough";
      }

      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   %@, stopping search", &v17, 0xCu);
    }

    [(PDRelevantPassProvider *)self _stopLocationSearch];
    if (locationCopy && self->_lastLocation != locationCopy)
    {
      objc_storeStrong(&self->_lastLocation, location);
    }

    sub_10010A730(self->_lastLocation);
    [(PDRelevantPassProvider *)self _startCardSearchUpdatingWithCachedProximity:1 refreshingProximity:0];
  }

  else
  {
    if (v14)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   Not good enough, we'll hold onto it and keep searching", &v17, 2u);
    }

    objc_storeStrong(&self->_roughLocation, location);
  }

  return v13;
}

- (void)_stopLocationSearch
{
  if ([(PDRelevantPassProvider *)self _isDoingLocationSearch])
  {
    if (self->_locationSearchState == 2)
    {
      [(CLLocationManager *)self->_proximityManager stopUpdatingLocation];
    }

    self->_locationSearchState = 0;
    locationSearchTransaction = self->_locationSearchTransaction;
    self->_locationSearchTransaction = 0;

    locationSearchStartDate = self->_locationSearchStartDate;
    self->_locationSearchStartDate = 0;

    roughLocation = self->_roughLocation;
    self->_roughLocation = 0;

    [(PDRelevantPassProvider *)self _clearLocationSearchTimer];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping location search", v7, 2u);
    }
  }
}

- (void)_beginLocationSearchTimeout
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = 0x4024000000000000;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning location search timer with duration %g", buf, 0xCu);
  }

  [(PDRelevantPassProvider *)self _clearLocationSearchTimer];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_relevancySerialQueue);
  locationSearchTimeout = self->_locationSearchTimeout;
  self->_locationSearchTimeout = v4;

  v6 = self->_locationSearchTimeout;
  v7 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = self->_locationSearchTimeout;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10010B93C;
  handler[3] = &unk_10083C470;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(self->_locationSearchTimeout);
}

- (void)_clearLocationSearchTimer
{
  locationSearchTimeout = self->_locationSearchTimeout;
  if (locationSearchTimeout)
  {
    dispatch_source_cancel(locationSearchTimeout);
    v4 = self->_locationSearchTimeout;
    self->_locationSearchTimeout = 0;
  }
}

- (void)_startBeaconSearchIfNecessary
{
  if (![(PDRelevantPassProvider *)self _isDoingBeaconSearch]&& [(PDRelevantPassProvider *)self _proxPendingPassExistsWithBeacon])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting beacon search", v8, 2u);
    }

    self->_beaconSearchState = 1;
    if (!self->_beaconSearchTransaction)
    {
      v4 = PDOSTransactionCreate("PDRelevantPassProvider.beacon_search");
      beaconSearchTransaction = self->_beaconSearchTransaction;
      self->_beaconSearchTransaction = v4;
    }

    proximityManager = self->_proximityManager;
    v7 = +[CLBeaconIdentityConstraint any];
    [(CLLocationManager *)proximityManager startRangingBeaconsSatisfyingConstraint:v7];

    self->_beaconSearchState = 2;
    [(PDRelevantPassProvider *)self _beginBeaconSearchTimer];
  }
}

- (void)_handleNewBeacons:(id)beacons
{
  beaconsCopy = beacons;
  [(PDRelevantPassProvider *)self _stopBeaconSearch];
  p_lastBeacons = &self->_lastBeacons;
  lastBeacons = self->_lastBeacons;
  if (lastBeacons != beaconsCopy)
  {
    objc_storeStrong(&self->_lastBeacons, beacons);
    lastBeacons = *p_lastBeacons;
  }

  sub_10010A80C(lastBeacons);
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *p_lastBeacons;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got beacons %@", &v10, 0xCu);
  }

  [(PDRelevantPassProvider *)self _startCardSearchUpdatingWithCachedProximity:1 refreshingProximity:0];
}

- (void)_stopBeaconSearch
{
  if ([(PDRelevantPassProvider *)self _isDoingBeaconSearch])
  {
    if (self->_beaconSearchState == 2)
    {
      proximityManager = self->_proximityManager;
      v4 = +[CLBeaconIdentityConstraint any];
      [(CLLocationManager *)proximityManager stopRangingBeaconsSatisfyingConstraint:v4];
    }

    self->_beaconSearchState = 0;
    beaconSearchTransaction = self->_beaconSearchTransaction;
    self->_beaconSearchTransaction = 0;

    [(PDRelevantPassProvider *)self _clearBeaconSearchTimer];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping beacon search", v7, 2u);
    }
  }
}

- (void)_beginBeaconSearchTimer
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = 0x4018000000000000;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning beacon search timer with duration %g", buf, 0xCu);
  }

  [(PDRelevantPassProvider *)self _clearBeaconSearchTimer];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_relevancySerialQueue);
  beaconSearchTimeout = self->_beaconSearchTimeout;
  self->_beaconSearchTimeout = v4;

  v6 = self->_beaconSearchTimeout;
  v7 = dispatch_time(0, 6000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(buf, self);
  v8 = self->_beaconSearchTimeout;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010BEBC;
  v9[3] = &unk_10083C510;
  objc_copyWeak(&v10, buf);
  v9[4] = self;
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_beaconSearchTimeout);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_clearBeaconSearchTimer
{
  beaconSearchTimeout = self->_beaconSearchTimeout;
  if (beaconSearchTimeout)
  {
    dispatch_source_cancel(beaconSearchTimeout);
    v4 = self->_beaconSearchTimeout;
    self->_beaconSearchTimeout = 0;
  }
}

- (void)_addDateRelevantAndLocationPendingCardsForStyle:(int64_t)style locationAvailable:(BOOL)available
{
  v6 = (&__PassStyleMatchConditions + 64 * style);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[4];
  v9 = v6[5];
  v12 = v6[6];
  v11 = v6[7];
  if (available)
  {
    v13 = v6[3];
    v14 = v6[2] != 0.0;
    goto LABEL_3;
  }

  v14 = 0;
  v13 = 0.0;
  if (v7 != 0.0 || v8 != 0.0)
  {
LABEL_3:
    v15 = +[NSDate date];
    if (v7 == 0.0 && v8 == 0.0)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      PDGetCurrentStartAndEndDatesForDateWindow(&v61, &v60, v7, v8);
      v16 = v61;
      v17 = v60;
      candidatePassFactory = self->_candidatePassFactory;
      if (v13 == 0.0)
      {
        [(PDCandidateRelevantPassFactory *)candidatePassFactory resolvedCandidatePassesOfStyle:style];
      }

      else
      {
        [(PDCandidateRelevantPassFactory *)candidatePassFactory resolvedUnlocatedCandidatePassesOfStyle:style];
      }
      v19 = ;
      dateRelevantCards = self->_dateRelevantCards;
      v21 = [(PDRelevantPassProvider *)self _findDateRelevantPassesFromCandidates:v19 betweenWindowStart:v16 windowEnd:v17 aroundDate:v15];
      [(NSMutableSet *)dateRelevantCards unionSet:v21];
    }

    if (v13 != 0.0)
    {
      v22 = v12 == 0.0;
      if (v11 != 0.0)
      {
        v22 = 0;
      }

      if (v10 == 0.0 && v9 == 0.0)
      {
        if (v22)
        {
          goto LABEL_23;
        }

        v44 = v17;
        v45 = v16;
        PDGetCurrentStartAndEndDatesForDateWindow(&v45, &v44, v12, v11);
        v23 = v45;

        v24 = v44;
      }

      else
      {
        if (!v22)
        {
          v58 = 0.0;
          v59 = 0.0;
          v56 = 0.0;
          v57 = 0.0;
          v54 = 0.0;
          v55 = 0.0;
          sub_10010C404(&v58, &v56, &v54, v10, v9, v12, v11);
          v31 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedCandidatePassesOfStyle:style];
          if (v56 != 0.0 || v57 != 0.0)
          {
            v52 = v17;
            v53 = v16;
            PDGetCurrentStartAndEndDatesForDateWindow(&v53, &v52, v56, v57);
            v32 = v53;

            v33 = v52;
            v34 = self->_dateRelevantCards;
            v35 = [(PDRelevantPassProvider *)self _findDateRelevantPassesFromCandidates:v31 betweenWindowStart:v32 windowEnd:v33 aroundDate:v15];
            [(NSMutableSet *)v34 unionSet:v35];

            v16 = v32;
            v17 = v33;
          }

          if (v58 != 0.0 || v59 != 0.0)
          {
            v50 = v17;
            v51 = v16;
            PDGetCurrentStartAndEndDatesForDateWindow(&v51, &v50, v58, v59);
            v36 = v51;

            v37 = v50;
            proxPendingCards = self->_proxPendingCards;
            v39 = [(PDRelevantPassProvider *)self _findDateRelevantPassesFromCandidates:v31 betweenWindowStart:v36 windowEnd:v37 aroundDate:v15];
            [(NSMutableSet *)proxPendingCards unionSet:v39];

            v16 = v36;
            v17 = v37;
          }

          if (v54 != 0.0 || v55 != 0.0)
          {
            v48 = v17;
            v49 = v16;
            PDGetCurrentStartAndEndDatesForDateWindow(&v49, &v48, v54, v55);
            v40 = v49;

            v41 = v48;
            v42 = self->_proxPendingCards;
            v43 = [(PDRelevantPassProvider *)self _findDateRelevantPassesFromCandidates:v31 betweenWindowStart:v40 windowEnd:v41 aroundDate:v15];
            [(NSMutableSet *)v42 unionSet:v43];

            v16 = v40;
            v17 = v41;
          }

          if (!v14)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v46 = v17;
        v47 = v16;
        PDGetCurrentStartAndEndDatesForDateWindow(&v47, &v46, v10, v9);
        v23 = v47;

        v24 = v46;
      }

      v25 = v24;

      v26 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedCandidatePassesOfStyle:style];
      v27 = self->_proxPendingCards;
      v28 = [(PDRelevantPassProvider *)self _findDateRelevantPassesFromCandidates:v26 betweenWindowStart:v23 windowEnd:v25 aroundDate:v15];
      [(NSMutableSet *)v27 unionSet:v28];

      v16 = v23;
      v17 = v25;
    }

LABEL_23:
    if (!v14)
    {
LABEL_25:

      return;
    }

LABEL_24:
    v29 = self->_proxPendingCards;
    v30 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedDatelessCandidatePassesOfStyle:style];
    [(NSMutableSet *)v29 unionSet:v30];

    goto LABEL_25;
  }
}

- (id)_findDateRelevantPassesFromCandidates:(id)candidates betweenWindowStart:(id)start windowEnd:(id)end aroundDate:(id)date
{
  candidatesCopy = candidates;
  startCopy = start;
  endCopy = end;
  dateCopy = date;
  v33 = objc_alloc_init(NSMutableSet);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = candidatesCopy;
  v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v35)
  {
    v34 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v36 = v13;
        v37 = v12;
        relevantDates = [v13 relevantDates];
        v15 = [relevantDates countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = v15;
        v17 = *v40;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(relevantDates);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            date = [v19 date];
            effectiveStartDate = [v19 effectiveStartDate];
            effectiveEndDate = [v19 effectiveEndDate];
            v23 = effectiveEndDate;
            if (date)
            {
              [startCopy timeIntervalSinceDate:date];
              if (v24 >= 0.0)
              {
                goto LABEL_21;
              }

              v25 = endCopy;
              v26 = date;
            }

            else
            {
              if (effectiveStartDate)
              {
                v27 = effectiveEndDate == 0;
              }

              else
              {
                v27 = 1;
              }

              if (v27)
              {
                goto LABEL_21;
              }

              [effectiveStartDate timeIntervalSinceDate:dateCopy];
              if (v28 >= 0.0)
              {
                goto LABEL_21;
              }

              v25 = v23;
              v26 = dateCopy;
            }

            [v25 timeIntervalSinceDate:v26];
            if (v29 > 0.0)
            {
              [v33 addObject:v36];
              [v36 setMatchedRelevantDate:v19];

              goto LABEL_25;
            }

LABEL_21:
          }

          v16 = [relevantDates countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_25:

        v12 = v37 + 1;
      }

      while ((v37 + 1) != v35);
      v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v35);
  }

  v30 = [v33 copy];

  return v30;
}

- (BOOL)_proxPendingPassExistsWithLocation
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_proxPendingCards;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 hasLocations] & 1) == 0)
        {
          embeddedBeacons = [v7 embeddedBeacons];
          v9 = [embeddedBeacons count];

          if (!v9)
          {
            continue;
          }
        }

        v10 = 1;
        goto LABEL_13;
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (BOOL)_proxPendingPassExistsWithBeacon
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_proxPendingCards;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        embeddedBeacons = [*(*(&v9 + 1) + 8 * i) embeddedBeacons];
        v7 = [embeddedBeacons count];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_updateAndSendRelevantCatalog
{
  v2 = PKLogFacilityTypeGetObject();
  PKLogTimeToPerformBlockWithIdentifier();
}

- (BOOL)_findMatchingLocation:(id *)location beacon:(id *)beacon forCandidatePass:(id)pass passStyleRadius:(double)radius usingNearbyLocations:(id)locations
{
  passCopy = pass;
  locationsCopy = locations;
  lastLocation = self->_lastLocation;
  if (!lastLocation)
  {
    LOBYTE(v23) = 0;
    goto LABEL_41;
  }

  [(CLLocation *)lastLocation horizontalAccuracy];
  v13 = 100.0;
  if (v14 < 100.0)
  {
    [(CLLocation *)self->_lastLocation horizontalAccuracy];
    v13 = v15;
  }

  uniqueIdentifier = [passCopy uniqueIdentifier];
  v17 = [locationsCopy locationsForUniqueID:uniqueIdentifier];

  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v78 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v78 objects:v93 count:16];
  v20 = v19 != 0;
  if (!v19)
  {
    v22 = 0;
    v51 = v18;
LABEL_37:

    LOBYTE(v23) = v20;
    goto LABEL_40;
  }

  v21 = v19;
  v64 = v19 != 0;
  v66 = locationsCopy;
  v22 = 0;
  v23 = 0;
  v24 = *v79;
  v25 = 0.0;
  v69 = v18;
  do
  {
    v26 = 0;
    v68 = v21;
    do
    {
      if (*v79 != v24)
      {
        objc_enumerationMutation(v18);
      }

      v27 = *(*(&v78 + 1) + 8 * v26);
      [v27 maxDistance];
      if (v28 <= radius)
      {
        radiusCopy = v28;
      }

      else
      {
        radiusCopy = radius;
      }

      if (v28 <= 0.0)
      {
        radiusCopy2 = radius;
      }

      else
      {
        radiusCopy2 = radiusCopy;
      }

      v31 = v13 + radiusCopy2;
      cLLocation = [v27 CLLocation];
      [cLLocation distanceFromLocation:self->_lastLocation];
      v34 = v33;

      if (v34 >= v31)
      {
        if (v34 <= v31)
        {
          goto LABEL_28;
        }

        v40 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v24;
          selfCopy = self;
          v43 = v22;
          locationCopy = location;
          v45 = v23;
          passTypeIdentifier = [passCopy passTypeIdentifier];
          serialNumber = [passCopy serialNumber];
          *buf = 138413314;
          v84 = passTypeIdentifier;
          v85 = 2112;
          v86 = serialNumber;
          v87 = 2112;
          v88 = v27;
          v89 = 2048;
          v90 = v34;
          v91 = 2048;
          v92 = v31;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "   %@:%@ card location %@ does NOT match because %g meters away. r: %g", buf, 0x34u);

          v23 = v45;
          location = locationCopy;
          v22 = v43;
          self = selfCopy;
          v24 = v41;
          v21 = v68;

          v18 = v69;
        }

        goto LABEL_26;
      }

      if (!v22 || v34 < v25)
      {
        v35 = v27;

        v22 = v35;
        v25 = v34;
      }

      v36 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        passTypeIdentifier2 = [passCopy passTypeIdentifier];
        serialNumber2 = [passCopy serialNumber];
        *buf = 138413314;
        v84 = passTypeIdentifier2;
        v85 = 2112;
        v86 = serialNumber2;
        v87 = 2112;
        v88 = v27;
        v89 = 2048;
        v90 = v34;
        v91 = 2048;
        v92 = v31;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "   %@:%@ card location %@ MATCHES because %g meters away. r: %g", buf, 0x34u);

        v18 = v69;
      }

      if (location)
      {
        v39 = v27;
        v40 = *location;
        *location = v39;
        v23 = 1;
LABEL_26:

        goto LABEL_28;
      }

      v23 = 1;
LABEL_28:
      v26 = v26 + 1;
    }

    while (v21 != v26);
    v21 = [v18 countByEnumeratingWithState:&v78 objects:v93 count:16];
  }

  while (v21);

  if (v22)
  {
    v48 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      passTypeIdentifier3 = [passCopy passTypeIdentifier];
      serialNumber3 = [passCopy serialNumber];
      *buf = 138413058;
      v84 = passTypeIdentifier3;
      v85 = 2112;
      v86 = serialNumber3;
      v87 = 2112;
      v88 = v22;
      v89 = 2048;
      v90 = v25;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "   %@:%@ card closest location: %@ (%g meters away)", buf, 0x2Au);
    }

    locationsCopy = v66;
    v20 = v64;
    if (location)
    {
      v22 = v22;
      v51 = *location;
      *location = v22;
      goto LABEL_37;
    }

    LOBYTE(v23) = 1;
  }

  else
  {
    locationsCopy = v66;
  }

LABEL_40:

LABEL_41:
  if (self->_lastBeacons && (v23 & 1) == 0)
  {
    v67 = locationsCopy;
    v52 = objc_alloc_init(NSMutableArray);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    embeddedBeacons = [passCopy embeddedBeacons];
    v54 = [embeddedBeacons countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v75;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v75 != v56)
          {
            objc_enumerationMutation(embeddedBeacons);
          }

          v58 = *(*(&v74 + 1) + 8 * i);
          lastBeacons = self->_lastBeacons;
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10010D56C;
          v71[3] = &unk_100846AB8;
          v71[4] = v58;
          v72 = v52;
          v73 = passCopy;
          [(NSArray *)lastBeacons enumerateObjectsUsingBlock:v71];
        }

        v55 = [embeddedBeacons countByEnumeratingWithState:&v74 objects:v82 count:16];
      }

      while (v55);
    }

    v60 = [v52 count];
    LOBYTE(v23) = v60 != 0;
    if (v60)
    {
      [v52 sortUsingComparator:&stru_100846AF8];
      if (beacon)
      {
        v61 = [v52 objectAtIndex:0];
        v62 = *beacon;
        *beacon = v61;
      }
    }

    locationsCopy = v67;
  }

  return v23 & 1;
}

- (void)resetRelevantPasses
{
  databaseManager = self->_databaseManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010DA98;
  v7[3] = &unk_100846B20;
  v7[4] = self;
  [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v7];
  currentRelevantPassInfo = self->_currentRelevantPassInfo;
  self->_currentRelevantPassInfo = 0;

  currentRelevantPassCollectionInfo = self->_currentRelevantPassCollectionInfo;
  self->_currentRelevantPassCollectionInfo = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relevantPassProvider:self didUpdateCatalog:0];
}

- (void)_processStateChangesFromCatalog:(id)catalog
{
  catalogCopy = catalog;
  databaseManager = self->_databaseManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010DC68;
  v7[3] = &unk_10083C2B8;
  v7[4] = self;
  v8 = catalogCopy;
  v6 = catalogCopy;
  [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v7];
}

- (void)_sendCatalog:(id)catalog
{
  catalogCopy = catalog;
  passesInfo = [catalogCopy passesInfo];
  currentRelevantPassInfo = self->_currentRelevantPassInfo;
  self->_currentRelevantPassInfo = passesInfo;

  collectionsInfo = [catalogCopy collectionsInfo];
  currentRelevantPassCollectionInfo = self->_currentRelevantPassCollectionInfo;
  self->_currentRelevantPassCollectionInfo = collectionsInfo;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relevantPassProvider:self didUpdateCatalog:catalogCopy];
}

- (id)createCurrentNotificationRegistrationState
{
  if (![(PDDatabaseManager *)self->_databaseManager hasCandidatePasses])
  {
    return 0;
  }

  v2 = objc_alloc_init(PDNotificationStreamRegistrationState);
  v3 = [NSSet alloc];
  v4 = [v3 initWithObjects:{PDDarwinNotificationEventDisplayStatusChanged, PDDarwinNotificationEventSignificantTimeChanged, 0}];
  [(PDNotificationStreamRegistrationState *)v2 setNotificationNames:v4 forStream:0];

  return v2;
}

- (void)handleNotificationWithName:(id)name event:(id)event forStream:(int64_t)stream
{
  nameCopy = name;
  relevancySerialQueue = self->_relevancySerialQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010DFD8;
  v9[3] = &unk_10083C420;
  v10 = nameCopy;
  selfCopy = self;
  v8 = nameCopy;
  dispatch_async(relevancySerialQueue, v9);
}

- (BOOL)_locationIsNewEnoughAndHasGoodAccuracy:(id)accuracy
{
  accuracyCopy = accuracy;
  v11 = accuracyCopy && (locationSearchStartDate = self->_locationSearchStartDate, [accuracyCopy timestamp], v7 = v5 = accuracyCopy;

  return v11;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E1D4;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = managerCopy;
  v13 = locationsCopy;
  v9 = locationsCopy;
  v10 = managerCopy;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E330;
  block[3] = &unk_10083C4C0;
  v12 = managerCopy;
  selfCopy = self;
  v14 = regionCopy;
  v9 = regionCopy;
  v10 = managerCopy;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)manager didRangeBeacons:(id)beacons satisfyingConstraint:(id)constraint
{
  managerCopy = manager;
  beaconsCopy = beacons;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E46C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v13 = managerCopy;
  v14 = beaconsCopy;
  v10 = beaconsCopy;
  v11 = managerCopy;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)manager didFailRangingBeaconsForConstraint:(id)constraint error:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E58C;
  block[3] = &unk_10083C4C0;
  v13 = managerCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = managerCopy;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  if ([errorCopy code])
  {
    relevancySerialQueue = self->_relevancySerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E7B4;
    block[3] = &unk_10083C4C0;
    v13 = managerCopy;
    selfCopy = self;
    v15 = errorCopy;
    dispatch_async(relevancySerialQueue, block);

    v9 = v13;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = managerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Location Manager %@ unable to retreve location, will retry.", buf, 0x16u);
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E93C;
  block[3] = &unk_100846B48;
  block[4] = self;
  v9 = authorizationCopy;
  v10 = authorizationStatus;
  v7 = authorizationCopy;
  dispatch_async(relevancySerialQueue, block);
}

- (PDRelevantPassProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end