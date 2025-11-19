@interface CAMMotionController
- (CAMMotionController)init;
- (id)_debugStringForDeviceOrientation:(int64_t)a3;
- (id)_debugStringForInterfaceOrientation:(int64_t)a3;
- (int64_t)captureOrientation;
- (int64_t)panoramaCaptureOrientation;
- (void)_handleApplicationDidEnterBackground:(id)a3;
- (void)_handleApplicationWillEnterForeground:(id)a3;
- (void)_handleLevelMotionUpdate:(id)a3 error:(id)a4;
- (void)_setCachedCaptureOrientation:(int64_t)a3;
- (void)_setDominantPhysicalButton:(int64_t)a3;
- (void)_updateAttitudeAlignmentMotionManager;
- (void)_updateInitialOrientation;
- (void)_updatePhysicalButtonObservation;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)beginGeneratingDominantPhysicalButtonNotifications;
- (void)beginUpdatingLevelViewModel:(id)a3;
- (void)beginUpdatingPreviewAlignmentModel:(id)a3;
- (void)dealloc;
- (void)debugValidateCaptureOrientationForMode:(int64_t)a3;
- (void)endGeneratingDominantPhysicalButtonNotifications;
- (void)endUpdatingActiveLevelViewModel;
- (void)endUpdatingPreviewAlignmentModel;
- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setForceLandscapeOrientation:(BOOL)a3;
@end

@implementation CAMMotionController

- (CAMMotionController)init
{
  v8.receiver = self;
  v8.super_class = CAMMotionController;
  v2 = [(CAMMotionController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E380]);
    accelerometer = v2->__accelerometer;
    v2->__accelerometer = v3;

    [(BKSAccelerometer *)v2->__accelerometer setDelegate:v2];
    [(BKSAccelerometer *)v2->__accelerometer setOrientationEventsEnabled:1];
    [(CAMMotionController *)v2 _updateInitialOrientation];
    v5 = +[CAMPriorityNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v5 addObserver:v2 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    v6 = v2;
  }

  return v2;
}

- (int64_t)captureOrientation
{
  v3 = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ([(CAMMotionController *)self forceLandscapeOrientation])
  {

    return [(CAMMotionController *)self _orientationIfForcedToLandscape];
  }

  else if ((v3 - 1) >= 4)
  {

    return [(CAMMotionController *)self _fallbackCaptureOrientation];
  }

  else
  {
    return v3;
  }
}

- (void)endUpdatingActiveLevelViewModel
{
  v3 = [(CAMMotionController *)self activeLevelViewModel];
  if (v3)
  {
    v5 = v3;
    [v3 unregisterChangeObserver:self context:0];
    v4 = [(CAMMotionController *)self activeLevelViewModel];
    [v4 reset];

    [(CAMMotionController *)self _setActiveLevelViewModel:0];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
    v3 = v5;
  }
}

- (void)beginGeneratingDominantPhysicalButtonNotifications
{
  [(CAMMotionController *)self _setNumberOfDominantPhysicalButtonObservers:[(CAMMotionController *)self _numberOfDominantPhysicalButtonObservers]+ 1];

  [(CAMMotionController *)self _updatePhysicalButtonObservation];
}

- (void)_updatePhysicalButtonObservation
{
  v3 = [(CAMMotionController *)self _physicalButtonMotionManager];
  v4 = +[CAMUserPreferences preferences];
  if ([v4 isLockAsShutterEnabled] && -[CAMMotionController _numberOfDominantPhysicalButtonObservers](self, "_numberOfDominantPhysicalButtonObservers") >= 1)
  {
    if (![(CMMotionManager *)v3 isDeviceMotionActive])
    {
      if (!v3)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69634D0]);
        physicalButtonMotionManager = self->__physicalButtonMotionManager;
        self->__physicalButtonMotionManager = v5;

        [(CMMotionManager *)self->__physicalButtonMotionManager setDeviceMotionUpdateInterval:0.05];
        [(CMMotionManager *)self->__physicalButtonMotionManager setPowerConservationMode:2];
        v3 = self->__physicalButtonMotionManager;
      }

      objc_initWeak(&location, self);
      v7 = [MEMORY[0x1E696ADC8] mainQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__CAMMotionController__updatePhysicalButtonObservation__block_invoke;
      v8[3] = &unk_1E76F89C8;
      objc_copyWeak(&v9, &location);
      [(CMMotionManager *)v3 startDeviceMotionUpdatesToQueue:v7 withHandler:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else if ([(CMMotionManager *)v3 isDeviceMotionActive])
  {
    [(CMMotionManager *)v3 stopDeviceMotionUpdates];
  }
}

- (void)dealloc
{
  v3 = [(CAMMotionController *)self _accelerometer];
  [v3 setOrientationEventsEnabled:0];

  v4.receiver = self;
  v4.super_class = CAMMotionController;
  [(CAMMotionController *)&v4 dealloc];
}

- (void)_updateInitialOrientation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(BKSAccelerometer *)self->__accelerometer currentDeviceOrientation];
  v4 = os_log_create("com.apple.camera", "Orientation");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v3];
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Capture orientation %{public}@ (initial)", &v14, 0xCu);
  }

  self->__cachedCaptureOrientation = v3;
  self->_deviceOrientation = v3;
  if ((v3 - 3) <= 1)
  {
    [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:v3];
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  if ((v3 - 1) < 4)
  {
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v7 activeInterfaceOrientation];

  v8 = os_log_create("com.apple.camera", "Orientation");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v3];
      v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v6];
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Device orientation from accelerometer is not usable for capture orientation: (%{public}@). Will use activeInterfaceOrientation %{public}@ as fallback.", &v14, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v3];
      v13 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:0];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Device orientation from accelerometer is not usable for capture orientation (%{public}@) and neither is [UIApplication activeInterfaceOrientation] (%{public}@). Will use Portrait as fallback.", &v14, 0x16u);
    }

    v6 = 1;
  }

