@interface ScheduleHeaderCell
- (_TtC19HealthMedicationsUI18ScheduleHeaderCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI18ScheduleHeaderCell)initWithFrame:(CGRect)frame;
@end

@implementation ScheduleHeaderCell

- (_TtC19HealthMedicationsUI18ScheduleHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  v9 = type metadata accessor for ScheduleHeaderCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(ScheduleHeaderCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI18ScheduleHeaderCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton) = 0;
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ScheduleHeaderCell();
  coderCopy = coder;
  v6 = [(ScheduleHeaderCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end