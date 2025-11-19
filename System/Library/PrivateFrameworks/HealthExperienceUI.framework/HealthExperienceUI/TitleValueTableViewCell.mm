@interface TitleValueTableViewCell
- (_TtC18HealthExperienceUI23TitleValueTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23TitleValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)tintColorDidChange;
@end

@implementation TitleValueTableViewCell

- (_TtC18HealthExperienceUI23TitleValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = self + OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 4) = 0;
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
    v7 = self + OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 4) = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TitleValueTableViewCell();
  v8 = [(TitleValueTableViewCell *)&v10 initWithStyle:1 reuseIdentifier:v6];

  return v8;
}

- (_TtC18HealthExperienceUI23TitleValueTableViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI23TitleValueTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TitleValueTableViewCell();
  v2 = v6.receiver;
  [(TitleValueTableViewCell *)&v6 tintColorDidChange];
  v3 = [v2 detailTextLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 tintColor];
    [v4 setTextColor_];
  }
}

@end