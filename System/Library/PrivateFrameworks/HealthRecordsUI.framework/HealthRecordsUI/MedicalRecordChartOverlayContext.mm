@interface MedicalRecordChartOverlayContext
- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)init;
- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)initWithTitle:(id)a3 dataSource:(id)a4 defaultColors:(id)a5 selectedColors:(id)a6 verticalAxis:(id)a7;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)sampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation MedicalRecordChartOverlayContext

- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)initWithTitle:(id)a3 dataSource:(id)a4 defaultColors:(id)a5 selectedColors:(id)a6 verticalAxis:(id)a7
{
  v11 = sub_1D139016C();
  v13 = v12;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  return MedicalRecordChartOverlayContext.init(title:dataSource:defaultColors:selectedColors:verticalAxis:)(v11, v13, v14, v15, a6, a7);
}

- (id)contextItemForLastUpdate
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
  v5 = self;
  if (v4)
  {
    v6 = v4;
    v7 = v4;
  }

  else
  {
    v7 = sub_1D1239254(0, 0);
    v6 = 0;
    v4 = *(&self->super.isa + v3);
  }

  *(&self->super.isa + v3) = v7;
  v8 = v6;
  v9 = v7;

  return v7;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = sub_1D138CFBC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a7);
  sub_1D138CF6C();
  _Block_copy(v14);
  v15 = a4;
  v16 = self;
  sub_1D1239414(v13, v16, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
}

- (id)sampleTypeForDateRangeUpdates
{
  sub_1D12393C8();
  v2 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];

  return v2;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)a3
{
  v3 = self;
  v4 = sub_1D1239798();

  return v4;
}

- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end