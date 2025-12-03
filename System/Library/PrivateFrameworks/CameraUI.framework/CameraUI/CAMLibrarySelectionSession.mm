@interface CAMLibrarySelectionSession
- (BOOL)_applyAutoResetModeAndNotify:(BOOL)notify;
- (BOOL)_canResetDuringSessionWithResult:(id)result;
- (BOOL)_canTransitionToAutoOn;
- (BOOL)_shouldResetDuringSessionWithResult:(id)result;
- (BOOL)_shouldResetSessionBasedOnTimeoutDuringTrip:(BOOL)trip atSameLocation:(BOOL)location;
- (BOOL)_userWasPreviouslyOnTrip;
- (BOOL)notifyResetIfNeeded;
- (BOOL)updateWithMode:(int64_t)mode;
- (BOOL)updateWithResult:(id)result;
- (CAMLibrarySelectionDelegate)delegate;
- (CAMLibrarySelectionSession)initWithMode:(int64_t)mode;
- (int64_t)_autoResetMode;
- (int64_t)_defaultMode;
@end

@implementation CAMLibrarySelectionSession

- (CAMLibrarySelectionSession)initWithMode:(int64_t)mode
{
  v27 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CAMLibrarySelectionSession;
  v4 = [(CAMLibrarySelectionSession *)&v20 init];
  if (v4)
  {
    v5 = +[CAMUserPreferences preferences];
    date = [MEMORY[0x1E695DF00] date];
    launchDate = v4->_launchDate;
    v4->_launchDate = date;

    v4->_initialMode = mode;
    v4->_currentMode = mode;
    v4->_userInteractionsCount = 0;
    v4->_restoredFromPreferences = +[CAMUserPreferences hasSharedLibraryAlgorithmsPreferences];
    initialMode = v4->_initialMode;
    v4->_canResetToDefaultMode = initialMode != [(CAMLibrarySelectionSession *)v4 _defaultMode];
    if (([v5 sharedLibraryAutoBehaviorEnabled] & 1) == 0)
    {
      v4->_canResetToDefaultMode = 0;
    }

    v4->_overriddenByUser = CAMSharedLibraryModeIsUserState(v4->_currentMode);
    v4->_userWasPreviouslyOnTrip = [(CAMLibrarySelectionSession *)v4 _userWasPreviouslyOnTrip];
    sharedLibraryLastLocation = [v5 sharedLibraryLastLocation];

    if (v4->_canResetToDefaultMode && [(CAMLibrarySelectionSession *)v4 _shouldResetSessionBasedOnTimeoutDuringTrip:v4->_userWasPreviouslyOnTrip atSameLocation:sharedLibraryLastLocation != 0])
    {
      [(CAMLibrarySelectionSession *)v4 _applyAutoResetModeAndNotify:0];
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *&v4->_timeToDetectDevicesInProximity = _Q0;
    *&v4->_timeToAcquireFirstPreciseLocation = _Q0;
    v4->_timeForUserManualOverride = -1.0;
    CAMSignpostsSmartSharingAutoDecisionBegin();
    CAMSignpostsUserManualOverrideBegin();
    v15 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CAMSharedLibraryModeDescription(v4->_initialMode);
      v17 = CAMSharedLibraryModeDescription(v4->_currentMode);
      restoredFromPreferences = v4->_restoredFromPreferences;
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 1026;
      v26 = restoredFromPreferences;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionSession] Session created with initial mode: %{public}@, current mode: %{public}@, restoredFromPreferences: %{public}d", buf, 0x1Cu);
    }
  }

  return v4;
}

- (BOOL)updateWithMode:(int64_t)mode
{
  v15 = *MEMORY[0x1E69E9840];
  currentMode = self->_currentMode;
  if (currentMode != mode)
  {
    self->_currentMode = mode;
    self->_canResetToDefaultMode = 0;
    IsUserState = CAMSharedLibraryModeIsUserState(mode);
    self->_overriddenByUser = IsUserState;
    if (IsUserState)
    {
      ++self->_userInteractionsCount;
      if (self->_timeForUserManualOverride < 0.0)
      {
        [(NSDate *)self->_launchDate timeIntervalSinceNow];
        self->_timeForUserManualOverride = fabs(v7);
        CAMSignpostsUserManualOverrideEnd(self, [(CAMLibrarySelectionSession *)self initialMode], [(CAMLibrarySelectionSession *)self currentMode]);
      }
    }

    if (self->_timeForSmartSharingAutoDecision < 0.0 && CAMSharedLibraryModeIsAutoState(mode))
    {
      [(NSDate *)self->_launchDate timeIntervalSinceNow];
      self->_timeForSmartSharingAutoDecision = fabs(v8);
      CAMSignpostsSmartSharingAutoDecisionEnd(self, [(CAMLibrarySelectionSession *)self initialMode], [(CAMLibrarySelectionSession *)self currentMode]);
    }

    v9 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CAMSharedLibraryModeDescription(mode);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionSession] setSharedLibraryMode: %{public}@", &v13, 0xCu);
    }

    delegate = [(CAMLibrarySelectionSession *)self delegate];
    [delegate librarySelectionDidChangeSharedLibraryMode:mode];
  }

  return currentMode != mode;
}

