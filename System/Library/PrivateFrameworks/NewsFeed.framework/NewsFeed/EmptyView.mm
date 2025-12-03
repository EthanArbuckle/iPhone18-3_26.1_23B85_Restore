@interface EmptyView
- (_TtC8NewsFeed9EmptyView)initWithCoder:(id)coder;
- (_TtC8NewsFeed9EmptyView)initWithFrame:(CGRect)frame;
@end

@implementation EmptyView

- (_TtC8NewsFeed9EmptyView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(EmptyView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed9EmptyView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(EmptyView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end