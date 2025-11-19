@interface SharePlayDiscoverabilityAppsController
- (void)handleCallConnected:(id)a3;
@end

@implementation SharePlayDiscoverabilityAppsController

- (void)handleCallConnected:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  SharePlayDiscoverabilityAppsController.handleCallConnected(_:)();

  (*(v5 + 8))(v7, v4);
}

@end