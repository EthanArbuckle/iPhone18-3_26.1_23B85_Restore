@interface CAMLibrarySelectionController
- (BOOL)_resultQueue_needsLocationShiftingForLocation:(id)a3;
- (CAMLibrarySelectionController)initWithLocationProvider:(id)a3;
- (CAMLibrarySelectionSignalResult)acquiredSignalResults;
- (CAMPeopleProximityControllerProtocol)proximityController;
- (id)_diagnosticsForLocation:(id)a3 currentLocation:(id)a4;
- (id)_retrieveMetadata;
- (id)librarySelectionDiagnostics;
- (id)tapToRadarAlertController;
- (void)_ensureProximityController;
- (void)_newSessionWithDelegate:(id)a3;
- (void)_ppt_callChangeHandler;
- (void)_resultQueue_clearAcquiredSignals;
- (void)_resultQueue_currentLocationUpdatedAndShiftedIfNeeded:(id)a3;
- (void)_resultQueue_shiftCoordinatesForLocation:(id)a3;
- (void)_resultQueue_startDiscovery;
- (void)_resultQueue_stopDiscovery;
- (void)_resultQueue_updateAcquiredSignalResults;
- (void)_stopAcquiringSignalsAndClear:(BOOL)a3;
- (void)authorizationStatusUpdated:(int)a3;
- (void)currentLocationUpdated:(id)a3;
- (void)didDiscoverIdentity:(id)a3;
- (void)didLoseIdentity:(id)a3;
- (void)ppt_installChangeHandler:(id)a3;
- (void)setAcquiredSignalResults:(id)a3;
- (void)startAcquiringSignals;
- (void)startNewSession;
- (void)stopAcquiringSignals;
- (void)stopAndClearAcquiredSignals;
- (void)userDidPickSharedLibraryMode:(int64_t)a3;
@end

@implementation CAMLibrarySelectionController

- (CAMLibrarySelectionController)initWithLocationProvider:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CAMLibrarySelectionController;
  v6 = [(CAMLibrarySelectionController *)&v16 init];
  if (v6)
  {
    v7 = +[CAMCaptureCapabilities capabilities];
    objc_storeStrong(&v6->_locationProvider, a3);
    v8 = objc_opt_class();
    smartSharingMetadataProvider = v6->_smartSharingMetadataProvider;
    v6->_smartSharingMetadataProvider = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    resultQueue_identitiesInProximity = v6->__resultQueue_identitiesInProximity;
    v6->__resultQueue_identitiesInProximity = v10;

    v6->__resultQueue_authorizationStatus = -1;
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.camera.library-selection.result-queue", v12);
    resultQueue = v6->_resultQueue;
    v6->_resultQueue = v13;

    v6->_peopleProximityDetectionSupported = [v7 peopleProximityDetectionSupported];
    [(CAMLibrarySelectionController *)v6 _newSessionWithDelegate:0];
  }

  return v6;
}

- (CAMPeopleProximityControllerProtocol)proximityController
{
  [(CAMLibrarySelectionController *)self _ensureProximityController];
  proximityController = self->_proximityController;

  return proximityController;
}

- (void)userDidPickSharedLibraryMode:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v6 = os_log_create("com.apple.camera", "SharedLibrary");
  v7 = v6;
  if (v5 == 2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CAMSharedLibraryModeDescription(a3);
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] userDidPickSharedLibraryMode: %{public}@", &v17, 0xCu);
    }

    v9 = [(CAMLibrarySelectionController *)self session];
    [v9 updateWithMode:a3];

    v10 = [MEMORY[0x1E695DF00] date];
    v11 = +[CAMUserPreferences preferences];
    [v11 setSharedLibraryLastUserActionDate:v10];

    v12 = [(CAMLibrarySelectionController *)self acquiredSignalResults];
    v13 = [v12 currentLocation];
    v14 = [v13 copy];
    v15 = +[CAMUserPreferences preferences];
    [v15 setSharedLibraryLastUserActionLocation:v14];

    v16 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] User overriden state: stopping signal acquisition.", &v17, 2u);
    }

    [(CAMLibrarySelectionController *)self stopAcquiringSignals];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CAMLibrarySelectionController *)a3 userDidPickSharedLibraryMode:v7];
    }
  }
}

- (void)startNewSession
{
  v3 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] startNewSession", v5, 2u);
  }

  v4 = [(CAMLibrarySelectionSession *)self->_session delegate];
  [(CAMLibrarySelectionController *)self _newSessionWithDelegate:v4];

  [(CAMLibrarySelectionSession *)self->_session notifyResetIfNeeded];
}

