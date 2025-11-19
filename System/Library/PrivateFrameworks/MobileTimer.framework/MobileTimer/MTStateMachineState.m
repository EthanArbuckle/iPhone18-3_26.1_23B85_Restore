@interface MTStateMachineState
- (MTStateMachine)stateMachine;
- (MTStateMachineState)initWithStateMachine:(id)a3;
@end

@implementation MTStateMachineState

- (MTStateMachineState)initWithStateMachine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTStateMachineState;
  v5 = [(MTStateMachineState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, v4);
  }

  return v6;
}

- (MTStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end