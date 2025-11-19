@interface CSCameraQuickAction
- (BOOL)_allowsCamera;
- (BOOL)_shouldPrelaunchOnTouch;
- (BOOL)_shouldPrewarmOnTouch;
- (CSCameraQuickAction)initWithDelegate:(id)a3 prewarmer:(id)a4 prototypeSettings:(id)a5 defaults:(id)a6;
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

- (CSCameraQuickAction)initWithDelegate:(id)a3 prewarmer:(id)a4 prototypeSettings:(id)a5 defaults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CSCameraQuickAction;
  v15 = [(CSCameraQuickAction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_delegate, a3);
    objc_storeStrong(&v16->_prewarmer, a4);
    objc_storeStrong(&v16->_prototypeSettings, a5);
    objc_storeStrong(&v16->_lockScreenDefaults, a6);
  }

  return v16;
}

- (void)touchBegan
{
  self->_hasFiredForTouch = 0;
  prewarmer = self->_prewarmer;
  v4 = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  v5 = [(CSCameraQuickAction *)self _prewarmReason];
  [(CSCameraPrewarming *)prewarmer prewarmCameraForIdentifier:v4 prewarmReason:v5];

  activePrewarmTimer = self->_activePrewarmTimer;
  if (activePrewarmTimer)
  {
    [(NSTimer *)activePrewarmTimer invalidate];
    v7 = self->_activePrewarmTimer;
    self->_activePrewarmTimer = 0;
  }

  v8 = [(CSLockScreenSettings *)self->_prototypeSettings dashBoardQuickActionButtonSettings];
  [v8 maximumTouchDuration];
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
  v5 = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:v5];
}

- (void)fireAction
{
  self->_hasFiredForTouch = 1;
  v8 = [(CSCameraQuickAction *)self _prewarmingIdentifier];
  prewarmer = self->_prewarmer;
  v4 = [(CSCameraQuickAction *)self _prewarmReason];
  [(CSCameraPrewarming *)prewarmer prewarmCameraForIdentifier:v8 prewarmReason:v4];

  v5 = [(CSCameraPrewarming *)self->_prewarmer prewarmConfigurationForIdentifier:v8];
  LOBYTE(v4) = [v5 prewarmForCaptureLaunch];

  delegate = self->_delegate;
  if (v4)
  {
    v7 = [(CSCameraQuickAction *)self _containingApplicationBundleIdentifier];
    [(CSCameraQuickActionDelegate *)delegate launchCameraCapture:v7];
  }

  else
  {
    [(CSCameraQuickActionDelegate *)self->_delegate activateCameraView];
  }

  [(CSCameraPrewarming *)self->_prewarmer notePrewarmRequestWasUsefulForIdentifier:v8];
}

- (void)touchEnded
{
  [(NSTimer *)self->_activePrewarmTimer invalidate];
  activePrewarmTimer = self->_activePrewarmTimer;
  self->_activePrewarmTimer = 0;

  if (!self->_hasFiredForTouch)
  {
    prewarmer = self->_prewarmer;
    v5 = [(CSCameraQuickAction *)self _prewarmingIdentifier];
    [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:v5];
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"SBCameraContainingApplicationBundleIdentifier"];

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
  v5 = [(CSCameraQuickAction *)self _containingApplicationBundleIdentifier];
  v6 = [(CSCameraPrewarmingIdentifier *)v4 initWithCameraPrewarmType:v3 applicationBundleIdentifier:v5];

  return v6;
}

@end