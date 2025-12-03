@interface InCallControlsIgnoreLMIRequestsCell
- (void)didToggleMuteState:(id)state;
@end

@implementation InCallControlsIgnoreLMIRequestsCell

- (void)didToggleMuteState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  InCallControlsIgnoreLMIRequestsCell.didToggleMuteState(_:)();
}

@end