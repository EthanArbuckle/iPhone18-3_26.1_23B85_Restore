@interface HDSwimmingEventCollector
+ (BOOL)isAvailableInCurrentHardware;
- (_TtC12HealthDaemon24HDSwimmingEventCollector)init;
- (_TtC12HealthDaemon24HDSwimmingEventCollector)initWithProfile:(id)profile delegate:(id)delegate;
- (void)historicalSwimmingDataDidUpdate:(id)update reference:(id)reference;
- (void)startWithSessionId:(id)id;
- (void)stop;
@end

@implementation HDSwimmingEventCollector

- (_TtC12HealthDaemon24HDSwimmingEventCollector)initWithProfile:(id)profile delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HDSwimmingEventCollector();
  return [(HDWorkoutEventCollector *)&v7 initWithProfile:profile delegate:delegate];
}

- (void)startWithSessionId:(id)id
{
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  selfCopy = self;
  sub_2289B6550(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)stop
{
  selfCopy = self;
  sub_2289B6960();
}

- (void)historicalSwimmingDataDidUpdate:(id)update reference:(id)reference
{
  type metadata accessor for HDCMSwimData();
  v6 = sub_22911C45C();
  referenceCopy = reference;
  selfCopy = self;
  sub_2289B6B24(v6, referenceCopy);
}

+ (BOOL)isAvailableInCurrentHardware
{
  v2 = sub_22911C34C();
  v3 = NSClassFromString(v2);

  if (v3)
  {
    return 1;
  }

  return MEMORY[0x2821208B0](v4, v5);
}

- (_TtC12HealthDaemon24HDSwimmingEventCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end