- (void)startAcquiringSignals
{
  v3 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] startAcquiringSignals", buf, 2u);
  }

  [(CAMLibrarySelectionLocationProvider *)self->_locationProvider addListenerForLocationUpdates:self];
  [(CAMLibrarySelectionController *)self _ensureProximityController];
  objc_initWeak(buf, self);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CAMLibrarySelectionController_startAcquiringSignals__block_invoke;
  block[3] = &unk_1E76F8580;
  objc_copyWeak(&v6, buf);
  dispatch_async(resultQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __54__CAMLibrarySelectionController_startAcquiringSignals__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resultQueue_startDiscovery];
}

- (void)stopAcquiringSignals
{
  v3 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] stopAcquiringSignals", v4, 2u);
  }

  [(CAMLibrarySelectionController *)self _stopAcquiringSignalsAndClear:0];
}

- (void)stopAndClearAcquiredSignals
{
  v3 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] stopAndClearAcquiredSignals", v4, 2u);
  }

  [(CAMLibrarySelectionController *)self _stopAcquiringSignalsAndClear:1];
}

- (void)_stopAcquiringSignalsAndClear:(BOOL)a3
{
  v3 = a3;
  [(CAMLibrarySelectionController *)self _ensureProximityController];
  [(CAMLibrarySelectionLocationProvider *)self->_locationProvider removeListenerForLocationUpdates:self];
  objc_initWeak(&location, self);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CAMLibrarySelectionController__stopAcquiringSignalsAndClear___block_invoke;
  block[3] = &unk_1E76F88B0;
  objc_copyWeak(&v7, &location);
  v8 = v3;
  dispatch_async(resultQueue, block);
  if (v3)
  {
    [(CAMLibrarySelectionController *)self setAcquiredSignalResults:0];
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __63__CAMLibrarySelectionController__stopAcquiringSignalsAndClear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resultQueue_stopDiscovery];

  if (*(a1 + 40) == 1)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _resultQueue_clearAcquiredSignals];
  }
}

- (CAMLibrarySelectionSignalResult)acquiredSignalResults
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  acquiredSignalResults = self->_acquiredSignalResults;

  return acquiredSignalResults;
}

- (void)didDiscoverIdentity:(id)a3
{
  resultQueue = self->_resultQueue;
  v5 = a3;
  dispatch_assert_queue_V2(resultQueue);
  [(NSMutableSet *)self->__resultQueue_identitiesInProximity addObject:v5];

  [(CAMLibrarySelectionController *)self _resultQueue_updateAcquiredSignalResults];

  [(CAMLibrarySelectionController *)self _ppt_callChangeHandler];
}

- (void)didLoseIdentity:(id)a3
{
  resultQueue = self->_resultQueue;
  v5 = a3;
  dispatch_assert_queue_V2(resultQueue);
  [(NSMutableSet *)self->__resultQueue_identitiesInProximity removeObject:v5];

  [(CAMLibrarySelectionController *)self _resultQueue_updateAcquiredSignalResults];
}

- (void)authorizationStatusUpdated:(int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_resultQueue);
  if (self->__resultQueue_authorizationStatus != a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Retrieved authorization status update: %d", v7, 8u);
    }

    self->__resultQueue_authorizationStatus = a3;
    if (!CAMCanAccessLocationWithAuthorizationStatus(a3))
    {
      resultQueue_currentLocation = self->__resultQueue_currentLocation;
      self->__resultQueue_currentLocation = 0;
    }

    [(CAMLibrarySelectionController *)self _resultQueue_updateAcquiredSignalResults];
  }
}

- (void)currentLocationUpdated:(id)a3
{
  resultQueue = self->_resultQueue;
  v5 = a3;
  dispatch_assert_queue_V2(resultQueue);
  if ([(CAMLibrarySelectionController *)self _resultQueue_needsLocationShiftingForLocation:v5])
  {
    [(CAMLibrarySelectionController *)self _resultQueue_shiftCoordinatesForLocation:v5];
  }

  else
  {
    [(CAMLibrarySelectionController *)self _resultQueue_currentLocationUpdatedAndShiftedIfNeeded:v5];
  }
}

