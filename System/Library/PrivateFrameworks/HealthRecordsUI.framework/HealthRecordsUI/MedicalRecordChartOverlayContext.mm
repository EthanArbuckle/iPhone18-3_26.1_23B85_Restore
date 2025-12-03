@interface MedicalRecordChartOverlayContext
- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)init;
- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)initWithTitle:(id)title dataSource:(id)source defaultColors:(id)colors selectedColors:(id)selectedColors verticalAxis:(id)axis;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)sampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation MedicalRecordChartOverlayContext

- (_TtC15HealthRecordsUI32MedicalRecordChartOverlayContext)initWithTitle:(id)title dataSource:(id)source defaultColors:(id)colors selectedColors:(id)selectedColors verticalAxis:(id)axis
{
  v11 = sub_1D139016C();
  v13 = v12;
  sourceCopy = source;
  colorsCopy = colors;
  selectedColorsCopy = selectedColors;
  return MedicalRecordChartOverlayContext.init(title:dataSource:defaultColors:selectedColors:verticalAxis:)(v11, v13, sourceCopy, colorsCopy, selectedColors, axis);
}

- (id)contextItemForLastUpdate
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordChartOverlayContext_cachedItem);
  selfCopy = self;
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

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v10 = sub_1D138CFBC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  sub_1D138CF6C();
  _Block_copy(v14);
  controllerCopy = controller;
  selfCopy = self;
  sub_1D1239414(v13, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
}

- (id)sampleTypeForDateRangeUpdates
{
  sub_1D12393C8();
  diagnosticTestResultTypeForIdentifier_ = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];

  return diagnosticTestResultTypeForIdentifier_;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)scope
{
  selfCopy = self;
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