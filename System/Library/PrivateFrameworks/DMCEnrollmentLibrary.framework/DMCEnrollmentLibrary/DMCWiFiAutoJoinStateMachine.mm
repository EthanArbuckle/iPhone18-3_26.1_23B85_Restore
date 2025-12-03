@interface DMCWiFiAutoJoinStateMachine
- (DMCRapidReturnToServiceFlowController)controller;
- (DMCWiFiAutoJoinStateMachine)init;
- (id)_invalidStateTransitionError;
- (void)processWiFiAutoJoinStateRequest:(unint64_t)request reason:(id)reason completion:(id)completion;
- (void)progressToDisableWiFiWithReason:(id)reason;
- (void)progressToHaveNetworkWithCompletion:(id)completion;
- (void)progressToPowerOnWithCompletion:(id)completion;
- (void)progressToState:(unint64_t)state reason:(id)reason completion:(id)completion;
- (void)resetToState:(unint64_t)state;
@end

@implementation DMCWiFiAutoJoinStateMachine

- (DMCWiFiAutoJoinStateMachine)init
{
  v7.receiver = self;
  v7.super_class = DMCWiFiAutoJoinStateMachine;
  v2 = [(DMCWiFiAutoJoinStateMachine *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentState = 0;
    v4 = objc_opt_new();
    wifi = v3->_wifi;
    v3->_wifi = v4;
  }

  return v3;
}

- (void)progressToState:(unint64_t)state reason:(id)reason completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  currentState = self->_currentState;
  v12 = *DMCLogObjects();
  v13 = v12;
  if (currentState >= state)
  {
    v16 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (v16)
    {
      if (self->_currentState <= 3)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiAutoJoinState: [%ld]", self->_currentState];
      }

      v17 = v16;
      if (state <= 3)
      {
        state = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiAutoJoinState: [%ld]", state];
      }

      *buf = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = state;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_FAULT, "[DMCWiFiAutoJoinStateMachine] Invalid transition: %{public}@ -> %{public}@", buf, 0x16u);
    }

    _invalidStateTransitionError = [(DMCWiFiAutoJoinStateMachine *)self _invalidStateTransitionError];
    completionCopy[2](completionCopy, 0, _invalidStateTransitionError);

    self->_currentState = 0;
  }

  else
  {
    v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (self->_currentState <= 3)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiAutoJoinState: [%ld]", self->_currentState];
      }

      v15 = v14;
      if (state <= 3)
      {
        state = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiAutoJoinState: [%ld]", state];
      }

      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = state;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, "[DMCWiFiAutoJoinStateMachine] Perform valid state transition: %@ -> %@", buf, 0x16u);
    }

    self->_currentState = state;
    if (state == 3)
    {
      [(DMCWiFiAutoJoinStateMachine *)self progressToDisableWiFiWithReason:reasonCopy];
    }

    [(DMCWiFiAutoJoinStateMachine *)self processWiFiAutoJoinStateRequest:state reason:reasonCopy completion:completionCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)progressToPowerOnWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_currentState <= 3)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiAutoJoinState: [%ld]", self->_currentState];
    }

    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "[DMCWiFiAutoJoinStateMachine] Transition to Power On state from %{public}@", buf, 0xCu);
  }

  if ([(DMCWiFiUtilities *)self->_wifi powerOn])
  {
    [(DMCWiFiAutoJoinStateMachine *)self progressToState:1 reason:@"None" completion:completionCopy];
  }

  else
  {
    wifi = self->_wifi;
    v16 = 0;
    v8 = [(DMCWiFiUtilities *)wifi setPower:1 error:&v16];
    v9 = v16;
    v10 = v9;
    if (!v8 || v9)
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "[DMCWiFiAutoJoinStateMachine] Failed to turn on WiFi: %{public}@", buf, 0xCu);
      }

      v11 = @"Unable to turn on WiFi power";
      selfCopy2 = self;
      v13 = 3;
    }

    else
    {
      v11 = @"None";
      selfCopy2 = self;
      v13 = 1;
    }

    [(DMCWiFiAutoJoinStateMachine *)selfCopy2 progressToState:v13 reason:v11 completion:completionCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)progressToHaveNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(DMCWiFiUtilities *)self->_wifi haveNetwork])
  {
    [(DMCWiFiAutoJoinStateMachine *)self progressToState:2 reason:@"None" completion:completionCopy];
  }

  else
  {
    wifi = self->_wifi;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__DMCWiFiAutoJoinStateMachine_progressToHaveNetworkWithCompletion___block_invoke;
    v6[3] = &unk_278EE4150;
    v6[4] = self;
    v7 = completionCopy;
    [(DMCWiFiUtilities *)wifi enableAutoJoinIfNeededWithTimeout:v6 completionHandler:30.0];
  }
}

uint64_t __67__DMCWiFiAutoJoinStateMachine_progressToHaveNetworkWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3 || !a2)
  {
    v5 = @"Unable to join network";
    v6 = 3;
  }

  else
  {
    v5 = @"None";
    v6 = 2;
  }

  return [v4 progressToState:v6 reason:v5 completion:*(a1 + 40)];
}

- (void)progressToDisableWiFiWithReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  wifi = self->_wifi;
  v15 = 0;
  v6 = [(DMCWiFiUtilities *)wifi setPower:0 error:&v15];
  v7 = v15;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    delegate = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_controller);
      delegate2 = [v11 delegate];
      [delegate2 wifiAutoJoinFailedWithReason:reasonCopy];
    }
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Error turnning WiFi power off: %{public}@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processWiFiAutoJoinStateRequest:(unint64_t)request reason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v10 = completionCopy;
  if (request <= 1)
  {
    if (!request)
    {
      [(DMCWiFiAutoJoinStateMachine *)self progressToPowerOnWithCompletion:completionCopy];
      goto LABEL_14;
    }

    if (request == 1)
    {
      [(DMCWiFiAutoJoinStateMachine *)self progressToHaveNetworkWithCompletion:completionCopy];
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (request == 2)
  {
    self->_currentState = 0;
    (*(completionCopy + 2))(completionCopy, 1, 0);
    goto LABEL_14;
  }

  if (request != 3)
  {
LABEL_10:
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_ERROR, "[DMCWiFiAutoJoinStateMachine] Invalid state", v15, 2u);
    }

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v12 = [WeakRetained errorWithCode:16005 message:reasonCopy];
  (v10)[2](v10, 0, v12);

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "[DMCWiFiAutoJoinStateMachine] Failed to complete the flow and disabled WiFi", buf, 2u);
  }

  self->_currentState = 0;
LABEL_14:
}

- (void)resetToState:(unint64_t)state
{
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "State machine reset requested", v6, 2u);
  }

  self->_currentState = state;
}

- (id)_invalidStateTransitionError
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v3 = [WeakRetained errorWithCode:16004 message:@"WiFi Auto Join invalid state transition"];

  return v3;
}

- (DMCRapidReturnToServiceFlowController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end