@interface FormatCollectionView
- (_TtC8NewsFeed20FormatCollectionView)initWithCoder:(id)coder;
- (_TtC8NewsFeed20FormatCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation FormatCollectionView

- (_TtC8NewsFeed20FormatCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(FormatCollectionView *)&v10 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC8NewsFeed20FormatCollectionView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(FormatCollectionView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end