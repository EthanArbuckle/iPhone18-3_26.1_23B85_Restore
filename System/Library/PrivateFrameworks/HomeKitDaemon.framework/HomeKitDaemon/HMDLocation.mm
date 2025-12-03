@interface HMDLocation
+ (BOOL)isAccurateLocation:(id)location;
+ (HMDLocation)sharedManager;
+ (id)_getAlmanacWithLocation:(id)location;
+ (id)_getAlmanacWithLocation:(id)location date:(id)date;
+ (id)findEvent:(id)event withGeo:(id)geo;
+ (id)logCategory;
+ (id)nextSunriseTimeForLocation:(id)location date:(id)date;
+ (id)nextSunsetTimeForLocation:(id)location date:(id)date;
+ (id)sunriseTimeForLocation:(id)location;
+ (id)sunsetTimeForLocation:(id)location;
+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)async withCompletion:(id)completion;
- (BOOL)_canLocationBeExtracted;
- (BOOL)isCurrentLocationSimulated;
- (BOOL)isNPLOIMonitoringAllowed;
- (HMDLocation)initWithQueue:(id)queue dataSource:(id)source;
- (id)_createCurrentNPLOIRegistrationOptions;
- (id)_delegateforRegion:(id)region;
- (id)getCurrentLocation;
- (void)_extractSingleLocationForDelegate:(id)delegate;
- (void)_handleDeterminedState:(int64_t)state forRegion:(id)region;
- (void)_notifySingleLocationDelegate:(id)delegate withLocation:(id)location;
- (void)_notifySingleLocationDelegatesWithLocation:(id)location;
- (void)_processPredictedContextResult:(id)result error:(id)error;
- (void)_registerForNPLOIMonitoring:(id)monitoring forLocation:(id)location;
- (void)_startUpdateOrStopNPLOIMonitoring;
- (void)_stopNPLOIMonitoring;
- (void)_unregisterForNPLOIMonitoring:(id)monitoring;
- (void)_updateEntryForRegion:(id)region;
- (void)_updateExitForRegion:(id)region;
- (void)_updateRegionState:(int64_t)state forRegion:(id)region;
- (void)beingConfigured:(BOOL)configured completionHandler:(id)handler;
- (void)dealloc;
- (void)deregisterForRegionUpdate:(id)update completionHandler:(id)handler;
- (void)fetchLocationOfInterestAtLocation:(id)location withCompletion:(id)completion;
- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)handler;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)processPredictedContextResult:(id)result error:(id)error;
- (void)registerForNPLOIMonitoring:(id)monitoring forLocation:(id)location;
- (void)registerForRegionUpdate:(id)update withDelegate:(id)delegate completionHandler:(id)handler;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startExtractingSingleLocationForDelegate:(id)delegate;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
- (void)unregisterForNPLOIMonitoring:(id)monitoring;
@end

@implementation HMDLocation

- (void)sessionDidDisconnect:(id)disconnect
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  self->_carPlayConnected = 0;
  v5 = [MEMORY[0x277CBEAA8] now];
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@CarPlay session disconnected", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidConnect:(id)connect
{
  v13 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  self->_carPlayConnected = 1;
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = 0;

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@New CarPlay session connected", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  locationManager = [(HMDLocation *)self locationManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = locationManager;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Asking Core Routine for LOI at current location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__HMDLocation_getCoreRoutineLOIForCurrentLocationWithCompletionHandler___block_invoke;
    v17[3] = &unk_278687158;
    v17[4] = selfCopy;
    v18 = v5;
    [v8 _fetchPlaceInferencesWithFidelityPolicy:5 handler:v17];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@looks like we do not have valid location manager instance.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (v5)[2](v5, 0, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __72__HMDLocation_getCoreRoutineLOIForCurrentLocationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 firstObject];
    v9 = [v8 referenceLocation];

    if (v9)
    {
      if ([HMDLocation isAccurateLocation:v9])
      {
        v10 = [v5 firstObject];
        v11 = [v10 _loiIdentifier];

        if (!v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v37 = 138543362;
            v38 = v15;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@LOI Identifier is nil. Returning fallback location.", &v37, 0xCu);
          }

          objc_autoreleasePoolPop(v12);
          (*(*(a1 + 40) + 16))();
        }

        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v37 = 138543618;
          v38 = v19;
          v39 = 2112;
          v40 = v9;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@CR LOI Location : %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        (*(*(a1 + 40) + 16))();
        goto LABEL_22;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v34;
        v39 = 2112;
        v40 = v9;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Not using CR location with low accuracy : %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v28 = *(a1 + 40);
      v29 = MEMORY[0x277CCA9B8];
      v30 = 2;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v37 = 138543362;
        v38 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Reference location is nil.", &v37, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v28 = *(a1 + 40);
      v29 = MEMORY[0x277CCA9B8];
      v30 = 20;
    }

    v35 = [v29 hmErrorWithCode:v30];
    (*(v28 + 16))(v28, 0, 0, v35);

LABEL_22:
    goto LABEL_23;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v37 = 138543618;
    v38 = v23;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Got an error or place inferences are nil while fetching location of interest. %@", &v37, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  (*(*(a1 + 40) + 16))();
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)fetchLocationOfInterestAtLocation:(id)location withCompletion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  routineManager = [(HMDLocation *)self routineManager];
  [routineManager fetchLocationOfInterestAtLocation:locationCopy withHandler:completionCopy];
}

