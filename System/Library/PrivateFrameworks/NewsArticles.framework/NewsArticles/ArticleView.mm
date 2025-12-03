@interface ArticleView
- (_TtC12NewsArticles11ArticleView)initWithCoder:(id)coder;
- (_TtC12NewsArticles11ArticleView)initWithFrame:(CGRect)frame;
@end

@implementation ArticleView

- (_TtC12NewsArticles11ArticleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(ArticleView *)&v9 initWithFrame:x, y, width, height];
  [(ArticleView *)height setAutoresizingMask:18];
  return height;
}

- (_TtC12NewsArticles11ArticleView)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

@end