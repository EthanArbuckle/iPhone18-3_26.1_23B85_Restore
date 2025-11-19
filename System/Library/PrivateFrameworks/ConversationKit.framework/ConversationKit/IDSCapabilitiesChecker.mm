@interface IDSCapabilitiesChecker
- (void)handleLookupManagerDidChangeNotification:(id)a3;
@end

@implementation IDSCapabilitiesChecker

- (void)handleLookupManagerDidChangeNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  IDSCapabilitiesChecker.handleLookupManagerDidChangeNotification(_:)();

  (*(v4 + 8))(v6, v3);
}

@end