- (void)_unregisterForNPLOIMonitoring:(id)monitoring
{
  v16 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = monitoringCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for NPLOI monitoring for delegate: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  nploiMonitoringDelegatesToLocations = [(HMDLocation *)selfCopy nploiMonitoringDelegatesToLocations];
  [nploiMonitoringDelegatesToLocations removeObjectForKey:monitoringCopy];

  [(HMDLocation *)selfCopy _startUpdateOrStopNPLOIMonitoring];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForNPLOIMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDLocation_unregisterForNPLOIMonitoring___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = monitoringCopy;
  v6 = monitoringCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)_registerForNPLOIMonitoring:(id)monitoring forLocation:(id)location
{
  v21 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (locationCopy)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = monitoringCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for NPLOI monitoring for delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    nploiMonitoringDelegatesToLocations = [(HMDLocation *)selfCopy nploiMonitoringDelegatesToLocations];
    [nploiMonitoringDelegatesToLocations setObject:locationCopy forKey:monitoringCopy];

    [(HMDLocation *)selfCopy _startUpdateOrStopNPLOIMonitoring];
  }

  else
  {
    if (v12)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = monitoringCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No location, unregistering if already register for NPLOI monitoring for delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDLocation *)selfCopy _unregisterForNPLOIMonitoring:monitoringCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerForNPLOIMonitoring:(id)monitoring forLocation:(id)location
{
  monitoringCopy = monitoring;
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDLocation_registerForNPLOIMonitoring_forLocation___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = monitoringCopy;
  v13 = locationCopy;
  v9 = locationCopy;
  v10 = monitoringCopy;
  dispatch_async(handlerQueue, block);
}

- (void)_startUpdateOrStopNPLOIMonitoring
{
  v34 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    nploiMonitoringDelegatesToLocations = [(HMDLocation *)selfCopy nploiMonitoringDelegatesToLocations];
    *buf = 138543618;
    v31 = v7;
    v32 = 2048;
    v33 = [nploiMonitoringDelegatesToLocations count];
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Current NPLOI monitoring contexts count is now %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  isNPLOIMonitoringAllowed = [(HMDLocation *)selfCopy isNPLOIMonitoringAllowed];
  objc_initWeak(&location, selfCopy);
  if (!isNPLOIMonitoringAllowed || (-[HMDLocation nploiMonitoringDelegatesToLocations](selfCopy, "nploiMonitoringDelegatesToLocations"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count] == 0, v10, v11))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Stopping NPLOI monitoring because there are no more delegates or not allowed to monitor", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDLocation *)v19 _stopNPLOIMonitoring];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating NPLOI context options for NPLOI monitoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    _createCurrentNPLOIRegistrationOptions = [(HMDLocation *)v13 _createCurrentNPLOIRegistrationOptions];
    if (_createCurrentNPLOIRegistrationOptions)
    {
      routineManager = [(HMDLocation *)v13 routineManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__HMDLocation__startUpdateOrStopNPLOIMonitoring__block_invoke;
      v27[3] = &unk_27867D948;
      objc_copyWeak(&v28, &location);
      [routineManager startMonitoringPredictedContextWithOptions:_createCurrentNPLOIRegistrationOptions completionHandler:v27];

      objc_destroyWeak(&v28);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v13;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create NPLOI context options for NPLOI monitoring, stop monitoring", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDLocation *)v23 _stopNPLOIMonitoring];
    }
  }

  objc_destroyWeak(&location);
  v26 = *MEMORY[0x277D85DE8];
}

void __48__HMDLocation__startUpdateOrStopNPLOIMonitoring__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained processPredictedContextResult:v8 error:v5];
  }
}

