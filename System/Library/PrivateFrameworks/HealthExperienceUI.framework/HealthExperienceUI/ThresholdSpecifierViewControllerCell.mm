@interface ThresholdSpecifierViewControllerCell
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ThresholdSpecifierViewControllerCell

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for ThresholdSpecifierViewControllerCell();
  v6 = [(PSTableCell *)&v8 initWithStyle:3 reuseIdentifier:v5];

  return v6;
}

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  sub_1BA0A7300(style, v7, v9, specifier);
  return result;
}

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_1BA0A7560(specifier);
}

@end