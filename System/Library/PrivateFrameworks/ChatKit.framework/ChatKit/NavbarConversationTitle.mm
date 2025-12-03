@interface NavbarConversationTitle
- (CGSize)intrinsicContentSize;
- (_TtC7ChatKit23NavbarConversationTitle)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation NavbarConversationTitle

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1908FA8C8(type metadata accessor for NavbarConversationTitle);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1908FAA40();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1908FACEC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  selfCopy = self;
  sub_1908FB448();
}

- (_TtC7ChatKit23NavbarConversationTitle)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end