- (void)_newSessionWithDelegate:(id)a3
{
  v9 = a3;
  v4 = +[CAMUserPreferences preferences];
  v5 = [v4 captureConfiguration];
  v6 = [v5 sharedLibraryMode];

  v7 = [[CAMLibrarySelectionSession alloc] initWithMode:v6];
  session = self->_session;
  self->_session = v7;

  if (v9)
  {
    [(CAMLibrarySelectionSession *)self->_session setDelegate:v9];
  }
}

- (void)_ensureProximityController
{
  if (self->_peopleProximityDetectionSupported && !self->_proximityController)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v3 = [[CAMPeopleProximityController alloc] initWithDelegate:self delegateQueue:self->_resultQueue];
    proximityController = self->_proximityController;
    self->_proximityController = v3;

    MEMORY[0x1EEE66BB8](v3, proximityController);
  }
}

- (void)_resultQueue_startDiscovery
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_resultQueue);
  v3 = [(CAMLibrarySelectionController *)self _retrieveMetadata];
  v4 = os_log_create("com.apple.camera", "SharedLibrary");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138477827;
      v31 = v3;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Retrieved smart sharing metadata: %{private}@", buf, 0xCu);
    }

    [(CAMLibrarySelectionController *)self set_resultQueue_smartSharingMetadata:v3];
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v3 identities];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [CAMLibrarySelectionIdentity identityWithPhotosIdentity:*(*(&v25 + 1) + 8 * v10)];
          [v6 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = +[CAMCaptureCapabilities capabilities];
    v13 = [v12 peopleProximityDetectAdditionalEmail];
    v14 = [v13 length] == 0;

    if (!v14)
    {
      v15 = [CAMLibrarySelectionIdentity alloc];
      v16 = [v12 peopleProximityDetectAdditionalEmail];
      v17 = [(CAMLibrarySelectionIdentity *)v15 initWithPhoneNumber:0 emailAddress:v16 contactIdentifiers:0];

      [v6 addObject:v17];
    }

    v18 = [(CAMLibrarySelectionController *)self proximityController];
    [v18 startDiscoveryForIdentities:v6];

    objc_initWeak(buf, self);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __60__CAMLibrarySelectionController__resultQueue_startDiscovery__block_invoke;
    v22 = &unk_1E76F7DC0;
    objc_copyWeak(&v24, buf);
    v4 = v6;
    v23 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], &v19);
    [(CAMLibrarySelectionController *)self _resultQueue_updateAcquiredSignalResults:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Unable to retrieve smart sharing metadata", buf, 2u);
  }
}

void __60__CAMLibrarySelectionController__resultQueue_startDiscovery__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) allObjects];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIdentitiesToScan:v3];
}

- (void)_resultQueue_stopDiscovery
{
  dispatch_assert_queue_V2(self->_resultQueue);
  v3 = [(CAMLibrarySelectionController *)self proximityController];
  [v3 stopDiscovery];
}

- (void)_resultQueue_clearAcquiredSignals
{
  dispatch_assert_queue_V2(self->_resultQueue);
  [(NSMutableSet *)self->__resultQueue_identitiesInProximity removeAllObjects];
  resultQueue_currentLocation = self->__resultQueue_currentLocation;
  self->__resultQueue_currentLocation = 0;

  resultQueue_needsLocationShifting = self->__resultQueue_needsLocationShifting;
  self->__resultQueue_needsLocationShifting = 0;
}

- (void)_resultQueue_updateAcquiredSignalResults
{
  dispatch_assert_queue_V2(self->_resultQueue);
  v3 = [(NSMutableSet *)self->__resultQueue_identitiesInProximity allObjects];
  resultQueue_authorizationStatus = self->__resultQueue_authorizationStatus;
  v5 = self->__resultQueue_currentLocation;
  v6 = [(CAMLibrarySelectionController *)self _resultQueue_smartSharingMetadata];
  v7 = [v6 homeLocations];

  v8 = [(CAMLibrarySelectionController *)self _resultQueue_smartSharingMetadata];
  v9 = [v8 frequentLocations];

  v10 = [CAMLibrarySelectionSignalResult librarySelectionSignalResultWithIdentitiesInProximity:v3 currentLocation:v5 locationAuthorizationStatus:resultQueue_authorizationStatus homeLocations:v7 frequentLocations:v9];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CAMLibrarySelectionController__resultQueue_updateAcquiredSignalResults__block_invoke;
  block[3] = &unk_1E76F7DC0;
  objc_copyWeak(&v14, &location);
  v13 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__CAMLibrarySelectionController__resultQueue_updateAcquiredSignalResults__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAcquiredSignalResults:v1];
}

