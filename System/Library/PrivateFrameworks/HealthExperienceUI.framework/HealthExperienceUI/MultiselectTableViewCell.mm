@interface MultiselectTableViewCell
- (_TtC18HealthExperienceUI24MultiselectTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MultiselectTableViewCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA1DCA68(change);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1BA1DCC4C();
}

- (_TtC18HealthExperienceUI24MultiselectTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  sub_1BA1DD680(v4, v5);
  return result;
}

@end