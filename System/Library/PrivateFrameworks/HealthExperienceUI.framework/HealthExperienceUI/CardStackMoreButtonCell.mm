@interface CardStackMoreButtonCell
- (_TtC18HealthExperienceUI23CardStackMoreButtonCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI23CardStackMoreButtonCell)initWithFrame:(CGRect)frame;
@end

@implementation CardStackMoreButtonCell

- (_TtC18HealthExperienceUI23CardStackMoreButtonCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CardStackMoreButtonCell();
  return [(ButtonCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI23CardStackMoreButtonCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CardStackMoreButtonCell();
  coderCopy = coder;
  v5 = [(ButtonCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end