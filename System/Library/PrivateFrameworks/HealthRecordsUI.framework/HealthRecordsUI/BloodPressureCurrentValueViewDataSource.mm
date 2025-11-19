@interface BloodPressureCurrentValueViewDataSource
- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)init;
- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)initWithDateCache:(id)a3 healthStore:(id)a4 selectedRangeFormatter:(id)a5;
@end

@implementation BloodPressureCurrentValueViewDataSource

- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)initWithDateCache:(id)a3 healthStore:(id)a4 selectedRangeFormatter:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return [(HKCurrentValueViewDataSource *)&v9 initWithDateCache:a3 healthStore:a4 selectedRangeFormatter:a5];
}

- (_TtC15HealthRecordsUI39BloodPressureCurrentValueViewDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return [(BloodPressureCurrentValueViewDataSource *)&v3 init];
}

@end