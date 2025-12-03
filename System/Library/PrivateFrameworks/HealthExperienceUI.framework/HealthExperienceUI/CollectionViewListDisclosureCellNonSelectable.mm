@interface CollectionViewListDisclosureCellNonSelectable
- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
@end

@implementation CollectionViewListDisclosureCellNonSelectable

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_1BA38F1B0();
}

- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return [(CollectionViewListDisclosureCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI45CollectionViewListDisclosureCellNonSelectable)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  coderCopy = coder;
  v5 = [(CollectionViewListDisclosureCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end