- (void)_stopNPLOIMonitoring
{
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  objc_initWeak(&location, self);
  routineManager = [(HMDLocation *)self routineManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__HMDLocation__stopNPLOIMonitoring__block_invoke;
  v5[3] = &unk_278688A18;
  objc_copyWeak(&v6, &location);
  [routineManager stopMonitoringPredictedContextWithHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __35__HMDLocation__stopNPLOIMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop NPLOI monitoring with %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processPredictedContextResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  nploiMonitoringDelegatesToLocations = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  keyEnumerator = [nploiMonitoringDelegatesToLocations keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    do
    {
      [v11 updatePredictedContextResult:resultCopy error:errorCopy];
      nextObject2 = [keyEnumerator nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)processPredictedContextResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDLocation_processPredictedContextResult_error___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(handlerQueue, block);
}

- (id)_createCurrentNPLOIRegistrationOptions
{
  v18[2] = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v4 = MEMORY[0x277CBEB18];
  nploiMonitoringDelegatesToLocations = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(nploiMonitoringDelegatesToLocations, "count")}];

  nploiMonitoringDelegatesToLocations2 = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  objectEnumerator = [nploiMonitoringDelegatesToLocations2 objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      [v6 addObject:v10];
      nextObject2 = [objectEnumerator nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  if ([v6 count])
  {
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateInterval.startDate.date" ascending:1];
    v18[0] = v12;
    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"probability" ascending:0];
    v18[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

    v15 = [objc_alloc(MEMORY[0x277D01238]) initWithForecastWindowDateInterval:0 filterContextTypeMask:1 filterLocations:v6 resultSortDescriptors:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isNPLOIMonitoringAllowed
{
  v13 = *MEMORY[0x277D85DE8];
  locationManager = [(HMDLocation *)self locationManager];
  locationServicesEnabled = [objc_opt_class() locationServicesEnabled];

  if ((locationServicesEnabled & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Location Services are disabled", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return locationServicesEnabled;
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDLocation_locationManager_didStartMonitoringForRegion___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = regionCopy;
  v7 = regionCopy;
  dispatch_async(handlerQueue, v8);
}

void __59__HMDLocation_locationManager_didStartMonitoringForRegion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = regionAsString(*(a1 + 40));
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@did start monitoring for region: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) locationManager];
  [v7 requestStateForRegion:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did exit the region %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)selfCopy _handleDeterminedState:2 forRegion:regionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did enter the region %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)selfCopy _handleDeterminedState:1 forRegion:regionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMCLRegionStateAsString();
    [regionCopy radius];
    v17 = 138543874;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2048;
    v22 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@LocationManager did determine region state: %@, radius : %f", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDLocation *)selfCopy _handleDeterminedState:state forRegion:regionCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v19 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMCLAuthorizationStatusAsString();
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Received updated authorization status %@ for location", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HMDLocation_locationManagerDidChangeAuthorization___block_invoke;
  v13[3] = &unk_278688888;
  v13[4] = selfCopy;
  v14 = authorizationStatus;
  dispatch_async(handlerQueue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HMDLocation_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) authStatus];
  [*(a1 + 32) setAuthStatus:*(a1 + 40)];
  if (([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 32) _notifySingleLocationDelegatesWithLocation:0];
  }

  [*(a1 + 32) _updateWithLocationAuthorizationStatus:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v8 = HMCLAuthorizationStatusAsString();
      [*(a1 + 32) locationAuthorized];
      v9 = HMLocationAuthorizationAsString();
      v12 = 138543874;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Initial location auth status for homed: %@, %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }

  result = [*(a1 + 32) _startUpdateOrStopNPLOIMonitoring];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error for the location update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDLocation_locationManager_didFailWithError___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(handlerQueue, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = locationsCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Location manager updated locations: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__HMDLocation_locationManager_didUpdateLocations___block_invoke;
  v15[3] = &unk_27868A750;
  v16 = locationsCopy;
  v17 = selfCopy;
  v13 = locationsCopy;
  dispatch_async(handlerQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __50__HMDLocation_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastObject];
  if (v2 && [HMDLocation isAccurateLocation:v2])
  {
    v3 = *(a1 + 40);
    v4 = v2;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring inaccurate single location: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v3 = *(a1 + 40);
    v4 = 0;
  }

  [v3 _notifySingleLocationDelegatesWithLocation:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeterminedState:(int64_t)state forRegion:(id)region
{
  v29 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v7 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:state];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMRegionStateString();
    identifier = [regionCopy identifier];
    v14 = regionAsString(regionCopy);
    *buf = 138544130;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = identifier;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Region state is %@ for region %@ %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    handlerQueue = [(HMDLocation *)selfCopy handlerQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDLocation__handleDeterminedState_forRegion___block_invoke;
    v17[3] = &unk_27867D900;
    v17[4] = selfCopy;
    v18 = regionCopy;
    v19 = v7;
    stateCopy = state;
    dispatch_async(handlerQueue, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __48__HMDLocation__handleDeterminedState_forRegion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) regionStates];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
    v5 = *(a1 + 48);
    if (v4 != v5)
    {
      if (v4)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
        if (v5 == 2)
        {
          if (v9)
          {
            v10 = HMFGetLogIdentifier();
            v11 = [*(a1 + 40) identifier];
            v12 = regionAsString(*(a1 + 40));
            v31 = 138543874;
            v32 = v10;
            v33 = 2112;
            v34 = v11;
            v35 = 2112;
            v36 = v12;
            _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received exit for region %@ %@", &v31, 0x20u);
          }

          objc_autoreleasePoolPop(v6);
          [*(a1 + 32) _updateExitForRegion:*(a1 + 40)];
        }

        else
        {
          if (v9)
          {
            v19 = HMFGetLogIdentifier();
            v20 = [*(a1 + 40) identifier];
            v21 = regionAsString(*(a1 + 40));
            v31 = 138543874;
            v32 = v19;
            v33 = 2112;
            v34 = v20;
            v35 = 2112;
            v36 = v21;
            _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received entry for region %@ %@", &v31, 0x20u);
          }

          objc_autoreleasePoolPop(v6);
          [*(a1 + 32) _updateEntryForRegion:*(a1 + 40)];
        }
      }

      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
LABEL_15:
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMRegionStateString();
      v27 = *(a1 + 48);
      v28 = HMRegionStateString();
      v29 = [*(a1 + 40) identifier];
      v31 = 138544130;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      v35 = 2114;
      v36 = v28;
      v37 = 2114;
      v38 = v29;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating region state from %{public}@ to %{public}@ %{public}@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    [*(a1 + 32) _updateRegionState:*(a1 + 56) forRegion:*(a1 + 40)];
    goto LABEL_18;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMRegionStateString();
    v18 = [*(a1 + 40) identifier];
    v31 = 138543874;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring because region state did not change %@ %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_18:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)beingConfigured:(BOOL)configured completionHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDLocation_beingConfigured_completionHandler___block_invoke;
  block[3] = &unk_278687F18;
  configuredCopy = configured;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(handlerQueue, block);
}

void __49__HMDLocation_beingConfigured_completionHandler___block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v84 = a1;
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    *buf = 138543618;
    v99 = v5;
    v100 = 2112;
    v101 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Being configured is changing to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 48) == [*(a1 + 32) beingConfigured])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [*(a1 + 32) beingConfigured];
      v12 = HMFBooleanToString();
      *buf = 138543618;
      v99 = v11;
      v100 = 2112;
      v101 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Being configured is not changing from %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_8;
  }

  [*(a1 + 32) setBeingConfigured:?];
  if (*(a1 + 48) == 1)
  {
LABEL_8:
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))();
    }

    goto LABEL_56;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v99 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Being configured is changing to NO, submitting the pending monitor requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [*(a1 + 32) pendingRegionMonitoringRequests];
  v18 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v94;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v94 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v93 + 1) + 8 * i);
        v23 = [*(v84 + 32) pendingRegionMonitoringRequests];
        v24 = [v23 objectForKey:v22];

        if (v24)
        {
          v25 = [*(v84 + 32) regionStateDelegatesByRegionIdentifier];
          v26 = [v22 identifier];
          [v25 setObject:v24 forKey:v26];

          v27 = objc_autoreleasePoolPush();
          v28 = *(v84 + 32);
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            regionAsString(v22);
            v31 = v19;
            v33 = v32 = v20;
            *buf = 138543618;
            v99 = v30;
            v100 = 2112;
            v101 = v33;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@After configured, submitting start monitor request for region: %@", buf, 0x16u);

            v20 = v32;
            v19 = v31;
          }

          objc_autoreleasePoolPop(v27);
          v34 = [*(v84 + 32) locationManager];
          [v34 startMonitoringForRegion:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    }

    while (v19);
  }

  v35 = [*(v84 + 32) pendingRegionMonitoringRequests];
  [v35 removeAllObjects];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obja = [*(v84 + 32) pendingRegionCallbacks];
  v36 = [obja countByEnumeratingWithState:&v89 objects:v104 count:16];
  if (v36)
  {
    v38 = v36;
    v39 = *v90;
    *&v37 = 138543874;
    v80 = v37;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v90 != v39)
        {
          objc_enumerationMutation(obja);
        }

        v41 = *(*(&v89 + 1) + 8 * j);
        v42 = [*(v84 + 32) pendingRegionCallbacks];
        v43 = [v42 objectForKey:v41];

        v44 = [v43 unsignedIntegerValue];
        if (v44)
        {
          if (v44 == 1)
          {
            v49 = objc_autoreleasePoolPush();
            v50 = *(v84 + 32);
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543618;
              v99 = v52;
              v100 = 2112;
              v101 = v41;
              _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Calling pending entry callback for region %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
            [*(v84 + 32) _updateEntryForRegion:v41];
          }

          else if (v44 == 2)
          {
            v45 = objc_autoreleasePoolPush();
            v46 = *(v84 + 32);
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              v48 = HMFGetLogIdentifier();
              *buf = 138543618;
              v99 = v48;
              v100 = 2112;
              v101 = v41;
              _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Calling pending exit callback for region %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v45);
            [*(v84 + 32) _updateExitForRegion:v41];
          }
        }

        else
        {
          v53 = objc_autoreleasePoolPush();
          v54 = *(v84 + 32);
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = v80;
            v99 = v56;
            v100 = 2112;
            v101 = v43;
            v102 = 2112;
            v103 = v41;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Unknown region state %@ for region %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v53);
        }
      }

      v38 = [obja countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v38);
  }

  v57 = [*(v84 + 32) pendingRegionCallbacks];
  [v57 removeAllObjects];

  v58 = [*(v84 + 32) locationManager];
  v59 = [v58 monitoredRegions];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v60 = v59;
  v61 = [v60 countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v86;
    do
    {
      v64 = 0;
      objb = v62;
      do
      {
        if (*v86 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v85 + 1) + 8 * v64);
        v66 = [*(v84 + 32) regionStateDelegatesByRegionIdentifier];
        v67 = [v65 identifier];
        v68 = [v66 objectForKey:v67];

        if (!v68)
        {
          v69 = objc_autoreleasePoolPush();
          v70 = *(v84 + 32);
          v71 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v72 = HMFGetLogIdentifier();
            regionAsString(v65);
            v73 = v63;
            v75 = v74 = v60;
            *buf = 138543618;
            v99 = v72;
            v100 = 2112;
            v101 = v75;
            _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Region %@ was not found in the region state monitor map, stopping monitoring", buf, 0x16u);

            v60 = v74;
            v63 = v73;
          }

          objc_autoreleasePoolPop(v69);
          v76 = [*(v84 + 32) regionStates];
          [v76 removeObjectForKey:v65];

          v77 = [*(v84 + 32) locationManager];
          [v77 stopMonitoringForRegion:v65];

          v62 = objb;
        }

        ++v64;
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v62);
  }

  v78 = *(v84 + 40);
  if (v78)
  {
    (*(v78 + 16))();
  }

