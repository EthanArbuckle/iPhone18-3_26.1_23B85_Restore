@interface HMDLocation
+ (BOOL)isAccurateLocation:(id)a3;
+ (HMDLocation)sharedManager;
+ (id)_getAlmanacWithLocation:(id)a3;
+ (id)_getAlmanacWithLocation:(id)a3 date:(id)a4;
+ (id)findEvent:(id)a3 withGeo:(id)a4;
+ (id)logCategory;
+ (id)nextSunriseTimeForLocation:(id)a3 date:(id)a4;
+ (id)nextSunsetTimeForLocation:(id)a3 date:(id)a4;
+ (id)sunriseTimeForLocation:(id)a3;
+ (id)sunsetTimeForLocation:(id)a3;
+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)a3 withCompletion:(id)a4;
- (BOOL)_canLocationBeExtracted;
- (BOOL)isCurrentLocationSimulated;
- (BOOL)isNPLOIMonitoringAllowed;
- (HMDLocation)initWithQueue:(id)a3 dataSource:(id)a4;
- (id)_createCurrentNPLOIRegistrationOptions;
- (id)_delegateforRegion:(id)a3;
- (id)getCurrentLocation;
- (void)_extractSingleLocationForDelegate:(id)a3;
- (void)_handleDeterminedState:(int64_t)a3 forRegion:(id)a4;
- (void)_notifySingleLocationDelegate:(id)a3 withLocation:(id)a4;
- (void)_notifySingleLocationDelegatesWithLocation:(id)a3;
- (void)_processPredictedContextResult:(id)a3 error:(id)a4;
- (void)_registerForNPLOIMonitoring:(id)a3 forLocation:(id)a4;
- (void)_startUpdateOrStopNPLOIMonitoring;
- (void)_stopNPLOIMonitoring;
- (void)_unregisterForNPLOIMonitoring:(id)a3;
- (void)_updateEntryForRegion:(id)a3;
- (void)_updateExitForRegion:(id)a3;
- (void)_updateRegionState:(int64_t)a3 forRegion:(id)a4;
- (void)beingConfigured:(BOOL)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deregisterForRegionUpdate:(id)a3 completionHandler:(id)a4;
- (void)fetchLocationOfInterestAtLocation:(id)a3 withCompletion:(id)a4;
- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)a3;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)processPredictedContextResult:(id)a3 error:(id)a4;
- (void)registerForNPLOIMonitoring:(id)a3 forLocation:(id)a4;
- (void)registerForRegionUpdate:(id)a3 withDelegate:(id)a4 completionHandler:(id)a5;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)startExtractingSingleLocationForDelegate:(id)a3;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;
- (void)unregisterForNPLOIMonitoring:(id)a3;
@end

@implementation HMDLocation

- (void)sessionDidDisconnect:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_carPlayConnected = 0;
  v5 = [MEMORY[0x277CBEAA8] now];
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = v5;

  v7 = objc_autoreleasePoolPush();
  v8 = self;
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

- (void)sessionDidConnect:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_carPlayConnected = 1;
  lastCarPlaySessionDisconnectionTimeStamp = self->_lastCarPlaySessionDisconnectionTimeStamp;
  self->_lastCarPlaySessionDisconnectionTimeStamp = 0;

  v6 = objc_autoreleasePoolPush();
  v7 = self;
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

- (void)getCoreRoutineLOIForCurrentLocationWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDLocation *)self locationManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
    v17[4] = v10;
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

- (void)fetchLocationOfInterestAtLocation:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLocation *)self routineManager];
  [v8 fetchLocationOfInterestAtLocation:v7 withHandler:v6];
}

