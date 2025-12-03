@interface SwitchTableViewCell
- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SwitchTableViewCell

- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1BA3FFE3C(style, identifier, v6);
}

- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end