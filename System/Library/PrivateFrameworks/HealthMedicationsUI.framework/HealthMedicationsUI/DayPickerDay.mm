@interface DayPickerDay
- (BOOL)isSelected;
- (_TtC19HealthMedicationsUI12DayPickerDay)initWithFrame:(CGRect)frame;
- (id)accessibilityWeekday;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation DayPickerDay

- (void)layoutSubviews
{
  selfCopy = self;
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
  selfCopy = self;
  largeContentTitle = [(DayPickerDay *)selfCopy largeContentTitle];
  if (largeContentTitle || (largeContentTitle = [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI12DayPickerDay_dayLabel) text]) != 0)
  {
    v4 = largeContentTitle;
    sub_228392000();

    v5 = sub_228391FC0();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (_TtC19HealthMedicationsUI12DayPickerDay)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end