@interface CalendarViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (_TtC8HealthUI28CalendarViewLayoutAttributes)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation CalendarViewLayoutAttributes

- (id)copyWithZone:(void *)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1C3CD5C5C(a3, v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_1C3D20A44();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C3CD5EC8(v8);

  sub_1C396C69C(v8);
  return v6 & 1;
}

- (_TtC8HealthUI28CalendarViewLayoutAttributes)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.isa + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek) = 7;
  *(&self->super.super.isa + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange) = xmmword_1C3D62BA0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CalendarViewLayoutAttributes();
  v3 = [(UICollectionViewLayoutAttributes *)&v5 init];

  return v3;
}

@end