@interface MultiselectTableViewCell
- (_TtC18HealthExperienceUI24MultiselectTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MultiselectTableViewCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA1DCA68(a3);
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_1BA1DCC4C();
}

- (_TtC18HealthExperienceUI24MultiselectTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_1BA1DD680(v4, v5);
  return result;
}

@end