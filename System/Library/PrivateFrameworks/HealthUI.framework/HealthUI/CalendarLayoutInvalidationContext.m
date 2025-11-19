@interface CalendarLayoutInvalidationContext
- (_TtC8HealthUI33CalendarLayoutInvalidationContext)init;
@end

@implementation CalendarLayoutInvalidationContext

- (_TtC8HealthUI33CalendarLayoutInvalidationContext)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI33CalendarLayoutInvalidationContext_shouldInvalidateAllDecorationViews) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CalendarLayoutInvalidationContext();
  v3 = [(UICollectionViewFlowLayoutInvalidationContext *)&v5 init];

  return v3;
}

@end