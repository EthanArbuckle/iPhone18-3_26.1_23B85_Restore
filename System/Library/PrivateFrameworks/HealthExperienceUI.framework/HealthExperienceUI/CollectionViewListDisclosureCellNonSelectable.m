@interface CollectionViewListDisclosureCellNonSelectable
- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation CollectionViewListDisclosureCellNonSelectable

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1BA38F1B0();
}

- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return [(CollectionViewListDisclosureCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  v4 = a3;
  v5 = [(CollectionViewListDisclosureCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end