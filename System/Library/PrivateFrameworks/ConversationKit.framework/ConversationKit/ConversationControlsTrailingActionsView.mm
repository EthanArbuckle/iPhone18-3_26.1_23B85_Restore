@interface ConversationControlsTrailingActionsView
- (void)tappedStopScreenShareWithSender:(id)sender;
@end

@implementation ConversationControlsTrailingActionsView

- (void)tappedStopScreenShareWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  ConversationControlsTrailingActionsView.tappedStopScreenShare(sender:)(selfCopy);
}

@end