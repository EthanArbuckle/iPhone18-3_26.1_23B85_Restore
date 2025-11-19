@interface NFStateMachineTransition
- (NFStateMachineTransition)initWithStateMachine:(id)a3 event:(id)a4 fromState:(id)a5 toState:(id)a6 context:(id)a7;
- (id)description;
@end

@implementation NFStateMachineTransition

- (NFStateMachineTransition)initWithStateMachine:(id)a3 event:(id)a4 fromState:(id)a5 toState:(id)a6 context:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NFStateMachineTransition;
  v17 = [(NFStateMachineTransition *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_stateMachine, a3);
    objc_storeStrong(&v18->_event, a4);
    objc_storeStrong(&v18->_fromState, a5);
    objc_storeStrong(&v18->_toState, a6);
    objc_storeStrong(&v18->_context, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NFStateMachineTransition *)self event];
  v5 = [(NFStateMachineTransition *)self fromState];
  v6 = [(NFStateMachineTransition *)self toState];
  v7 = [(NFStateMachineTransition *)self context];
  v8 = [v3 stringWithFormat:@"{%p event=%@, fromState=%@, toState=%@, context=%@}", self, v4, v5, v6, v7];

  return v8;
}

@end