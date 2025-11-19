@interface TitledWeekdayHeaderPaletteView
- (_TtC8HealthUI30TitledWeekdayHeaderPaletteView)initWithCoder:(id)a3;
- (_TtC8HealthUI30TitledWeekdayHeaderPaletteView)initWithFrame:(CGRect)a3;
@end

@implementation TitledWeekdayHeaderPaletteView

- (_TtC8HealthUI30TitledWeekdayHeaderPaletteView)initWithCoder:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette) = 0;
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

- (_TtC8HealthUI30TitledWeekdayHeaderPaletteView)initWithFrame:(CGRect)a3
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