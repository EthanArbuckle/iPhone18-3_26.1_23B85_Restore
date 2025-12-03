@interface CSCameraQuickAction
- (BOOL)_allowsCamera;
- (BOOL)_shouldPrelaunchOnTouch;
- (BOOL)_shouldPrewarmOnTouch;
- (CSCameraQuickAction)initWithDelegate:(id)delegate prewarmer:(id)prewarmer prototypeSettings:(id)settings defaults:(id)defaults;
- (id)_containingApplicationBundleIdentifier;
- (id)_prewarmingIdentifier;
- (int64_t)appearance;
- (void)_stopTrackingPrewarm;
- (void)fireAction;
- (void)touchBegan;
- (void)touchEnded;
@end

@implementation CSCameraQuickAction

- (int64_t)appearance
{
  if ([(CSCameraQuickAction *)self _allowsCamera])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_allowsCamera
{
  delegate = self->_delegate;
  if (delegate)
  {
    return [(CSCameraQuickActionDelegate *)delegate isCameraRestricted]^ 1;
  }

  else
  {
    return 1;
  }
}

- (CSCameraQuickAction)initWithDelegate:(id)delegate prewarmer:(id)prewarmer prototypeSettings:(id)settings defaults:(id)defaults
{
  delegateCopy = delegate;
  prewarmerCopy = prewarmer;
  settingsCopy = settings;
  defaultsCopy = defaults;
  v18.receiver = self;
  v18.super_class = CSCameraQuickAction;
  v15 = [(CSCameraQuickAction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_delegate, delegate);
    objc_storeStrong(&v16->_prewarmer, prewarmer);
    objc_storeStrong(&v16->_prototypeSettings, settings);
    objc_storeStrong(&v16->_lockScreenDefaults, defaults);
  }

  return v16;
}

- (void)touchBegan
{
  self->_hasFiredForTouch = 0;
  prewarmer = self->_prewarmer;
  _prewarmingIdentifier = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  _prewarmReason = [(CSCameraQuickAction *)self _prewarmReason];
  [(CSCameraPrewarming *)prewarmer prewarmCameraForIdentifier:_prewarmingIdentifier prewarmReason:_prewarmReason];

  activePrewarmTimer = self->_activePrewarmTimer;
  if (activePrewarmTimer)
  {
    [(NSTimer *)activePrewarmTimer invalidate];
    v7 = self->_activePrewarmTimer;
    self->_activePrewarmTimer = 0;
  }

  dashBoardQuickActionButtonSettings = [(CSLockScreenSettings *)self->_prototypeSettings dashBoardQuickActionButtonSettings];
  [dashBoardQuickActionButtonSettings maximumTouchDuration];
  v10 = v9;

  IsZero = BSFloatIsZero();
  v12 = v10 + 0.5;
  if (!IsZero)
  {
    v12 = 2.5;
  }

  v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__stopTrackingPrewarm selector:0 userInfo:0 repeats:v12];
  v14 = self->_activePrewarmTimer;
  self->_activePrewarmTimer = v13;

  MEMORY[0x2821F96F8](v13, v14);
}

- (void)_stopTrackingPrewarm
{
  [(NSTimer *)self->_activePrewarmTimer invalidate];
  activePrewarmTimer = self->_activePrewarmTimer;
  self->_activePrewarmTimer = 0;

  prewarmer = self->_prewarmer;
  _prewarmingIdentifier = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:_prewarmingIdentifier];
}

- (void)fireAction
{
  self->_hasFiredForTouch = 1;
  _prewarmingIdentifier = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  prewarmer = self->_prewarmer;
  _prewarmReason = [(CSCameraQuickAction *)self _prewarmReason];
  [(CSCameraPrewarming *)prewarmer prewarmCameraForIdentifier:_prewarmingIdentifier prewarmReason:_prewarmReason];

  v5 = [(CSCameraPrewarming *)self->_prewarmer prewarmConfigurationForIdentifier:_prewarmingIdentifier];
  LOBYTE(_prewarmReason) = [v5 prewarmForCaptureLaunch];

  delegate = self->_delegate;
  if (_prewarmReason)
  {
    _containingApplicationBundleIdentifier = [(CSCameraQuickAction *)self _containingApplicationBundleIdentifier];
    [(CSCameraQuickActionDelegate *)delegate launchCameraCapture:_containingApplicationBundleIdentifier];
  }

  else
  {
    [(CSCameraQuickActionDelegate *)self->_delegate activateCameraView];
  }

  [(CSCameraPrewarming *)self->_prewarmer notePrewarmRequestWasUsefulForIdentifier:_prewarmingIdentifier];
}

- (void)touchEnded
{
  [(NSTimer *)self->_activePrewarmTimer invalidate];
  activePrewarmTimer = self->_activePrewarmTimer;
  self->_activePrewarmTimer = 0;

  if (!self->_hasFiredForTouch)
  {
    prewarmer = self->_prewarmer;
    _prewarmingIdentifier = [(CSCameraQuickAction *)self _prewarmingIdentifier];
    [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:_prewarmingIdentifier];
  }
}

- (BOOL)_shouldPrewarmOnTouch
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    return [(SBLockScreenDefaults *)lockScreenDefaults prewarmCameraOnButtonTouch];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    return [(CSLockScreenSettings *)prototypeSettings prewarmsCameraHardwareOnTap];
  }
}

- (BOOL)_shouldPrelaunchOnTouch
{
  if ([(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForCameraPrewarm])
  {
    lockScreenDefaults = self->_lockScreenDefaults;

    return [(SBLockScreenDefaults *)lockScreenDefaults prelaunchCameraOnButtonTouch];
  }

  else
  {
    prototypeSettings = self->_prototypeSettings;

    return [(CSLockScreenSettings *)prototypeSettings prelaunchesCameraAppOnTap];
  }
}

- (id)_containingApplicationBundleIdentifier
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"SBCameraContainingApplicationBundleIdentifier"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"com.apple.camera";
  }

  v5 = v4;

  return v4;
}

- (id)_prewarmingIdentifier
{
  if ([(CSCameraQuickAction *)self _shouldPrelaunchOnTouch])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = [CSCameraPrewarmingIdentifier alloc];
  _containingApplicationBundleIdentifier = [(CSCameraQuickAction *)self _containingApplicationBundleIdentifier];
  v6 = [(CSCameraPrewarmingIdentifier *)v4 initWithCameraPrewarmType:v3 applicationBundleIdentifier:_containingApplicationBundleIdentifier];

  return v6;
}

@end