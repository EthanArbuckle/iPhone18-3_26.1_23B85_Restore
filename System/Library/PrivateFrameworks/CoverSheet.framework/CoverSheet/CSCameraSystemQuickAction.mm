@interface CSCameraSystemQuickAction
- (BOOL)_allowsCamera;
- (BOOL)allowsInteraction;
- (CSCameraSystemQuickAction)initWithQuickActionControlIdentity:(id)identity instance:(id)instance delegate:(id)delegate prewarmer:(id)prewarmer;
- (CSCameraSystemQuickAction)initWithQuickActionControlIdentity:(id)identity instance:(id)instance delegate:(id)delegate prewarmer:(id)prewarmer prototypeSettings:(id)settings defaults:(id)defaults;
- (id)_prewarmingIdentifier;
- (int64_t)_prewarmingType;
- (void)_stopTrackingPrewarm;
- (void)fireAction;
- (void)touchBegan;
- (void)touchEnded;
@end

@implementation CSCameraSystemQuickAction

- (CSCameraSystemQuickAction)initWithQuickActionControlIdentity:(id)identity instance:(id)instance delegate:(id)delegate prewarmer:(id)prewarmer
{
  prewarmerCopy = prewarmer;
  delegateCopy = delegate;
  instanceCopy = instance;
  identityCopy = identity;
  v14 = +[CSLockScreenDomain rootSettings];
  v15 = objc_alloc_init(MEMORY[0x277D65FF0]);
  v16 = [(CSCameraSystemQuickAction *)self initWithQuickActionControlIdentity:identityCopy instance:instanceCopy delegate:delegateCopy prewarmer:prewarmerCopy prototypeSettings:v14 defaults:v15];

  return v16;
}

- (CSCameraSystemQuickAction)initWithQuickActionControlIdentity:(id)identity instance:(id)instance delegate:(id)delegate prewarmer:(id)prewarmer prototypeSettings:(id)settings defaults:(id)defaults
{
  delegateCopy = delegate;
  prewarmerCopy = prewarmer;
  settingsCopy = settings;
  defaultsCopy = defaults;
  v22.receiver = self;
  v22.super_class = CSCameraSystemQuickAction;
  v18 = [(CSSystemQuickAction *)&v22 initWithQuickActionControlIdentity:identity instance:instance delegate:delegateCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_prewarmer, prewarmer);
    objc_storeStrong(&v19->_prototypeSettings, settings);
    objc_storeStrong(&v19->_lockScreenDefaults, defaults);
    objc_storeStrong(&v19->_cameraDelegate, delegate);
  }

  return v19;
}

- (BOOL)allowsInteraction
{
  v5.receiver = self;
  v5.super_class = CSCameraSystemQuickAction;
  allowsInteraction = [(CSSystemQuickAction *)&v5 allowsInteraction];
  if (allowsInteraction)
  {
    LOBYTE(allowsInteraction) = [(CSCameraSystemQuickAction *)self _allowsCamera];
  }

  return allowsInteraction;
}

- (BOOL)_allowsCamera
{
  cameraDelegate = self->_cameraDelegate;
  if (cameraDelegate)
  {
    return [(CSCameraSystemQuickActionDelegate *)cameraDelegate isCameraRestricted]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)touchBegan
{
  v15.receiver = self;
  v15.super_class = CSCameraSystemQuickAction;
  [(CSSystemQuickAction *)&v15 touchBegan];
  self->_hasFiredForTouch = 0;
  prewarmer = self->_prewarmer;
  _prewarmingIdentifier = [(CSCameraSystemQuickAction *)self _prewarmingIdentifier];
  _prewarmReason = [(CSCameraSystemQuickAction *)self _prewarmReason];
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
}

- (void)_stopTrackingPrewarm
{
  [(NSTimer *)self->_activePrewarmTimer invalidate];
  activePrewarmTimer = self->_activePrewarmTimer;
  self->_activePrewarmTimer = 0;

  prewarmer = self->_prewarmer;
  _prewarmingIdentifier = [(CSCameraSystemQuickAction *)self _prewarmingIdentifier];
  [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:_prewarmingIdentifier];
}

- (void)fireAction
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Camera Quick Action] Will fire action %@", buf, 0xCu);
  }

  controlInstance = [(CSSystemQuickAction *)self controlInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CSCameraSystemQuickAction_fireAction__block_invoke;
  v5[3] = &unk_27838D4D8;
  v5[4] = self;
  [controlInstance performControlActionWithCompletion:v5];

  self->_hasFiredForTouch = 1;
}

void __39__CSCameraSystemQuickAction_fireAction__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogDashBoard();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__CSCameraSystemQuickAction_fireAction__block_invoke_cold_1(v3, v5);
    }

    v6 = *(a1 + 32);
    v7 = v6[6];
    v8 = [v6 _prewarmingIdentifier];
    [v7 notePrewarmRequestEndedForIdentifier:v8];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[Camera Quick Action] Fired action successfully: %@", &v13, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = v10[6];
    v12 = [v10 _prewarmingIdentifier];
    [v11 notePrewarmRequestWasUsefulForIdentifier:v12];

    [*(*(a1 + 32) + 72) systemQuickActionActionFired:?];
  }
}

- (void)touchEnded
{
  v6.receiver = self;
  v6.super_class = CSCameraSystemQuickAction;
  [(CSSystemQuickAction *)&v6 touchEnded];
  [(NSTimer *)self->_activePrewarmTimer invalidate];
  activePrewarmTimer = self->_activePrewarmTimer;
  self->_activePrewarmTimer = 0;

  if (!self->_hasFiredForTouch)
  {
    prewarmer = self->_prewarmer;
    _prewarmingIdentifier = [(CSCameraSystemQuickAction *)self _prewarmingIdentifier];
    [(CSCameraPrewarming *)prewarmer notePrewarmRequestEndedForIdentifier:_prewarmingIdentifier];
  }
}

- (int64_t)_prewarmingType
{
  if ([(CSLockScreenSettings *)self->_prototypeSettings prelaunchesCameraAppOnTap])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)_prewarmingIdentifier
{
  controlIdentity = [(CSSystemQuickAction *)self controlIdentity];
  extensionIdentity = [controlIdentity extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  v6 = [[CSCameraPrewarmingIdentifier alloc] initWithCameraPrewarmType:[(CSCameraSystemQuickAction *)self _prewarmingType] applicationBundleIdentifier:containerBundleIdentifier];

  return v6;
}

void __39__CSCameraSystemQuickAction_fireAction__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "[Camera Quick Action] Performing control action failed: %{public}@", &v4, 0xCu);
}

@end