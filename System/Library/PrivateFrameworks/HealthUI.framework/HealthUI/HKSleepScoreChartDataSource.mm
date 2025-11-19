@interface HKSleepScoreChartDataSource
- (HKSleepScoreChartDataSource)init;
- (HKSleepScoreChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (id)mappingFunctionForContext:(id)a3;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryCalendar;
- (id)queryDescription;
@end

@implementation HKSleepScoreChartDataSource

- (id)queryDescription
{
  swift_getObjectType();
  v3 = self;
  sub_1C3D20CD4();
  MEMORY[0x1C692F800](58, 0xE100000000000000);
  MEMORY[0x1C692F800](*(&v3->super.super.isa + OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier), *(&v3->super._healthStore + OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier));

  v4 = sub_1C3D200C4();

  return v4;
}

- (id)queryCalendar
{
  v3 = sub_1C3D1E3C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar, v3, v5);
  v8 = sub_1C3D1E364();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1C3CB1404(v8, sub_1C3CB46F8, v7);

  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v10 = sub_1C3D202A4();

  return v10;
}

- (id)mappingFunctionForContext:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C3D20774();
  swift_unknownObjectRelease();
  sub_1C3C233B8(&v8, v13);
  v5 = swift_allocObject();
  sub_1C3C233B8(v13, (v5 + 16));
  *(v5 + 48) = v4;
  v11 = sub_1C3CB489C;
  v12 = v5;
  *&v8 = MEMORY[0x1E69E9820];
  *(&v8 + 1) = 1107296256;
  v9 = sub_1C3CE0EEC;
  v10 = &block_descriptor_15;
  v6 = _Block_copy(&v8);

  return v6;
}

- (HKSleepScoreChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKSleepScoreChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end