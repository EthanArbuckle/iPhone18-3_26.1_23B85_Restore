@interface ConversationControlsShareMenuButtonProvider
- (void)capturedDidChangeNotification:(id)a3;
- (void)screenSharingButtonPressed;
- (void)setAutomaticShareState:(BOOL)a3;
@end

@implementation ConversationControlsShareMenuButtonProvider

- (void)screenSharingButtonPressed
{

  ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()();
}

- (void)setAutomaticShareState:(BOOL)a3
{

  ConversationControlsShareMenuButtonProvider.setAutomaticShareState(_:)(a3);
}

- (void)capturedDidChangeNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:)(v6);

  (*(v4 + 8))(v6, v3);
}

@end