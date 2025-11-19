@interface AccessoryInfoFetchController
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon28AccessoryInfoFetchController)init;
- (void)handleFetchWithMessage:(id)a3;
@end

@implementation AccessoryInfoFetchController

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageTargetUUID, v3);
  v8 = sub_22A4DB77C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)handleFetchWithMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22966A0E8(v4);
}

- (_TtC13HomeKitDaemon28AccessoryInfoFetchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end