@interface HighlightCalendarView
- (NSArray)accessibilityMonthLabels;
- (NSArray)accessibilityWeekdayLabels;
- (_TtC19HealthVisualization21HighlightCalendarView)initWithArrangedSubviewRows:(id)a3;
- (_TtC19HealthVisualization21HighlightCalendarView)initWithCoder:(id)a3;
- (_TtC19HealthVisualization21HighlightCalendarView)initWithFrame:(CGRect)a3;
@end

@implementation HighlightCalendarView

- (_TtC19HealthVisualization21HighlightCalendarView)initWithCoder:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels) = v4;
  result = sub_1D15A4908();
  __break(1u);
  return result;
}

- (_TtC19HealthVisualization21HighlightCalendarView)initWithFrame:(CGRect)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthVisualization21HighlightCalendarView)initWithArrangedSubviewRows:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)accessibilityWeekdayLabels
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D1453BA0(0, &qword_1EE059708);

  v2 = sub_1D15A40A8();

  return v2;
}

- (NSArray)accessibilityMonthLabels
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  sub_1D1453BA0(0, &qword_1EE059708);

  v2 = sub_1D15A40A8();

  return v2;
}

@end