- (void)_resultQueue_currentLocationUpdatedAndShiftedIfNeeded:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(self->_resultQueue);
  p_resultQueue_currentLocation = &self->__resultQueue_currentLocation;
  resultQueue_currentLocation = self->__resultQueue_currentLocation;
  if (!resultQueue_currentLocation || (-[CLLocation coordinate](resultQueue_currentLocation, "coordinate"), v9 = v8, [v5 coordinate], v9 < v10) || v9 > v10 || (-[CLLocation coordinate](*p_resultQueue_currentLocation, "coordinate"), v12 = v11, objc_msgSend(v5, "coordinate"), v12 < v13) || v12 > v13 || (-[CLLocation horizontalAccuracy](*p_resultQueue_currentLocation, "horizontalAccuracy"), v15 = v14, objc_msgSend(v5, "horizontalAccuracy"), v15 < v16) || v15 > v16 || (-[CLLocation timestamp](*p_resultQueue_currentLocation, "timestamp"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceNow"), v19 = v18, v17, v19 >= 5.0))
  {
    v20 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138477827;
      v22 = v5;
      _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Retrieved current location update: %{private}@", &v21, 0xCu);
    }

    objc_storeStrong(&self->__resultQueue_currentLocation, a3);
    [(CAMLibrarySelectionController *)self _resultQueue_updateAcquiredSignalResults];
  }
}

- (BOOL)_resultQueue_needsLocationShiftingForLocation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_resultQueue);
  resultQueue_needsLocationShifting = self->__resultQueue_needsLocationShifting;
  if (!resultQueue_needsLocationShifting)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __79__CAMLibrarySelectionController__resultQueue_needsLocationShiftingForLocation___block_invoke;
    v22 = &unk_1E76F88D8;
    v23 = self;
    v24 = v4;
    v6 = _Block_copy(&v19);
    v7 = MEMORY[0x1E696AD98];
    v12 = v6[2](v6, v8, v9, v10, v11);
    v13 = [v7 numberWithBool:{v12, v19, v20, v21, v22, v23}];
    v14 = self->__resultQueue_needsLocationShifting;
    self->__resultQueue_needsLocationShifting = v13;

    v15 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->__resultQueue_needsLocationShifting;
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Needs location shifting resolved to: %{public}@", buf, 0xCu);
    }

    resultQueue_needsLocationShifting = self->__resultQueue_needsLocationShifting;
  }

  v17 = [(NSNumber *)resultQueue_needsLocationShifting BOOLValue];

  return v17;
}

uint64_t __79__CAMLibrarySelectionController__resultQueue_needsLocationShiftingForLocation___block_invoke(uint64_t a1)
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 librarySelectionMockLocationShiftingEnabled];

  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] librarySelectionMockLocationShiftingEnabled: YES", buf, 2u);
    }

    return 1;
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && ([*(*(a1 + 32) + 48) locationShiftingRequired])
  {
    [*(a1 + 40) coordinate];
    v7 = v6;
    [*(a1 + 40) coordinate];
    v8 = MEMORY[0x1E69A1E80];

    return [v8 isLocationShiftRequiredForCoordinate:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] locationShiftingRequiredFromCache: NO", v10, 2u);
    }

    return 0;
  }
}

- (void)_resultQueue_shiftCoordinatesForLocation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_resultQueue);
  if (!self->__resultQueue_locationShifter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69A1E80]);
    resultQueue_locationShifter = self->__resultQueue_locationShifter;
    self->__resultQueue_locationShifter = v5;
  }

  [v4 coordinate];
  v8 = v7;
  [v4 coordinate];
  v10 = v9;
  objc_initWeak(&location, self);
  v11 = self->__resultQueue_locationShifter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CAMLibrarySelectionController__resultQueue_shiftCoordinatesForLocation___block_invoke;
  v13[3] = &unk_1E76F8900;
  v12 = v4;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(GEOLocationShifter *)v11 shiftCoordinate:v13 accuracy:0 withCompletionHandler:&__block_literal_global_8 mustGoToNetworkCallback:self->_resultQueue errorHandler:v8 callbackQueue:v10, 0.0];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __74__CAMLibrarySelectionController__resultQueue_shiftCoordinatesForLocation___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = CLLocationCoordinate2DMake(a2, a3);
  v7 = objc_alloc(MEMORY[0x1E6985C40]);
  [*(a1 + 32) altitude];
  v9 = v8;
  [*(a1 + 32) verticalAccuracy];
  v11 = v10;
  v12 = [*(a1 + 32) timestamp];
  v13 = [v7 initWithCoordinate:v12 altitude:v6.latitude horizontalAccuracy:v6.longitude verticalAccuracy:v9 timestamp:{a4, v11}];

  v14 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138477827;
    v17 = v13;
    _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Successfully shifted current location update: %{private}@", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resultQueue_currentLocationUpdatedAndShiftedIfNeeded:v13];
}

