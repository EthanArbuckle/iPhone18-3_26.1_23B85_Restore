@interface MTStateMachine
- (MTStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4;
- (MTStateMachineDelegate)delegate;
- (MTStateMachineInfoProvider)infoProvider;
- (NSString)description;
- (id)stateMachineName;
- (void)enterState:(id)a3;
@end

@implementation MTStateMachine

- (MTStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTStateMachine;
  v8 = [(MTStateMachine *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_infoProvider, v7);
  }

  return v9;
}

- (void)enterState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTStateMachine *)self currentState];

  if (v5 != v4)
  {
    v6 = [(MTStateMachine *)self stateMachineLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MTStateMachine *)self stateMachineName];
      currentState = self->_currentState;
      v13 = 138543874;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      v17 = 2114;
      v18 = currentState;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will enter state %@ with previous state %{public}@", &v13, 0x20u);
    }

    v9 = [(MTStateMachine *)self currentState];
    [(MTStateMachineState *)v9 willExitWithNextState:v4];
    [v4 willEnterWithPreviousState:v9];
    [(MTStateMachine *)self setCurrentState:v4];
    [(MTStateMachineState *)v9 didExitWithNextState:v4];
    [v4 didEnterWithPreviousState:v9];
    v10 = [(MTStateMachine *)self stateMachineLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MTStateMachine *)self stateMachineName];
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did enter state %{public}@ with previous state %{public}@", &v13, 0x20u);
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
  v5 = [(MTStateMachine *)self currentState];
  [v4 appendFormat:@"; currentState: %@>", v5];

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