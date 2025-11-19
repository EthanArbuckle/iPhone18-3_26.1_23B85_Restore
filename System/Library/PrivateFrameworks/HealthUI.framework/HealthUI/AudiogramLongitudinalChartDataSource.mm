@interface AudiogramLongitudinalChartDataSource
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)init;
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)mappingFunctionForContext:(id)a3;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation AudiogramLongitudinalChartDataSource

- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  objc_allocWithZone(type metadata accessor for AudiogramAnalyticsManager());
  v7 = a4;
  v8 = a3;
  *(&self->super.super.isa + OBJC_IVAR____TtC8HealthUI36AudiogramLongitudinalChartDataSource_analyticsManager) = sub_1C3CE5060(v7);
  v11.receiver = self;
  v11.super_class = type metadata accessor for AudiogramLongitudinalChartDataSource();
  v9 = [(HKHealthQueryChartCacheDataSource *)&v11 initWithDisplayType:v8 healthStore:v7];

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

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1C3C330F8(v8, sub_1C3C34674, v7);

  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v10 = sub_1C3D202A4();

  return v10;
}

- (id)mappingFunctionForContext:(id)a3
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

- (_TtC8HealthUI36AudiogramLongitudinalChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
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