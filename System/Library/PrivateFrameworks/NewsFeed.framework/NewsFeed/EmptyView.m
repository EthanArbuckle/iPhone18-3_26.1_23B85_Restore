@interface EmptyView
- (_TtC8NewsFeed9EmptyView)initWithCoder:(id)a3;
- (_TtC8NewsFeed9EmptyView)initWithFrame:(CGRect)a3;
@end

@implementation EmptyView

- (_TtC8NewsFeed9EmptyView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(EmptyView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8NewsFeed9EmptyView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(EmptyView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end