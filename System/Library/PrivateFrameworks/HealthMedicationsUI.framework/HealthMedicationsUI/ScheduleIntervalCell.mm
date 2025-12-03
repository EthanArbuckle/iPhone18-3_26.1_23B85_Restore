@interface ScheduleIntervalCell
- (_TtC19HealthMedicationsUI20ScheduleIntervalCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI20ScheduleIntervalCell)initWithFrame:(CGRect)frame;
@end

@implementation ScheduleIntervalCell

- (_TtC19HealthMedicationsUI20ScheduleIntervalCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___timesStackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___dosesStackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  v9 = type metadata accessor for ScheduleIntervalCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(ScheduleIntervalCell *)&v12 initWithFrame:x, y, width, height];
  sub_2282C9838();

  return height;
}

- (_TtC19HealthMedicationsUI20ScheduleIntervalCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___frequencyTitleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___timesStackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___dosesStackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell____lazy_storage___containerStackView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleIntervalCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end