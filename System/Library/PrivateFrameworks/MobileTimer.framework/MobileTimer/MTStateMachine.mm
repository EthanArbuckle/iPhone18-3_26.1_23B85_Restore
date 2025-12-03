@interface MTStateMachine
- (MTStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider;
- (MTStateMachineDelegate)delegate;
- (MTStateMachineInfoProvider)infoProvider;
- (NSString)description;
- (id)stateMachineName;
- (void)enterState:(id)state;
@end

@implementation MTStateMachine

- (MTStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider
{
  delegateCopy = delegate;
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = MTStateMachine;
  v8 = [(MTStateMachine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_infoProvider, providerCopy);
  }

  return v9;
}

- (void)enterState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  currentState = [(MTStateMachine *)self currentState];

  if (currentState != stateCopy)
  {
    stateMachineLog = [(MTStateMachine *)self stateMachineLog];
    if (os_log_type_enabled(stateMachineLog, OS_LOG_TYPE_DEFAULT))
    {
      stateMachineName = [(MTStateMachine *)self stateMachineName];
      currentState = self->_currentState;
      v13 = 138543874;
      v14 = stateMachineName;
      v15 = 2112;
      v16 = stateCopy;
      v17 = 2114;
      v18 = currentState;
      _os_log_impl(&dword_1B1F9F000, stateMachineLog, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will enter state %@ with previous state %{public}@", &v13, 0x20u);
    }

    currentState2 = [(MTStateMachine *)self currentState];
    [(MTStateMachineState *)currentState2 willExitWithNextState:stateCopy];
    [stateCopy willEnterWithPreviousState:currentState2];
    [(MTStateMachine *)self setCurrentState:stateCopy];
    [(MTStateMachineState *)currentState2 didExitWithNextState:stateCopy];
    [stateCopy didEnterWithPreviousState:currentState2];
    stateMachineLog2 = [(MTStateMachine *)self stateMachineLog];
    if (os_log_type_enabled(stateMachineLog2, OS_LOG_TYPE_DEFAULT))
    {
      stateMachineName2 = [(MTStateMachine *)self stateMachineName];
      v13 = 138543874;
      v14 = stateMachineName2;
      v15 = 2114;
      v16 = stateCopy;
      v17 = 2114;
      v18 = currentState2;
      _os_log_impl(&dword_1B1F9F000, stateMachineLog2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did enter state %{public}@ with previous state %{public}@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)stateMachineName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = MTStateMachine;
  v3 = [(MTStateMachine *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  currentState = [(MTStateMachine *)self currentState];
  [v4 appendFormat:@"; currentState: %@>", currentState];

  return v4;
}

- (MTStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MTStateMachineInfoProvider)infoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);

  return WeakRetained;
}

@end