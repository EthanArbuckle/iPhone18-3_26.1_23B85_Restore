@interface LevelDateRangeDataSourceDelegate
- (_TtC8HealthUI32LevelDateRangeDataSourceDelegate)init;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation LevelDateRangeDataSourceDelegate

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  selfCopy = self;
  sub_1C3CE5800(rangeCopy, scope);

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