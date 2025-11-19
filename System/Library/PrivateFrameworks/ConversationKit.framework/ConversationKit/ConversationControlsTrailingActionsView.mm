@interface ConversationControlsTrailingActionsView
- (void)tappedStopScreenShareWithSender:(id)a3;
@end

@implementation ConversationControlsTrailingActionsView

- (void)tappedStopScreenShareWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsTrailingActionsView.tappedStopScreenShare(sender:)(v5);
}

@end