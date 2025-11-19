@interface ArticleNavigationBarPaletteContent
- (_TtC12NewsArticles34ArticleNavigationBarPaletteContent)initWithCoder:(id)a3;
- (id)showMessage:(int64_t)a3;
- (void)compressWithScale:(double)a3 opacity:(double)a4;
- (void)layoutSubviews;
- (void)setBarColor:(id)a3;
- (void)setBarColorFor:(id)a3 primaryColor:(id)a4 secondaryColor:(id)a5 primaryVisibilityFactor:(double)a6;
@end

@implementation ArticleNavigationBarPaletteContent

- (_TtC12NewsArticles34ArticleNavigationBarPaletteContent)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_opaqueBar;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_horizontalScrollOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_bottomPaletteButtonLocation) = 0;
  v5 = self + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX;
  *v5 = 0;
  v5[8] = 1;
  v6 = (self + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame);
  *v6 = 0u;
  v6[1] = 0u;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)setBarColorFor:(id)a3 primaryColor:(id)a4 secondaryColor:(id)a5 primaryVisibilityFactor:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_1D7B19D54(v10, a4, a6);
}

- (void)setBarColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7B1A000(a3);
}

- (void)compressWithScale:(double)a3 opacity:(double)a4
{
  v6 = self;
  sub_1D7B1A224(a3, a4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7B1A50C();
}

- (id)showMessage:(int64_t)a3
{
  v4 = self;
  ArticleNavigationBarPaletteContent.show(_:)(a3, &v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D7D3195C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end