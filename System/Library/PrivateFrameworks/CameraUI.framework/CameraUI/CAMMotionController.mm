@interface CAMMotionController
- (CAMMotionController)init;
- (id)_debugStringForDeviceOrientation:(int64_t)orientation;
- (id)_debugStringForInterfaceOrientation:(int64_t)orientation;
- (int64_t)captureOrientation;
- (int64_t)panoramaCaptureOrientation;
- (void)_handleApplicationDidEnterBackground:(id)background;
- (void)_handleApplicationWillEnterForeground:(id)foreground;
- (void)_handleLevelMotionUpdate:(id)update error:(id)error;
- (void)_setCachedCaptureOrientation:(int64_t)orientation;
- (void)_setDominantPhysicalButton:(int64_t)button;
- (void)_updateAttitudeAlignmentMotionManager;
- (void)_updateInitialOrientation;
- (void)_updatePhysicalButtonObservation;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)beginGeneratingDominantPhysicalButtonNotifications;
- (void)beginUpdatingLevelViewModel:(id)model;
- (void)beginUpdatingPreviewAlignmentModel:(id)model;
- (void)dealloc;
- (void)debugValidateCaptureOrientationForMode:(int64_t)mode;
- (void)endGeneratingDominantPhysicalButtonNotifications;
- (void)endUpdatingActiveLevelViewModel;
- (void)endUpdatingPreviewAlignmentModel;
- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setForceLandscapeOrientation:(BOOL)orientation;
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
  _cachedCaptureOrientation = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ([(CAMMotionController *)self forceLandscapeOrientation])
  {

    return [(CAMMotionController *)self _orientationIfForcedToLandscape];
  }

  else if ((_cachedCaptureOrientation - 1) >= 4)
  {

    return [(CAMMotionController *)self _fallbackCaptureOrientation];
  }

  else
  {
    return _cachedCaptureOrientation;
  }
}

- (void)endUpdatingActiveLevelViewModel
{
  activeLevelViewModel = [(CAMMotionController *)self activeLevelViewModel];
  if (activeLevelViewModel)
  {
    v5 = activeLevelViewModel;
    [activeLevelViewModel unregisterChangeObserver:self context:0];
    activeLevelViewModel2 = [(CAMMotionController *)self activeLevelViewModel];
    [activeLevelViewModel2 reset];

    [(CAMMotionController *)self _setActiveLevelViewModel:0];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
    activeLevelViewModel = v5;
  }
}

- (void)beginGeneratingDominantPhysicalButtonNotifications
{
  [(CAMMotionController *)self _setNumberOfDominantPhysicalButtonObservers:[(CAMMotionController *)self _numberOfDominantPhysicalButtonObservers]+ 1];

  [(CAMMotionController *)self _updatePhysicalButtonObservation];
}

- (void)_updatePhysicalButtonObservation
{
  _physicalButtonMotionManager = [(CAMMotionController *)self _physicalButtonMotionManager];
  v4 = +[CAMUserPreferences preferences];
  if ([v4 isLockAsShutterEnabled] && -[CAMMotionController _numberOfDominantPhysicalButtonObservers](self, "_numberOfDominantPhysicalButtonObservers") >= 1)
  {
    if (![(CMMotionManager *)_physicalButtonMotionManager isDeviceMotionActive])
    {
      if (!_physicalButtonMotionManager)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69634D0]);
        physicalButtonMotionManager = self->__physicalButtonMotionManager;
        self->__physicalButtonMotionManager = v5;

        [(CMMotionManager *)self->__physicalButtonMotionManager setDeviceMotionUpdateInterval:0.05];
        [(CMMotionManager *)self->__physicalButtonMotionManager setPowerConservationMode:2];
        _physicalButtonMotionManager = self->__physicalButtonMotionManager;
      }

      objc_initWeak(&location, self);
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__CAMMotionController__updatePhysicalButtonObservation__block_invoke;
      v8[3] = &unk_1E76F89C8;
      objc_copyWeak(&v9, &location);
      [(CMMotionManager *)_physicalButtonMotionManager startDeviceMotionUpdatesToQueue:mainQueue withHandler:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else if ([(CMMotionManager *)_physicalButtonMotionManager isDeviceMotionActive])
  {
    [(CMMotionManager *)_physicalButtonMotionManager stopDeviceMotionUpdates];
  }
}

- (void)dealloc
{
  _accelerometer = [(CAMMotionController *)self _accelerometer];
  [_accelerometer setOrientationEventsEnabled:0];

  v4.receiver = self;
  v4.super_class = CAMMotionController;
  [(CAMMotionController *)&v4 dealloc];
}

