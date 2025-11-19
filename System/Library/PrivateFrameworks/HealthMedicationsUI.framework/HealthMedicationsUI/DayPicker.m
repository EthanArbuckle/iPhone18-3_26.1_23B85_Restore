@interface DayPicker
- (_TtC19HealthMedicationsUI9DayPicker)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI9DayPicker)initWithFrame:(CGRect)a3;
- (void)didTapDay:(id)a3;
@end

@implementation DayPicker

- (_TtC19HealthMedicationsUI9DayPicker)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews) = MEMORY[0x277D84F90];
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)didTapDay:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2281EB43C(v4);
}

- (_TtC19HealthMedicationsUI9DayPicker)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end