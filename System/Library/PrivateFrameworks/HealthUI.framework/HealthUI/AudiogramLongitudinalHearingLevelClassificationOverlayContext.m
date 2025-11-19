@interface AudiogramLongitudinalHearingLevelClassificationOverlayContext
- (_TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext)init;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)sampleTypeForDateRangeUpdates;
- (int64_t)resolutionForTimeScope:(int64_t)a3 traitResolution:(int64_t)a4;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation AudiogramLongitudinalHearingLevelClassificationOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C27CB4(0, &qword_1EC0857A0);
  v2 = [swift_getObjCClassFromMetadata() audiogramSampleType];

  return v2;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_overlayDisplayType);

  return v4;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v17 = a5;
  v18 = a6;
  v10 = sub_1C3D1DC54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = _Block_copy(a7);
  sub_1C3D1DC04();
  _Block_copy(v14);
  v15 = a4;
  v16 = self;
  sub_1C3CB6DA4(v13, v15, v17, v18, v16, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
}

- (id)contextItemForLastUpdate
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_lastUpdatedItem);

  return v3;
}

- (int64_t)resolutionForTimeScope:(int64_t)a3 traitResolution:(int64_t)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end