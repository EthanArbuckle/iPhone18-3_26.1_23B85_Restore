@interface ArticleNavigationBarMessageContainer
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12NewsArticles36ArticleNavigationBarMessageContainer)initWithFrame:(CGRect)a3;
- (id)showMessage:(int64_t)a3;
- (void)layoutSubviews;
@end

@implementation ArticleNavigationBarMessageContainer

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  v5 = self;
  [(ArticleNavigationBarMessageContainer *)v5 bounds];
  [v4 sizeThatFits_];
  v9 = v8;

  v10 = v9;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7B095D0();
}

- (_TtC12NewsArticles36ArticleNavigationBarMessageContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)showMessage:(int64_t)a3
{
  v4 = self;
  ArticleNavigationBarMessageContainer.show(_:)(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D7D3195C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end