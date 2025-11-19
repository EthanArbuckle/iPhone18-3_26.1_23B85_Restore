@interface SwitchTableViewCell
- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SwitchTableViewCell

- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1BA3FFE3C(a3, a4, v6);
}

- (_TtC18HealthExperienceUI19SwitchTableViewCell)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end