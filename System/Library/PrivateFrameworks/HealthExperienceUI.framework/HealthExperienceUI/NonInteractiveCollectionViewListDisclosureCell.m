@interface NonInteractiveCollectionViewListDisclosureCell
- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithFrame:(CGRect)a3;
@end

@implementation NonInteractiveCollectionViewListDisclosureCell

- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v7 = [(CollectionViewListDisclosureCell *)&v9 initWithFrame:x, y, width, height];
  [(NonInteractiveCollectionViewListDisclosureCell *)v7 setUserInteractionEnabled:0];
  return v7;
}

- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v4 = a3;
  v5 = [(CollectionViewListDisclosureCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end