@interface MotionManager
- (void)bagChangeNotification:(id)a3;
@end

@implementation MotionManager

- (void)bagChangeNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000E5520();

  (*(v4 + 8))(v7, v3);
}

@end