@interface IDSParakeetMessagingStopStateMachine
- (void)dealloc;
@end

@implementation IDSParakeetMessagingStopStateMachine

- (void)dealloc
{
  v3 = [(IDSParakeetMessagingStopStateMachine *)self finalAckTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = IDSParakeetMessagingStopStateMachine;
  [(IDSParakeetMessagingStopStateMachine *)&v4 dealloc];
}

@end