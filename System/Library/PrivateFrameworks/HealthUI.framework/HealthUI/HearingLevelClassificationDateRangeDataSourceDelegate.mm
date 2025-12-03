@interface HearingLevelClassificationDateRangeDataSourceDelegate
- (_TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate)init;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation HearingLevelClassificationDateRangeDataSourceDelegate

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  selfCopy = self;
  sub_1C3CB57F0(rangeCopy, scope);

  sub_1C3C315FC();
  v8 = sub_1C3D202A4();

  return v8;
}

- (_TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end