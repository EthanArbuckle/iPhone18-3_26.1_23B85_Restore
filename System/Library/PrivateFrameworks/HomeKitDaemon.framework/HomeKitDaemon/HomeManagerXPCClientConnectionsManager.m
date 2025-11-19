@interface HomeManagerXPCClientConnectionsManager
- (BOOL)hasActiveConnections;
- (NSUUID)messageTargetUUID;
- (_TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager)init;
- (void)configure;
- (void)handleActiveAssertionUpdateStateMessage:(id)a3;
@end

@implementation HomeManagerXPCClientConnectionsManager

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager_messageTargetUUID, v3);
  v8 = sub_22A4DB77C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)configure
{
  v2 = self;
  sub_229793F64();
}

- (BOOL)hasActiveConnections
{
  v2 = self;
  v3 = sub_2297941D0();

  return v3;
}

- (void)handleActiveAssertionUpdateStateMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_229794820(v4);
}

- (_TtC13HomeKitDaemon38HomeManagerXPCClientConnectionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end