void __74__CAMLibrarySelectionController__resultQueue_shiftCoordinatesForLocation___block_invoke_232(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__CAMLibrarySelectionController__resultQueue_shiftCoordinatesForLocation___block_invoke_232_cold_1(v2, v3);
  }
}

- (void)setAcquiredSignalResults:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_storeStrong(&self->_acquiredSignalResults, a3);
  if (v5)
  {
    v6 = [v5 suggestsSharing];
    [(CAMLibrarySelectionSession *)self->_session updateWithResult:v5];
    if (v6)
    {
      v7 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] Acquired signal results are inferring sharing: stopping signal acquisition.", v14, 2u);
      }

      [(CAMLibrarySelectionController *)self stopAcquiringSignals];
    }

    v8 = +[CAMUserPreferences preferences];
    if (v6)
    {
      v9 = [MEMORY[0x1E695DF00] date];
      [v8 setSharedLibraryLastDiscoveryDate:v9];
    }

    if ([v5 cameraHasAccessToLocation])
    {
      v10 = [v5 currentLocation];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 copy];
        [v8 setSharedLibraryLastLocation:v12];

        [v8 setSharedLibraryLastLocationAcquiredDuringTrip:{objc_msgSend(v5, "isOnTrip")}];
        if (v6)
        {
          v13 = [v11 copy];
          [v8 setSharedLibraryLastDiscoveryLocation:v13];
        }
      }
    }

    else if (!CAMLocationAccessPendingOrNotDeterminedWithAuthorizationStatus([v5 locationAuthorizationStatus]))
    {
      [v8 setSharedLibraryLastLocation:0];
      [v8 setSharedLibraryLastUserActionLocation:0];
      [v8 setSharedLibraryLastDiscoveryLocation:0];
      [v8 setSharedLibraryLastLocationAcquiredDuringTrip:0];
    }
  }
}

- (id)_retrieveMetadata
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 librarySelectionMockAutomationModeEnabled];

  if (v4)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionController] mockAutomationMode is enabled, providing mock PHCameraSmartSharingMetadata", v17, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E6978720]) initWithPhoneNumber:0 emailAddress:@"mockAutomationMode@example.com" contactIdentifiers:0];
    v7 = objc_alloc(MEMORY[0x1E695FBB0]);
    v8 = CLLocationCoordinate2DMake(1.0, 2.0);
    v9 = [v7 initWithCenter:@"mockAutomationModeHome" radius:v8.latitude identifier:{v8.longitude, 3.0}];
    v10 = +[CAMCaptureCapabilities capabilities];
    v11 = [v10 librarySelectionMockLocationShiftingEnabled];

    v12 = objc_alloc(MEMORY[0x1E6978728]);
    v19[0] = v6;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v18 = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v12 initWithLibraryScopeIdentifier:@"mockAutomationModeLibraryScopeIdentifier" identities:v13 homeLocations:v14 frequentLocations:0 locationShiftingRequired:v11];
  }

  else
  {
    v6 = [(CAMLibrarySelectionController *)self smartSharingMetadataProvider];
    v15 = [v6 retrieveMetadataForPhotoLibrary:0];
  }

  return v15;
}

- (void)ppt_installChangeHandler:(id)a3
{
  [(CAMLibrarySelectionController *)self setPpt_changeHandler:a3];

  [(CAMLibrarySelectionController *)self _ppt_callChangeHandler];
}

