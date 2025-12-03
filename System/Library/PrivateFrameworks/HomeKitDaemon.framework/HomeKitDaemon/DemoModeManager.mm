@interface DemoModeManager
- (HAPAccessoryServerBrowser)demoAccessoryBrowser;
- (HMDDemoModeManagerDataSource)demoModeDataSource;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (_TtC13HomeKitDaemon15DemoModeManager)init;
- (id)handleTestModeConfigRequestPayload:(id)payload error:(id *)error;
- (void)configure;
- (void)handleNotification:(id)notification;
- (void)handleRequestMessage:(id)message;
@end

@implementation DemoModeManager

- (HMDDemoModeManagerDataSource)demoModeDataSource
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)handleRequestMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22986C2C4(messageCopy);
}

- (void)handleNotification:(id)notification
{
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  selfCopy = self;
  sub_22987480C(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtC13HomeKitDaemon15DemoModeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSUUID)messageTargetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  selfCopy = self;
  result = [v8 uuid];
  if (result)
  {
    v11 = result;
    sub_22A4DB79C();

    v12 = sub_22A4DB77C();
    (*(v4 + 8))(v7, v3);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  selfCopy = self;
  result = [v2 workQueue];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (HAPAccessoryServerBrowser)demoAccessoryBrowser
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource);
  selfCopy = self;
  if ([v2 isDemoModeV2EnabledAndActive])
  {
    if (qword_27D87B8A0 != -1)
    {
      swift_once();
    }

    v4 = qword_27D8AB630;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configure
{
  selfCopy = self;
  sub_2298832E8();
}

- (id)handleTestModeConfigRequestPayload:(id)payload error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v5 = sub_22A4DD49C();
  selfCopy = self;
  sub_229886DE8(v5);

  v7 = sub_22A4DD47C();

  return v7;
}

@end