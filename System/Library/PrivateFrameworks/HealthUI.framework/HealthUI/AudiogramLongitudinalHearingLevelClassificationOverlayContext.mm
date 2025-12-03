@interface AudiogramLongitudinalHearingLevelClassificationOverlayContext
- (_TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext)init;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)sampleTypeForDateRangeUpdates;
- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
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
  audiogramSampleType = [swift_getObjCClassFromMetadata() audiogramSampleType];

  return audiogramSampleType;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)scope
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

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  scopeCopy = scope;
  resolutionCopy = resolution;
  v10 = sub_1C3D1DC54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &scopeCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = _Block_copy(completion);
  sub_1C3D1DC04();
  _Block_copy(v14);
  controllerCopy = controller;
  selfCopy = self;
  sub_1C3CB6DA4(v13, controllerCopy, scopeCopy, resolutionCopy, selfCopy, v14);
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

- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution
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