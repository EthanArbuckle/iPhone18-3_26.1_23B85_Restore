@interface PDRelevantPassProvider
- (BOOL)_findMatchingLocation:(id *)a3 beacon:(id *)a4 forCandidatePass:(id)a5 passStyleRadius:(double)a6 usingNearbyLocations:(id)a7;
- (BOOL)_handleNewLocation:(id)a3 forceAcceptance:(BOOL)a4 from:(id)a5;
- (BOOL)_locationIsNewEnoughAndHasGoodAccuracy:(id)a3;
- (BOOL)_proxPendingPassExistsWithBeacon;
- (BOOL)_proxPendingPassExistsWithLocation;
- (NSArray)currentRelevantPassCollectionInfo;
- (NSArray)currentRelevantPassInfo;
- (PDRelevantPassProvider)initWithDatabaseManager:(id)a3 cardFileManager:(id)a4 dynamicStateManager:(id)a5 notificationManager:(id)a6;
- (PDRelevantPassProviderDelegate)delegate;
- (id)_findDateRelevantPassesFromCandidates:(id)a3 betweenWindowStart:(id)a4 windowEnd:(id)a5 aroundDate:(id)a6;
- (id)createCurrentNotificationRegistrationState;
- (void)_addDateRelevantAndLocationPendingCardsForStyle:(int64_t)a3 locationAvailable:(BOOL)a4;
- (void)_beginBeaconSearchTimer;
- (void)_beginLocationSearchTimeout;
- (void)_clearBeaconSearchTimer;
- (void)_clearLocationSearchTimer;
- (void)_clearPersistedProximityInfo;
- (void)_handleNewBeacons:(id)a3;
- (void)_loadPersistedLocationInfoIfNecessary;
- (void)_processStateChangesFromCatalog:(id)a3;
- (void)_reallyStartCardSearchUpdatingWithCachedProximity:(BOOL)a3 refreshingProximity:(BOOL)a4 searchMode:(int64_t)a5;
- (void)_relevantCardExpirationTimerFired;
- (void)_scheduleEagerRecalculationWithCatalog:(id)a3 fenceLocation:(BOOL)a4 minRadius:(double)a5 beaconUUIDs:(id)a6;
- (void)_sendCatalog:(id)a3;
- (void)_startBeaconSearchIfNecessary;
- (void)_startCardSearchUpdatingWithCachedProximity:(BOOL)a3 refreshingProximity:(BOOL)a4 searchMode:(int64_t)a5;
- (void)_startLocationSearchIfNecessaryWithSearchMode:(int64_t)a3;
- (void)_stopBeaconSearch;
- (void)_stopLocationSearch;
- (void)_tearDownExitFenceTimerFired;
- (void)_unscheduleEagerRecalculation;
- (void)_updateAndSendRelevantCatalog;
- (void)dealloc;
- (void)handleNotificationWithName:(id)a3 event:(id)a4 forStream:(int64_t)a5;
- (void)handleSignificantTimeChangedEvent;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailRangingBeaconsForConstraint:(id)a4 error:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didRangeBeacons:(id)a4 satisfyingConstraint:(id)a5;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)recomputeRelevantPassesWithSearchMode:(int64_t)a3;
- (void)requestWhenInUseAuthorizationIfNeeded;
- (void)resetRelevantPasses;
- (void)startObservingEvents;
@end

@implementation PDRelevantPassProvider

- (PDRelevantPassProvider)initWithDatabaseManager:(id)a3 cardFileManager:(id)a4 dynamicStateManager:(id)a5 notificationManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
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

- (void)recomputeRelevantPassesWithSearchMode:(int64_t)a3
{
  relevancySerialQueue = self->_relevancySerialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001096BC;
  v4[3] = &unk_10083D700;
  v4[4] = self;
  v4[5] = a3;
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

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"RelevanceExpiration"])
  {
    [(PDRelevantPassProvider *)self _relevantCardExpirationTimerFired];
  }

  else if ([v5 isEqualToString:@"RelevantTearDownFence"])
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

- (void)_startCardSearchUpdatingWithCachedProximity:(BOOL)a3 refreshingProximity:(BOOL)a4 searchMode:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
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
      v22 = v7;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = a5;
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
    v19 = v7;
    v20 = v6;
    block[4] = self;
    block[5] = a5;
    dispatch_after(v16, relevancySerialQueue, block);
  }
}

