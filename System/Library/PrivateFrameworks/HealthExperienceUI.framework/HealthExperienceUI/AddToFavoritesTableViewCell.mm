@interface AddToFavoritesTableViewCell
- (_TtC18HealthExperienceUI27AddToFavoritesTableViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27AddToFavoritesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation AddToFavoritesTableViewCell

- (_TtC18HealthExperienceUI27AddToFavoritesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = self + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___pinImage) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___unpinImage) = 1;
  if (v6)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AddToFavoritesTableViewCell();
  v9 = [(AddToFavoritesTableViewCell *)&v11 initWithStyle:1 reuseIdentifier:v8];

  return v9;
}

- (_TtC18HealthExperienceUI27AddToFavoritesTableViewCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___pinImage) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell____lazy_storage___unpinImage) = 1;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end