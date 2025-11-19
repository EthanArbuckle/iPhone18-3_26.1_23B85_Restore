@interface CalendarPickerTableViewCell
- (_TtC16HealthMobilityUI27CalendarPickerTableViewCell)initWithCoder:(id)a3;
- (_TtC16HealthMobilityUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)pickerDateChanged:(id)a3;
@end

@implementation CalendarPickerTableViewCell

- (_TtC16HealthMobilityUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_2519AEE38();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_25199D2E4(a3, a4, v6);
}

- (_TtC16HealthMobilityUI27CalendarPickerTableViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16HealthMobilityUI27CalendarPickerTableViewCell____lazy_storage___picker) = 0;
  result = sub_2519AF198();
  __break(1u);
  return result;
}

- (void)pickerDateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25199D4F4(v4);
}

@end