- (void)_ppt_callChangeHandler
{
  v3 = [(CAMLibrarySelectionController *)self ppt_changeHandler];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__CAMLibrarySelectionController__ppt_callChangeHandler__block_invoke;
    v5[3] = &unk_1E76F83B0;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (id)librarySelectionDiagnostics
{
  v97[9] = *MEMORY[0x1E69E9840];
  v85 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v83 = [(CAMLibrarySelectionController *)self acquiredSignalResults];
  v3 = [v83 resultDiagnostics];
  [v85 setObject:v3 forKeyedSubscript:@"acquiredSignalResults"];

  v4 = +[CAMCaptureCapabilities capabilities];
  v96[0] = @"librarySelectionSupported";
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "librarySelectionSupported")}];
  v97[0] = v80;
  v96[1] = @"librarySelectionAutoOnResetTimeout";
  v5 = MEMORY[0x1E696AD98];
  [v4 librarySelectionAutoOnResetTimeout];
  v6 = [v5 numberWithDouble:?];
  v97[1] = v6;
  v96[2] = @"librarySelectionUserChoiceResetTimeout";
  v7 = MEMORY[0x1E696AD98];
  [v4 librarySelectionUserChoiceResetTimeout];
  v8 = [v7 numberWithDouble:?];
  v97[2] = v8;
  v96[3] = @"librarySelectionTripResetTimeout";
  v9 = MEMORY[0x1E696AD98];
  [v4 librarySelectionTripResetTimeout];
  v10 = [v9 numberWithDouble:?];
  v97[3] = v10;
  v96[4] = @"librarySelectionSameLocationResetTimeout";
  v11 = MEMORY[0x1E696AD98];
  [v4 librarySelectionSameLocationResetTimeout];
  v12 = [v11 numberWithDouble:?];
  v97[4] = v12;
  v96[5] = @"deviceProximityDetectionSupported";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "peopleProximityDetectionSupported")}];
  v97[5] = v13;
  v96[6] = @"deviceProximityPersistenceSupported";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "peopleProximityPersistenceSupported")}];
  v97[6] = v14;
  v96[7] = @"deviceProximityUsesDeviceDiscovery";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "peopleProximityUsesDeviceDiscovery")}];
  v97[7] = v15;
  v96[8] = @"deviceProximityDetectAdditionalEmail";
  v82 = v4;
  v16 = [v4 peopleProximityDetectAdditionalEmail];
  v17 = [v16 length];
  v18 = @"yes";
  if (!v17)
  {
    v18 = @"no";
  }

  v97[8] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:9];
  [v85 setObject:v19 forKeyedSubscript:@"capabilitiesDiagnostics"];

  v20 = +[CAMUserPreferences preferences];
  v94[0] = @"sharedLibraryEnabled";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "sharedLibraryEnabled")}];
  v95[0] = v21;
  v94[1] = @"sharedLibrarySwitchEnabled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "sharedLibrarySwitchEnabled")}];
  v95[1] = v22;
  v94[2] = @"sharedLibraryAutoBehaviorEnabled";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "sharedLibraryAutoBehaviorEnabled")}];
  v95[2] = v23;
  v94[3] = @"defaultToSharedLibraryEnabled";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "defaultToSharedLibraryEnabled")}];
  v95[3] = v24;
  v94[4] = @"shareWhenAtHomeEnabled";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "shareWhenAtHomeEnabled")}];
  v95[4] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:5];
  [v85 setObject:v26 forKeyedSubscript:@"preferencesDiagnostics"];

  v27 = [(CAMLibrarySelectionController *)self acquiredSignalResults];
  v28 = [v27 currentLocation];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = [v20 sharedLibraryLastLocation];
  }

  v31 = v30;

  v92[0] = @"sharedLibraryLastLocation";
  v78 = [v20 sharedLibraryLastLocation];
  v77 = [(CAMLibrarySelectionController *)self _diagnosticsForLocation:v78 currentLocation:v31];
  v93[0] = v77;
  v92[1] = @"sharedLibraryLastLocationAcquiredDuringTrip";
  v76 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "sharedLibraryLastLocationAcquiredDuringTrip")}];
  v93[1] = v76;
  v92[2] = @"sharedLibraryLastDiscoveryDate";
  v75 = [v20 sharedLibraryLastDiscoveryDate];
  v32 = [v75 description];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = @"none";
  }

  v93[2] = v34;
  v92[3] = @"sharedLibraryLastDiscoveryTimeInterval";
  v35 = MEMORY[0x1E696AD98];
  v74 = [v20 sharedLibraryLastDiscoveryDate];
  [v74 timeIntervalSinceNow];
  v73 = [v35 numberWithDouble:?];
  v93[3] = v73;
  v92[4] = @"sharedLibraryLastDiscoveryLocation";
  v36 = [v20 sharedLibraryLastDiscoveryLocation];
  v37 = v31;
  v79 = v31;
  v38 = [(CAMLibrarySelectionController *)self _diagnosticsForLocation:v36 currentLocation:v31];
  v93[4] = v38;
  v92[5] = @"sharedLibraryLastUserActionDate";
  v39 = [v20 sharedLibraryLastUserActionDate];
  v40 = [v39 description];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = @"none";
  }

  v93[5] = v42;
  v92[6] = @"sharedLibraryLastUserActionTimeInterval";
  v43 = MEMORY[0x1E696AD98];
  [v20 sharedLibraryLastUserActionDate];
  v44 = v20;
  v45 = v81 = v20;
  [v45 timeIntervalSinceNow];
  v46 = [v43 numberWithDouble:?];
  v93[6] = v46;
  v92[7] = @"sharedLibraryLastUserActionLocation";
  v47 = [v44 sharedLibraryLastUserActionLocation];
  v48 = [(CAMLibrarySelectionController *)self _diagnosticsForLocation:v47 currentLocation:v37];
  v93[7] = v48;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:8];
  [v85 setObject:v49 forKeyedSubscript:@"preferencesAlgorithmsDiagnostics"];

  v50 = [(CAMLibrarySelectionController *)self session];
  v91[0] = &unk_1F16C7C40;
  v90[0] = @"algorithmVersion";
  v90[1] = @"initialMode";
  v51 = CAMSharedLibraryModeDescription([v50 initialMode]);
  v91[1] = v51;
  v90[2] = @"currentMode";
  v52 = CAMSharedLibraryModeDescription([v50 currentMode]);
  v91[2] = v52;
  v90[3] = @"overriddenByUser";
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "overriddenByUser")}];
  v91[3] = v53;
  v90[4] = @"userWasPreviouslyOnTrip";
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "userWasPreviouslyOnTrip")}];
  v91[4] = v54;
  v90[5] = @"canResetToDefaultMode";
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "canResetToDefaultMode")}];
  v91[5] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:6];
  [v85 setObject:v56 forKeyedSubscript:@"sessionDiagnostics"];

  v88[0] = @"timeToDetectDevicesInProximity";
  v57 = MEMORY[0x1E696AD98];
  [v50 timeToDetectDevicesInProximity];
  v58 = [v57 numberWithDouble:?];
  v89[0] = v58;
  v88[1] = @"timeToAcquireFirstLocation";
  v59 = MEMORY[0x1E696AD98];
  [v50 timeToAcquireFirstLocation];
  v60 = [v59 numberWithDouble:?];
  v89[1] = v60;
  v88[2] = @"timeToAcquireFirstPreciseLocation";
  v61 = MEMORY[0x1E696AD98];
  [v50 timeToAcquireFirstPreciseLocation];
  v62 = [v61 numberWithDouble:?];
  v89[2] = v62;
  v88[3] = @"timeForSmartSharingAutoDecision";
  v63 = MEMORY[0x1E696AD98];
  [v50 timeForSmartSharingAutoDecision];
  v64 = [v63 numberWithDouble:?];
  v89[3] = v64;
  v88[4] = @"timeForUserManualOverride";
  v65 = MEMORY[0x1E696AD98];
  [v50 timeForUserManualOverride];
  v66 = [v65 numberWithDouble:?];
  v89[4] = v66;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:5];
  [v85 setObject:v67 forKeyedSubscript:@"sessionPerformance"];

  v86 = @"countOfIdentities";
  v68 = MEMORY[0x1E696AD98];
  v69 = [(CAMLibrarySelectionController *)self identitiesToScan];
  v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(v69, "count")}];
  v87 = v70;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  [v85 setObject:v71 forKeyedSubscript:@"scannerDiagnostics"];

  return v85;
}

