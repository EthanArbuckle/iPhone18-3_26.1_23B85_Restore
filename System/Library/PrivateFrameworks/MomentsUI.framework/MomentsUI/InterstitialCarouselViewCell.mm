@interface InterstitialCarouselViewCell
- (_TtC9MomentsUI28InterstitialCarouselViewCell)initWithCoder:(id)coder;
- (_TtC9MomentsUI28InterstitialCarouselViewCell)initWithFrame:(CGRect)frame;
@end

@implementation InterstitialCarouselViewCell

- (_TtC9MomentsUI28InterstitialCarouselViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InterstitialCarouselViewCell();
  return [(InterstitialCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9MomentsUI28InterstitialCarouselViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InterstitialCarouselViewCell();
  coderCopy = coder;
  v5 = [(InterstitialCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end