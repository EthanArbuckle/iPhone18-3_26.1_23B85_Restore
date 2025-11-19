@interface BloodPressureChartConfiguration
- (Class)chartControllerClass;
- (_TtC15HealthRecordsUI31BloodPressureChartConfiguration)init;
- (_TtP15HealthRecordsUI33MedicalRecordChartDataTransformer_)dataTransformer;
@end

@implementation BloodPressureChartConfiguration

- (Class)chartControllerClass
{
  sub_1D114B5EC();

  return swift_getObjCClassFromMetadata();
}

- (_TtP15HealthRecordsUI33MedicalRecordChartDataTransformer_)dataTransformer
{
  type metadata accessor for BloodPressureDataTransformer();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;

  return v2;
}

- (_TtC15HealthRecordsUI31BloodPressureChartConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BloodPressureChartConfiguration();
  return [(BloodPressureChartConfiguration *)&v3 init];
}

@end