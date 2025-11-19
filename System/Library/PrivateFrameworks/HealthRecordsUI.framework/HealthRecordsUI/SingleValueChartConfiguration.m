@interface SingleValueChartConfiguration
- (Class)chartControllerClass;
- (_TtC15HealthRecordsUI29SingleValueChartConfiguration)init;
- (_TtP15HealthRecordsUI33MedicalRecordChartDataTransformer_)dataTransformer;
@end

@implementation SingleValueChartConfiguration

- (Class)chartControllerClass
{
  sub_1D111C1C4();

  return swift_getObjCClassFromMetadata();
}

- (_TtP15HealthRecordsUI33MedicalRecordChartDataTransformer_)dataTransformer
{
  type metadata accessor for SingleValueDataTransformer();
  v2 = swift_allocObject();

  return v2;
}

- (_TtC15HealthRecordsUI29SingleValueChartConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SingleValueChartConfiguration();
  return [(SingleValueChartConfiguration *)&v3 init];
}

@end