- (id)_diagnosticsForLocation:(id)a3 currentLocation:(id)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      [v6 distanceFromLocation:v5];
      v9 = v8;
    }

    else
    {
      v9 = *MEMORY[0x1E6985C30];
    }

    v17[0] = @"coordinateIsValid";
    v11 = MEMORY[0x1E696AD98];
    [v5 coordinate];
    v12 = [v11 numberWithBool:CLLocationCoordinate2DIsValid(v20)];
    v18[0] = v12;
    v17[1] = @"distanceFromCurrentLocation";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v18[1] = v13;
    v17[2] = @"horizontalAccuracy";
    v14 = MEMORY[0x1E696AD98];
    [v5 horizontalAccuracy];
    v15 = [v14 numberWithDouble:?];
    v18[2] = v15;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  }

  else
  {
    v10 = &unk_1F16C9038;
  }

  return v10;
}

- (id)tapToRadarAlertController
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CAMLibrarySelectionController *)self sharedLibraryMode];
  v5 = v4;
  if (v4 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E76FB3D8[v4];
  }

  if (CAMSharedLibraryModeIsOn(v4))
  {
    [v3 addObject:@"I am not near a participant"];
    v7 = @"I am not interested to share in this context";
    v8 = @"I am at home and do not want to share";
  }

  else
  {
    v7 = @"I am at home and would like to share";
    v8 = @"I am near a participant";
  }

  [v3 addObject:v8];
  [v3 addObject:v7];
  v9 = @"I am in a context interesting to share";
  if (v5 && v5 != 3)
  {
    if (v5 != 5)
    {
      goto LABEL_12;
    }

    v9 = @"I am in a context still interesting to share";
  }

  [v3 addObject:v9];
