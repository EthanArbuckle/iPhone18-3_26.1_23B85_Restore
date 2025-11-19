@interface NavBarConversationIdentityLabel
- (CGSize)intrinsicContentSize;
- (_TtC7ChatKit31NavBarConversationIdentityLabel)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation NavBarConversationIdentityLabel

- (void)didMoveToWindow
{
  v2 = self;
  sub_1908FA8C8(type metadata accessor for NavBarConversationIdentityLabel);
}

- (void)preferredContentSizeCategoryDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  sub_1902188FC(0, &qword_1EAD46500);
  v6 = a3;
  v7 = self;
  if (sub_190D57D90())
  {
    sub_1908F9A8C();
    [(NavBarConversationIdentityLabel *)v7 setNeedsLayout];
    [(NavBarConversationIdentityLabel *)v7 invalidateIntrinsicContentSize];
    [(NavBarConversationIdentityLabel *)v7 layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1908F9740();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1908F9A14();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC7ChatKit31NavBarConversationIdentityLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end