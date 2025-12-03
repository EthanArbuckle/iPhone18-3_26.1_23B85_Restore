@interface DeviceRestrictionsManager
- (void)accountsDidChange:(id)change;
- (void)updateDeviceRestrictions:(id)restrictions;
@end

@implementation DeviceRestrictionsManager

- (void)accountsDidChange:(id)change
{
  v4 = sub_100046184(&qword_100215AA8, &unk_100199CA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  if (change)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Notification();
    v9 = 1;
  }

  sub_1000051C0(v7, v9, 1, v8);

  sub_100064740(v7);

  sub_10000F94C(v7, &qword_100215AA8, &unk_100199CA0);
}

- (void)updateDeviceRestrictions:(id)restrictions
{
  v4 = sub_100046184(&qword_100215AA8, &unk_100199CA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  if (restrictions)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Notification();
    v9 = 1;
  }

  sub_1000051C0(v7, v9, 1, v8);

  sub_100038368();

  sub_10000F94C(v7, &qword_100215AA8, &unk_100199CA0);
}

@end