LABEL_12:
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Goldilocks] [Live-on Feedback] Unexpected state while '%@'", v6];
  v26 = [(CAMLibrarySelectionController *)self librarySelectionDiagnostics];
  v10 = [CAMTapToRadarUtilities writeDictionary:"writeDictionary:toPlistFileWithName:" toPlistFileWithName:?];
  v27 = self;
  v25 = v10;
  if (v10)
  {
    v41[0] = v10;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  }

  else
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:@"If you expect to be in another mode preferredStyle:{please select an option below to file a radar:", 1}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = v11;
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = MEMORY[0x1E69DC648];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke;
        v32[3] = &unk_1E76FB3B8;
        v33 = v29;
        v34 = v18;
        v35 = v28;
        v20 = [v19 actionWithTitle:v18 style:0 handler:v32];
        v11 = v17;
        [v17 addAction:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke_2;
  v31[3] = &unk_1E76F89F0;
  v31[4] = v27;
  v21 = [MEMORY[0x1E69DC648] actionWithTitle:@"Reset to default (personal)" style:2 handler:v31];
  [v11 addAction:v21];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke_3;
  v30[3] = &unk_1E76F89F0;
  v30[4] = v27;
  v22 = [MEMORY[0x1E69DC648] actionWithTitle:@"Reset and rescan" style:2 handler:v30];
  [v11 addAction:v22];

  v23 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v11 addAction:v23];

  return v11;
}

void __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke(void *a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\nReason:\n%@\n\nDetails:\n...", a1[4], a1[5]];
  BYTE2(v2) = 0;
  LOWORD(v2) = 257;
  [CAMTapToRadarUtilities fileRadarWithTitle:"fileRadarWithTitle:description:classification:reproducibility:componentID:componentName:componentVersion:keywordIdsString:attachmentURLs:includeSysDiagnose:includePhotosDiagnose:includeHIDContinuousRecordings:" description:a1[4] classification:v3 reproducibility:@"Other Bug" componentID:@"Not Applicable" componentName:@"1393606" componentVersion:@"Photos Shared Library Algorithms" keywordIdsString:@"all" attachmentURLs:@"1510028" includeSysDiagnose:a1[6] includePhotosDiagnose:v2 includeHIDContinuousRecordings:?];
}

uint64_t __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke_2(uint64_t a1)
{
  +[CAMUserPreferences removeSharedLibraryAlgorithmsPreferences];
  v2 = +[CAMUserPreferences preferences];
  [v2 _resetSharedLibraryAlgorithmsPreferences];

  v3 = *(a1 + 32);

  return [v3 startNewSession];
}

uint64_t __70__CAMLibrarySelectionController_TapToRadar__tapToRadarAlertController__block_invoke_3(uint64_t a1)
{
  +[CAMUserPreferences removeSharedLibraryAlgorithmsPreferences];
  v2 = +[CAMUserPreferences preferences];
  [v2 _resetSharedLibraryAlgorithmsPreferences];

  [*(a1 + 32) stopAndClearAcquiredSignals];
  [*(a1 + 32) startNewSession];
  v3 = *(a1 + 32);

  return [v3 startAcquiringSignals];
}

- (void)userDidPickSharedLibraryMode:(unint64_t)a1 .cold.1(unint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CAMSharedLibraryModeDescription(a1);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "[CAMLibrarySelectionController] userDidPickSharedLibraryMode invalid mode: %{public}@", &v4, 0xCu);
}

void __74__CAMLibrarySelectionController__resultQueue_shiftCoordinatesForLocation___block_invoke_232_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "[CAMLibrarySelectionController] Failed to shift coordinate with error: %{public}@. Ignoring location update.", &v2, 0xCu);
}

@end