- (void)_reallyStartCardSearchUpdatingWithCachedProximity:(BOOL)a3 refreshingProximity:(BOOL)a4 searchMode:(int64_t)a5
{
  v6 = a4;
  v7 = a3;
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
    v23 = v7;
    v24 = v6;
    block[4] = self;
    block[5] = a5;
    dispatch_after(v12, relevancySerialQueue, block);
  }

  else
  {
    v14 = [(PDRelevantPassProvider *)self updateTypeFromCachedProximity:v7 refreshingProximity:v6 searchMode:a5];
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

      if (!v19 || v7)
      {
        [(PDRelevantPassProvider *)self _loadPersistedLocationInfoIfNecessary];
        [(PDRelevantPassProvider *)self _updateAndSendRelevantCatalog];
      }

      if (v6)
      {
        v21 = [(NSMutableSet *)self->_proxPendingCards count];
        if (v19)
        {
          if (v21)
          {
            [(PDRelevantPassProvider *)self _startLocationSearchIfNecessaryWithSearchMode:a5];
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

- (void)_scheduleEagerRecalculationWithCatalog:(id)a3 fenceLocation:(BOOL)a4 minRadius:(double)a5 beaconUUIDs:(id)a6
{
  v6 = a4;
  v8 = a6;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v9 = [a3 allPasses];
  v10 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_52;
  }

  v11 = v10;
  v66 = v6;
  v67 = v8;
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
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v73 + 1) + 8 * v14);
      v17 = [v16 embeddedBeacons];
      if ([v17 count])
      {
        v18 = 1;
      }

      else
      {
        v18 = [v16 hasLocations];
      }

      v19 = v16;
      v20 = [v19 matchedRelevantDate];
      if (!v20)
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
      v30 = [v20 date];
      v31 = v30;
      if (v24 == 0.0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v18;
      }

      if (v32 != 1 || v30 == 0)
      {
        if (!v30)
        {
          v40 = [v20 effectiveEndDate];
          goto LABEL_40;
        }

        if (!PDDateIsWithinWindowAroundReferenceDate(v29, v20, v22, v23))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v34 = v22;
        v35 = v23;
      }

      else
      {
        IsWithinWindowAroundReferenceDate = PDDateIsWithinWindowAroundReferenceDate(v29, v20, v25, v26);
        v38 = PDDateIsWithinWindowAroundReferenceDate(v29, v20, v27, v28);
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

      PDGetStartAndEndDatesForWindowAroundDate(0, buf, v20, v34, v35);
      v40 = *buf;
LABEL_40:
      v36 = v40;
LABEL_44:

LABEL_45:
      v12 = PKEarlierDate();

      v14 = v14 + 1;
      v15 = v12;
    }

    while (v11 != v14);
    v11 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
  }

  while (v11);

  if (v12)
  {
    v9 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v12];
    v41 = [v12 dateByAddingTimeInterval:1800.0];
    [v9 setEndDate:v41];

    v42 = PKLogFacilityTypeGetObject();
    v8 = v67;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Scheduling Activity to to expire relevant passes at around %@", buf, 0xCu);
    }

    PDScheduledActivityRegister();
    v6 = v66;
