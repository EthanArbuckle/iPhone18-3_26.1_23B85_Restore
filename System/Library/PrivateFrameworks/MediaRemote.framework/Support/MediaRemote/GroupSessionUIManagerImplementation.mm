@interface GroupSessionUIManagerImplementation
- (void)bannerWithRequestIdentifier:(id)identifier didReceiveEvent:(unint64_t)event;
- (void)beginObservingSession:(id)session;
- (void)dismissDiscoveredSession:(id)session;
- (void)dismissJoinRequest:(id)request;
- (void)handleDisplayMonitorChangeNotification:(id)notification;
- (void)nearbyGroupSessionDismissed:(id)dismissed;
- (void)openMusicForDiscoveredSession:(id)session foreground:(BOOL)foreground completion:(id)completion;
- (void)openMusicParticipantManagementWithCompletion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation GroupSessionUIManagerImplementation

- (void)handleDisplayMonitorChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100003F8C();
}

- (void)beginObservingSession:(id)session
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100391704(session);
  swift_unknownObjectRelease();
}

- (void)dismissDiscoveredSession:(id)session
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100391BAC(v4, v6);
}

- (void)dismissJoinRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_100393508(requestCopy);
}

- (void)openMusicForDiscoveredSession:(id)session foreground:(BOOL)foreground completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  sessionCopy = session;
  selfCopy = self;
  sub_100393850(sessionCopy, foreground, v8, v9);
  sub_1001C7C2C(v8);
}

- (void)openMusicParticipantManagementWithCompletion:(id)completion
{
  v5 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
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

  selfCopy = self;
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

- (void)bannerWithRequestIdentifier:(id)identifier didReceiveEvent:(unint64_t)event
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_100395100(v6, v8, event);
}

- (void)nearbyGroupSessionDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  selfCopy = self;
  sub_100395664(dismissedCopy);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1003992DC(responseCopy, v9);
}

@end