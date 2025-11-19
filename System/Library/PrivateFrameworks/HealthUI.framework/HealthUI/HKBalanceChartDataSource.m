@interface HKBalanceChartDataSource
- (HKBalanceChartDataSource)init;
- (HKBalanceChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (HKBalanceChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)mappingFunctionForContext:(id)a3;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryCalendar;
- (id)queryDescription;
- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4;
@end

@implementation HKBalanceChartDataSource

- (HKBalanceChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  v6 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = a3;
  v11 = a4;
  v12 = [v9 hk_gregorianCalendarWithFirstWeekdayFromRegion];
  sub_1C3D1E384();

  v13 = objc_allocWithZone(type metadata accessor for BalanceChartDataSource());
  v14 = sub_1C3CE1444(v10, v11, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (id)queryDescription
{
  swift_getObjectType();
  v3 = self;
  sub_1C3D20CD4();
  MEMORY[0x1C692F800](58, 0xE100000000000000);
  MEMORY[0x1C692F800](*(&v3->super.super.isa + OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier), *(&v3->super._healthStore + OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier));

  v4 = sub_1C3D200C4();

  return v4;
}

- (id)queryCalendar
{
  v3 = sub_1C3D1E3C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar, v3, v5);
  v8 = sub_1C3D1E364();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (unint64_t)calendarUnitForTimeScope:(int64_t)a3 displayType:(id)a4
{
  if (a3 == 6)
  {
    return 16;
  }

  v10 = v4;
  v11 = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BalanceChartDataSource();
  return [(HKHealthQueryChartCacheDataSource *)&v9 calendarUnitForTimeScope:a3 displayType:a4];
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1C3CE1A20(v8, sub_1C3CB46F8, v7);

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
  __swift_destroy_boxed_opaque_existential_0(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v8[4] = sub_1C3CE4578;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C3CE0EEC;
  v8[3] = &block_descriptor_19;
  v6 = _Block_copy(v8);

  return v6;
}

- (HKBalanceChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKBalanceChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end