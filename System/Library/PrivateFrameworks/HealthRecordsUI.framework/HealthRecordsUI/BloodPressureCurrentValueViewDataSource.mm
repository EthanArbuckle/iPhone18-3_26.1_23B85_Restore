@interface BloodPressureCurrentValueViewDataSource
- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)init;
- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter;
@end

@implementation BloodPressureCurrentValueViewDataSource

- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)initWithDateCache:(id)cache healthStore:(id)store selectedRangeFormatter:(id)formatter
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return [(HKCurrentValueViewDataSource *)&v9 initWithDateCache:cache healthStore:store selectedRangeFormatter:formatter];
}

- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return [(BloodPressureCurrentValueViewDataSource *)&v3 init];
}

@end