- (BOOL)updateWithResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (self->_timeToAcquireFirstLocation < 0.0)
  {
    currentLocation = [resultCopy currentLocation];

    if (currentLocation)
    {
      [(NSDate *)self->_launchDate timeIntervalSinceNow];
      self->_timeToAcquireFirstLocation = fabs(v7);
    }
  }

  if (self->_timeToAcquireFirstPreciseLocation < 0.0)
  {
    currentLocation2 = [v5 currentLocation];
    if (currentLocation2)
    {
      v9 = currentLocation2;
      currentLocation3 = [v5 currentLocation];
      [currentLocation3 horizontalAccuracy];
      v12 = v11;

      if (v12 < 50.0)
      {
        [(NSDate *)self->_launchDate timeIntervalSinceNow];
        self->_timeToAcquireFirstPreciseLocation = fabs(v13);
      }
    }
  }

  if (self->_timeToDetectDevicesInProximity < 0.0)
  {
    identitiesInProximity = [v5 identitiesInProximity];
    v15 = [identitiesInProximity count];

    if (v15)
    {
      [(NSDate *)self->_launchDate timeIntervalSinceNow];
      self->_timeToDetectDevicesInProximity = fabs(v16);
    }
  }

  if (-[CAMLibrarySelectionSession _canTransitionToAutoOn](self, "_canTransitionToAutoOn") && [v5 suggestsSharing])
  {
    v17 = [(CAMLibrarySelectionSession *)self updateWithMode:4];
  }

  else
  {
    if (!self->_canResetToDefaultMode)
    {
      goto LABEL_19;
    }

    if (![(CAMLibrarySelectionSession *)self _canResetDuringSessionWithResult:v5])
    {
      v18 = 0;
      self->_canResetToDefaultMode = 0;
      goto LABEL_21;
    }

    if (![(CAMLibrarySelectionSession *)self _shouldResetDuringSessionWithResult:v5])
    {
LABEL_19:
      v18 = 0;
      goto LABEL_21;
    }

    v17 = [(CAMLibrarySelectionSession *)self _applyAutoResetModeAndNotify:1];
  }

  v18 = v17;
LABEL_21:

  return v18;
}

- (BOOL)notifyResetIfNeeded
{
  if (self->_initialMode == self->_currentMode && self->_restoredFromPreferences)
  {
    return 0;
  }

  delegate = [(CAMLibrarySelectionSession *)self delegate];
  [delegate librarySelectionDidChangeSharedLibraryMode:self->_currentMode];

  return 1;
}

- (BOOL)_applyAutoResetModeAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v17 = *MEMORY[0x1E69E9840];
  currentMode = self->_currentMode;
  if (currentMode < 5)
  {
    _autoResetMode = [(CAMLibrarySelectionSession *)self _autoResetMode];
LABEL_3:
    v7 = _autoResetMode;
    goto LABEL_4;
  }

  if (currentMode == 5)
  {
    _autoResetMode = [(CAMLibrarySelectionSession *)self _defaultMode];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_4:
  v8 = self->_currentMode;
  if (v8 != v7)
  {
    self->_currentMode = v7;
    *&self->_canResetToDefaultMode = 0;
    v9 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CAMSharedLibraryModeDescription(v7);
      v13 = 138543618;
      v14 = v10;
      v15 = 1026;
      v16 = notifyCopy;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionSession] autoResetModeAndNotify: %{public}@, notify: %{public}d", &v13, 0x12u);
    }

    if (notifyCopy)
    {
      delegate = [(CAMLibrarySelectionSession *)self delegate];
      [delegate librarySelectionDidChangeSharedLibraryMode:v7];
    }
  }

  return v8 != v7;
}

- (int64_t)_defaultMode
{
  v2 = +[CAMUserPreferences preferences];
  defaultToSharedLibraryEnabled = [v2 defaultToSharedLibraryEnabled];

  return defaultToSharedLibraryEnabled;
}

