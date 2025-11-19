@interface TextTableViewItemCell
- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation TextTableViewItemCell

- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = ObjectType;
  if (a4)
  {
    ObjectType = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    a4 = v8;
  }

  v9 = self + OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = (*(v7 + 88))(ObjectType);
  if (a4)
  {
    v11 = sub_1BA4A6758();
  }

  else
  {
    v11 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for TextTableViewItemCell();
  v12 = [(TextTableViewItemCell *)&v15 initWithStyle:v10 reuseIdentifier:v11];

  v13 = v12;
  sub_1BA22D0EC();

  return v13;
}

- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TextTableViewItemCell();
  v5 = a3;
  v6 = [(TextTableViewItemCell *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1BA22D0EC();
  }

  return v7;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextTableViewItemCell();
  v2 = v7.receiver;
  [(TextTableViewItemCell *)&v7 prepareForReuse];
  v3 = [v2 textLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setText_];
  }

  v5 = [v2 detailTextLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setText_];
  }
}

@end