- (void)_unregisterForNPLOIMonitoring:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for NPLOI monitoring for delegate: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDLocation *)v7 nploiMonitoringDelegatesToLocations];
  [v10 removeObjectForKey:v4];

  [(HMDLocation *)v7 _startUpdateOrStopNPLOIMonitoring];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForNPLOIMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDLocation_unregisterForNPLOIMonitoring___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_registerForNPLOIMonitoring:(id)a3 forLocation:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for NPLOI monitoring for delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDLocation *)v10 nploiMonitoringDelegatesToLocations];
    [v14 setObject:v7 forKey:v6];

    [(HMDLocation *)v10 _startUpdateOrStopNPLOIMonitoring];
  }

  else
  {
    if (v12)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No location, unregistering if already register for NPLOI monitoring for delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDLocation *)v10 _unregisterForNPLOIMonitoring:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerForNPLOIMonitoring:(id)a3 forLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDLocation_registerForNPLOIMonitoring_forLocation___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_startUpdateOrStopNPLOIMonitoring
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDLocation *)v5 nploiMonitoringDelegatesToLocations];
    *buf = 138543618;
    v31 = v7;
    v32 = 2048;
    v33 = [v8 count];
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Current NPLOI monitoring contexts count is now %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMDLocation *)v5 isNPLOIMonitoringAllowed];
  objc_initWeak(&location, v5);
  if (!v9 || (-[HMDLocation nploiMonitoringDelegatesToLocations](v5, "nploiMonitoringDelegatesToLocations"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count] == 0, v10, v11))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v5;
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
    v13 = v5;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating NPLOI context options for NPLOI monitoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDLocation *)v13 _createCurrentNPLOIRegistrationOptions];
    if (v16)
    {
      v17 = [(HMDLocation *)v13 routineManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__HMDLocation__startUpdateOrStopNPLOIMonitoring__block_invoke;
      v27[3] = &unk_27867D948;
      objc_copyWeak(&v28, &location);
      [v17 startMonitoringPredictedContextWithOptions:v16 completionHandler:v27];

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
  v3 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(HMDLocation *)self routineManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__HMDLocation__stopNPLOIMonitoring__block_invoke;
  v5[3] = &unk_278688A18;
  objc_copyWeak(&v6, &location);
  [v4 stopMonitoringPredictedContextWithHandler:v5];

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

- (void)_processPredictedContextResult:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  v9 = [v8 keyEnumerator];

  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      [v11 updatePredictedContextResult:v13 error:v6];
      v12 = [v9 nextObject];

      v11 = v12;
    }

    while (v12);
  }
}

- (void)processPredictedContextResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDLocation_processPredictedContextResult_error___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)_createCurrentNPLOIRegistrationOptions
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CBEB18];
  v5 = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(HMDLocation *)self nploiMonitoringDelegatesToLocations];
  v8 = [v7 objectEnumerator];

  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      [v6 addObject:v10];
      v11 = [v8 nextObject];

      v10 = v11;
    }

    while (v11);
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
  v3 = [(HMDLocation *)self locationManager];
  v4 = [objc_opt_class() locationServicesEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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
  return v4;
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v5 = a4;
  v6 = [(HMDLocation *)self handlerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDLocation_locationManager_didStartMonitoringForRegion___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(v7);
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did exit the region %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)v9 _handleDeterminedState:2 forRegion:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(v7);
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@LocationManager did enter the region %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocation *)v9 _handleDeterminedState:1 forRegion:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMCLRegionStateAsString();
    [v9 radius];
    v17 = 138543874;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2048;
    v22 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@LocationManager did determine region state: %@, radius : %f", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDLocation *)v11 _handleDeterminedState:a4 forRegion:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 authorizationStatus];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
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
  v11 = [(HMDLocation *)v7 handlerQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HMDLocation_locationManagerDidChangeAuthorization___block_invoke;
  v13[3] = &unk_278688888;
  v13[4] = v7;
  v14 = v5;
  dispatch_async(v11, v13);

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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received error for the location update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDLocation *)v9 handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDLocation_locationManager_didFailWithError___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v9;
  dispatch_async(v12, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Location manager updated locations: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDLocation *)v9 handlerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__HMDLocation_locationManager_didUpdateLocations___block_invoke;
  v15[3] = &unk_27868A750;
  v16 = v7;
  v17 = v9;
  v13 = v7;
  dispatch_async(v12, v15);

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

