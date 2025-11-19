@interface ArticleView
- (_TtC12NewsArticles11ArticleView)initWithCoder:(id)a3;
- (_TtC12NewsArticles11ArticleView)initWithFrame:(CGRect)a3;
@end

@implementation ArticleView

- (_TtC12NewsArticles11ArticleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(ArticleView *)&v9 initWithFrame:x, y, width, height];
  [(ArticleView *)v7 setAutoresizingMask:18];
  return v7;
}

- (_TtC12NewsArticles11ArticleView)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

@end