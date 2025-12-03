@interface CKCamPhysicalCaptureNotifier
- (CKCamPhysicalCaptureNotifier)init;
- (CKCamPhysicalCaptureNotifierDelegate)delegate;
- (void)_setVolumeDownButtonState:(int64_t)state;
- (void)_setVolumeUpButtonState:(int64_t)state;
- (void)_updateCaptureButtonNotifications;
- (void)_updateStateAndNotifyDelegateIfNeeded;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CKCamPhysicalCaptureNotifier

- (CKCamPhysicalCaptureNotifier)init
{
  v5.receiver = self;
  v5.super_class = CKCamPhysicalCaptureNotifier;
  v2 = [(CKCamPhysicalCaptureNotifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKCamPhysicalCaptureNotifier *)v2 setEnabled:1];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&_CurrentNotifier);
  if (!WeakRetained)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] setWantsVolumeButtonEvents:0];
  }

  [(BSInvalidatable *)self->__cameraButtonRequest invalidate];
  v6.receiver = self;
  v6.super_class = CKCamPhysicalCaptureNotifier;
  [(CKCamPhysicalCaptureNotifier *)&v6 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CKCamPhysicalCaptureNotifier *)self _updateCaptureButtonNotifications];
    if (self->_enabled)
    {

      objc_storeWeak(&_CurrentNotifier, self);
    }
  }
}

- (void)_updateCaptureButtonNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([(CKCamPhysicalCaptureNotifier *)self isEnabled])
  {
    [mEMORY[0x1E69DC668] setWantsVolumeButtonEvents:1];
    [defaultCenter addObserver:self selector:sel__handleVolumeUpButtonUpNotification_ name:*MEMORY[0x1E69DE870] object:0];
    [defaultCenter addObserver:self selector:sel__handleVolumeUpButtonDownNotification_ name:*MEMORY[0x1E69DE868] object:0];
    [defaultCenter addObserver:self selector:sel__handleVolumeDownButtonUpNotification_ name:*MEMORY[0x1E69DE860] object:0];
    [defaultCenter addObserver:self selector:sel__handleVolumeDownButtonDownNotification_ name:*MEMORY[0x1E69DE858] object:0];
    [defaultCenter addObserver:self selector:sel__handleVolumeDownButtonUpNotification_ name:@"_UIApplicationCameraShutterButtonUpNotification" object:0];
    [defaultCenter addObserver:self selector:sel__handleVolumeDownButtonDownNotification_ name:@"_UIApplicationCameraShutterButtonDownNotification" object:0];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v5 = getBKSHIDEventDeferringTokenClass_softClass;
    v17 = getBKSHIDEventDeferringTokenClass_softClass;
    if (!getBKSHIDEventDeferringTokenClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getBKSHIDEventDeferringTokenClass_block_invoke;
      v13[3] = &unk_1E72EB968;
      v13[4] = &v14;
      __getBKSHIDEventDeferringTokenClass_block_invoke(v13);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668]2 keyWindow];
    v9 = [v5 tokenForIdentifierOfCAContext:{objc_msgSend(keyWindow, "_contextId")}];

    if (v9)
    {
      mEMORY[0x1E69D4220] = [MEMORY[0x1E69D4220] sharedInstance];
      v11 = [mEMORY[0x1E69D4220] deferHIDEventsForButtonKind:7 toToken:v9];
      [(CKCamPhysicalCaptureNotifier *)self set_cameraButtonRequest:v11];
    }
  }

  else
  {
    [mEMORY[0x1E69DC668] setWantsVolumeButtonEvents:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE870] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE868] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE860] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE858] object:0];
    [defaultCenter removeObserver:self name:@"_UIApplicationCameraShutterButtonUpNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIApplicationCameraShutterButtonDownNotification" object:0];
    _cameraButtonRequest = [(CKCamPhysicalCaptureNotifier *)self _cameraButtonRequest];
    [_cameraButtonRequest invalidate];

    [(CKCamPhysicalCaptureNotifier *)self set_cameraButtonRequest:0];
    [(CKCamPhysicalCaptureNotifier *)self _setVolumeUpButtonState:0];
    [(CKCamPhysicalCaptureNotifier *)self _setVolumeDownButtonState:0];
  }
}

- (void)_setVolumeUpButtonState:(int64_t)state
{
  if (self->__volumeUpButtonState != state)
  {
    _volumeDownButtonState = [(CKCamPhysicalCaptureNotifier *)self _volumeDownButtonState];
    if (state != 1 || _volumeDownButtonState != 1)
    {
      self->__volumeUpButtonState = state;

      [(CKCamPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeeded];
    }
  }
}

- (void)_setVolumeDownButtonState:(int64_t)state
{
  if (self->__volumeDownButtonState != state)
  {
    _volumeUpButtonState = [(CKCamPhysicalCaptureNotifier *)self _volumeUpButtonState];
    if (state != 1 || _volumeUpButtonState != 1)
    {
      self->__volumeDownButtonState = state;

      [(CKCamPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeeded];
    }
  }
}

- (void)_updateStateAndNotifyDelegateIfNeeded
{
  _volumeUpButtonState = [(CKCamPhysicalCaptureNotifier *)self _volumeUpButtonState];
  _volumeDownButtonState = [(CKCamPhysicalCaptureNotifier *)self _volumeDownButtonState];
  v6 = _volumeUpButtonState == 1 || _volumeDownButtonState == 1;
  if ([(CKCamPhysicalCaptureNotifier *)self state]!= v6)
  {
    [(CKCamPhysicalCaptureNotifier *)self _setState:v6];
    delegate = [(CKCamPhysicalCaptureNotifier *)self delegate];
    [delegate physicalCaptureNotifierDidChangeState:self];
  }
}

- (CKCamPhysicalCaptureNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end