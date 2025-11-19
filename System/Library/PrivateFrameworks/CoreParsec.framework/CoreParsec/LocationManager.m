@interface LocationManager
- (void)bagChangeNotification:(id)a3;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)performedSearchNotification:(id)a3;
@end

@implementation LocationManager

- (void)bagChangeNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100080190();

  (*(v5 + 8))(v8, v4);
}

- (void)performedSearchNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100080D04();

  (*(v5 + 8))(v8, v4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_100005180(0, &qword_100215DC8, CLLocation_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_1000824B8();
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_10008254C(v7, a4);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10008281C();
}

@end