LABEL_52:
  }

  else
  {
    v8 = v67;
    v6 = v66;
  }

  if ([v8 count] >= 4 && self->_lastLocation)
  {

    v43 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Too many beacons to fence each one separately; using region fence instead.", buf, 2u);
    }

    v8 = 0;
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
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else if (v6)
  {
    goto LABEL_60;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = v8;
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

      v58 = [v56 UUIDString];
      v59 = [NSString stringWithFormat:@"passd-%@", v58];

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

    if (v6)
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
  v4 = [(CLLocationManager *)self->_proximityManager monitoredRegions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

      v7 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  PDScheduledActivityRemove();
  PDScheduledActivityRemove();
}

- (void)_startLocationSearchIfNecessaryWithSearchMode:(int64_t)a3
{
  if ([(PDRelevantPassProvider *)self _proxPendingPassExistsWithLocation])
  {
    v5 = a3 ? &kCLLocationAccuracyHundredMeters : &kCLLocationAccuracyLeech;
    if (![(PDRelevantPassProvider *)self _isDoingLocationSearch]|| self->_locationSearchMode < a3)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "eager";
        if (!a3)
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
      self->_locationSearchMode = a3;
      v13 = [(CLLocationManager *)self->_proximityManager location];
      v14 = [(PDRelevantPassProvider *)self _handleNewLocation:v13 forceAcceptance:0 from:@"CLLocationManager cache"];

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

- (BOOL)_handleNewLocation:(id)a3 forceAcceptance:(BOOL)a4 from:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling new location from '%@': %@", &v17, 0x16u);
  }

  v12 = [(PDRelevantPassProvider *)self _locationIsNewEnoughAndHasGoodAccuracy:v9];
  v13 = v12 | a4;
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
    if (v9 && self->_lastLocation != v9)
    {
      objc_storeStrong(&self->_lastLocation, a3);
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

    objc_storeStrong(&self->_roughLocation, a3);
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

- (void)_handleNewBeacons:(id)a3
{
  v5 = a3;
  [(PDRelevantPassProvider *)self _stopBeaconSearch];
  p_lastBeacons = &self->_lastBeacons;
  lastBeacons = self->_lastBeacons;
  if (lastBeacons != v5)
  {
    objc_storeStrong(&self->_lastBeacons, a3);
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

- (void)_addDateRelevantAndLocationPendingCardsForStyle:(int64_t)a3 locationAvailable:(BOOL)a4
{
  v6 = (&__PassStyleMatchConditions + 64 * a3);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[4];
  v9 = v6[5];
  v12 = v6[6];
  v11 = v6[7];
  if (a4)
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
        [(PDCandidateRelevantPassFactory *)candidatePassFactory resolvedCandidatePassesOfStyle:a3];
      }

      else
      {
        [(PDCandidateRelevantPassFactory *)candidatePassFactory resolvedUnlocatedCandidatePassesOfStyle:a3];
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
          v31 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedCandidatePassesOfStyle:a3];
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

      v26 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedCandidatePassesOfStyle:a3];
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
    v30 = [(PDCandidateRelevantPassFactory *)self->_candidatePassFactory resolvedLocatedDatelessCandidatePassesOfStyle:a3];
    [(NSMutableSet *)v29 unionSet:v30];

    goto LABEL_25;
  }
}

- (id)_findDateRelevantPassesFromCandidates:(id)a3 betweenWindowStart:(id)a4 windowEnd:(id)a5 aroundDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = a6;
  v33 = objc_alloc_init(NSMutableSet);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
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
        v14 = [v13 relevantDates];
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            v20 = [v19 date];
            v21 = [v19 effectiveStartDate];
            v22 = [v19 effectiveEndDate];
            v23 = v22;
            if (v20)
            {
              [v10 timeIntervalSinceDate:v20];
              if (v24 >= 0.0)
              {
                goto LABEL_21;
              }

              v25 = v11;
              v26 = v20;
            }

            else
            {
              if (v21)
              {
                v27 = v22 == 0;
              }

              else
              {
                v27 = 1;
              }

              if (v27)
              {
                goto LABEL_21;
              }

              [v21 timeIntervalSinceDate:v38];
              if (v28 >= 0.0)
              {
                goto LABEL_21;
              }

              v25 = v23;
              v26 = v38;
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

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          v8 = [v7 embeddedBeacons];
          v9 = [v8 count];

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

        v6 = [*(*(&v9 + 1) + 8 * i) embeddedBeacons];
        v7 = [v6 count];

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

- (BOOL)_findMatchingLocation:(id *)a3 beacon:(id *)a4 forCandidatePass:(id)a5 passStyleRadius:(double)a6 usingNearbyLocations:(id)a7
{
  v70 = a5;
  v11 = a7;
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

  v16 = [v70 uniqueIdentifier];
  v17 = [v11 locationsForUniqueID:v16];

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
  v66 = v11;
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
      if (v28 <= a6)
      {
        v29 = v28;
      }

      else
      {
        v29 = a6;
      }

      if (v28 <= 0.0)
      {
        v30 = a6;
      }

      else
      {
        v30 = v29;
      }

      v31 = v13 + v30;
      v32 = [v27 CLLocation];
      [v32 distanceFromLocation:self->_lastLocation];
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
          v42 = self;
          v43 = v22;
          v44 = a3;
          v45 = v23;
          v46 = [v70 passTypeIdentifier];
          v47 = [v70 serialNumber];
          *buf = 138413314;
          v84 = v46;
          v85 = 2112;
          v86 = v47;
          v87 = 2112;
          v88 = v27;
          v89 = 2048;
          v90 = v34;
          v91 = 2048;
          v92 = v31;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "   %@:%@ card location %@ does NOT match because %g meters away. r: %g", buf, 0x34u);

          v23 = v45;
          a3 = v44;
          v22 = v43;
          self = v42;
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
        v37 = [v70 passTypeIdentifier];
        v38 = [v70 serialNumber];
        *buf = 138413314;
        v84 = v37;
        v85 = 2112;
        v86 = v38;
        v87 = 2112;
        v88 = v27;
        v89 = 2048;
        v90 = v34;
        v91 = 2048;
        v92 = v31;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "   %@:%@ card location %@ MATCHES because %g meters away. r: %g", buf, 0x34u);

        v18 = v69;
      }

      if (a3)
      {
        v39 = v27;
        v40 = *a3;
        *a3 = v39;
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
      v49 = [v70 passTypeIdentifier];
      v50 = [v70 serialNumber];
      *buf = 138413058;
      v84 = v49;
      v85 = 2112;
      v86 = v50;
      v87 = 2112;
      v88 = v22;
      v89 = 2048;
      v90 = v25;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "   %@:%@ card closest location: %@ (%g meters away)", buf, 0x2Au);
    }

    v11 = v66;
    v20 = v64;
    if (a3)
    {
      v22 = v22;
      v51 = *a3;
      *a3 = v22;
      goto LABEL_37;
    }

    LOBYTE(v23) = 1;
  }

  else
  {
    v11 = v66;
  }