LABEL_56:
  v79 = *MEMORY[0x277D85DE8];
}

- (void)_updateExitForRegion:(id)region
{
  v21 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(regionCopy);
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the exit for region %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    pendingRegionCallbacks = [(HMDLocation *)selfCopy pendingRegionCallbacks];
    [pendingRegionCallbacks setObject:&unk_283E739B8 forKey:regionCopy];
  }

  else
  {
    pendingRegionCallbacks = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (pendingRegionCallbacks)
    {
      if ([regionCopy notifyOnExit])
      {
        pendingRegionCallbacks = pendingRegionCallbacks;
        if (objc_opt_respondsToSelector())
        {
          [pendingRegionCallbacks didExitRegion:regionCopy];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not calling the didExitRegion delegate as this event was not subscribed for", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateEntryForRegion:(id)region
{
  v21 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(regionCopy);
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the entry for region %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    pendingRegionCallbacks = [(HMDLocation *)selfCopy pendingRegionCallbacks];
    [pendingRegionCallbacks setObject:&unk_283E739A0 forKey:regionCopy];
  }

  else
  {
    pendingRegionCallbacks = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (pendingRegionCallbacks)
    {
      if ([regionCopy notifyOnEntry])
      {
        pendingRegionCallbacks = pendingRegionCallbacks;
        if (objc_opt_respondsToSelector())
        {
          [pendingRegionCallbacks didEnterRegion:regionCopy];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not calling the didEnterRegion delegate as this event was not subscribed for", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateRegionState:(int64_t)state forRegion:(id)region
{
  v29 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if (![(HMDLocation *)self beingConfigured])
  {
    v13 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:state];
    regionStates = [(HMDLocation *)self regionStates];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [regionStates setObject:v15 forKey:regionCopy];

    v16 = [(HMDLocation *)self _delegateforRegion:regionCopy];
    if (!v16)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (state == 2)
    {
      if ([regionCopy notifyOnExit])
      {
LABEL_9:
        v17 = v16;
        if (objc_opt_respondsToSelector())
        {
          [v17 didDetermineState:state forRegion:regionCopy];
        }

        goto LABEL_16;
      }
    }

    else if (state == 1 && ([regionCopy notifyOnEntry] & 1) != 0)
    {
      goto LABEL_9;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not calling the location delegate as this event was not subscribed for", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(regionCopy);
    v23 = 138543874;
    v24 = v11;
    v25 = 2048;
    stateCopy = state;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, not updating region state %tu for region %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_delegateforRegion:(id)region
{
  v22 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  regionStateDelegatesByRegionIdentifier = [(HMDLocation *)self regionStateDelegatesByRegionIdentifier];
  identifier = [regionCopy identifier];
  v8 = [regionStateDelegatesByRegionIdentifier objectForKey:identifier];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = regionAsString(regionCopy);
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Update received for a region %@ that was not found in the region state monitor map, stopping monitoring", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    regionStates = [(HMDLocation *)selfCopy regionStates];
    [regionStates removeObjectForKey:regionCopy];

    locationManager = [(HMDLocation *)selfCopy locationManager];
    [locationManager stopMonitoringForRegion:regionCopy];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_notifySingleLocationDelegate:(id)delegate withLocation:(id)location
{
  delegateCopy = delegate;
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v9 = delegateCopy;
  if (objc_opt_respondsToSelector())
  {
    [v9 didDetermineLocation:locationCopy];
  }
}

- (void)_notifySingleLocationDelegatesWithLocation:(id)location
{
  v18 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  singleLocationDelegates = [(HMDLocation *)self singleLocationDelegates];
  v7 = [singleLocationDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(singleLocationDelegates);
        }

        [(HMDLocation *)self _notifySingleLocationDelegate:*(*(&v13 + 1) + 8 * v10++) withLocation:locationCopy];
      }

      while (v8 != v10);
      v8 = [singleLocationDelegates countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  singleLocationDelegates2 = [(HMDLocation *)self singleLocationDelegates];
  [singleLocationDelegates2 removeAllObjects];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForRegionUpdate:(id)update completionHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLocation_deregisterForRegionUpdate_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  v12 = updateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = handlerCopy;
  dispatch_async(handlerQueue, block);
}

void __59__HMDLocation_deregisterForRegionUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 48))
  {
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Completion handler is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v36);
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v27;
      v28 = "%{public}@Monitored regions are nil";
LABEL_23:
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
    }

LABEL_24:

    objc_autoreleasePoolPop(v24);
    v29 = *(a1 + 48);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    (*(v29 + 16))(v29, v30);

    goto LABEL_25;
  }

  if (![v2 count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v27;
      v28 = "%{public}@Monitored regions are empty";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v41;
    *&v4 = 138543618;
    v37 = v4;
    v38 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [*(a1 + 32) regionStates];
        [v9 removeObjectForKey:v8];

        v10 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
        v11 = [v8 identifier];
        v12 = [v10 objectForKey:v11];

        v13 = objc_autoreleasePoolPush();
        v14 = *(a1 + 32);
        v15 = HMFGetOSLogHandle();
        v16 = v15;
        if (v12)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = regionAsString(v8);
            *buf = v37;
            v45 = v17;
            v46 = 2112;
            v47 = v18;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Submitting stop monitor request for region: %@", buf, 0x16u);

            v6 = v38;
          }

          objc_autoreleasePoolPop(v13);
          v19 = [*(a1 + 32) locationManager];
          [v19 stopMonitoringForRegion:v8];

          v20 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
          v21 = [v8 identifier];
          [v20 removeObjectForKey:v21];
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v23 = regionAsString(v8);
            *buf = v37;
            v45 = v22;
            v46 = 2112;
            v47 = v23;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Region %@ was not found in the region state monitor map, cannot deregister", buf, 0x16u);

            v6 = v38;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
LABEL_25:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)registerForRegionUpdate:(id)update withDelegate:(id)delegate completionHandler:(id)handler
{
  updateCopy = update;
  delegateCopy = delegate;
  handlerCopy = handler;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDLocation_registerForRegionUpdate_withDelegate_completionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = updateCopy;
  v17 = delegateCopy;
  v18 = handlerCopy;
  v12 = delegateCopy;
  v13 = updateCopy;
  v14 = handlerCopy;
  dispatch_async(handlerQueue, v15);
}

void __70__HMDLocation_registerForRegionUpdate_withDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    v49 = objc_autoreleasePoolPush();
    v50 = *(a1 + 32);
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v52;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Completion handler is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v49);
    v53 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v53);
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v66 = v19;
    v20 = "%{public}@Monitored regions are nil";
LABEL_24:
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_25;
  }

  if (![v2 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v66 = v19;
    v20 = "%{public}@Monitored regions are empty";
    goto LABEL_24;
  }

  if (!*(a1 + 48))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v19;
      v20 = "%{public}@Delegate is nil";
      goto LABEL_24;
    }

LABEL_25:

    objc_autoreleasePoolPop(v16);
    v21 = *(a1 + 56);
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCFD28];
    v24 = 3;
LABEL_26:
    v25 = [v22 errorWithDomain:v23 code:v24 userInfo:0];
    (*(v21 + 16))(v21, v25);

    goto LABEL_27;
  }

  v3 = [*(a1 + 32) locationManager];
  v4 = [objc_opt_class() locationServicesEnabled];

  if ((v4 & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v30;
      v31 = "%{public}@Location services are not enabled, cannot submit region monitoring";
      v32 = v29;
      v33 = OS_LOG_TYPE_INFO;
LABEL_32:
      _os_log_impl(&dword_229538000, v32, v33, v31, buf, 0xCu);
    }

LABEL_33:

    objc_autoreleasePoolPop(v27);
    v21 = *(a1 + 56);
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCFD28];
    v24 = 84;
    goto LABEL_26;
  }

  if (([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:{objc_msgSend(*(a1 + 32), "authStatus")}] & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v30;
      v31 = "%{public}@Location is not authorized for homed, cannot submit region monitoring";
      v32 = v29;
      v33 = OS_LOG_TYPE_ERROR;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if ([*(a1 + 32) beingConfigured])
  {
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v61;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v61 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v60 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = *(a1 + 32);
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = regionAsString(v9);
            *buf = 138543618;
            v66 = v13;
            v67 = 2112;
            v68 = v14;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, holding onto region %@ monitoring requests until complete", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v15 = [*(a1 + 32) pendingRegionMonitoringRequests];
          [v15 setObject:*(a1 + 48) forKey:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    obj = *(a1 + 40);
    v34 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v34)
    {
      v36 = v34;
      v37 = *v57;
      *&v35 = 138543618;
      v54 = v35;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v57 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v56 + 1) + 8 * j);
          v40 = [*(a1 + 32) regionStateDelegatesByRegionIdentifier];
          v41 = *(a1 + 48);
          v42 = [v39 identifier];
          [v40 setObject:v41 forKey:v42];

          v43 = objc_autoreleasePoolPush();
          v44 = *(a1 + 32);
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = HMFGetLogIdentifier();
            v47 = regionAsString(v39);
            *buf = v54;
            v66 = v46;
            v67 = 2112;
            v68 = v47;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Submitting start monitor request for region: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
          v48 = [*(a1 + 32) locationManager];
          [v48 startMonitoringForRegion:v39];
        }

        v36 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v36);
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentLocation
{
  locationManager = [(HMDLocation *)self locationManager];
  location = [locationManager location];

  return location;
}

- (void)_extractSingleLocationForDelegate:(id)delegate
{
  v33 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = delegateCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Extracting single location for delegate: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDLocation *)selfCopy _canLocationBeExtracted])
  {
    singleLocationDelegates = [(HMDLocation *)selfCopy singleLocationDelegates];
    v11 = [singleLocationDelegates count];

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Requesting single location", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      locationManager = [(HMDLocation *)v13 locationManager];
      [locationManager requestLocation];
    }

    singleLocationDelegates2 = [(HMDLocation *)selfCopy singleLocationDelegates];
    [singleLocationDelegates2 addObject:delegateCopy];

    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      singleLocationDelegates3 = [(HMDLocation *)v19 singleLocationDelegates];
      v23 = [singleLocationDelegates3 count];
      v29 = 138543618;
      v30 = v21;
      v31 = 2048;
      v32 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Current single location delegate count is now %ld", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Passing back nil location because locations can't be extracted", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDLocation *)v25 _notifySingleLocationDelegate:delegateCopy withLocation:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canLocationBeExtracted
{
  v17 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  locationManager = [(HMDLocation *)self locationManager];
  locationServicesEnabled = [objc_opt_class() locationServicesEnabled];

  if ((locationServicesEnabled & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v10 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v10;
    v11 = "%{public}@Can't extract location because Location Services are not enabled";
LABEL_11:
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v11, &v15, 0xCu);

    goto LABEL_12;
  }

  if (![(HMDLocation *)self authStatus])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v10 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v10;
    v11 = "%{public}@Waiting for initial location auth.";
    goto LABEL_11;
  }

  if (([MEMORY[0x277CBFC10] hm_isLocationAllowedForAuthorizationStatus:{-[HMDLocation authStatus](self, "authStatus")}] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      v11 = "%{public}@Can't extract location because Location Services are not enabled for homed";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v7);
    result = 0;
    goto LABEL_13;
  }

  result = 1;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startExtractingSingleLocationForDelegate:(id)delegate
{
  delegateCopy = delegate;
  handlerQueue = [(HMDLocation *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDLocation_startExtractingSingleLocationForDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(handlerQueue, v7);
}

- (void)stopUpdatingLocation
{
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDLocation_stopUpdatingLocation__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

void __35__HMDLocation_stopUpdatingLocation__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients")}];
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing stop updating location request: totalClients: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [v7 totalLocationObservingClients] - 1;
  [v7 setTotalLocationObservingClients:v8];
  [*(a1 + 32) setTotalLocationObservingClients:v8 & ~(v8 >> 63)];
  if (![*(a1 + 32) totalLocationObservingClients])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting CLLocationManager to stop updating location", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 32) locationManager];
    [v13 stopUpdatingLocation];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startUpdatingLocation
{
  handlerQueue = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDLocation_startUpdatingLocation__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

uint64_t __36__HMDLocation_startUpdatingLocation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients")}];
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing start updating location request: totalClients: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (![*(a1 + 32) totalLocationObservingClients])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Requesting CLLocationManager to start updating location", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) locationManager];
    [v11 startUpdatingLocation];
  }

  result = [*(a1 + 32) setTotalLocationObservingClients:{objc_msgSend(*(a1 + 32), "totalLocationObservingClients") + 1}];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isCurrentLocationSimulated
{
  getCurrentLocation = [(HMDLocation *)self getCurrentLocation];
  isSimulated = [getCurrentLocation isSimulated];

  return isSimulated;
}

- (void)dealloc
{
  locationManager = [(HMDLocation *)self locationManager];
  [locationManager stopUpdatingLocation];

  v4.receiver = self;
  v4.super_class = HMDLocation;
  [(HMDLocation *)&v4 dealloc];
}

- (HMDLocation)initWithQueue:(id)queue dataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  dispatch_assert_queue_V2(queueCopy);
  v31.receiver = self;
  v31.super_class = HMDLocation;
  v9 = [(HMDLocation *)&v31 init];
  v10 = v9;
  if (v9)
  {
    v9->_beingConfigured = 1;
    objc_storeStrong(&v9->_handlerQueue, queue);
    bundleForLocationManager = [objc_opt_class() bundleForLocationManager];
    v12 = [sourceCopy makeLocationManagerWithEffectiveBundle:bundleForLocationManager delegate:v10 onQueue:queueCopy];
    locationManager = v10->_locationManager;
    v10->_locationManager = v12;

    [(HMDCLLocationManager *)v10->_locationManager setDesiredAccuracy:*MEMORY[0x277CE4210]];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    singleLocationDelegates = v10->_singleLocationDelegates;
    v10->_singleLocationDelegates = weakObjectsHashTable;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    regionStateDelegatesByRegionIdentifier = v10->_regionStateDelegatesByRegionIdentifier;
    v10->_regionStateDelegatesByRegionIdentifier = strongToWeakObjectsMapTable;

    defaultManager = [MEMORY[0x277D01280] defaultManager];
    routineManager = v10->_routineManager;
    v10->_routineManager = defaultManager;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    nploiMonitoringDelegatesToLocations = v10->_nploiMonitoringDelegatesToLocations;
    v10->_nploiMonitoringDelegatesToLocations = weakToStrongObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    pendingRegionMonitoringRequests = v10->_pendingRegionMonitoringRequests;
    v10->_pendingRegionMonitoringRequests = strongToWeakObjectsMapTable2;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRegionCallbacks = v10->_pendingRegionCallbacks;
    v10->_pendingRegionCallbacks = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    regionStates = v10->_regionStates;
    v10->_regionStates = strongToStrongObjectsMapTable2;

    v28 = objc_alloc_init(MEMORY[0x277CF89F8]);
    [(HMDLocation *)v10 setCarPlaySessionStatus:v28];

    carPlaySessionStatus = [(HMDLocation *)v10 carPlaySessionStatus];
    [carPlaySessionStatus addSessionObserver:v10];
  }

  return v10;
}

+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)async withCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v8 = v4;
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    countryCode = [autoupdatingCurrentLocale countryCode];
    v8[2](v8, localTimeZone, countryCode);

    v4 = v8;
  }
}