- (void)_updateInitialOrientation
{
  v18 = *MEMORY[0x1E69E9840];
  currentDeviceOrientation = [(BKSAccelerometer *)self->__accelerometer currentDeviceOrientation];
  v4 = os_log_create("com.apple.camera", "Orientation");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CAMMotionController *)self _debugStringForDeviceOrientation:currentDeviceOrientation];
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Capture orientation %{public}@ (initial)", &v14, 0xCu);
  }

  self->__cachedCaptureOrientation = currentDeviceOrientation;
  self->_deviceOrientation = currentDeviceOrientation;
  if ((currentDeviceOrientation - 3) <= 1)
  {
    [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:currentDeviceOrientation];
LABEL_6:
    activeInterfaceOrientation = 0;
    goto LABEL_7;
  }

  if ((currentDeviceOrientation - 1) < 4)
  {
    goto LABEL_6;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  activeInterfaceOrientation = [mEMORY[0x1E69DC668] activeInterfaceOrientation];

  v8 = os_log_create("com.apple.camera", "Orientation");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (activeInterfaceOrientation)
  {
    if (v9)
    {
      v10 = [(CAMMotionController *)self _debugStringForDeviceOrientation:currentDeviceOrientation];
      v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:activeInterfaceOrientation];
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
      v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:currentDeviceOrientation];
      v13 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:0];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Device orientation from accelerometer is not usable for capture orientation (%{public}@) and neither is [UIApplication activeInterfaceOrientation] (%{public}@). Will use Portrait as fallback.", &v14, 0x16u);
    }

    activeInterfaceOrientation = 1;
  }

LABEL_7:
  self->__fallbackCaptureOrientation = activeInterfaceOrientation;
}

- (void)_handleApplicationDidEnterBackground:(id)background
{
  _accelerometer = [(CAMMotionController *)self _accelerometer];
  [_accelerometer setOrientationEventsEnabled:0];
}

- (void)_handleApplicationWillEnterForeground:(id)foreground
{
  captureOrientation = [(CAMMotionController *)self captureOrientation];
  deviceOrientation = [(CAMMotionController *)self deviceOrientation];
  [(CAMMotionController *)self _updateInitialOrientation];
  _accelerometer = [(CAMMotionController *)self _accelerometer];
  [_accelerometer setOrientationEventsEnabled:1];

  if ([(CAMMotionController *)self captureOrientation]!= captureOrientation)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
  }

  if ([(CAMMotionController *)self deviceOrientation]!= deviceOrientation)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"CAMMotionControllerCaptureDeviceOrientationChangedNotification" object:self];
  }
}

- (void)_setCachedCaptureOrientation:(int64_t)orientation
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->__cachedCaptureOrientation != orientation)
  {
    self->__cachedCaptureOrientation = orientation;
    v5 = os_log_create("com.apple.camera", "Orientation");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CAMMotionController *)self _debugStringForDeviceOrientation:orientation];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Capture orientation %{public}@ (updated)", &v8, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
  }
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  if (self->_deviceOrientation != orientation)
  {
    self->_deviceOrientation = orientation;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CAMMotionControllerCaptureDeviceOrientationChangedNotification" object:self];
  }
}

- (int64_t)panoramaCaptureOrientation
{
  captureOrientation = [(CAMMotionController *)self captureOrientation];

  return [CAMOrientationUtilities panoramaCaptureOrientationFromCaptureOrientation:captureOrientation];
}

