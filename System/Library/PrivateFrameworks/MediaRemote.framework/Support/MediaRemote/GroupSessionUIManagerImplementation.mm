@interface GroupSessionUIManagerImplementation
- (void)bannerWithRequestIdentifier:(id)a3 didReceiveEvent:(unint64_t)a4;
- (void)beginObservingSession:(id)a3;
- (void)dismissDiscoveredSession:(id)a3;
- (void)dismissJoinRequest:(id)a3;
- (void)handleDisplayMonitorChangeNotification:(id)a3;
- (void)nearbyGroupSessionDismissed:(id)a3;
- (void)openMusicForDiscoveredSession:(id)a3 foreground:(BOOL)a4 completion:(id)a5;
- (void)openMusicParticipantManagementWithCompletion:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation GroupSessionUIManagerImplementation

- (void)handleDisplayMonitorChangeNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100003F8C();
}

- (void)beginObservingSession:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100391704(a3);
  swift_unknownObjectRelease();
}

- (void)dismissDiscoveredSession:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100391BAC(v4, v6);
}

- (void)dismissJoinRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100393508(v4);
}

- (void)openMusicForDiscoveredSession:(id)a3 foreground:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100225514;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_100393850(v10, a4, v8, v9);
  sub_1001C7C2C(v8);
}

- (void)openMusicParticipantManagementWithCompletion:(id)a3
{
  v5 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_100224B80;
  }

  else
  {
    v10 = 0;
  }

  v11 = self;
  URL.init(string:)();
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100393CB8(v8, 1, v9, v10);

    sub_1001C7C2C(v9);
    (*(v13 + 8))(v8, v12);
  }
}

- (void)bannerWithRequestIdentifier:(id)a3 didReceiveEvent:(unint64_t)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  sub_100395100(v6, v8, a4);
}

- (void)nearbyGroupSessionDismissed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100395664(v4);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1003992DC(v11, v9);
}

@end