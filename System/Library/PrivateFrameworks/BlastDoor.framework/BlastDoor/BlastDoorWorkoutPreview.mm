@interface BlastDoorWorkoutPreview
- (BlastDoorWorkoutPreview)init;
- (NSString)description;
@end

@implementation BlastDoorWorkoutPreview

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview);
  v5 = self->workoutPreview[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  v6 = self->workoutPreview[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 1];
  v7 = *&self->workoutPreview[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 8];
  v8 = *&self->workoutPreview[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 16];
  v9 = self->workoutPreview[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 24];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorWorkoutPreview)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end