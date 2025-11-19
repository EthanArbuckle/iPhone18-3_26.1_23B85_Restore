@interface MapsSyncDateRange
- (NSDate)lower;
- (NSDate)upper;
- (_TtC8MapsSync17MapsSyncDateRange)init;
- (_TtC8MapsSync17MapsSyncDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
@end

@implementation MapsSyncDateRange

- (_TtC8MapsSync17MapsSyncDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v4 = sub_1B63BE994();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1B63BE974();
  sub_1B63BE974();
  return MapsSyncDateRange.init(startDate:endDate:)(v10, v8);
}

- (NSDate)lower
{
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, v3);
  v8 = sub_1B63BE954();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSDate)upper
{
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
  (*(v4 + 16))(v7, &v8[*(v9 + 36)], v3);
  v10 = sub_1B63BE954();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (_TtC8MapsSync17MapsSyncDateRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end