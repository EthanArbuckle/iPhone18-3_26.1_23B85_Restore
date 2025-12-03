@interface PickerTableViewCell
- (_TtC18HealthExperienceUI19PickerTableViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI19PickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PickerTableViewCell

- (_TtC18HealthExperienceUI19PickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1BA092678(v4, v5);
}

- (_TtC18HealthExperienceUI19PickerTableViewCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end