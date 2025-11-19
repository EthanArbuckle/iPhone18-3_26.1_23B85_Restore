@interface NavbarConversationTitle
- (CGSize)intrinsicContentSize;
- (_TtC7ChatKit23NavbarConversationTitle)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation NavbarConversationTitle

- (void)didMoveToWindow
{
  v2 = self;
  sub_1908FA8C8(type metadata accessor for NavbarConversationTitle);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1908FAA40();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1908FACEC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1908FB448();
}

- (_TtC7ChatKit23NavbarConversationTitle)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end