- (void)_handleDeterminedState:(int64_t)a3 forRegion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:a3];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMRegionStateString();
    v13 = [v6 identifier];
    v14 = regionAsString(v6);
    *buf = 138544130;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Region state is %@ for region %@ %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v15 = [(HMDLocation *)v9 handlerQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDLocation__handleDeterminedState_forRegion___block_invoke;
    v17[3] = &unk_27867D900;
    v17[4] = v9;
    v18 = v6;
    v19 = v7;
    v20 = a3;
    dispatch_async(v15, v17);
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

- (void)beingConfigured:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDLocation_beingConfigured_completionHandler___block_invoke;
  block[3] = &unk_278687F18;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
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

- (void)_updateExitForRegion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(v4);
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the exit for region %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDLocation *)v7 pendingRegionCallbacks];
    [v11 setObject:&unk_283E739B8 forKey:v4];
  }

  else
  {
    v11 = [(HMDLocation *)self _delegateforRegion:v4];
    if (v11)
    {
      if ([v4 notifyOnExit])
      {
        v11 = v11;
        if (objc_opt_respondsToSelector())
        {
          [v11 didExitRegion:v4];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
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

- (void)_updateEntryForRegion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDLocation *)self beingConfigured])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = regionAsString(v4);
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, pending the entry for region %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDLocation *)v7 pendingRegionCallbacks];
    [v11 setObject:&unk_283E739A0 forKey:v4];
  }

  else
  {
    v11 = [(HMDLocation *)self _delegateforRegion:v4];
    if (v11)
    {
      if ([v4 notifyOnEntry])
      {
        v11 = v11;
        if (objc_opt_respondsToSelector())
        {
          [v11 didEnterRegion:v4];
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
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

- (void)_updateRegionState:(int64_t)a3 forRegion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v7);

  if (![(HMDLocation *)self beingConfigured])
  {
    v13 = [MEMORY[0x277CBFC10] hm_regionStateFromCLRegionState:a3];
    v14 = [(HMDLocation *)self regionStates];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v14 setObject:v15 forKey:v6];

    v16 = [(HMDLocation *)self _delegateforRegion:v6];
    if (!v16)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (a3 == 2)
    {
      if ([v6 notifyOnExit])
      {
LABEL_9:
        v17 = v16;
        if (objc_opt_respondsToSelector())
        {
          [v17 didDetermineState:a3 forRegion:v6];
        }

        goto LABEL_16;
      }
    }

    else if (a3 == 1 && ([v6 notifyOnEntry] & 1) != 0)
    {
      goto LABEL_9;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = self;
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
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = regionAsString(v6);
    v23 = 138543874;
    v24 = v11;
    v25 = 2048;
    v26 = a3;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@The system is being configured, not updating region state %tu for region %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_delegateforRegion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDLocation *)self regionStateDelegatesByRegionIdentifier];
  v7 = [v4 identifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = regionAsString(v4);
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Update received for a region %@ that was not found in the region state monitor map, stopping monitoring", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDLocation *)v10 regionStates];
    [v14 removeObjectForKey:v4];

    v15 = [(HMDLocation *)v10 locationManager];
    [v15 stopMonitoringForRegion:v4];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_notifySingleLocationDelegate:(id)a3 withLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = v6;
  if (objc_opt_respondsToSelector())
  {
    [v9 didDetermineLocation:v7];
  }
}

- (void)_notifySingleLocationDelegatesWithLocation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(HMDLocation *)self singleLocationDelegates];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(HMDLocation *)self _notifySingleLocationDelegate:*(*(&v13 + 1) + 8 * v10++) withLocation:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(HMDLocation *)self singleLocationDelegates];
  [v11 removeAllObjects];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForRegionUpdate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLocation_deregisterForRegionUpdate_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)registerForRegionUpdate:(id)a3 withDelegate:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDLocation *)self handlerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDLocation_registerForRegionUpdate_withDelegate_completionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
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
  v2 = [(HMDLocation *)self locationManager];
  v3 = [v2 location];

  return v3;
}

- (void)_extractSingleLocationForDelegate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Extracting single location for delegate: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDLocation *)v7 _canLocationBeExtracted])
  {
    v10 = [(HMDLocation *)v7 singleLocationDelegates];
    v11 = [v10 count];

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v7;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Requesting single location", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [(HMDLocation *)v13 locationManager];
      [v16 requestLocation];
    }

    v17 = [(HMDLocation *)v7 singleLocationDelegates];
    [v17 addObject:v4];

    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDLocation *)v19 singleLocationDelegates];
      v23 = [v22 count];
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
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Passing back nil location because locations can't be extracted", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDLocation *)v25 _notifySingleLocationDelegate:v4 withLocation:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canLocationBeExtracted
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDLocation *)self handlerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLocation *)self locationManager];
  v5 = [objc_opt_class() locationServicesEnabled];

  if ((v5 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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
    v12 = self;
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
    v13 = self;
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

- (void)startExtractingSingleLocationForDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMDLocation *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDLocation_startExtractingSingleLocationForDelegate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopUpdatingLocation
{
  v3 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDLocation_stopUpdatingLocation__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HMDLocation *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDLocation_startUpdatingLocation__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
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
  v2 = [(HMDLocation *)self getCurrentLocation];
  v3 = [v2 isSimulated];

  return v3;
}

- (void)dealloc
{
  v3 = [(HMDLocation *)self locationManager];
  [v3 stopUpdatingLocation];

  v4.receiver = self;
  v4.super_class = HMDLocation;
  [(HMDLocation *)&v4 dealloc];
}

- (HMDLocation)initWithQueue:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(v7);
  v31.receiver = self;
  v31.super_class = HMDLocation;
  v9 = [(HMDLocation *)&v31 init];
  v10 = v9;
  if (v9)
  {
    v9->_beingConfigured = 1;
    objc_storeStrong(&v9->_handlerQueue, a3);
    v11 = [objc_opt_class() bundleForLocationManager];
    v12 = [v8 makeLocationManagerWithEffectiveBundle:v11 delegate:v10 onQueue:v7];
    locationManager = v10->_locationManager;
    v10->_locationManager = v12;

    [(HMDCLLocationManager *)v10->_locationManager setDesiredAccuracy:*MEMORY[0x277CE4210]];
    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    singleLocationDelegates = v10->_singleLocationDelegates;
    v10->_singleLocationDelegates = v14;

    v16 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    regionStateDelegatesByRegionIdentifier = v10->_regionStateDelegatesByRegionIdentifier;
    v10->_regionStateDelegatesByRegionIdentifier = v16;

    v18 = [MEMORY[0x277D01280] defaultManager];
    routineManager = v10->_routineManager;
    v10->_routineManager = v18;

    v20 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    nploiMonitoringDelegatesToLocations = v10->_nploiMonitoringDelegatesToLocations;
    v10->_nploiMonitoringDelegatesToLocations = v20;

    v22 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    pendingRegionMonitoringRequests = v10->_pendingRegionMonitoringRequests;
    v10->_pendingRegionMonitoringRequests = v22;

    v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingRegionCallbacks = v10->_pendingRegionCallbacks;
    v10->_pendingRegionCallbacks = v24;

    v26 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    regionStates = v10->_regionStates;
    v10->_regionStates = v26;

    v28 = objc_alloc_init(MEMORY[0x277CF89F8]);
    [(HMDLocation *)v10 setCarPlaySessionStatus:v28];

    v29 = [(HMDLocation *)v10 carPlaySessionStatus];
    [v29 addSessionObserver:v10];
  }

  return v10;
}

+ (void)timeZoneISOCountryCodeForCLLocationAsync:(id)a3 withCompletion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    v8 = v4;
    v5 = [MEMORY[0x277CBEBB0] localTimeZone];
    v6 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    v7 = [v6 countryCode];
    v8[2](v8, v5, v7);

    v4 = v8;
  }
}

