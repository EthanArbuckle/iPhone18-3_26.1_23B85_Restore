@interface CAMPhysicalCaptureNotifier
- (CAMPhysicalCaptureNotifier)initWithView:(id)a3 includeVolumeButtons:(BOOL)a4;
- (CAMPhysicalCaptureNotifierDelegate)delegate;
- (void)_setCameraCaseShutterState:(int64_t)a3;
- (void)_setVolumeDownButtonState:(int64_t)a3;
- (void)_setVolumeUpButtonState:(int64_t)a3;
- (void)_updateCaptureButtonNotifications;
- (void)_updateStateAndNotifyDelegateIfNeededForButton:(int64_t)a3;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CAMPhysicalCaptureNotifier

- (CAMPhysicalCaptureNotifier)initWithView:(id)a3 includeVolumeButtons:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMPhysicalCaptureNotifier;
  v8 = [(CAMPhysicalCaptureNotifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__view, a3);
    v9->_includesVolumeButtons = a4;
    [(CAMPhysicalCaptureNotifier *)v9 setEnabled:1];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(BSInvalidatable *)self->__cameraButtonRequest invalidate];
  v4.receiver = self;
  v4.super_class = CAMPhysicalCaptureNotifier;
  [(CAMPhysicalCaptureNotifier *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(CAMPhysicalCaptureNotifier *)self _updateCaptureButtonNotifications];
  }
}

- (void)_updateCaptureButtonNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 _view];
  v4 = [v3 window];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Unable to generate a valid BKSHIDEventDeferringToken from a view's window (%{public}@), not deferring camera case events for SBSHardwareButtonService", &v5, 0xCu);
}

- (void)_setVolumeUpButtonState:(int64_t)a3
{
  if (self->_volumeUpButtonState != a3)
  {
    self->_volumeUpButtonState = a3;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:1];
  }
}

- (void)_setVolumeDownButtonState:(int64_t)a3
{
  if (self->_volumeDownButtonState != a3)
  {
    self->_volumeDownButtonState = a3;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:2];
  }
}

- (void)_setCameraCaseShutterState:(int64_t)a3
{
  if (self->_cameraCaseButtonState != a3)
  {
    self->_cameraCaseButtonState = a3;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:4];
  }
}

- (void)_updateStateAndNotifyDelegateIfNeededForButton:(int64_t)a3
{
  v5 = [(CAMPhysicalCaptureNotifier *)self delegate];
  [v5 physicalCaptureNotifierDidChangeState:self forButton:a3];
}

- (CAMPhysicalCaptureNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end