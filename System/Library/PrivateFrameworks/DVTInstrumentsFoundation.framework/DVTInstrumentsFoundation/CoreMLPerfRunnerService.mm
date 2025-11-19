@interface CoreMLPerfRunnerService
+ (void)registerCapabilities:(id)a3;
- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)init;
- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)initWithChannel:(id)a3;
- (void)messageReceived:(id)a3;
@end

@implementation CoreMLPerfRunnerService

+ (void)registerCapabilities:(id)a3
{
  swift_getObjCClassMetadata();
  v5 = a3;
  v4 = sub_248030B28();
  [v5 publishCapability:v4 withVersion:4 forClass:swift_getObjCClassFromMetadata()];
}

- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)initWithChannel:(id)a3
{
  v4 = qword_27EE839E8;
  v5 = a3;
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
  *(v7 + 7) = v5;
  *(&self->super.super.isa + OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler) = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CoreMLPerfRunnerService();

  return [(DTXService *)&v9 initWithChannel:v5];
}

- (void)messageReceived:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CoreMLPerfRunnerService();
  v4 = a3;
  v5 = v7.receiver;
  [(DTXService *)&v7 messageReceived:v4];
  v6 = *&v5[OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler];
  sub_2480236A4(v4);
}

- (_TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end