@interface RichLinkCardStackItemView
- (CGRect)clippingRect;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (NSCopying)userData;
- (void)becomeReusable;
- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4;
- (void)configureForMessagePart:(id)a3;
- (void)didTapLinkView:(id)a3;
- (void)didTapTruncatedCaptionForRichCard:(id)a3;
- (void)layoutSubviews;
- (void)openAppFromNotificationExtensionWith:(id)a3;
- (void)prepareForReuse;
- (void)setUserData:(id)a3;
@end

@implementation RichLinkCardStackItemView

- (CGRect)clippingRect
{
  v2 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v3 = *(&self->super.super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v4 = *(&self->super.super.super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  v5 = *(&self->super.super.super.super.super._cachedTraitCollection + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSCopying)userData
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_1908DD9C4();
  swift_unknownObjectRelease();
}

- (void)didTapLinkView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908DDB8C(v4);
}

- (void)becomeReusable
{
  v2 = self;
  sub_1908DE3EC();
}

- (void)configureForMessagePart:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1908DE4E0(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1908DF3D4(width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1908DE89C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1908DEDA4();
}

- (void)openAppFromNotificationExtensionWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908DEF84(v4);
}

- (void)chatBotActionButton:(id)a3 didSelectChipAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1908DF0A8(v6, v7);
}

- (void)didTapTruncatedCaptionForRichCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908DF1E8(v4);
}

@end