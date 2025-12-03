@interface LocationManager
- (void)bagChangeNotification:(id)notification;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)performedSearchNotification:(id)notification;
@end

@implementation LocationManager

- (void)bagChangeNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100080190();

  (*(v5 + 8))(v8, v4);
}

- (void)performedSearchNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100080D04();

  (*(v5 + 8))(v8, v4);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100005180(0, &qword_100215DC8, CLLocation_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1000824B8();
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_10008254C(selfCopy, status);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10008281C();
}

@end