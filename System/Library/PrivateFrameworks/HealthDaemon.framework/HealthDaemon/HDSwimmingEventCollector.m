@interface HDSwimmingEventCollector
+ (BOOL)isAvailableInCurrentHardware;
- (_TtC12HealthDaemon24HDSwimmingEventCollector)init;
- (_TtC12HealthDaemon24HDSwimmingEventCollector)initWithProfile:(id)a3 delegate:(id)a4;
- (void)historicalSwimmingDataDidUpdate:(id)a3 reference:(id)a4;
- (void)startWithSessionId:(id)a3;
- (void)stop;
@end

@implementation HDSwimmingEventCollector

- (_TtC12HealthDaemon24HDSwimmingEventCollector)initWithProfile:(id)a3 delegate:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HDSwimmingEventCollector();
  return [(HDWorkoutEventCollector *)&v7 initWithProfile:a3 delegate:a4];
}

- (void)startWithSessionId:(id)a3
{
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  v9 = self;
  sub_2289B6550(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)stop
{
  v2 = self;
  sub_2289B6960();
}

- (void)historicalSwimmingDataDidUpdate:(id)a3 reference:(id)a4
{
  type metadata accessor for HDCMSwimData();
  v6 = sub_22911C45C();
  v7 = a4;
  v8 = self;
  sub_2289B6B24(v6, v7);
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