- (void)setForceLandscapeOrientation:(BOOL)orientation
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_forceLandscapeOrientation != orientation)
  {
    if (orientation)
    {
      captureOrientation = [(CAMMotionController *)self captureOrientation];
      self->_forceLandscapeOrientation = orientation;
      v6 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:captureOrientation];
        v8 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:[(CAMMotionController *)self _orientationIfForcedToLandscape]];
        v14 = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Beginning force landscape orientation, changing orientation from %{public}@ to %{public}@", &v14, 0x16u);
      }

      if (captureOrientation <= 2)
      {
        [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:3];
LABEL_10:
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"CAMMotionControllerCaptureOrientationChangedNotification" object:self];
      }
    }

    else
    {
      self->_forceLandscapeOrientation = 0;
      captureOrientation2 = [(CAMMotionController *)self captureOrientation];
      v10 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:[(CAMMotionController *)self _orientationIfForcedToLandscape]];
        v12 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:captureOrientation2];
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Ending force landscape orientation, changing orientation from %{public}@ to %{public}@", &v14, 0x16u);
      }

      if ([(CAMMotionController *)self _orientationIfForcedToLandscape]!= captureOrientation2)
      {
        goto LABEL_10;
      }
    }
  }
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  v20 = *MEMORY[0x1E69E9840];
  _cachedCaptureOrientation = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ((orientation - 1) < 4)
  {
    if ((orientation - 3) <= 1)
    {
      [(CAMMotionController *)self _setOrientationWhenForcedToLandscape:orientation];
    }

LABEL_12:
    [(CAMMotionController *)self setDeviceOrientation:orientation];
LABEL_13:
    [(CAMMotionController *)self _setCachedCaptureOrientation:orientation];
    return;
  }

  v7 = _cachedCaptureOrientation;
  v8 = _cachedCaptureOrientation - 1;
  v9 = os_log_create("com.apple.camera", "Orientation");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 >= 4)
  {
    if (v10)
    {
      v14 = [(CAMMotionController *)self _debugStringForDeviceOrientation:orientation];
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
    v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:orientation];
    v13 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v7];
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Received device orientation change from accelerometer as %{public}@ (ignoring and keeping %{public}@)", &v16, 0x16u);
  }

  [(CAMMotionController *)self setDeviceOrientation:orientation];
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

- (void)_setDominantPhysicalButton:(int64_t)button
{
  if (self->_dominantPhysicalButton != button)
  {
    self->_dominantPhysicalButton = button;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CAMMotionControllerDominantPhysicalCaptureButtonChangedNotification" object:self];
  }
}

- (void)beginUpdatingLevelViewModel:(id)model
{
  modelCopy = model;
  activeLevelViewModel = [(CAMMotionController *)self activeLevelViewModel];
  if (activeLevelViewModel != modelCopy)
  {
    if (activeLevelViewModel)
    {
      [(CAMMotionController *)self endUpdatingActiveLevelViewModel];
    }

    [(CAMMotionController *)self _setActiveLevelViewModel:modelCopy];
    [modelCopy registerChangeObserver:self context:0];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context
{
  if (!context && (change & 8) != 0)
  {
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)beginUpdatingPreviewAlignmentModel:(id)model
{
  modelCopy = model;
  activePreviewAlignmentModel = [(CAMMotionController *)self activePreviewAlignmentModel];

  v5 = modelCopy;
  if (activePreviewAlignmentModel != modelCopy)
  {
    activePreviewAlignmentModel2 = [(CAMMotionController *)self activePreviewAlignmentModel];

    if (activePreviewAlignmentModel2)
    {
      [(CAMMotionController *)self endUpdatingPreviewAlignmentModel];
    }

    [modelCopy reset];
    [(CAMMotionController *)self _setActivePreviewAlignmentModel:modelCopy];
    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
    v5 = modelCopy;
  }
}

- (void)endUpdatingPreviewAlignmentModel
{
  activePreviewAlignmentModel = [(CAMMotionController *)self activePreviewAlignmentModel];

  if (activePreviewAlignmentModel)
  {
    [(CAMMotionController *)self _setActivePreviewAlignmentModel:0];

    [(CAMMotionController *)self _updateAttitudeAlignmentMotionManager];
  }
}

- (void)_updateAttitudeAlignmentMotionManager
{
  _attitudeAlignmentMotionManager = [(CAMMotionController *)self _attitudeAlignmentMotionManager];
  activeLevelViewModel = [(CAMMotionController *)self activeLevelViewModel];
  activePreviewAlignmentModel = [(CAMMotionController *)self activePreviewAlignmentModel];
  if (!_attitudeAlignmentMotionManager && activeLevelViewModel | activePreviewAlignmentModel)
  {
    _attitudeAlignmentMotionManager = objc_alloc_init(MEMORY[0x1E69634D0]);
    objc_storeStrong(&self->__attitudeAlignmentMotionManager, _attitudeAlignmentMotionManager);
  }

  isDeviceMotionActive = [_attitudeAlignmentMotionManager isDeviceMotionActive];
  if (activeLevelViewModel | activePreviewAlignmentModel)
  {
    if ((isDeviceMotionActive & 1) == 0)
    {
      objc_initWeak(&location, self);
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__CAMMotionController__updateAttitudeAlignmentMotionManager__block_invoke;
      v16 = &unk_1E76F89C8;
      objc_copyWeak(&v17, &location);
      [_attitudeAlignmentMotionManager startDeviceMotionUpdatesToQueue:mainQueue withHandler:&v13];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    if (activePreviewAlignmentModel && activeLevelViewModel)
    {
      +[CAMPreviewAlignmentModel desiredUpdateInterval];
      v9 = v8;
      [activeLevelViewModel desiredUpdateInterval];
      if (v9 >= v10)
      {
        v9 = v10;
      }
    }

    else
    {
      if (activePreviewAlignmentModel)
      {
        v11 = CAMPreviewAlignmentModel;
      }

      else
      {
        if (!activeLevelViewModel)
        {
          v9 = 0.0;
          goto LABEL_19;
        }

        v11 = activeLevelViewModel;
      }

      [(__objc2_class *)v11 desiredUpdateInterval:v13];
      v9 = v12;
    }
  }

  else
  {
    v9 = 0.0;
    if (isDeviceMotionActive)
    {
      [_attitudeAlignmentMotionManager stopDeviceMotionUpdates];
    }
  }

LABEL_19:
  [_attitudeAlignmentMotionManager setDeviceMotionUpdateInterval:{v9, v13, v14, v15, v16}];
}

void __60__CAMMotionController__updateAttitudeAlignmentMotionManager__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLevelMotionUpdate:v6 error:v5];
}

- (void)_handleLevelMotionUpdate:(id)update error:(id)error
{
  updateCopy = update;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = os_log_create("com.apple.camera", "Orientation");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMMotionController _handleLevelMotionUpdate:errorCopy error:v8];
    }

    _attitudeAlignmentMotionManager = [(CAMMotionController *)self _attitudeAlignmentMotionManager];
    [_attitudeAlignmentMotionManager stopDeviceMotionUpdates];
  }

  else
  {
    activeLevelViewModel = [(CAMMotionController *)self activeLevelViewModel];
    [activeLevelViewModel applyDeviceMotion:updateCopy captureOrientation:{-[CAMMotionController captureOrientation](self, "captureOrientation")}];

    _attitudeAlignmentMotionManager = [(CAMMotionController *)self activePreviewAlignmentModel];
    [_attitudeAlignmentMotionManager applyDeviceMotion:updateCopy];
  }
}