- (int64_t)_autoResetMode
{
  v2 = +[CAMUserPreferences preferences];
  if ([v2 defaultToSharedLibraryEnabled])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (BOOL)_canTransitionToAutoOn
{
  v3 = +[CAMUserPreferences preferences];
  if ([v3 sharedLibraryAutoBehaviorEnabled])
  {
    currentMode = self->_currentMode;
    v5 = currentMode > 5;
    v6 = 0x31u >> currentMode;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_canResetDuringSessionWithResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(NSDate *)self->_launchDate timeIntervalSinceNow];
  if (fabs(v5) > 25.0)
  {
    v6 = os_log_create("com.apple.camera", "SharedLibrary");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:
      v18 = 0;
      goto LABEL_26;
    }

    launchDate = self->_launchDate;
    v20 = 138543362;
    v21 = launchDate;
    v8 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: too long after launch: %{public}@";
    v9 = v6;
    v10 = 12;
LABEL_4:
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, v8, &v20, v10);
    goto LABEL_25;
  }

  if (([resultCopy cameraHasAccessToLocation] & 1) == 0 && !CAMLocationAccessPendingOrNotDeterminedWithAuthorizationStatus(objc_msgSend(resultCopy, "locationAuthorizationStatus")))
  {
    v6 = os_log_create("com.apple.camera", "SharedLibrary");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v20) = 0;
    v8 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: no access to location";
    v9 = v6;
    v10 = 2;
    goto LABEL_4;
  }

  v11 = +[CAMUserPreferences preferences];
  v6 = v11;
  if (self->_overriddenByUser)
  {
    sharedLibraryLastUserActionLocation = [v11 sharedLibraryLastUserActionLocation];

    if (!sharedLibraryLastUserActionLocation)
    {
      v14 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v15 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: no location of last user action";
        goto LABEL_23;
      }

LABEL_24:

      goto LABEL_25;
    }

    sharedLibraryLastUserActionDate = [v6 sharedLibraryLastUserActionDate];

    if (!sharedLibraryLastUserActionDate)
    {
      v14 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v15 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: no time of last user action";
LABEL_23:
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, v15, &v20, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else
  {
    sharedLibraryLastDiscoveryLocation = [v11 sharedLibraryLastDiscoveryLocation];

    if (!sharedLibraryLastDiscoveryLocation)
    {
      v14 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v15 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: no location of last discovery";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    sharedLibraryLastDiscoveryDate = [v6 sharedLibraryLastDiscoveryDate];

    if (!sharedLibraryLastDiscoveryDate)
    {
      v14 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v15 = "[CAMLibrarySelectionSession] Can't reset shared library mode during session: no time of last discovery";
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  v18 = 1;
LABEL_26:

  return v18;
}

- (BOOL)_userWasPreviouslyOnTrip
{
  v2 = +[CAMUserPreferences preferences];
  if ([v2 sharedLibraryLastLocationAcquiredDuringTrip])
  {
    sharedLibraryLastLocation = [v2 sharedLibraryLastLocation];
    timestamp = [sharedLibraryLastLocation timestamp];
    [timestamp timeIntervalSinceNow];
    v6 = fabs(v5);

    v7 = +[CAMCaptureCapabilities capabilities];
    [v7 librarySelectionTripResetTimeout];
    v9 = v6 <= v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldResetSessionBasedOnTimeoutDuringTrip:(BOOL)trip atSameLocation:(BOOL)location
{
  locationCopy = location;
  tripCopy = trip;
  v23 = *MEMORY[0x1E69E9840];
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = +[CAMUserPreferences preferences];
  if (tripCopy)
  {
    [v7 librarySelectionTripResetTimeout];
  }

  else if (locationCopy)
  {
    [v7 librarySelectionSameLocationResetTimeout];
  }

  else if (self->_overriddenByUser)
  {
    [v7 librarySelectionUserChoiceResetTimeout];
  }

  else
  {
    [v7 librarySelectionAutoOnResetTimeout];
  }

  v10 = v9;
  if (self->_overriddenByUser)
  {
    [v8 sharedLibraryLastUserActionDate];
  }

  else
  {
    [v8 sharedLibraryLastDiscoveryDate];
  }
  v11 = ;
  v12 = v11;
  if (!v11)
  {
    v16 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CAMLibrarySelectionSession _shouldResetSessionBasedOnTimeoutDuringTrip:v16 atSameLocation:?];
    }

    goto LABEL_20;
  }

  [v11 timeIntervalSinceNow];
  v14 = fabs(v13);
  v15 = os_log_create("com.apple.camera", "SharedLibrary");
  v16 = v15;
  if (v14 >= v10)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218240;
      v20 = v14;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionSession] Resetting shared library mode based on timeout: %.0f >= %.0f", &v19, 0x16u);
    }

LABEL_20:
    v17 = 1;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(CAMLibrarySelectionSession *)v16 _shouldResetSessionBasedOnTimeoutDuringTrip:v14 atSameLocation:v10];
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (BOOL)_shouldResetDuringSessionWithResult:(id)result
{
  v39 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  currentLocation = [resultCopy currentLocation];
  if (currentLocation && ([resultCopy isOnTrip] & 1) == 0)
  {
    if (self->_userWasPreviouslyOnTrip && [(CAMLibrarySelectionSession *)self _shouldResetSessionBasedOnTimeoutDuringTrip:0 atSameLocation:0])
    {
      v7 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "[CAMLibrarySelectionSession] Resetting shared library mode during session: user was on a trip last time camera was launched, but came back since we acquired a new location", buf, 2u);
      }

      v6 = 1;
      goto LABEL_35;
    }

    v8 = +[CAMUserPreferences preferences];
    v7 = v8;
    if (self->_overriddenByUser)
    {
      [v8 sharedLibraryLastUserActionLocation];
    }

    else
    {
      [v8 sharedLibraryLastDiscoveryLocation];
    }
    v9 = ;
    [v9 coordinate];
    v34 = v40;
    if (!CLLocationCoordinate2DIsValid(v40))
    {
      v6 = 0;
LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    v10 = [resultCopy frequentLocationRegionContainingLocation:v9];
    v11 = [resultCopy frequentLocationRegionContainingLocation:currentLocation];
    v12 = v11;
    if (!v10 && v11)
    {
      v13 = os_log_create("com.apple.camera", "SharedLibrary");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        v6 = 1;
LABEL_33:

        goto LABEL_34;
      }

      *buf = 0;
      v14 = "[CAMLibrarySelectionSession] Resetting shared library mode during session: user moved to a frequent location";
LABEL_17:
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_18;
    }

    if (v10)
    {
      if (v11)
      {
        [v11 center];
        if (([v10 containsCoordinate:?] & 1) == 0)
        {
          v13 = os_log_create("com.apple.camera", "SharedLibrary");
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 0;
          v14 = "[CAMLibrarySelectionSession] Resetting shared library mode during session: User moved from one frequent location to another";
          goto LABEL_17;
        }
      }
    }

    [currentLocation coordinate];
    [currentLocation horizontalAccuracy];
    v18 = v17;
    CLLocationCoordinate2DGetDistanceFrom();
    v20 = v19 - v18;
    v21 = fmax(v19 - v18, 0.0);
    if (self->_overriddenByUser)
    {
      [v7 sharedLibraryLastUserActionDate];
    }

    else
    {
      [v7 sharedLibraryLastDiscoveryDate];
    }
    v22 = ;
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v22];
    v25 = v24;

    LODWORD(date) = [(CAMLibrarySelectionSession *)self _shouldResetSessionBasedOnTimeoutDuringTrip:0 atSameLocation:v21 <= 350.0];
    v26 = os_log_create("com.apple.camera", "SharedLibrary");
    v27 = v26;
    if (date)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v36 = v21 <= 350.0;
        *&v36[4] = 2048;
        *&v36[6] = v21;
        v37 = 2048;
        v38 = v25;
        v28 = "[CAMLibrarySelectionSession] Resetting shared library mode during session based on timeout: User considered at the same location: %d, distance: %.1f, time: %.0f";
        v29 = v27;
        v30 = 28;
