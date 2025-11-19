@interface ArticleBottomPaletteViewController
- (_TtC12NewsArticles34ArticleBottomPaletteViewController)init;
- (_TtC12NewsArticles34ArticleBottomPaletteViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles34ArticleBottomPaletteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation ArticleBottomPaletteViewController

- (_TtC12NewsArticles34ArticleBottomPaletteViewController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_isBeingUsedAsPlugin) = 1;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_bottomPaletteHeight) = 0x4046000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ArticleBottomPaletteViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC12NewsArticles34ArticleBottomPaletteViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_isBeingUsedAsPlugin) = 1;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_bottomPaletteHeight) = 0x4046000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArticleBottomPaletteViewController *)&v5 viewSafeAreaInsetsDidChange];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = nullsub_1;
  v4[4] = 0;

  sub_1D7D294EC();
}

- (_TtC12NewsArticles34ArticleBottomPaletteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end