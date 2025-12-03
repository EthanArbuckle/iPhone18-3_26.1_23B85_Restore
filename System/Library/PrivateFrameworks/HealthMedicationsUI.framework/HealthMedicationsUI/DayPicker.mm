@interface DayPicker
- (_TtC19HealthMedicationsUI9DayPicker)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI9DayPicker)initWithFrame:(CGRect)frame;
- (void)didTapDay:(id)day;
@end

@implementation DayPicker

- (_TtC19HealthMedicationsUI9DayPicker)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews) = MEMORY[0x277D84F90];
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)didTapDay:(id)day
{
  dayCopy = day;
  selfCopy = self;
  sub_2281EB43C(dayCopy);
}

- (_TtC19HealthMedicationsUI9DayPicker)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end