LABEL_29:
        _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      }
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v36 = v21 <= 350.0;
        *&v36[4] = 2048;
        *&v36[6] = v21;
        v37 = 2048;
        v38 = v25;
        _os_log_debug_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEBUG, "[CAMLibrarySelectionSession] Keeping shared library mode during session: User considered at the same location: %d, distance: %.1f, time: %.0f", buf, 0x1Cu);
      }

      v6 = 0;
      if (v21 <= 350.0 || v20 <= 0.0 || v25 <= 0.0)
      {
        goto LABEL_32;
      }

      v32 = v21 / v25 * 3.6;
      v33 = os_log_create("com.apple.camera", "SharedLibrary");
      v27 = v33;
      if (v32 <= 10.0)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [(CAMLibrarySelectionSession *)v27 _shouldResetDuringSessionWithResult:v32];
        }

        v6 = 0;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v36 = v32;
        v28 = "[CAMLibrarySelectionSession] Resetting shared library mode during session: User moved significantly, computed velocity: %.2f";
        v29 = v27;
        v30 = 12;
        goto LABEL_29;
      }
    }

    v6 = 1;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v6 = 0;
LABEL_36:

  return v6;
}

- (CAMLibrarySelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_shouldResetSessionBasedOnTimeoutDuringTrip:(double)a3 atSameLocation:.cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "[CAMLibrarySelectionSession] Not resetting shared library mode based on timeout: %.0f >= %.0f", &v3, 0x16u);
}

- (void)_shouldResetDuringSessionWithResult:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "[CAMLibrarySelectionSession] shouldResetDuringSessionWithResult computed velocity: %.2f", &v2, 0xCu);
}

@end