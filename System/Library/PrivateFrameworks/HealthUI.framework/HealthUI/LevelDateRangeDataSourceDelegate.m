@interface LevelDateRangeDataSourceDelegate
- (_TtC8HealthUI32LevelDateRangeDataSourceDelegate)init;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation LevelDateRangeDataSourceDelegate

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1C3CE5800(v6, a4);

  sub_1C3C315FC();
  v8 = sub_1C3D202A4();

  return v8;
}

- (_TtC8HealthUI32LevelDateRangeDataSourceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end