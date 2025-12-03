@interface CAMPhysicalCaptureNotifier
- (CAMPhysicalCaptureNotifier)initWithView:(id)view includeVolumeButtons:(BOOL)buttons;
- (CAMPhysicalCaptureNotifierDelegate)delegate;
- (void)_setCameraCaseShutterState:(int64_t)state;
- (void)_setVolumeDownButtonState:(int64_t)state;
- (void)_setVolumeUpButtonState:(int64_t)state;
- (void)_updateCaptureButtonNotifications;
- (void)_updateStateAndNotifyDelegateIfNeededForButton:(int64_t)button;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CAMPhysicalCaptureNotifier

- (CAMPhysicalCaptureNotifier)initWithView:(id)view includeVolumeButtons:(BOOL)buttons
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = CAMPhysicalCaptureNotifier;
  v8 = [(CAMPhysicalCaptureNotifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__view, view);
    v9->_includesVolumeButtons = buttons;
    [(CAMPhysicalCaptureNotifier *)v9 setEnabled:1];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BSInvalidatable *)self->__cameraButtonRequest invalidate];
  v4.receiver = self;
  v4.super_class = CAMPhysicalCaptureNotifier;
  [(CAMPhysicalCaptureNotifier *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CAMPhysicalCaptureNotifier *)self _updateCaptureButtonNotifications];
  }
}

- (void)_updateCaptureButtonNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  _view = [self _view];
  window = [_view window];
  v5 = 138543362;
  v6 = window;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Unable to generate a valid BKSHIDEventDeferringToken from a view's window (%{public}@), not deferring camera case events for SBSHardwareButtonService", &v5, 0xCu);
}

- (void)_setVolumeUpButtonState:(int64_t)state
{
  if (self->_volumeUpButtonState != state)
  {
    self->_volumeUpButtonState = state;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:1];
  }
}

- (void)_setVolumeDownButtonState:(int64_t)state
{
  if (self->_volumeDownButtonState != state)
  {
    self->_volumeDownButtonState = state;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:2];
  }
}

- (void)_setCameraCaseShutterState:(int64_t)state
{
  if (self->_cameraCaseButtonState != state)
  {
    self->_cameraCaseButtonState = state;
    [(CAMPhysicalCaptureNotifier *)self _updateStateAndNotifyDelegateIfNeededForButton:4];
  }
}

- (void)_updateStateAndNotifyDelegateIfNeededForButton:(int64_t)button
{
  delegate = [(CAMPhysicalCaptureNotifier *)self delegate];
  [delegate physicalCaptureNotifierDidChangeState:self forButton:button];
}

- (CAMPhysicalCaptureNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end