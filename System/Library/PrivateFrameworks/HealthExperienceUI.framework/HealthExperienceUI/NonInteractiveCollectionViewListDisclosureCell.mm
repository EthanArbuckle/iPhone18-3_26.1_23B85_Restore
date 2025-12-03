@interface NonInteractiveCollectionViewListDisclosureCell
- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithFrame:(CGRect)frame;
@end

@implementation NonInteractiveCollectionViewListDisclosureCell

- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  height = [(CollectionViewListDisclosureCell *)&v9 initWithFrame:x, y, width, height];
  [(NonInteractiveCollectionViewListDisclosureCell *)height setUserInteractionEnabled:0];
  return height;
}

- (_TtC18HealthExperienceUI46NonInteractiveCollectionViewListDisclosureCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  coderCopy = coder;
  v5 = [(CollectionViewListDisclosureCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end