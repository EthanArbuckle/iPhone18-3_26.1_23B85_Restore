@interface CSHomeButtonSuppressAfterUnlockRecognizer
- (CSHomeButtonSuppressAfterUnlockRecognizer)init;
- (SBHomeButtonSuppressAfterUnlockRecognizerDelegate)delegate;
- (void)_invalidateTimer;
- (void)_requestEndOfSuppression;
- (void)_startTimer;
- (void)_timerFired;
- (void)dealloc;
- (void)handleBiometricEvent:(unint64_t)a3;
@end

@implementation CSHomeButtonSuppressAfterUnlockRecognizer

- (CSHomeButtonSuppressAfterUnlockRecognizer)init
{
  v6.receiver = self;
  v6.super_class = CSHomeButtonSuppressAfterUnlockRecognizer;
  v2 = [(CSHomeButtonSuppressAfterUnlockRecognizer *)&v6 init];
  if (v2)
  {
    v3 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "created. starting timer.", v5, 2u);
    }

    [(CSHomeButtonSuppressAfterUnlockRecognizer *)v2 _startTimer];
  }

  return v2;
}

- (void)_startTimer
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSHomeButtonSuppressAfterUnlockRecognizer.timer"];
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CSHomeButtonSuppressAfterUnlockRecognizer__startTimer__block_invoke;
  v8[3] = &unk_27838B948;
  objc_copyWeak(&v9, &location);
  [(BSAbsoluteMachTimer *)v5 scheduleWithFireInterval:v6 leewayInterval:v8 queue:0.3 handler:0.0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__CSHomeButtonSuppressAfterUnlockRecognizer__startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (void)_timerFired
{
  v3 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "timer fired", v4, 2u);
  }

  [(CSHomeButtonSuppressAfterUnlockRecognizer *)self _invalidateTimer];
  [(CSHomeButtonSuppressAfterUnlockRecognizer *)self _requestEndOfSuppression];
}

- (void)_invalidateTimer
{
  v3 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "invalidating timer", v5, 2u);
  }

  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_requestEndOfSuppression
{
  if (!self->_done)
  {
    v3 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "calling delegate to request end of suppression", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeButtonSuppressAfterUnlockRecognizerRequestsEndOfSuppression:self];

    self->_done = 1;
  }
}

- (void)dealloc
{
  v3 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "deallocating", buf, 2u);
  }

  [(CSHomeButtonSuppressAfterUnlockRecognizer *)self _invalidateTimer];
  v4.receiver = self;
  v4.super_class = CSHomeButtonSuppressAfterUnlockRecognizer;
  [(CSHomeButtonSuppressAfterUnlockRecognizer *)&v4 dealloc];
}

- (void)handleBiometricEvent:(unint64_t)a3
{
  if (!a3)
  {
    v8 = v3;
    v9 = v4;
    v6 = SBLogLockScreenMesaHomeButtonSuppressAfterUnlockRecognizer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_INFO, "finger off", v7, 2u);
    }

    [(CSHomeButtonSuppressAfterUnlockRecognizer *)self _requestEndOfSuppression];
  }
}

- (SBHomeButtonSuppressAfterUnlockRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end