- (id)_debugStringForDeviceOrientation:(int64_t)orientation
{
  if (orientation >= 7)
  {
    orientation = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", orientation];
  }

  else
  {
    orientation = off_1E76F8A10[orientation];
  }

  return orientation;
}

- (id)_debugStringForInterfaceOrientation:(int64_t)orientation
{
  if (orientation >= 5)
  {
    orientation = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", orientation];
  }

  else
  {
    orientation = off_1E76F8A48[orientation];
  }

  return orientation;
}

- (void)debugValidateCaptureOrientationForMode:(int64_t)mode
{
  v26 = *MEMORY[0x1E69E9840];
  _cachedCaptureOrientation = [(CAMMotionController *)self _cachedCaptureOrientation];
  if ((_cachedCaptureOrientation - 1) >= 4)
  {
    v6 = _cachedCaptureOrientation;
    _fallbackCaptureOrientation = [(CAMMotionController *)self _fallbackCaptureOrientation];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    activeInterfaceOrientation = [mEMORY[0x1E69DC668] activeInterfaceOrientation];

    if (mode <= 9 && ((1 << mode) & 0x251) != 0 && !v6)
    {
      v14 = os_log_create("com.apple.camera", "Orientation");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:_fallbackCaptureOrientation];
        v18 = [(CAMMotionController *)self _debugStringForDeviceOrientation:0];
        v19 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:activeInterfaceOrientation];
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        _os_log_error_impl(&dword_1A3640000, v14, OS_LOG_TYPE_ERROR, "Capturing with fallback orientation %{public}@ because accelerometer returned %{public}@ (activeInterfaceOrientation is %{public}@).", &v20, 0x20u);
      }

      v10 = +[CAMCaptureCapabilities capabilities];
      isInternalInstall = [v10 isInternalInstall];
      _didNotifyCaptureOrientationWasInvalid = [(CAMMotionController *)self _didNotifyCaptureOrientationWasInvalid];
      if (isInternalInstall && !_didNotifyCaptureOrientationWasInvalid)
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
        v11 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:_fallbackCaptureOrientation];
        v12 = [(CAMMotionController *)self _debugStringForDeviceOrientation:v6];
        v13 = [(CAMMotionController *)self _debugStringForInterfaceOrientation:activeInterfaceOrientation];
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