+ (BOOL)isAccurateLocation:(id)a3
{
  v3 = a3;
  [v3 horizontalAccuracy];
  if (v4 >= 0.0)
  {
    [v3 horizontalAccuracy];
    v5 = v6 <= 500.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nextSunsetTimeForLocation:(id)a3 date:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = [HMDLocation _getAlmanacWithLocation:a3, a4];
  v5 = [v4 previousSunset];
  v6 = [v4 sunset];
  v11[1] = v6;
  v7 = [v4 nextSunset];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sunsetTimeForLocation:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:a3];
  v4 = [v3 previousSunrise];
  v5 = [v3 sunrise];
  v11[1] = v5;
  v6 = [v3 nextSunrise];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)nextSunriseTimeForLocation:(id)a3 date:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = [HMDLocation _getAlmanacWithLocation:a3, a4];
  v5 = [v4 previousSunrise];
  v6 = [v4 sunrise];
  v11[1] = v6;
  v7 = [v4 nextSunrise];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)sunriseTimeForLocation:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [HMDLocation _getAlmanacWithLocation:a3];
  v4 = [v3 previousSunset];
  v5 = [v3 sunset];
  v11[1] = v5;
  v6 = [v3 nextSunset];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [HMDLocation findEvent:v7 withGeo:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)findEvent:(id)a3 withGeo:(id)a4
{
  v27[7] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v6 hmf_dateComponents];

  [v7 setHour:12];
  [v7 setMinute:0];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 dateFromComponents:v7];

  v10 = [v5 previousSunrise];
  v27[0] = v10;
  v11 = [v5 previousSunset];
  v27[1] = v11;
  v12 = [v5 sunrise];
  v27[2] = v12;
  v13 = [v5 sunset];
  v27[3] = v13;
  v14 = [v5 nextSunrise];
  v27[4] = v14;
  v15 = [v5 nextSunset];
  v27[5] = v15;
  v27[6] = v9;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_257];
  v18 = 0;
  if ([v17 count])
  {
    v19 = v26;
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
    v22 = [v26 containsObject:v21];

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
    v19 = v26;
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_getAlmanacWithLocation:(id)a3 date:(id)a4
{
  v4 = MEMORY[0x277D0EAB0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v5 coordinate];
  v8 = v7;
  [v5 coordinate];
  v10 = v9;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v6 calculateAstronomicalTimeForLocation:v8 time:v10 altitudeInDegrees:{v11, *MEMORY[0x277D0E7C0]}];

  return v6;
}

+ (id)_getAlmanacWithLocation:(id)a3
{
  v3 = MEMORY[0x277D0EAB0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v4 coordinate];
  v7 = v6;
  [v4 coordinate];
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
  block[4] = a1;
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