@interface CKDeviceOrientationManager
- (BOOL)_wantsOrientationEvents;
- (BOOL)isListeningForOrientationEvents;
- (CKDeviceOrientationManager)init;
- (CKDeviceOrientationManagerDelegate)delegate;
- (int64_t)_springboardDeviceLockOrientation;
- (int64_t)currentDeviceOrientation;
- (void)_broadcastOrientation:(int64_t)a3;
- (void)_updateListeningState;
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)beginListeningForOrientationEventsWithKey:(id)a3;
- (void)dealloc;
- (void)endListeningForOrientationEventsWithKey:(id)a3;
- (void)invalidate;
@end

@implementation CKDeviceOrientationManager

- (void)_updateListeningState
{
  v3 = [(CKDeviceOrientationManager *)self accelerometer];
  v4 = [v3 passiveOrientationEvents];

  v5 = [(CKDeviceOrientationManager *)self _wantsOrientationEvents];
  v6 = [(CKDeviceOrientationManager *)self accelerometer];
  [v6 setPassiveOrientationEvents:!v5];

  if (v4 && v5)
  {
    v7 = [(CKDeviceOrientationManager *)self accelerometer];
    -[CKDeviceOrientationManager _broadcastOrientation:](self, "_broadcastOrientation:", [v7 currentDeviceOrientation]);
  }
}

- (BOOL)_wantsOrientationEvents
{
  if ([*MEMORY[0x1E69DDA98] applicationState])
  {
    return 0;
  }

  return [(CKDeviceOrientationManager *)self isListeningForOrientationEvents];
}

- (BOOL)isListeningForOrientationEvents
{
  v2 = [(CKDeviceOrientationManager *)self listenerKeys];
  v3 = [v2 count] != 0;

  return v3;
}

- (CKDeviceOrientationManager)init
{
  v9.receiver = self;
  v9.super_class = CKDeviceOrientationManager;
  v2 = [(CKDeviceOrientationManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v3 addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    v4 = objc_alloc_init(MEMORY[0x1E698E380]);
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v4;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    [(BKSAccelerometer *)v2->_accelerometer setOrientationEventsEnabled:1];
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    listenerKeys = v2->_listenerKeys;
    v2->_listenerKeys = v6;

    [(CKDeviceOrientationManager *)v2 _updateListeningState];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  v4.receiver = self;
  v4.super_class = CKDeviceOrientationManager;
  [(CKDeviceOrientationManager *)&v4 dealloc];
}

- (void)beginListeningForOrientationEventsWithKey:(id)a3
{
  v4 = a3;
  v5 = [(CKDeviceOrientationManager *)self listenerKeys];
  [v5 addObject:v4];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (void)endListeningForOrientationEventsWithKey:(id)a3
{
  v4 = a3;
  v5 = [(CKDeviceOrientationManager *)self listenerKeys];
  [v5 removeObject:v4];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (int64_t)currentDeviceOrientation
{
  result = [(CKDeviceOrientationManager *)self _springboardDeviceLockOrientation];
  if (!result)
  {
    v4 = [(CKDeviceOrientationManager *)self accelerometer];
    v5 = [v4 currentDeviceOrientation];

    return v5;
  }

  return result;
}

- (void)invalidate
{
  v3 = [(CKDeviceOrientationManager *)self listenerKeys];
  [v3 removeAllObjects];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  if ([(CKDeviceOrientationManager *)self _wantsOrientationEvents])
  {

    [(CKDeviceOrientationManager *)self _broadcastOrientation:a4];
  }
}

- (int64_t)_springboardDeviceLockOrientation
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = @"SBLastRotationLockedOrientationiPad";
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    v4 = @"SBLastRotationLockedOrientation";
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v4, @"com.apple.springboard", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && (AppIntegerValue - 1) <= 3)
  {
    return qword_190DD18C0[AppIntegerValue - 1];
  }

  return 0;
}

- (void)_broadcastOrientation:(int64_t)a3
{
  v5 = [(CKDeviceOrientationManager *)self _springboardDeviceLockOrientation];
  v6 = [(CKDeviceOrientationManager *)self delegate];
  v8 = v6;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = a3;
  }

  [v6 deviceOrientationManager:self orientationDidChange:v7];
}

- (CKDeviceOrientationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end