LABEL_40:

LABEL_41:
  if (self->_lastBeacons && (v23 & 1) == 0)
  {
    v67 = v11;
    v52 = objc_alloc_init(NSMutableArray);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v53 = [v70 embeddedBeacons];
    v54 = [v53 countByEnumeratingWithState:&v74 objects:v82 count:16];
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
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v74 + 1) + 8 * i);
          lastBeacons = self->_lastBeacons;
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10010D56C;
          v71[3] = &unk_100846AB8;
          v71[4] = v58;
          v72 = v52;
          v73 = v70;
          [(NSArray *)lastBeacons enumerateObjectsUsingBlock:v71];
        }

        v55 = [v53 countByEnumeratingWithState:&v74 objects:v82 count:16];
      }

      while (v55);
    }

    v60 = [v52 count];
    LOBYTE(v23) = v60 != 0;
    if (v60)
    {
      [v52 sortUsingComparator:&stru_100846AF8];
      if (a4)
      {
        v61 = [v52 objectAtIndex:0];
        v62 = *a4;
        *a4 = v61;
      }
    }

    v11 = v67;
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

- (void)_processStateChangesFromCatalog:(id)a3
{
  v4 = a3;
  databaseManager = self->_databaseManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010DC68;
  v7[3] = &unk_10083C2B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v7];
}

- (void)_sendCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 passesInfo];
  currentRelevantPassInfo = self->_currentRelevantPassInfo;
  self->_currentRelevantPassInfo = v5;

  v7 = [v4 collectionsInfo];
  currentRelevantPassCollectionInfo = self->_currentRelevantPassCollectionInfo;
  self->_currentRelevantPassCollectionInfo = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relevantPassProvider:self didUpdateCatalog:v4];
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

- (void)handleNotificationWithName:(id)a3 event:(id)a4 forStream:(int64_t)a5
{
  v6 = a3;
  relevancySerialQueue = self->_relevancySerialQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010DFD8;
  v9[3] = &unk_10083C420;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(relevancySerialQueue, v9);
}

- (BOOL)_locationIsNewEnoughAndHasGoodAccuracy:(id)a3
{
  v4 = a3;
  v11 = v4 && (locationSearchStartDate = self->_locationSearchStartDate, [v4 timestamp], v7 = v5 = v4;

  return v11;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E1D4;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E330;
  block[3] = &unk_10083C4C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)a3 didRangeBeacons:(id)a4 satisfyingConstraint:(id)a5
{
  v7 = a3;
  v8 = a4;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E46C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)a3 didFailRangingBeaconsForConstraint:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E58C;
  block[3] = &unk_10083C4C0;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(relevancySerialQueue, block);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 code])
  {
    relevancySerialQueue = self->_relevancySerialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E7B4;
    block[3] = &unk_10083C4C0;
    v13 = v6;
    v14 = self;
    v15 = v7;
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
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Location Manager %@ unable to retreve location, will retry.", buf, 0x16u);
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = [v4 authorizationStatus];
  relevancySerialQueue = self->_relevancySerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E93C;
  block[3] = &unk_100846B48;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(relevancySerialQueue, block);
}

- (PDRelevantPassProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end