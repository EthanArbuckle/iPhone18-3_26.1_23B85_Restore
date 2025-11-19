@interface HomeManagerXPCClientConnectionsManager
- (BOOL)hasActiveConnections;
- (NSUUID)messageTargetUUID;
- (_TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager)init;
- (void)configure;
- (void)handleActiveAssertionUpdateStateMessage:(id)a3;
@end

@implementation HomeManagerXPCClientConnectionsManager

- (NSUUID)messageTargetUUID
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageTargetUUID, v3);
  v8 = sub_253CCFF18();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)configure
{
  v2 = self;
  sub_253200C54();
}

- (BOOL)hasActiveConnections
{
  v2 = self;
  v3 = sub_253200EC0();

  return v3;
}

- (void)handleActiveAssertionUpdateStateMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2532020D0(v4);
}

- (_TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end