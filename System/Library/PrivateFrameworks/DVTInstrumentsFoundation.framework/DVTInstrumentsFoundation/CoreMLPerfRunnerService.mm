@interface CoreMLPerfRunnerService
+ (void)registerCapabilities:(id)capabilities;
- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)init;
- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)initWithChannel:(id)channel;
- (void)messageReceived:(id)received;
@end

@implementation CoreMLPerfRunnerService

+ (void)registerCapabilities:(id)capabilities
{
  swift_getObjCClassMetadata();
  capabilitiesCopy = capabilities;
  v4 = sub_248030B28();
  [capabilitiesCopy publishCapability:v4 withVersion:4 forClass:swift_getObjCClassFromMetadata()];
}

- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)initWithChannel:(id)channel
{
  v4 = qword_27EE839E8;
  channelCopy = channel;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE85A38;
  type metadata accessor for CoreMLPerfRunnerServiceMessageHandler();
  v7 = swift_allocObject();
  *(v7 + 5) = type metadata accessor for CoreMLPerfCoordinator();
  *(v7 + 6) = &protocol witness table for CoreMLPerfCoordinator;
  *(v7 + 2) = v6;
  *(v7 + 7) = channelCopy;
  *(&self->super.super.isa + OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler) = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CoreMLPerfRunnerService();

  return [(DTXService *)&v9 initWithChannel:channelCopy];
}

- (void)messageReceived:(id)received
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CoreMLPerfRunnerService();
  receivedCopy = received;
  v5 = v7.receiver;
  [(DTXService *)&v7 messageReceived:receivedCopy];
  v6 = *&v5[OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler];
  sub_2480236A4(receivedCopy);
}

- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end