@interface DayPickerDay
- (BOOL)isSelected;
- (_TtC19HealthMedicationsUI12DayPickerDay)initWithFrame:(CGRect)a3;
- (id)accessibilityWeekday;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation DayPickerDay

- (void)layoutSubviews
{
  v2 = self;
  sub_22823A4A4();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DayPickerDay();
  v2 = v3.receiver;
  [(DayPickerDay *)&v3 tintColorDidChange];
  sub_22823A148();
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DayPickerDay();
  return [(DayPickerDay *)&v3 isSelected];
}

- (id)accessibilityWeekday
{
  v2 = self;
  v3 = [(DayPickerDay *)v2 largeContentTitle];
  if (v3 || (v3 = [*(&v2->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel) text]) != 0)
  {
    v4 = v3;
    sub_228392000();

    v5 = sub_228391FC0();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (_TtC19HealthMedicationsUI12DayPickerDay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end