+ (BOOL)isAccurateLocation:(id)location
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  if (v4 >= 0.0)
  {
    [locationCopy horizontalAccuracy];
    v5 = v6 <= 500.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nextSunsetTimeForLocation:(id)location date:(id)date
{
  v11[3] = *MEMORY[0x277D85DE8];
  date = [HMDLocation _getAlmanacWithLocation:location, date];
  previousSunset = [date previousSunset];
  sunset = [date sunset];
  v11[1] = sunset;
  nextSunset = [date nextSunset];
  v11[2] = nextSunset;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sunsetTimeForLocation:(id)location
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:location];
  previousSunrise = [v3 previousSunrise];
  sunrise = [v3 sunrise];
  v11[1] = sunrise;
  nextSunrise = [v3 nextSunrise];
  v11[2] = nextSunrise;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)nextSunriseTimeForLocation:(id)location date:(id)date
{
  v11[3] = *MEMORY[0x277D85DE8];
  date = [HMDLocation _getAlmanacWithLocation:location, date];
  previousSunrise = [date previousSunrise];
  sunrise = [date sunrise];
  v11[1] = sunrise;
  nextSunrise = [date nextSunrise];
  v11[2] = nextSunrise;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sunriseTimeForLocation:(id)location
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:location];
  previousSunset = [v3 previousSunset];
  sunset = [v3 sunset];
  v11[1] = sunset;
  nextSunset = [v3 nextSunset];
  v11[2] = nextSunset;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)findEvent:(id)event withGeo:(id)geo
{
  v27[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  geoCopy = geo;
  v6 = [MEMORY[0x277CBEAA8] now];
  hmf_dateComponents = [v6 hmf_dateComponents];

  [hmf_dateComponents setHour:12];
  [hmf_dateComponents setMinute:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateFromComponents:hmf_dateComponents];

  previousSunrise = [geoCopy previousSunrise];
  v27[0] = previousSunrise;
  previousSunset = [geoCopy previousSunset];
  v27[1] = previousSunset;
  sunrise = [geoCopy sunrise];
  v27[2] = sunrise;
  sunset = [geoCopy sunset];
  v27[3] = sunset;
  nextSunrise = [geoCopy nextSunrise];
  v27[4] = nextSunrise;
  nextSunset = [geoCopy nextSunset];
  v27[5] = nextSunset;
  v27[6] = v9;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_257];
  v18 = 0;
  if ([v17 count])
  {
    v19 = eventCopy;
    while (1)
    {
      v20 = [v17 objectAtIndex:v18];

      if (v20 == v9)
      {
        break;
      }

      if (++v18 >= [v17 count])
      {
        v18 = 0;
        goto LABEL_11;
      }
    }

    v21 = [v17 objectAtIndex:v18 - 1];
    v22 = [eventCopy containsObject:v21];

    if (v22)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = v18 - 1;
    }

    v18 = [v17 objectAtIndex:v23];
  }

  else
  {
    v19 = eventCopy;
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_getAlmanacWithLocation:(id)location date:(id)date
{
  v4 = MEMORY[0x277D0EAB0];
  locationCopy = location;
  v6 = objc_alloc_init(v4);
  [locationCopy coordinate];
  v8 = v7;
  [locationCopy coordinate];
  v10 = v9;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v6 calculateAstronomicalTimeForLocation:v8 time:v10 altitudeInDegrees:{v11, *MEMORY[0x277D0E7C0]}];

  return v6;
}

