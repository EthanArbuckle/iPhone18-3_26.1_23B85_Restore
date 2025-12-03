@interface SingleValueCurrentValueViewDataSource
- (_TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource)init;
- (_TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter;
- (id)titleFor:(id)for;
- (void)updateDataSourceWithGraphView:(id)view displayType:(id)type timeScope:(int64_t)scope;
@end

@implementation SingleValueCurrentValueViewDataSource

- (id)titleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1D1301818();

  return v6;
}

- (void)updateDataSourceWithGraphView:(id)view displayType:(id)type timeScope:(int64_t)scope
{
  viewCopy = view;
  typeCopy = type;
  selfCopy = self;
  sub_1D1300AD4(viewCopy, typeCopy, scope);
}

- (_TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter
{
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints;
  *v8 = 0;
  v8[8] = 1;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SingleValueCurrentValueViewDataSource();
  return [(HKCurrentValueViewDataSource *)&v10 initWithDateCache:cache healthStore:store selectedRangeFormatter:formatter];
}

- (_TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource)init
{
  v2 = self + OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints;
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SingleValueCurrentValueViewDataSource();
  return [(SingleValueCurrentValueViewDataSource *)&v4 init];
}

@end