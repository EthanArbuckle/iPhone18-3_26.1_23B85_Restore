@interface NFStateMachineTransition
- (NFStateMachineTransition)initWithStateMachine:(id)machine event:(id)event fromState:(id)state toState:(id)toState context:(id)context;
- (id)description;
@end

@implementation NFStateMachineTransition

- (NFStateMachineTransition)initWithStateMachine:(id)machine event:(id)event fromState:(id)state toState:(id)toState context:(id)context
{
  machineCopy = machine;
  eventCopy = event;
  stateCopy = state;
  toStateCopy = toState;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = NFStateMachineTransition;
  v17 = [(NFStateMachineTransition *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_stateMachine, machine);
    objc_storeStrong(&v18->_event, event);
    objc_storeStrong(&v18->_fromState, state);
    objc_storeStrong(&v18->_toState, toState);
    objc_storeStrong(&v18->_context, context);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  event = [(NFStateMachineTransition *)self event];
  fromState = [(NFStateMachineTransition *)self fromState];
  toState = [(NFStateMachineTransition *)self toState];
  context = [(NFStateMachineTransition *)self context];
  v8 = [v3 stringWithFormat:@"{%p event=%@, fromState=%@, toState=%@, context=%@}", self, event, fromState, toState, context];

  return v8;
}

@end