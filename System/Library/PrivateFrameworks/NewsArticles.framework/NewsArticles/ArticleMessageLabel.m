@interface ArticleMessageLabel
- (_TtC12NewsArticles19ArticleMessageLabel)initWithCoder:(id)a3;
- (_TtC12NewsArticles19ArticleMessageLabel)initWithFrame:(CGRect)a3;
@end

@implementation ArticleMessageLabel

- (_TtC12NewsArticles19ArticleMessageLabel)initWithCoder:(id)a3
{
  v4 = sub_1D7D2B4AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_accessoryPresentationMode;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D8018], v4);
  sub_1D7CA713C();
  swift_allocObject();
  *(&self->super.super.super.super.isa + v9) = sub_1D7D28ECC();
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles19ArticleMessageLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end