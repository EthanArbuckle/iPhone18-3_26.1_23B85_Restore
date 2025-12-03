@interface AudiogramLongitudinalChartDataSource
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)init;
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDataType:(id)type healthStore:(id)store;
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDisplayType:(id)type healthStore:(id)store;
- (id)mappingFunctionForContext:(id)context;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation AudiogramLongitudinalChartDataSource

- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDisplayType:(id)type healthStore:(id)store
{
  objc_allocWithZone(type metadata accessor for AudiogramAnalyticsManager());
  storeCopy = store;
  typeCopy = type;
  *(&self->super.super.isa + OBJC_IVAR____TtC8HealthUI36AudiogramLongitudinalChartDataSource_analyticsManager) = sub_1C3CE5060(storeCopy);
  v11.receiver = self;
  v11.super_class = type metadata accessor for AudiogramLongitudinalChartDataSource();
  v9 = [(HKHealthQueryChartCacheDataSource *)&v11 initWithDisplayType:typeCopy healthStore:storeCopy];

  return v9;
}

- (id)queryDescription
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  sub_1C3D20134();
  v2 = sub_1C3D200C4();

  return v2;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_1C3C330F8(requestCopy, sub_1C3C34674, v7);

  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v10 = sub_1C3D202A4();

  return v10;
}

- (id)mappingFunctionForContext:(id)context
{
  swift_unknownObjectRetain();
  sub_1C3D20774();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v5);
  v5[4] = sub_1C3C34038;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C3CE0EEC;
  v5[3] = &block_descriptor_3;
  v3 = _Block_copy(v5);

  return v3;
}

- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDataType:(id)type healthStore:(id)store
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end