@interface AccessoryInfoFetchController
- (NSUUID)messageTargetUUID;
- (_TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController)init;
@end

@implementation AccessoryInfoFetchController

- (NSUUID)messageTargetUUID
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageTargetUUID, v3);
  v8 = sub_253CCFF18();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end