LABEL_7:
  self->__fallbackCaptureOrientation = v6;
}

- (void)_handleApplicationDidEnterBackground:(id)a3
{
  v3 = [(CAMMotionController *)self _accelerometer];
  [v3 setOrientationEventsEnabled:0];
}

- (void)_handleApplicationWillEnterForeground:(id)a3
{
  v4 = [(CAMMotionController *)self captureOrientation];
  v5 = [(CAMMotionController *)self deviceOrientation];
  [(CAMMotionController *)self _updateInitialOrientation];
  v6 = [(CAMMotionController *)self _accelerometer];
  [v6 setOrientationEventsEnabled:1];

  if ([(CAMMotionController *)self captureOrientation]!= v4)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
  }

  if ([(CAMMotionController *)self deviceOrientation]!= v5)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"CAMMotionControllerCaptureDeviceOrientationChangedNotification" object:self];
  }
}

- (void)_setCachedCaptureOrientation:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->__cachedCaptureOrientation != a3)
  {
    self->__cachedCaptureOrientation = a3;
    v5 = os_log_create("com.apple.camera", "Orientation");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CAMMotionController *)self _debugStringForDeviceOrientation:a3];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Capture orientation %{public}@ (updated)", &v8, 0xCu);
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
  }
}

- (void)setDeviceOrientation:(int64_t)a3
{
  if (self->_deviceOrientation != a3)
  {
    self->_deviceOrientation = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"CAMMotionControllerCaptureDeviceOrientationChangedNotification" object:self];
  }
}

- (int64_t)panoramaCaptureOrientation
{
  v2 = [(CAMMotionController *)self captureOrientation];

  return [CAMOrientationUtilities panoramaCaptureOrientationFromCaptureOrientation:v2];
}

- (void)setForceLandscapeOrientation:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_forceLandscapeOrientation != a3)
  {
    if (a3)
    {
      v5 = [(CAMMotionController *)self captureOrientation];
      self->_forceLandscapeOrientation = a3;
      v6 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v5];
        v8 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:[(CAMMotionController *)self _orientationIfForcedToLandscape]];
        v14 = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Beginning force landscape orientation, changing orientation from %{public}@ to %{public}@", &v14, 0x16u);
      }

      if (v5 <= 2)
      {
        [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:3];
LABEL_10:
        v13 = [MEMORY[0x1E696AD88] defaultCenter];
        [v13 postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
      }
    }

    else
    {
      self->_forceLandscapeOrientation = 0;
      v9 = [(CAMMotionController *)self captureOrientation];
      v10 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:[(CAMMotionController *)self _orientationIfForcedToLandscape]];
        v12 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v9];
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Ending force landscape orientation, changing orientation from %{public}@ to %{public}@", &v14, 0x16u);
      }

      if ([(CAMMotionController *)self _orientationIfForcedToLandscape]!= v9)
      {
        goto LABEL_10;
      }
    }
  }
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ((a4 - 1) < 4)
  {
    if ((a4 - 3) <= 1)
    {
      [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:a4];
    }

LABEL_12:
    [(CAMMotionController *)self setDeviceOrientation:a4];
LABEL_13:
    [(CAMMotionController *)self _setCachedCaptureOrientation:a4];
    return;
  }

  v7 = v6;
  v8 = v6 - 1;
  v9 = os_log_create("com.apple.camera", "Orientation");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 >= 4)
  {
    if (v10)
    {
      v14 = [(CAMMotionController *)self _debugStringForDeviceOrientation:a4];
      v15 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v7];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Received device orientation change from accelerometer as %{public}@ (was %{public}@)", &v16, 0x16u);
    }

    goto LABEL_12;
  }

  v11 = v7 - 5;
  if (v10)
  {
    v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:a4];
    v13 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v7];
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Received device orientation change from accelerometer as %{public}@ (ignoring and keeping %{public}@)", &v16, 0x16u);
  }

  [(CAMMotionController *)self setDeviceOrientation:a4];
  if (v11 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_13;
  }
}

