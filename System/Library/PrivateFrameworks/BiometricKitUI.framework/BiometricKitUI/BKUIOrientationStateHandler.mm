@interface BKUIOrientationStateHandler
+ (unint64_t)bkui_getState:(int)state;
- (BKUIOrientationStateHandler)init;
- (BOOL)rotationLockStatusIsLocked;
- (int64_t)rawDeviceOrientationIgnoringOrientationLocks;
- (void)_invalidateTokenIfNeeded:(int)needed;
- (void)dealloc;
- (void)registerRotationLockObserver:(id)observer;
- (void)registerRotationObserver:(id)observer;
@end

@implementation BKUIOrientationStateHandler

- (BKUIOrientationStateHandler)init
{
  v3.receiver = self;
  v3.super_class = BKUIOrientationStateHandler;
  result = [(BKUIOrientationStateHandler *)&v3 init];
  if (result)
  {
    *&result->_rawOrientationToken = -1;
    *&result->_rotationLockNotificationToken = -1;
  }

  return result;
}

- (int64_t)rawDeviceOrientationIgnoringOrientationLocks
{
  out_token = 0;
  rawOrientationToken = self->_rawOrientationToken;
  if (rawOrientationToken == -1)
  {
    notify_register_check(RAW_ORIENTATION_TOKEN_NAME, &out_token);
    rawOrientationToken = out_token;
    self->_rawOrientationToken = out_token;
  }

  check = 0;
  notify_check(rawOrientationToken, &check);
  v4 = self->_rawOrientationToken;
  if (v4 == -1 || check == 0)
  {
    return self->_lastKownOrientation;
  }

  v7 = 0;
  notify_get_state(v4, &v7);
  result = v7;
  self->_lastKownOrientation = v7;
  return result;
}

- (BOOL)rotationLockStatusIsLocked
{
  out_token = 0;
  orientationLockToken = self->_orientationLockToken;
  if (orientationLockToken == -1)
  {
    notify_register_check(RAW_ORIENTATION_LOCK_TOKEN_NAME, &out_token);
    orientationLockToken = out_token;
    self->_orientationLockToken = out_token;
    if (orientationLockToken == -1)
    {
      return 0;
    }
  }

  v5 = 0;
  notify_get_state(orientationLockToken, &v5);
  return v5 != 0;
}

- (void)registerRotationObserver:(id)observer
{
  observerCopy = observer;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "ForcedRotation:registerRotationObserver:", &buf, 2u);
  }

  if (self->_orientationNotificationToken == -1)
  {
    out_token = 0;
    objc_initWeak(&buf, self);
    v6 = RAW_ORIENTATION_TOKEN_NAME;
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__BKUIOrientationStateHandler_registerRotationObserver___block_invoke;
    v9[3] = &unk_278D098D8;
    objc_copyWeak(&v11, &buf);
    v10 = observerCopy;
    notify_register_dispatch(v6, &out_token, v7, v9);

    self->_orientationNotificationToken = out_token;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&buf);
  }
}

void __56__BKUIOrientationStateHandler_registerRotationObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 2) = a2;
  }

  v6 = [BKUIOrientationStateHandler bkui_getState:a2];
  v7 = _BKUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "ForcedRotation:[Rotation Callback] device orientation: %i", v10, 8u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerRotationLockObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (self->_rotationLockNotificationToken == -1)
  {
    out_token = 0;
    v6 = RAW_ORIENTATION_LOCK_TOKEN_NAME;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__BKUIOrientationStateHandler_registerRotationLockObserver___block_invoke;
    v7[3] = &unk_278D09900;
    v8 = observerCopy;
    notify_register_dispatch(v6, &out_token, MEMORY[0x277D85CD0], v7);
    self->_rotationLockNotificationToken = out_token;
  }
}

uint64_t __60__BKUIOrientationStateHandler_registerRotationLockObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  [BKUIOrientationStateHandler bkui_getState:a2];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

+ (unint64_t)bkui_getState:(int)state
{
  state64 = 0;
  notify_get_state(state, &state64);
  return state64;
}

- (void)dealloc
{
  [(BKUIOrientationStateHandler *)self _invalidateTokenIfNeeded:self->_orientationNotificationToken];
  [(BKUIOrientationStateHandler *)self _invalidateTokenIfNeeded:self->_rotationLockNotificationToken];
  [(BKUIOrientationStateHandler *)self _invalidateTokenIfNeeded:self->_orientationLockToken];
  [(BKUIOrientationStateHandler *)self _invalidateTokenIfNeeded:self->_rawOrientationToken];
  v3.receiver = self;
  v3.super_class = BKUIOrientationStateHandler;
  [(BKUIOrientationStateHandler *)&v3 dealloc];
}

- (void)_invalidateTokenIfNeeded:(int)needed
{
  if (notify_is_valid_token(needed))
  {

    notify_cancel(needed);
  }
}

@end