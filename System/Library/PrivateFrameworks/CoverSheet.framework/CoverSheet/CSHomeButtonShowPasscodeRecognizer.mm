@interface CSHomeButtonShowPasscodeRecognizer
- (CSHomeButtonShowPasscodeRecognizer)initWithFingerOn:(BOOL)on;
- (SBHomeButtonShowPasscodeRecognizerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_invalidateMinimumTimer;
- (void)_minimumTimerFired;
- (void)_reallySetState:(unint64_t)state forReason:(id)reason;
- (void)_switchedFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)dealloc;
- (void)handleBiometricEvent:(unint64_t)event;
- (void)noteAuthenticated:(BOOL)authenticated;
@end

@implementation CSHomeButtonShowPasscodeRecognizer

- (CSHomeButtonShowPasscodeRecognizer)initWithFingerOn:(BOOL)on
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CSHomeButtonShowPasscodeRecognizer;
  v4 = [(CSHomeButtonShowPasscodeRecognizer *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_fingerWasOnInitially = on;
    v6 = [MEMORY[0x277CF0C00] builderWithObject:v4];
    build = [v6 build];
    simplePublicDescription = v5->_simplePublicDescription;
    v5->_simplePublicDescription = build;

    v9 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v5->_simplePublicDescription;
      v11 = NSStringFromBOOL();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_INFO, "Initialized %{public}@ with finger on: %{public}@", buf, 0x16u);
    }

    [(CSHomeButtonShowPasscodeRecognizer *)v5 _reallySetState:1 forReason:@"InitializedFromHomeButtonPress"];
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  [(CSHomeButtonShowPasscodeRecognizer *)self _invalidateMinimumTimer];
  v3 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    simplePublicDescription = self->_simplePublicDescription;
    *buf = 138543362;
    v7 = simplePublicDescription;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_INFO, "[%{public}@] dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSHomeButtonShowPasscodeRecognizer;
  [(CSHomeButtonShowPasscodeRecognizer *)&v5 dealloc];
}

- (void)handleBiometricEvent:(unint64_t)event
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CSHomeButtonShowPasscodeRecognizer *)event handleBiometricEvent:v5];
  }

  if (self->_state - 3 >= 2)
  {
    if (event <= 0x21 && ((1 << event) & 0x2070009E0) != 0)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = NSStringFromSBUIBiometricEvent();
      [v6 stringWithFormat:@"BiometricEventRequiresPasscode: %@", v7];
      v8 = LABEL_7:;
      [(CSHomeButtonShowPasscodeRecognizer *)self _reallySetState:3 forReason:v8];

LABEL_8:
      return;
    }

    if (event - 9 <= 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v7 = NSStringFromSBUIBiometricEvent();
      [v9 stringWithFormat:@"MatchFailure: %@", v7];
      goto LABEL_7;
    }

    if (event)
    {
      if (event == 1)
      {
        v7 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(CSHomeButtonShowPasscodeRecognizer *)self handleBiometricEvent:v7];
        }

        goto LABEL_8;
      }
    }

    else
    {
      v10 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(CSHomeButtonShowPasscodeRecognizer *)self handleBiometricEvent:v10];
      }

      if (self->_fingerWasOnInitially)
      {
        self->_fingerHasLifted = 1;
        v11 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          simplePublicDescription = self->_simplePublicDescription;
          *buf = 138543362;
          v14 = simplePublicDescription;
          _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_INFO, "[%{public}@] initial finger down has lifted", buf, 0xCu);
        }

        if (self->_state == 2)
        {
          [(CSHomeButtonShowPasscodeRecognizer *)self _reallySetState:3 forReason:@"Finger Off After Minimum Timer Has Passed"];
        }
      }
    }
  }
}

- (void)noteAuthenticated:(BOOL)authenticated
{
  if (self->_state - 3 >= 2)
  {
    authenticatedCopy = authenticated;
    v5 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CSHomeButtonShowPasscodeRecognizer *)self noteAuthenticated:authenticatedCopy, v5];
    }

    if (authenticatedCopy)
    {
      [(CSHomeButtonShowPasscodeRecognizer *)self _reallySetState:4 forReason:@"Authenticated"];
    }
  }
}

