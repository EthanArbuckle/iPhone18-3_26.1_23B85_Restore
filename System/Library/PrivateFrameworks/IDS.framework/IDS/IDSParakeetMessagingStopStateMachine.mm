@interface IDSParakeetMessagingStopStateMachine
- (void)dealloc;
@end

@implementation IDSParakeetMessagingStopStateMachine

- (void)dealloc
{
  finalAckTimer = [(IDSParakeetMessagingStopStateMachine *)self finalAckTimer];
  [finalAckTimer invalidate];

  v4.receiver = self;
  v4.super_class = IDSParakeetMessagingStopStateMachine;
  [(IDSParakeetMessagingStopStateMachine *)&v4 dealloc];
}

@end