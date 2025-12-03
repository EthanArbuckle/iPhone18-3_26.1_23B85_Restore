@interface NavBarConversationIdentityLabel
- (CGSize)intrinsicContentSize;
- (_TtC7ChatKit31NavBarConversationIdentityLabel)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation NavBarConversationIdentityLabel

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1908FA8C8(type metadata accessor for NavBarConversationIdentityLabel);
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  sub_1902188FC(0, &qword_1EAD46500);
  viewCopy = view;
  selfCopy = self;
  if (sub_190D57D90())
  {
    sub_1908F9A8C();
    [(NavBarConversationIdentityLabel *)selfCopy setNeedsLayout];
    [(NavBarConversationIdentityLabel *)selfCopy invalidateIntrinsicContentSize];
    [(NavBarConversationIdentityLabel *)selfCopy layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1908F9740();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_1908F9A14();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC7ChatKit31NavBarConversationIdentityLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end