@interface AXLTLockScreenObserver
- (AXLTLockScreenObserver)init;
- (AXLTLockScreenObserverDelegate)delegate;
- (void)_registerScreenNotification;
@end

@implementation AXLTLockScreenObserver

- (AXLTLockScreenObserver)init
{
  v5.receiver = self;
  v5.super_class = AXLTLockScreenObserver;
  v2 = [(AXLTLockScreenObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXLTLockScreenObserver *)v2 _registerScreenNotification];
  }

  return v3;
}

- (void)_registerScreenNotification
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__AXLTLockScreenObserver__registerScreenNotification__block_invoke;
  v6[3] = &unk_27981CC78;
  objc_copyWeak(&v7, &location);
  v3 = _Block_copy(v6);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  LODWORD(v4) = notify_register_dispatch("com.apple.springboard.lockstate", &self->_notifyLockStateToken, v4, v3);

  if (v4)
  {
    self->_notifyLockStateToken = -1;
  }

  else
  {
    (*(v3 + 2))(v3, self->_notifyLockStateToken);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__AXLTLockScreenObserver__registerScreenNotification__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    [WeakRetained _updateScreenLock:state64];
  }
}

- (AXLTLockScreenObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end