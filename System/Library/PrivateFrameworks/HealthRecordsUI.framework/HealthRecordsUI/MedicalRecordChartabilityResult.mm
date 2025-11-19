@interface MedicalRecordChartabilityResult
- (BOOL)shouldProduceAtLeastOneOverlay;
- (NSArray)seriesDataSources;
- (NSDate)latestChartableDate;
- (_TtC15HealthRecordsUI31MedicalRecordChartabilityResult)init;
- (_TtP15HealthRecordsUI31MedicalRecordChartConfiguration_)configuration;
@end

@implementation MedicalRecordChartabilityResult

- (_TtP15HealthRecordsUI31MedicalRecordChartConfiguration_)configuration
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSArray)seriesDataSources
{
  type metadata accessor for MedicalRecordChartDataSource();

  v2 = sub_1D139044C();

  return v2;
}

- (NSDate)latestChartableDate
{
  sub_1D11161C4(0, &qword_1EE06B500, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1D106A1D8(self + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_latestChartableDate, &v12 - v4);
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1D138D4EC();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (BOOL)shouldProduceAtLeastOneOverlay
{
  if (*(self + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_outOfRangeDataSource) || *(self + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_noRangeDataSource))
  {
    return 1;
  }

  v3 = *(self + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordChartabilityResult_seriesDataSources);
  if (v3 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 > 1;
}

- (_TtC15HealthRecordsUI31MedicalRecordChartabilityResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end