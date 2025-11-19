@interface UserPresenceUpdateSubscriptionManager
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager)init;
- (void)handleHomePresenceUpdateNotification:(id)a3;
@end

@implementation UserPresenceUpdateSubscriptionManager

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_uuid, v3);
  v8 = sub_22A4DB77C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)handleHomePresenceUpdateNotification:(id)a3
{
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();

  sub_22960805C();

  (*(v4 + 8))(v7, v3);
}

- (_TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end