void __55__CAMMotionController__updatePhysicalButtonObservation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = [v3 attitude];
  [v3 rotationRate];
  v5 = v4;

  [v19 roll];
  v7 = v6 * 57.2957795;
  [v19 pitch];
  v9 = fabs(v8 * 57.2957795);
  v10 = v9 <= 35.0;
  v11 = v7 < 115.0;
  if (v7 <= 65.0)
  {
    v11 = 0;
  }

  v12 = v11 && v10;
  if (v7 >= 0.0)
  {
    v10 = v12;
  }

  if (!v10 || v5 <= 1.0)
  {
    if (v7 >= 0.0 || v9 > 35.0)
    {
      _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantLockButton = 0;
      if (v12)
      {
        v16 = _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantVolumeButton;
        v17 = _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantVolumeButton++ > 0;
        if (v16 >= 1)
        {
          LOBYTE(v10) = 0;
        }

        if (v10)
        {
          goto LABEL_24;
        }

        v15 = 2 * v17;
      }

      else
      {
        v15 = 0;
        _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantVolumeButton = 0;
        if (v10)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v14 = _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantLockButton++;
      _updatePhysicalButtonObservation_numberOfConsecutiveSamplesWantingDominantVolumeButton = 0;
      if (v14 < 1)
      {
        v15 = 0;
      }

      else
      {
        LOBYTE(v10) = 0;
        v15 = 3;
      }

      if (v10)
      {
        goto LABEL_24;
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setDominantPhysicalButton:v15];
  }

LABEL_24:
}

- (void)endGeneratingDominantPhysicalButtonNotifications
{
  [(CAMMotionController *)self _setNumberOfDominantPhysicalButtonObservers:[(CAMMotionController *)self _numberOfDominantPhysicalButtonObservers]- 1];

  [(CAMMotionController *)self _updatePhysicalButtonObservation];
}

- (void)_setDominantPhysicalButton:(int64_t)a3
{
  if (self->_dominantPhysicalButton != a3)
  {
    self->_dominantPhysicalButton = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"CAMMotionControllerDominantPhysicalCaptureButtonChangedNotification" object:self];
  }
}

- (void)beginUpdatingLevelViewModel:(id)a3
{
  v5 = a3;
  v4 = [(CAMMotionController *)self activeLevelViewModel];
  if (v4 != v5)
  {
    if (v4)
    {
      [(CAMMotionController *)self endUpdatingActiveLevelViewModel];
    }

    [(CAMMotionController *)self _setActiveLevelViewModel:v5];
    [v5 registerChangeObserver:self context:0];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5
{
  if (!a5 && (a4 & 8) != 0)
  {
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)beginUpdatingPreviewAlignmentModel:(id)a3
{
  v7 = a3;
  v4 = [(CAMMotionController *)self activePreviewAlignmentModel];

  v5 = v7;
  if (v4 != v7)
  {
    v6 = [(CAMMotionController *)self activePreviewAlignmentModel];

    if (v6)
    {
      [(CAMMotionController *)self endUpdatingPreviewAlignmentModel];
    }

    [v7 reset];
    [(CAMMotionController *)self _setActivePreviewAlignmentModel:v7];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
    v5 = v7;
  }
}

- (void)endUpdatingPreviewAlignmentModel
{
  v3 = [(CAMMotionController *)self activePreviewAlignmentModel];

  if (v3)
  {
    [(CAMMotionController *)self _setActivePreviewAlignmentModel:0];

    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)_updateAttitudeAlignmentMotionManager
{
  v3 = [(CAMMotionController *)self _attitudeAlignmentMotionManager];
  v4 = [(CAMMotionController *)self activeLevelViewModel];
  v5 = [(CAMMotionController *)self activePreviewAlignmentModel];
  if (!v3 && v4 | v5)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69634D0]);
    objc_storeStrong(&self->__attitudeAlignmentMotionManager, v3);
  }

  v6 = [v3 isDeviceMotionActive];
  if (v4 | v5)
  {
    if ((v6 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x1E696ADC8] mainQueue];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__CAMMotionController__updateAttitudeAlignmentMotionManager__block_invoke;
      v16 = &unk_1E76F89C8;
      objc_copyWeak(&v17, &location);
      [v3 startDeviceMotionUpdatesToQueue:v7 withHandler:&v13];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    if (v5 && v4)
    {
      +[CAMPreviewAlignmentModel desiredUpdateInterval];
      v9 = v8;
      [v4 desiredUpdateInterval];
      if (v9 >= v10)
      {
        v9 = v10;
      }
    }

    else
    {
      if (v5)
      {
        v11 = CAMPreviewAlignmentModel;
      }

      else
      {
        if (!v4)
        {
          v9 = 0.0;
          goto LABEL_19;
        }

        v11 = v4;
      }

      [(__objc2_class *)v11 desiredUpdateInterval:v13];
      v9 = v12;
    }
  }

  else
  {
    v9 = 0.0;
    if (v6)
    {
      [v3 stopDeviceMotionUpdates];
    }
  }

LABEL_19:
  [v3 setDeviceMotionUpdateInterval:{v9, v13, v14, v15, v16}];
}

void __60__CAMMotionController__updateAttitudeAlignmentMotionManager__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLevelMotionUpdate:v6 error:v5];
}

