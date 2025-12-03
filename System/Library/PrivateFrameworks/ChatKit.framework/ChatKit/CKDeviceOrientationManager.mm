@interface CKDeviceOrientationManager
- (BOOL)_wantsOrientationEvents;
- (BOOL)isListeningForOrientationEvents;
- (CKDeviceOrientationManager)init;
- (CKDeviceOrientationManagerDelegate)delegate;
- (int64_t)_springboardDeviceLockOrientation;
- (int64_t)currentDeviceOrientation;
- (void)_broadcastOrientation:(int64_t)orientation;
- (void)_updateListeningState;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)beginListeningForOrientationEventsWithKey:(id)key;
- (void)dealloc;
- (void)endListeningForOrientationEventsWithKey:(id)key;
- (void)invalidate;
@end

@implementation CKDeviceOrientationManager

- (void)_updateListeningState
{
  accelerometer = [(CKDeviceOrientationManager *)self accelerometer];
  passiveOrientationEvents = [accelerometer passiveOrientationEvents];

  _wantsOrientationEvents = [(CKDeviceOrientationManager *)self _wantsOrientationEvents];
  accelerometer2 = [(CKDeviceOrientationManager *)self accelerometer];
  [accelerometer2 setPassiveOrientationEvents:!_wantsOrientationEvents];

  if (passiveOrientationEvents && _wantsOrientationEvents)
  {
    accelerometer3 = [(CKDeviceOrientationManager *)self accelerometer];
    -[CKDeviceOrientationManager _broadcastOrientation:](self, "_broadcastOrientation:", [accelerometer3 currentDeviceOrientation]);
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
  listenerKeys = [(CKDeviceOrientationManager *)self listenerKeys];
  v3 = [listenerKeys count] != 0;

  return v3;
}

- (CKDeviceOrientationManager)init
{
  v9.receiver = self;
  v9.super_class = CKDeviceOrientationManager;
  v2 = [(CKDeviceOrientationManager *)&v9 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [defaultCenter addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  v4.receiver = self;
  v4.super_class = CKDeviceOrientationManager;
  [(CKDeviceOrientationManager *)&v4 dealloc];
}

- (void)beginListeningForOrientationEventsWithKey:(id)key
{
  keyCopy = key;
  listenerKeys = [(CKDeviceOrientationManager *)self listenerKeys];
  [listenerKeys addObject:keyCopy];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (void)endListeningForOrientationEventsWithKey:(id)key
{
  keyCopy = key;
  listenerKeys = [(CKDeviceOrientationManager *)self listenerKeys];
  [listenerKeys removeObject:keyCopy];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (int64_t)currentDeviceOrientation
{
  result = [(CKDeviceOrientationManager *)self _springboardDeviceLockOrientation];
  if (!result)
  {
    accelerometer = [(CKDeviceOrientationManager *)self accelerometer];
    currentDeviceOrientation = [accelerometer currentDeviceOrientation];

    return currentDeviceOrientation;
  }

  return result;
}

- (void)invalidate
{
  listenerKeys = [(CKDeviceOrientationManager *)self listenerKeys];
  [listenerKeys removeAllObjects];

  [(CKDeviceOrientationManager *)self _updateListeningState];
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  if ([(CKDeviceOrientationManager *)self _wantsOrientationEvents])
  {

    [(CKDeviceOrientationManager *)self _broadcastOrientation:orientation];
  }
}

- (int64_t)_springboardDeviceLockOrientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v4 = @"SBLastRotationLockedOrientationiPad";
  }

  else
  {
    if (userInterfaceIdiom)
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

- (void)_broadcastOrientation:(int64_t)orientation
{
  _springboardDeviceLockOrientation = [(CKDeviceOrientationManager *)self _springboardDeviceLockOrientation];
  delegate = [(CKDeviceOrientationManager *)self delegate];
  v8 = delegate;
  if (_springboardDeviceLockOrientation)
  {
    orientationCopy = _springboardDeviceLockOrientation;
  }

  else
  {
    orientationCopy = orientation;
  }

  [delegate deviceOrientationManager:self orientationDidChange:orientationCopy];
}

- (CKDeviceOrientationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end