@interface TextTableViewItemCell
- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation TextTableViewItemCell

- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v7 = ObjectType;
  if (identifier)
  {
    ObjectType = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    identifier = v8;
  }

  v9 = self + OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = (*(v7 + 88))(ObjectType);
  if (identifier)
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

- (_TtC18HealthExperienceUI21TextTableViewItemCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TextTableViewItemCell();
  coderCopy = coder;
  v6 = [(TextTableViewItemCell *)&v10 initWithCoder:coderCopy];
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
  textLabel = [v2 textLabel];
  if (textLabel)
  {
    v4 = textLabel;
    [textLabel setText_];
  }

  detailTextLabel = [v2 detailTextLabel];
  if (detailTextLabel)
  {
    v6 = detailTextLabel;
    [detailTextLabel setText_];
  }
}

@end