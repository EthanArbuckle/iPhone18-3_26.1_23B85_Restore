@interface CalendarPickerTableViewCell
- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)pickerDateChanged:(id)changed;
@end

@implementation CalendarPickerTableViewCell

- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CalendarPickerTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (_TtC18HealthExperienceUI27CalendarPickerTableViewCell)initWithCoder:(id)coder
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

- (void)pickerDateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BA470928(changedCopy);
}

@end