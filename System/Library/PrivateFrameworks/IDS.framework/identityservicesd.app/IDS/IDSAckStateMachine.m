@interface IDSAckStateMachine
- (IDSAckStateMachine)init;
@end

@implementation IDSAckStateMachine

- (IDSAckStateMachine)init
{
  v6.receiver = self;
  v6.super_class = IDSAckStateMachine;
  v2 = [(IDSAckStateMachine *)&v6 init];
  v3 = v2;
  if (v2)
  {
    error = v2->_error;
    v2->_state = 0;
    v2->_error = 0;
    v2->_successful = 1;
  }

  return v3;
}

@end