- (void)_handleLevelMotionUpdate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = os_log_create("com.apple.camera", "Orientation");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMMotionController _handleLevelMotionUpdate:v7 error:v8];
    }

    v9 = [(CAMMotionController *)self _attitudeAlignmentMotionManager];
    [v9 stopDeviceMotionUpdates];
  }

  else
  {
    v10 = [(CAMMotionController *)self activeLevelViewModel];
    [v10 applyDeviceMotion:v6 captureOrientation:{-[CAMMotionController captureOrientation](self, "captureOrientation")}];

    v9 = [(CAMMotionController *)self activePreviewAlignmentModel];
    [v9 applyDeviceMotion:v6];
  }
}

- (id)_debugStringForDeviceOrientation:(int64_t)a3
{
  if (a3 >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", a3];
  }

  else
  {
    v4 = off_1E76F8A10[a3];
  }

  return v4;
}

- (id)_debugStringForInterfaceOrientation:(int64_t)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", a3];
  }

  else
  {
    v4 = off_1E76F8A48[a3];
  }

  return v4;
}

- (void)debugValidateCaptureOrientationForMode:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ((v5 - 1) >= 4)
  {
    v6 = v5;
    v7 = [(CAMMotionController *)self _fallbackCaptureOrientation];
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 activeInterfaceOrientation];

    if (a3 <= 9 && ((1 << a3) & 0x251) != 0 && !v6)
    {
      v14 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v7];
        v18 = [(CAMMotionController *)self _debugStringForDeviceOrientation:0];
        v19 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v9];
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        _os_log_error_impl(&dword_1A3640000, v14, OS_LOG_TYPE_ERROR, "Capturing with fallback orientation %{public}@ because accelerometer returned %{public}@ (activeInterfaceOrientation is %{public}@).", &v20, 0x20u);
      }

      v10 = +[CAMCaptureCapabilities capabilities];
      v15 = [v10 isInternalInstall];
      v16 = [(CAMMotionController *)self _didNotifyCaptureOrientationWasInvalid];
      if (v15 && !v16)
      {
        CFPreferencesAppSynchronize(@"com.apple.camera");
        if (!CFPreferencesGetAppBooleanValue(@"CAMDebugSuppressOrientationAlert", @"com.apple.camera", 0))
        {
          dispatch_time(0, 600000000);
          pl_dispatch_after();
        }

        [(CAMMotionController *)self _setDidNotifyCaptureOrientationWasInvalid:1];
      }
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v7];
        v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v6];
        v13 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:v9];
        v20 = 138543874;
        v21 = v11;
        v22 = 2114;
        v23 = v12;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Capturing with fallback orientation %{public}@ because accelerometer returned %{public}@ (activeInterfaceOrientation is %{public}@).", &v20, 0x20u);
      }
    }
  }
}

void __62__CAMMotionController_debugValidateCaptureOrientationForMode___block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 delegate];

  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 window];
    v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Orientation Error" message:@"There was a problem detecting the orientation for the photo. Please take a sysdiagnose and file a radar.\n\nTo trigger a sysdiagnose preferredStyle:{press Volume Up + Down, and Power button simultaneously.\n\n(This message is internal only)", 1}];
    v4 = MEMORY[0x1E69DC648];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__CAMMotionController_debugValidateCaptureOrientationForMode___block_invoke_2;
    v8[3] = &unk_1E76F89F0;
    v9 = v3;
    v5 = v3;
    v6 = [v4 actionWithTitle:@"OK" style:0 handler:v8];
    [v5 addAction:v6];
    v7 = [v2 rootViewController];
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_handleLevelMotionUpdate:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "CMMotionManager encountered an error. Device motion will stop delivery to attitude alignment models. %{public}@", &v2, 0xCu);
}

@end