@interface CalendarPickerTableViewCell
- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)pickerDateChanged:(id)a3;
@end

@implementation CalendarPickerTableViewCell

- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CalendarPickerTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27CalendarPickerTableViewCell____lazy_storage___picker) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)pickerDateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA470928(v4);
}

@end