+ (id)_getAlmanacWithLocation:(id)location
{
  v3 = MEMORY[0x277D0EAB0];
  locationCopy = location;
  v5 = objc_alloc_init(v3);
  [locationCopy coordinate];
  v7 = v6;
  [locationCopy coordinate];
  v9 = v8;

  [v5 calculateAstronomicalTimeForLocation:v7 altitudeInDegrees:{v9, *MEMORY[0x277D0E7C0]}];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_183447 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_183447, &__block_literal_global_183448);
  }

  v3 = logCategory__hmf_once_v26_183449;

  return v3;
}

void __26__HMDLocation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26_183449;
  logCategory__hmf_once_v26_183449 = v1;
}

+ (HMDLocation)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HMDLocation_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_183458 != -1)
  {
    dispatch_once(&sharedManager_onceToken_183458, block);
  }

  v2 = sharedManager_sharedLocation;

  return v2;
}

void __28__HMDLocation_sharedManager__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.homed.location", v2);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMDLocation_sharedManager__block_invoke_2;
  v6[3] = &unk_27868A0D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_sync(v5, v6);
}

void __28__HMDLocation_sharedManager__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 40));
  v3 = *(a1 + 32);
  v6 = objc_alloc_init(HMDLocationDefaultDataSource);
  v4 = [v2 initWithQueue:v3 dataSource:v6];
  v5 = sharedManager_sharedLocation;
  sharedManager_sharedLocation = v4;
}

@end