@interface MTStateMachineState
- (MTStateMachine)stateMachine;
- (MTStateMachineState)initWithStateMachine:(id)machine;
@end

@implementation MTStateMachineState

- (MTStateMachineState)initWithStateMachine:(id)machine
{
  machineCopy = machine;
  v8.receiver = self;
  v8.super_class = MTStateMachineState;
  v5 = [(MTStateMachineState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, machineCopy);
  }

  return v6;
}

- (MTStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end