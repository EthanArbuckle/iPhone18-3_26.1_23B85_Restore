@interface NavigationCollectionViewCell
- (_TtC18HealthExperienceUI28NavigationCollectionViewCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI28NavigationCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation NavigationCollectionViewCell

- (_TtC18HealthExperienceUI28NavigationCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationCollectionViewCell();
  return [(CollectionViewListDisclosureCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI28NavigationCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NavigationCollectionViewCell();
  coderCopy = coder;
  v5 = [(CollectionViewListDisclosureCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end