- (void)_reallySetState:(unint64_t)state forReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  state = self->_state;
  if (state != state && state - 3 >= 2)
  {
    self->_state = state;
    v10 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      simplePublicDescription = self->_simplePublicDescription;
      v12 = self->_state - 1;
      if (v12 > 3)
      {
        v13 = @"Initial";
      }

      else
      {
        v13 = off_27838E1A8[v12];
      }

      v14 = 138543874;
      v15 = simplePublicDescription;
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_INFO, "[%{public}@] changed to state: %{public}@ for reason: %{public}@", &v14, 0x20u);
    }

    [(CSHomeButtonShowPasscodeRecognizer *)self _switchedFromState:state toState:self->_state];
    if (self->_state - 3 <= 1)
    {
      objc_storeStrong(&self->_terminalStateReasoning, reason);
    }
  }
}

- (void)_switchedFromState:(unint64_t)state toState:(unint64_t)toState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (state == 1)
  {
    [(CSHomeButtonShowPasscodeRecognizer *)self _invalidateMinimumTimer];
  }

  switch(toState)
  {
    case 4uLL:
      [WeakRetained homeButtonShowPasscodeRecognizerDidFailToRecognize:self];
      break;
    case 3uLL:
      [WeakRetained homeButtonShowPasscodeRecognizerRequestsPasscodeUIToBeShown:self];
      break;
    case 1uLL:
      objc_initWeak(&location, self);
      v8 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSHomeButtonShowPasscodeRecognizer.minimumTimer"];
      minimumTimer = self->_minimumTimer;
      self->_minimumTimer = v8;

      v10 = self->_minimumTimer;
      v11 = MEMORY[0x277D85CD0];
      v12 = MEMORY[0x277D85CD0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__CSHomeButtonShowPasscodeRecognizer__switchedFromState_toState___block_invoke;
      v13[3] = &unk_27838B948;
      objc_copyWeak(&v14, &location);
      [(BSAbsoluteMachTimer *)v10 scheduleWithFireInterval:v11 leewayInterval:v13 queue:0.15 handler:0.0];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      break;
  }
}

void __65__CSHomeButtonShowPasscodeRecognizer__switchedFromState_toState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _minimumTimerFired];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSHomeButtonShowPasscodeRecognizer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSHomeButtonShowPasscodeRecognizer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSHomeButtonShowPasscodeRecognizer *)self succinctDescriptionBuilder];
  v5 = succinctDescriptionBuilder;
  v6 = self->_state - 1;
  if (v6 > 3)
  {
    v7 = @"Initial";
  }

  else
  {
    v7 = off_27838E1A8[v6];
  }

  [succinctDescriptionBuilder appendString:v7 withName:@"state"];
  v8 = [v5 appendBool:self->_minimumTimer != 0 withName:@"minimumTimerActive"];
  v9 = [v5 appendBool:self->_fingerWasOnInitially withName:@"initialFingerOn?"];
  v10 = [v5 appendBool:self->_fingerHasLifted withName:@"initialFingerOnHasLifted?"];
  if (self->_state - 3 <= 1)
  {
    v11 = [v5 appendObject:self->_terminalStateReasoning withName:@"finalStateReason"];
  }

  return v5;
}

- (void)_invalidateMinimumTimer
{
  [(BSAbsoluteMachTimer *)self->_minimumTimer invalidate];
  minimumTimer = self->_minimumTimer;
  self->_minimumTimer = 0;
}

- (void)_minimumTimerFired
{
  [(CSHomeButtonShowPasscodeRecognizer *)self _invalidateMinimumTimer];
  if (self->_state != 1)
  {
    return;
  }

  if (self->_fingerWasOnInitially)
  {
    if (!self->_fingerHasLifted)
    {
      v3 = @"MinimumTimeToShowPasscodePassed - finger on initially but hasn't yet lifted";
      selfCopy2 = self;
      v5 = 2;
      goto LABEL_9;
    }

    v3 = @"MinimumTimerExpired - was on initially and lifted during the minimum timer.";
  }

  else
  {
    v3 = @"MinimumTimerExpired - finger was not on at the time the home button press recognized";
  }

  selfCopy2 = self;
  v5 = 3;
LABEL_9:

  [(CSHomeButtonShowPasscodeRecognizer *)selfCopy2 _reallySetState:v5 forReason:v3];
}

- (SBHomeButtonShowPasscodeRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleBiometricEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSBUIBiometricEvent();
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "Received biometric event: %{public}@", &v4, 0xCu);
}

- (void)handleBiometricEvent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] fingerOff", &v3, 0xCu);
}

- (void)handleBiometricEvent:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] fingerOn", &v3, 0xCu);
}

- (void)noteAuthenticated:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = NSStringFromBOOL();
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21EB05000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] authenticated: %{public}@", &v6, 0x16u);
}

@end