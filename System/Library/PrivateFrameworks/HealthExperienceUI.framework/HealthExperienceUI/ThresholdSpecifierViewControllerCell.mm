@interface ThresholdSpecifierViewControllerCell
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ThresholdSpecifierViewControllerCell

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  sub_1BA0A7300(a3, v7, v9, a5);
  return result;
}

- (_TtC18HealthExperienceUI36ThresholdSpecifierViewControllerCell)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA0A7560(a3);
}

@end