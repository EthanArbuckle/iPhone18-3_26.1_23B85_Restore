@interface CloudSecureManagerProxy
+ (BCCloudSecureManaging)sharedManager;
+ (void)setSharedManager:(id)manager;
- (_TtC13BookDataStore23CloudSecureManagerProxy)init;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)handleRemoteCKNotification:(id)notification;
- (void)handleRemoteNotification:(id)notification;
@end

@implementation CloudSecureManagerProxy

+ (BCCloudSecureManaging)sharedManager
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC13BookDataStore23CloudSecureManagerProxy)init
{
  v3 = [objc_allocWithZone(BDSServiceProxy) init];
  *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy) = v3;
  *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_engagementManager) = v3;
  *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_userDataManager) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CloudSecureManagerProxy();
  v4 = v3;
  return [(CloudSecureManagerProxy *)&v6 init];
}

- (void)handleRemoteNotification:(id)notification
{
  v4 = sub_1E470AE3C();
  selfCopy = self;
  sub_1E46B9CB0(v4);
}

- (void)handleRemoteCKNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1E46B9F18(notificationCopy);
}

+ (void)setSharedManager:(id)manager
{
  v4 = qword_1EE2AD590;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2AD5A0 = manager;
  swift_unknownObjectRelease();
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
    v8 = sub_1E46BAC5C;
    v12[4] = sub_1E46BAC5C;
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1E46BA7E4;
    v12[3] = &unk_1F5E65B78;
    v9 = _Block_copy(v12);
    selfCopy = self;
  }

  else
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
    selfCopy2 = self;
    v9 = 0;
    v8 = 0;
  }

  [v7 dissociateCloudDataFromSyncWithCompletion_];
  sub_1E45EB5D8(v8);
  _Block_release(v9);
}

@end